import numpy as np

##for not using X windows
import matplotlib
matplotlib.use('Agg')
###

import matplotlib.pyplot as plt
import matplotlib.dates as mdates
import MySQLdb
import pandas as pd
import pymysql
from sqlalchemy import create_engine
import os




engine = create_engine('mysql+pymysql://root:123456@database-service:3306/cryptodb')
df = pd.read_sql_query('SELECT serf FROM statistics', engine)

#df['day'] = df['date'].astype(str).str[:10]
#df = df.drop('date', 1)
#cols = list(df)
#cols.insert(0, cols.pop(cols.index('day')))
#df = df.reindex(columns=cols)

df.to_csv('data/out.csv', header=None, sep=' ')

print df

#days, summ = np.loadtxt("out.csv", unpack=True, converters={ 0: mdates.strpdate2num('%Y-%m-%d %H:%M')})
days, summ = np.loadtxt("data/out.csv", unpack=True)

x=days
y=summ


plt.plot(x, y, c='r')
plt.title("Cryptobot chart")
plt.ylabel("Profit %")
plt.xlabel("Trades")
plt.grid(True)
plt.savefig('/var/www/html/images/crypto_results.png', bbox_inches='tight')
os.remove("data/out.csv")
print("File Removed!")
#plt.savefig('/root/PycharmProjects/cryptobot/images/crypto_results.png', bbox_inches='tight')
#plt.show()
