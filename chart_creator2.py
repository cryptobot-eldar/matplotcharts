import numpy as np
##for not using X windows
import matplotlib
matplotlib.use('Agg')
###
import matplotlib.pyplot as plt
import os

with open('data/out2.csv', 'r') as myfile:
    #market=myfile.read().replace('\n', ' ')
    market=myfile.read().splitlines()

with open('data/out3.csv', 'r') as myfile:
    #profit=myfile.read().replace('\n', ' ')
    #profit=myfile.read().splitlines()
    profit = map(float, myfile)

with open('data/out4.csv', 'r') as myfile:
    #profit=myfile.read().replace('\n', ' ')
    #profit=myfile.read().splitlines()
    count = map(int, myfile)

index = np.arange(len(market))
n_groups=len(index)
fig, ax = plt.subplots()
index = np.arange(n_groups)
bar_width = 0.35
opacity = 0.4
rects1 = ax.bar(index, profit, bar_width, alpha=opacity, color='b',label='Profit')
rects2 = ax.bar(index + bar_width, count, bar_width, alpha=opacity, color='r',label='Trades')
ax.set_xlabel("Markets", fontsize=15)
ax.set_ylabel("Profit", fontsize=15 )
ax.set_title("Cryptocurrencies chart")
ax.set_xticks(index + bar_width / 2)
ax.set_xticklabels(market, fontsize=10, rotation=90)
ax.legend()
fig.tight_layout()
plt.grid(True)
plt.savefig('/var/www/html/images/crypto_results2.png')
os.remove("data/out2.csv")
os.remove("data/out3.csv")
os.remove("data/out4.csv")
print("Files Removed!")
#plt.savefig('/root/PycharmProjects/cryptobot/images/crypto_results2.png')
#plt.show()





