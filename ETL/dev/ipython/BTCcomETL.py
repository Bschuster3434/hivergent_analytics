
# coding: utf-8

# In[1]:


import pandas
import requests
from requests.compat import urljoin
import datetime
import time
import json


# In[2]:


#Appears to be a freely available BTC API
#https://btc.com/api-doc#General


# In[6]:


#Starting Point for analysis
starting_block = 501798 #Dec 31st 2017 start
ending_block = 501960 #Dec 31st 2017 end
get_blocks_by_range = 10
satoshi_to_BTC = 100000000


# In[7]:


#https://chain.api.btc.com/v3/block/3
url_endpoint = "https://chain.api.btc.com"


# In[8]:


#Datapoints per transaction needed
# Timestamp
# Unique Hash
# Account Sending
# Account Receiving (May be smart contract)
# Tx Fee
# Size of Data
# Network Name (duh)
# Transaction Status
# Value of Transaction


# In[9]:


processed_txs = []

for b in range(get_blocks_by_range):
    next_block = starting_block + b
    next_url_call = urljoin(url_endpoint, "v3/block/" + str(next_block) + "/tx")
    resp = json.loads(requests.get(next_url_call).content)

    transactions = resp['data']['list']

    for i in transactions:
        next_tx = {'network': "Bitcoin"}

        #Unique Hash
        next_tx['txhash'] = i['hash']

        #Timestamps
        timestamp = i['block_time']
        next_tx['unixtimestamp'] = timestamp
        next_tx['datetime'] = datetime.datetime.fromtimestamp(timestamp).strftime("%Y-%m-%d %H:%M:%S")

        #Account Sending
        if i['is_coinbase']:
            next_tx['sender'] = 'Coinbase' #Can we do a numeric value to define coinbase?
        else:
            next_tx['sender'] = "SomeNumberOfSenders"

        #Account Receiving
        next_tx['receiver'] = "SomeNumberOfReceivers"

        #TxFee
        if i['is_coinbase']:
            next_tx['txfee'] = 0
        else:
            next_tx['txfee'] = i['fee']/float(satoshi_to_BTC)

        #Status
        if i['is_double_spend']:
            next_tx['status'] = 0
        else:
            next_tx['status'] = 1

        #Value of Transaction
        next_tx['value'] = i['outputs_value']/float(satoshi_to_BTC)

        processed_txs.append(next_tx)
    
    time.sleep(.5)
    
    if b%10 == 0:
        print "Current Block: " + str(next_block)
        print "Total blocks processed: " + str(b)
        print "Total Transactions processed: " + str(len(processed_txs))
        print datetime.datetime.now()

print "Completed"
print datetime.datetime.now()


# In[15]:


transactions[4]


# In[74]:


df = pandas.DataFrame.from_dict(processed_txs)

df.to_csv("Bitcoin_20171231_transactions.csv")

