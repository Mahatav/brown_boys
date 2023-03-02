from get_data import*
import matplotlib.pyplot as plt

fig,axes = plt.subplots(2,2,figsize=(15,8))

axes[0,0].hist(df1['danceability'])
axes[0,0].set_title('Danceability',fontsize=15)
axes[0,1].hist(df1['energy'])
axes[0,1].set_title('Energy',fontsize=15)
axes[1,0].hist(df1['valence'])
axes[1,0].set_title('Valence',fontsize=15)
axes[1,1].hist(df1['loudness'])
axes[1,1].set_title('Loudness',fontsize=15)
plt.show()

