
# coding: utf-8

# In[1]:


import pandas
import requests
import datetime
import time
import json
from dateutil import parser


# In[2]:


#Different type of Ripple Transactions...
#https://ripple.com/build/transactions/
#denomination of XRP is 1,000,000 units to 1 XRP


# In[3]:


#https://ripple.com/build/data-api-v2/#get-transactions
url_endpoint = "https://data.ripple.com/v2/transactions/"
starting_datetime = datetime.datetime(2017,12,31,0,0)
iso_starting_datetime = starting_datetime.isoformat()
ending_timestamp = datetime.datetime(2017,12,31,1,0)
iso_ending_timestamp = ending_timestamp.isoformat()
total_api_calls = 1


# In[4]:


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


# In[5]:


params = {"start": iso_starting_datetime , "end" : iso_ending_timestamp, "limit" : 100}
resp = requests.get(url_endpoint, params=params)
resp_dict = json.loads(resp.content)


# In[6]:


resp_dict


# In[7]:


# Timestamp
# Unique Hash
# Account Sending
# Account Receiving (May be smart contract)
# Tx Fee
# Size of Data (I don't see this here... I'll skip it for now)
# Network Name (duh)
# Transaction Status
# Value of Tx

def process_transaction_batch(transactions):
    '''
    Goes through a list of transactions from the Ripple transactions api.
    Returns a list of processed transactions.
    '''
    processed_txs = []

    for n, i in enumerate(transactions):
        tx_datetime = parser.parse(i['date'])
        tx_formatted_date = tx_datetime.strftime("%Y-%m-%d %H:%M:%S")
        unix_timestamp = int(time.mktime(tx_datetime.timetuple()))

        next_tx = {'datetime': tx_formatted_date, 'unixtimestamp': unix_timestamp, 'network': "Ripple"}

        #Unique Hash
        next_tx['txhash'] = i['hash']

        #Transaction Type
        transaction_type = i['tx']['TransactionType']
        next_tx['txtype'] = transaction_type

        #Fee
        next_tx['txfee'] = '{0:f}'.format(float(i['tx']['Fee'])/float(1000000))
        next_tx['txfeedenom'] = 'XRP'

        if transaction_type == "OfferCreate":      

            #Sender Pays in not XRP, and receives not XRP
            if type(i['tx']["TakerGets"]) == type({}) and type(i['tx']["TakerPays"]) == type({}): 

                #Account Sending
                next_tx['sender'] = i['tx']['Account']

                #Amount Sent
                next_tx['valuesent'] = i['tx']['TakerGets']['value']

                #Amount Sent Denomination
                next_tx['valuesentdenom'] = i['tx']['TakerGets']['currency']

                #Account Receiving
                next_tx['receiver'] = "Unknown"

                #Amount Received
                next_tx['valuereceived'] = i['tx']['TakerPays']['value']

                #Received Denomination
                next_tx['valuereceiveddenom'] = i['tx']['TakerPays']['currency']


            #Sender Pays in XRP, but Receives not XRP    
            elif type(i['tx']["TakerGets"]) != type({}) and type(i['tx']["TakerPays"]) == type({}): 
                #Account Sending
                next_tx['sender'] = i['tx']['Account']

                #Amount Sent
                next_tx['valuesent'] = '{0:f}'.format(int(i['tx']['TakerGets'])/float(1000000))

                #Amount Sent Denomination
                next_tx['valuesentdenom'] = 'XRP'

                #Account Receiving
                next_tx['receiver'] = "Unknown"

                #Amount Received
                next_tx['valuereceived'] = i['tx']['TakerPays']['value']

                #Received Denomination
                next_tx['valuereceiveddenom'] = i['tx']['TakerPays']['currency']

            #Sender Pays in not XRP and receives XRP
            elif type(i['tx']["TakerGets"]) == type({}) and type(i['tx']["TakerPays"]) != type({}): 
                #Account Sending
                next_tx['sender'] = i['tx']['Account']

                #Amount Sent
                next_tx['valuesent'] = i['tx']['TakerGets']['value']

                #Amount Sent Denomination
                next_tx['valuesentdenom'] = i['tx']['TakerGets']['currency']

                #Account Receiving
                next_tx['receiver'] = "Unknown"

                #Amount Received
                next_tx['valuereceived'] = '{0:f}'.format(int(i['tx']['TakerPays'])/float(1000000))

                #Received Denomination
                next_tx['valuereceiveddenom'] = 'XRP'

            #Sender Pays in XRP and Receives XRP
            else:

                #Account Sending
                next_tx['sender'] = i['tx']['Account']

                #Amount Sent
                next_tx['valuesent'] = '{0:f}'.format(int(i['tx']['TakerGets'])/float(1000000))

                #Amount Sent Denomination
                next_tx['valuesentdenom'] = 'XRP'

                #Account Receiving
                next_tx['receiver'] = "Unknown"

                #Amount Received
                next_tx['valuereceived'] = '{0:f}'.format(int(i['tx']['TakerPays'])/float(1000000))

                #Received Denomination
                next_tx['valuereceiveddenom'] = 'XRP'

        elif transaction_type == 'Payment':
                #Account Sender
                next_tx['sender'] = i['tx']['Account']

                #Account Receiving
                next_tx['receiver'] = i['tx']['Destination']
                
                #Sometimes payments are in amounts other than XRP
                if type(i['tx']['Amount']) == type({}):
                    #Amount Received
                    next_tx['valuereceived'] = i['tx']['Amount']['value']
                    
                    #Received Denomination
                    next_tx['valuereceiveddenom'] = i['tx']['Amount']['currency']

                    #Amount Sent
                    next_tx['valuesent'] = i['tx']['Amount']['value']
                    
                    #Amount Sent Denomination
                    next_tx['valuesentdenom'] = i['tx']['Amount']['currency']
                
                else:
                    #Amount Received
                    next_tx['valuereceived'] = '{0:f}'.format(int(i['tx']['Amount'])/float(1000000))
                    
                    #Received Denomination
                    next_tx['valuereceiveddenom'] = 'XRP'

                    #Amount Sent
                    next_tx['valuesent'] = '{0:f}'.format(int(i['tx']['Amount'])/float(1000000))
                    
                    #Amount Sent Denomination
                    next_tx['valuesentdenom'] = 'XRP'
                
        processed_txs.append(next_tx)

    return processed_txs


# In[8]:


processed_txs = []
params = {"start": iso_starting_datetime , "end" : iso_ending_timestamp, "limit" : 100}

for i in range(total_api_calls):
    if i%10 == 0:
        print "Number of Cycles: " + str(i)
        print datetime.datetime.now()
    resp = requests.get(url_endpoint, params=params)
    resp_dict = json.loads(resp.content)
    transactions = resp_dict['transactions']
    processed_txs = processed_txs + process_transaction_batch(transactions)
    if 'marker' in resp_dict:
        params['marker'] = resp_dict['marker']
    else:
        break


# In[9]:


transactions[0]


# In[35]:


df = pandas.DataFrame.from_dict(processed_txs)

df.to_csv("Ripple_20171231_transactions.csv")


# In[34]:


len(processed_txs)

