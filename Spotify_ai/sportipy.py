import numpy as np 
import pandas as pd 
import matplotlib.pyplot as plt
import seaborn as sns

#Libraries to create the multiclass model
from tempfile import TemporaryFile
from keras.models import Sequential, model_from_json
from keras.layers import Dense
from keras.wrappers.scikit_learn import KerasClassifier
from keras.utils import np_utils
#Import tensorflow and disable the v2 behavior and eager mode
import tensorflow as tf
from tensorflow.keras.models import Sequential, model_from_json
from tensorflow.keras.layers import Dense
tf.compat.v1.disable_eager_execution()
tf.compat.v1.disable_v2_behavior()

#Library to validate the model
from sklearn.model_selection import cross_val_score, KFold, train_test_split
from sklearn.preprocessing import LabelEncoder,MinMaxScaler
from sklearn.pipeline import Pipeline
from sklearn.metrics import confusion_matrix, accuracy_score

import spotipy
import time
from IPython.display import clear_output
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

df1 = pd.read_csv('Spotify_ai/data/df1.csv')
df2 = pd.read_csv('Spotify_ai/data/df2.csv')
df3 = pd.read_csv('Spotify_ai/data/df3.csv')
df4 = pd.read_csv('Spotify_ai/data/df4.csv')

df = pd.concat([df1,df2,df3, df4],axis = 0)
col_features = df.columns[6:-3]
X= MinMaxScaler().fit_transform(df[col_features])
X2 = np.array(df[col_features])
Y = df['Mood']

#Encodethe categories
encoder = LabelEncoder()
encoder.fit(Y)
encoded_y = encoder.transform(Y)


X_train,X_test,Y_train,Y_test = train_test_split(X,encoded_y, test_size=0.2, random_state=15)

target = pd.DataFrame({'Mood':df['Mood'].tolist(),'encode':encoded_y}).drop_duplicates().sort_values(['encode'],ascending=True)
print(target)


def base_model():
    #Create the model
    model = Sequential()
    #Add 1 layer with 8 nodes,input of 4 dim with relu function
    model.add(Dense(8,input_dim=10,activation='relu'))
    #Add 1 layer with output 3 and softmax function
    model.add(Dense(4,activation='softmax'))
    #Compile the model using sigmoid loss function and adam optim
    model.compile(loss='categorical_crossentropy',optimizer='adam',
                 metrics=['accuracy'])
    return model

estimator = KerasClassifier(build_fn=base_model,epochs=300,batch_size=50,verbose=0)


#Evaluate the model using KFold cross validation
kfold = KFold(n_splits=10,shuffle=True)
results = cross_val_score(estimator,X,encoded_y,cv=kfold)
print("Baseline: %.2f%% (%.2f%%)" % (results.mean()*100,results.std()*100))


estimator.fit(X_train,Y_train)  
y_preds = estimator.predict(X_test)
cm = confusion_matrix(Y_test,y_preds)
ax = plt.subplot()
sns.heatmap(cm,annot=True,ax=ax)

labels = target['Mood']
ax.set_xlabel('Predicted labels')
ax.set_ylabel('True labels')
ax.set_title('Confusion Matrix')
ax.xaxis.set_ticklabels(labels)
ax.yaxis.set_ticklabels(labels)
# plt.show()

print("Accuracy Score",accuracy_score(Y_test,y_preds))

def predict_mood(id_song):
    #Join the model and the MinMaxScaler in a Pipeline
    pip = Pipeline([('minmaxscaler',MinMaxScaler()),('keras',
                     KerasClassifier(build_fn=base_model,epochs=300,
                     batch_size=200,verbose=0))])
#Fit the Pipeline
    pip.fit(X2,encoded_y)
    
   #Obtain the features of the song (Function created on helpers.py)
    preds = get_songs_features(id_song)
#Pre-processing the input features for the Model
    preds_features = np.array(preds[0][6:-2]).reshape(-1,1).T
   
    #Predict the features of the song
    results = pip.predict(preds_features)
    mood = np.array(target['Mood'][target['encode']==int(results)])
    
    #Obtain the name of the song and the artist
    name_song = preds[0][0]
    artist = preds[0][2]
#Store the name,artist and mood of the song to print.
    return mood
    
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
    moooodsss = []

    for i in range(0,n_songs,100):
        playlist = spt.playlist_tracks(id_playlist,limit=100,offset=i)        
        for songs in playlist['items']:
            songs_id.append(songs['track']['id'])
        
    for ids in songs_id:
        if ids == None:
            songs_id.pop(songs_id.index(ids))
       
    for ids in songs_id:
        
        if ids != None:
            moooodsss.append(predict_mood(ids))
    
    return moooodsss
        
    clear_output(wait = True)
    print("Music Downloaded!")

    return tracks, columns

moodnes = download_playlist('0522MSmE2fPrk4kSiJ70tw', 50)
cal = [0,0,0,0]
for mood in moodnes:
    if  mood == 'energatic':
        cal[0] = cal[0] + 1
    elif mood == 'calm':
        cal[1] = cal[1] + 1
    elif mood == 'happy':
        print(cal[2])
        cal[2] = cal[2] + 1
    elif mood == 'sad':
        cal[3] = cal[3] + 1
mood_tag = ''

if cal[0] > cal[1] and cal[0] > cal[2] and cal[0] > cal[3]:
    mood_tag = 'energatic'
elif cal[1] > cal[0] and cal[1] > cal[2] and cal[1] > cal[3]:
    mood_tag = 'calm'
elif cal[2] > cal[1] and cal[2] > cal[0] and cal[2] > cal[3]:
    mood_tag = 'happy'
else:
    mood_tag = 'sad'

# add this shit to the user data 