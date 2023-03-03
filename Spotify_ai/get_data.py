import spotipy
import time
from IPython.core.display import clear_output
from spotipy import SpotifyClientCredentials, util
import matplotlib.pyplot as plt
import pandas as pd

client_id='53a0bab29d3b45aeae877299a704298a'
client_secret='c25929839f5b491893397b47963f503d'
redirect_uri='http://localhost/'
username = '31bq4d3qklibebsl4sc6mbmo7u3i'
scope = 'playlist-modify-public'

#Credentials to access the Spotify Music Data
manager = SpotifyClientCredentials(client_id,client_secret)
sp = spotipy.Spotify(client_credentials_manager=manager)

#Credentials to access to  the Spotify User's Playlist, Favorite Songs, etc. 
token = util.prompt_for_user_token(username,scope,client_id,client_secret,redirect_uri) 
spt = spotipy.Spotify(auth=token)

def get_songs_features(ids):
    
    meta = sp.track(ids)
    features = sp.audio_features(ids)

    # meta
    name = meta['name']
    album = meta['album']['name']
    artist = meta['album']['artists'][0]['name']
    release_date = meta['album']['release_date']
    length = meta['duration_ms']
    popularity = meta['popularity']
    ids =  meta['id']

    # features
    acousticness = features[0]['acousticness']
    danceability = features[0]['danceability']
    energy = features[0]['energy']
    instrumentalness = features[0]['instrumentalness']
    liveness = features[0]['liveness']
    valence = features[0]['valence']
    loudness = features[0]['loudness']
    speechiness = features[0]['speechiness']
    tempo = features[0]['tempo']
    key = features[0]['key']
    time_signature = features[0]['time_signature']

    track = [name, album, artist, ids, release_date, popularity, length, danceability, acousticness,
            energy, instrumentalness, liveness, valence, loudness, speechiness, tempo, key, time_signature]
    columns = ['name','album','artist','id','release_date','popularity','length','danceability','acousticness','energy','instrumentalness',
                'liveness','valence','loudness','speechiness','tempo','key','time_signature']
    return track,columns

def download_playlist(id_playlist,n_songs):
    songs_id = []
    tracks = []

    for i in range(0,n_songs,100):
        playlist = spt.playlist_tracks(id_playlist,limit=45,offset=i)
        
        for songs in playlist['items']:
            songs_id.append(songs['track']['id'])
    
    counter = 1
    for ids in songs_id:
        
        time.sleep(.6)
        track,columns = get_songs_features(ids)
        tracks.append(track)

        print(f"Song {counter} Added:")
        print(f"{track[0]} By {track[2]} from the album {track[1]}")
        clear_output(wait = True)
        counter+=1
    
    clear_output(wait = True)
    print("Music Downloaded!")

    return tracks, columns

#energy
tracks, columns = download_playlist('37i9dQZF1DX0vHZ8elq0UK',45)
df1 = pd.DataFrame(tracks,columns=columns)
mood_1 = []
for i in range(0,45):
    mood_1.append('energetic')
    i = i+1
    
df1['Mood'] = mood_1
df1.head()
df1.to_csv('Spotify_ai/data/df1.csv',index=False)
df1.describe(include='all')

#sad
tracks, columns = download_playlist('4dsMcfg4je97bBXtC1lTDG',45)
df2 = pd.DataFrame(tracks,columns=columns)
mood_2 = []
for i in range(0,45):
    mood_2.append('sad')
    i = i+1
    
df2['Mood'] = mood_2
df2.head()
df2.to_csv('Spotify_ai/data/df2.csv',index=False)
df2.describe(include='all')

#happy
tracks, columns = download_playlist('3Moh3eljVTH87y3tsoyzpf',45)
df3 = pd.DataFrame(tracks,columns=columns)
mood_3 = []
for i in range(0,45):
    mood_3.append('happy')
    i = i+1
    
df3['Mood'] = mood_3
df3.head()
df3.to_csv('Spotify_ai/data/df3.csv',index=False)
df3.describe(include='all')

#calm
tracks, columns = download_playlist('6EIVswdPfoE9Wac7tB6FNg',45)
df4 = pd.DataFrame(tracks,columns=columns)
mood_4 = []
for i in range(0,45):
    mood_4.append('calm')
    i = i+1
    
df4['Mood'] = mood_4
df4.head()
df4.to_csv('Spotify_ai/data/df4.csv',index=False)
df4.describe(include='all')

print(df1)
print(df2)
print(df3)
print(df4)