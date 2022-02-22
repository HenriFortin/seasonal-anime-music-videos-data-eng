import requests
import pandas as pd
from bs4 import BeautifulSoup
from datetime import datetime
from pymysql.err import Error
from sqlalchemy import create_engine
from sql_config import USER,HOST,PORT,PASSWORD,DATABASE

url = requests.get("https://myanimelist.net/anime/season")
url.status_code

soup = BeautifulSoup(url.content, 'html.parser')


# ## Object Parsing
animes = soup.find_all("div", class_="js-anime-category-producer seasonal-anime js-seasonal-anime js-anime-type-all js-anime-type-1")

animes_df_data = []
for anime in animes:
    anime_link = anime.find(class_="link-title")
    anime_url = anime_link['href']
    anime_name = anime_link.text
    
    #some image are lazyloaded and have different attributes
    try:
        anime_img = anime.find("img")
        if anime_img.has_attr('src'):
            anime_img = anime_img['src']
        elif anime_img.has_attr('data-src'):
            anime_img = anime_img['data-src']
        else:
            anime_img = ''
    except Exception as e:
        print(e)
    
    url = requests.get(anime_url)
    
    if url.status_code == 200:
        
        soup = BeautifulSoup(url.content, 'html.parser')
        informations = soup.find_all("div", class_="spaceit_pad")
        
        dt = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        anime_syn = ''
        anime_jp = ''
        anime_en = ''
        anime_prem = ''
        anime_stu = ''
        anime_gen = ''
        anime_the = ''
        anime_demo = ''
        
        for information in informations:
            
            information_string = information.text.split(':',1)
    
            if len(information_string) > 1:
            
                information_category = information_string[0].strip()
                information_results = information_string[1].strip()
            
                if information_category == 'Synonyms':
                    anime_syn = information_results
                elif  information_category == 'Japanese':
                    anime_jp = information_results
                elif  information_category == 'English':
                    anime_en = information_results
                elif  information_category == 'Premiered':
                    anime_prem = information_results
                elif  information_category == 'Studios':
                    studios = information.find_all("a")
                    for studio in studios:
                        if len(anime_gen):
                            anime_stu += ',{}'.format(studio.text)
                        else:
                            anime_stu += '{}'.format(studio.text)
                    print(anime_stu)   
                elif  information_category == 'Genres':
                    genres = information.find_all("a")
                    for genre in genres:
                        if len(anime_gen):
                            anime_gen += ',{}'.format(genre.text)
                        else:
                            anime_gen += '{}'.format(genre.text)
                    print(anime_gen)   
                elif  information_category == 'Themes':
                    themes = information.find_all("a")
                    for theme in themes:
                        if len(anime_the):
                            anime_the += ',{}'.format(theme.text)
                        else:
                            anime_the += '{}'.format(theme.text)
                    print(anime_the)   
                elif  information_category == 'Demographic':
                    demos = information.find_all("a")
                    for demo in demos:
                        if len(anime_demo):
                            anime_demo += ',{}'.format(demo.text)
                        else:
                            anime_demo += '{}'.format(demo.text)
                    print(anime_demo)  
        
        #dictionary formatting for dataframe
        anime_dict = {'anime_name' : anime_name, 'anime_url' : anime_url, 'anime_img' : anime_img, 'Synonyms' : anime_syn, 'Japanese' : anime_jp, 'English' : anime_en, 'Premiered' : anime_prem, 'Studios' : anime_stu, 'Genres' : anime_gen, 'Themes' : anime_the, 'Demographic' : anime_demo, 'InsertTimeStampUTC' : dt}
        animes_df_data.append(anime_dict)
    
    print(anime_url)
    print(anime_name)
    
print(animes_df_data)


# ## Dataframe
df = pd.DataFrame(animes_df_data)

try:
    db_connection_str = 'mysql+pymysql://{}:{}@{}/{}'.format(USER,PASSWORD,HOST,DATABASE)
    db_connection = create_engine(db_connection_str)

    df = df.to_sql(con=db_connection,name='MyAnimeListAnimes',if_exists='append',index=False)
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
    db_connection.execute('call usp_LoadDimAnime')
    print(datetime.now())

except Error as e:
    print(e)

finally:
    db_connection.dispose()



