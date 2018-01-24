
# coding: utf-8

# In[1]:


import pandas
import requests
import datetime
import time
import json


# In[2]:


etherscan_api_key = "SU775DFF8GEGMER3B8ZPK3QZIJWGIBE45T"
url_endpoint = "https://api.etherscan.io/api"


# In[6]:


#Starting Point for analysis
starting_block = 4826779 #Dec 31st 2017 start
ending_block = 4832685 #Dec 31st 2017 end
hex_starting_block = hex(starting_block)
hex_end_block = hex(ending_block)
get_blocks_by_range = 1


# In[7]:


wei_in_ETH = 1000000000000000000

def tx_cost_in_ETH(gasused, gasprice):
    '''
    Does the conversion to get the actual transaction fee (in ETH) for each ethereum transaction.
    '''
    cost_in_eth = (gasused * gasprice)/float(wei_in_ETH)
    return cost_in_eth


# In[8]:


#Datapoints per transaction needed
# Timestamp
# Unique Hash
# Account Sending
# Account Receiving (May be smart contract)
# Tx Fee
# Size of Data (I don't see this here... I'll skip it for now)
# Network Name (duh)
# Transaction Status
# Value of Tx


# In[9]:


#Transactions processed for this group of blocks
processed_txs = []

#Loop for all transactions
for b in range(get_blocks_by_range):
    #Get Transactions in a Block
    #https://github.com/ethereum/wiki/wiki/JSON-RPC#eth_gettransactionbyhash
    next_block = starting_block + b
    hex_next_block = hex(next_block)
    
    if b%10 == 0:
        print "Now on Block: " + str(next_block)
        print "Total Block Count: " + str(b)
    
    #Go and grab all transactions in the block
    params = {"module":"proxy", "action":"eth_getBlockByNumber", "tag" : hex_starting_block, "boolean":"true", "apikey": etherscan_api_key}
    resp = requests.get(url_endpoint, params=params)
    resp_dict = json.loads(resp.content) #Get a string, must eval to a dict

    #Timestamp

    timestamp = int(resp_dict['result']['timestamp'],0)
    unix_timestamp = int(resp_dict['result']['timestamp'],0)
    timestamp = datetime.datetime.fromtimestamp(timestamp).strftime("%Y-%m-%d %H:%M:%S")

    #Every other feature will be found in the transactions

    transactions = resp_dict['result']['transactions']

    for i in transactions:
        #Initialize the next transaction
        next_tx = {'datetime': timestamp, 'unixtimestamp': unix_timestamp, 'network': "Ethereum"}

        #Unique Hash
        next_tx['txhash'] = i['hash']

        #Account Sending
        next_tx['sender'] = i['from']

        #Account Receiving
        next_tx['receiver'] = i['to']

        #Tx Fee
        #Can't evaluate the fee until we get the receipt info, which is a separate call.
        #Oh Bother.
        next_tx['gasprice'] = int(i['gasPrice'],0)  
        
        #Value
        #converting from hex, to int, then from wei to ETH
        next_tx['value'] = int(i['value'],0)/float(wei_in_ETH)

        processed_txs.append(next_tx)

#Now I'm going through and grabbing the transaction hashes

total_transactions_to_process = len(processed_txs)

print "Total count of txs: " + str(total_transactions_to_process)
print datetime.datetime.now()

for n, i in enumerate(processed_txs):
    tx_hash = i['txhash']
    
    if n%100 == 0:
        print "Total Transactions processed: " + str(n)
        print datetime.datetime.now()

    params = {"module":"proxy", "action":"eth_getTransactionReceipt", "txhash" : tx_hash, "apikey": etherscan_api_key}
    resp = requests.get(url_endpoint, params=params)
    resp_dict = json.loads(resp.content)

    i["gasused"] = int(resp_dict['result']['gasUsed'],0)
    i['status'] = int(resp_dict['result']['status'],0)
    i['txfee'] = tx_cost_in_ETH(i['gasused'], i['gasprice'])

print "Completed"
print datetime.datetime.now()


# In[12]:


transactions[2]


# In[39]:


df = pandas.DataFrame.from_dict(processed_txs)

df.to_csv("Ethereum_20171231_transactions.csv")

