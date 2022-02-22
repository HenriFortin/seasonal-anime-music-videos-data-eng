import pandas as pd
import datetime
from numpy import append
from datetime import datetime
from pymysql.err import Error
from sqlalchemy import create_engine
from key import API_KEY
from sql_config import USER,HOST,PORT,PASSWORD,DATABASE
from googleapiclient.discovery import build

#Fetch Seasonal Animes for the loop
try:
    db_connection_str = 'mysql+pymysql://{}:{}@{}/{}'.format(USER,PASSWORD,HOST,DATABASE)
    db_connection = create_engine(db_connection_str)

    df = pd.read_sql('SELECT * FROM view_SeasonalAnimeCurrent', con=db_connection)

    print(df.to_string())

except Error as e:
    print(e)

finally:
    db_connection.dispose()

youtube = build('youtube','v3',developerKey=API_KEY)


#Iterate through animes to call the api
for index, row in df.iterrows():
    print('Calling the API for ' + row['AnimeName'], row['SeasonKey'])
    anime_id = row['AnimeId']
    #Read Seasonal anime and add variables in Q and maxResults optimized with Quota
    api_query = '{} Anime cover'.format(row['AnimeName'])

    request = youtube.search().list(
        part='snippet',
        q=api_query,
        maxResults=50,
        type='video',
        order='viewCount'
    )

    response = request.execute()

    #Get aditional info
    videoIdList = []
    for x in range(response['pageInfo']['resultsPerPage']):
        videoIdList.append(response['items'][x]['id']['videoId'])
    videosIdString = ','.join(videoIdList)
    

    request = youtube.videos().list(
        part='snippet,statistics',
        id = videosIdString
    )

    response = request.execute()


    df = pd.DataFrame(response['items'])
    i = 0
    current_date = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    for index, row in df.iterrows():
        etag_str = row['etag']
        id_str = row['id']
        snippet_dict = row['snippet'].copy()
        statistics_dict = row['statistics'].copy()

        insert_dict = {'animeId': anime_id,'etag' : etag_str, 'id' : id_str, 'processedAt' : current_date}
        insert_dict.update(snippet_dict)
        insert_dict.update(statistics_dict)
        if 'localized' in insert_dict.keys():
            del insert_dict['localized']
        if 'thumbnails' in insert_dict.keys():
            del insert_dict['thumbnails']
        if 'tags' in insert_dict.keys():
            del insert_dict['tags']

        
        if i == 0:
            insert_df = pd.DataFrame(insert_dict,[i])
        else:
            insert_df = insert_df.append(insert_dict,ignore_index=True)
        i += 1
    

    
    #Fetch Seasonal Animes for the loop
    try:
        db_connection_str = 'mysql+pymysql://{}:{}@{}/{}'.format(USER,PASSWORD,HOST,DATABASE)
        db_connection = create_engine(db_connection_str)

        df = insert_df.to_sql(con=db_connection,name='YoutubeSearchAPI',if_exists='append',index=False)
        print('Data inserted')

    except Error as e:
        print(e)

    finally:
        db_connection.dispose()

#Database dimensions
try:
    db_connection_str = 'mysql+pymysql://{}:{}@{}/{}'.format(USER,PASSWORD,HOST,DATABASE)
    db_connection = create_engine(db_connection_str)

    print(datetime.now())
    db_connection.execute('call usp_LoadDimYoutubeChannel')
    print(datetime.now())
    print('call usp_LoadDimYoutubeChannel')
    db_connection.execute('call usp_LoadDimYoutubeVideo')
    print(datetime.now())
    print('call usp_LoadDimYoutubeVideo')
    db_connection.execute('call usp_LoadDimYoutubeVideoVideoCategory')
    print(datetime.now())
    print('call usp_LoadDimYoutubeVideoVideoCategory')
    db_connection.execute('call usp_LoadFactYoutubeAnimeVideoMetric')
    print(datetime.now())
    print('call usp_LoadFactYoutubeAnimeVideoMetric')

except Error as e:
    print(e)

finally:
    db_connection.dispose()



 



