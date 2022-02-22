const express = require('express');
const sqlclient = require("mysql");
const fs = require("fs");
const { rejects } = require('assert');

const PORT = process.env.PORT || 3030;

let app = express();
app.set('view engine', 'pug');
app.use(express.urlencoded({extended: true}));

//mysql config
let mysqlconfig = JSON.parse(fs.readFileSync('mysql-config.json'))

//SQL Query
function GetVideos(mysqlconfig){
    return new Promise(resolve => {
        let connection = sqlclient.createConnection(mysqlconfig);
        connection.query('SELECT * from view_fact_YoutubeAnimeVideoMetricLast7DaysGrowthFactor limit 5', (err,rows,fields) => {
            if (err){
                return rejects(err);
            }
            resolve(rows);
        })

    });        
};

function GetAnime(mysqlconfig,animeId){
    return new Promise(resolve => {
        let connection = sqlclient.createConnection(mysqlconfig);
        connection.query(`SELECT * FROM (
            SELECT  * ,ROW_NUMBER() OVER (partition by VideoId ORDER BY DateID DESC) rownum 
            FROM view_fact_YoutubeAnimeVideoMetricLast7DaysGrowthFactor where AnimeId = ${animeId}
            ) data where rownum = 1 order by ViewCount desc`, (err,rows,fields) => {
            if (err){
                return rejects(err);
            }
            resolve(rows);
        })

    });        
};

function GetCategories(mysqlconfig){
    return new Promise(resolve => {
        let connection = sqlclient.createConnection(mysqlconfig);
        connection.query(`SELECT * FROM dim_videoCategory
        UNION
        SELECT -1,'Others','Others'`, (err,rows,fields) => {
            if (err){
                return rejects(err);
            }
            resolve(rows);
        })

    });        
};

function GetCategoriesVideos(mysqlconfig,categoryId){
    return new Promise(resolve => {
        let connection = sqlclient.createConnection(mysqlconfig);
        connection.query(`SELECT * 
        from view_fact_YoutubeAnimeVideoMetricLast7DaysGrowthFactor dat
        INNER JOIN dim_youtubeVideo_videoCategory br
        ON dat.YoutubeVideoId = br.YoutubeVideoId
        WHERE br.VideoCategoryId = ${categoryId}`, (err,rows,fields) => {
            if (err){
                return rejects(err);
            }
            resolve(rows);
        })

    });        
};

//Routes
app.get('/', function (req,res) {
    GetVideos(mysqlconfig)
        .then(function(rows){
            console.log(rows);
            res.render('index', {rows});
        }, function(error){
            console.log(error);
        });
});

app.get('/anime/:animeId',function (req,res) {
    GetAnime(mysqlconfig,req.params.animeId)
        .then(function(rows){
            console.log(rows);
            res.render('anime', {rows});
        }, function(error){
            console.log(error);
        });
});

app.get('/category', function (req,res) {
    GetCategories(mysqlconfig)
        .then(function(rows){
            console.log(rows);
            res.render('category', {rows});
        }, function(error){
            console.log(error);
        });
});

app.get('/category/:categoryId',function (req,res) {
    GetCategoriesVideos(mysqlconfig,req.params.categoryId)
        .then(function(rows){
            console.log(rows);
            res.render('category_videos', {rows});
        }, function(error){
            console.log(error);
        });
});


//App Start
app.listen(PORT, function(){
    console.log("Server listening on port " + PORT)
});

