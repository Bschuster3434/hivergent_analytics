import json
import os
import datetime
import pandas as pd
from dateutil import tz

#JSON directory location
json_dir = r"C:\Users\Bschuster\Documents\hivergent_analytics"
json_dir += r"\ETL\dev\api_extracts\btc\json"

#Number of Satoshi in satoshi_to_BTC
satoshi_to_BTC = 100000000

def process_block_transactions(block_tx):
    '''
    Takes the raw transaction feed from btc.com tx api and
    processes the txs into the data format.
    '''
    processed_transactions = []
    raw_transactions = block_tx['data']['list']

    for i in raw_transactions:
        next_tx = {}

        #We are creating one 'transaction' per sender and ignoring
        #the receiver. We will build the attributes that will be
        #true for all transactions, then have a final loop to
        #go through the sender specfiic details.

        #transaction hash
        next_tx['transaction_hash'] = i['hash']

        #unixtimestamp
        timestamp = i['block_time']
        next_tx['unixtimestamp'] = timestamp

        #datetime
        #Telling python this time is in UTC
        time_zone = tz.gettz('UTC')
        utc_timestamp = datetime.datetime.utcfromtimestamp(timestamp)
        next_tx['datetime'] = utc_timestamp.strftime("%Y-%m-%d %H:%M:%S")

        #blockchain network name
        next_tx['blockchain_network_name'] = 'bitcoin'

        #sent currency name
        next_tx['sent_currency_name'] = 'btc'

        #status
        #if it's included in the BTC blockchain, it succeeded
        next_tx['status'] = 1

        #If Coinbase, sender is coinbase and will be sent as such
        if i['is_coinbase'] == True:
            #id
            next_tx['id'] = i['hash']

            #Sender Address
            next_tx['sender_address'] = 'coinbase'

            #Transaction Type
            next_tx['transaction_type_name'] = 'payment'

            #Transaction Subtype
            next_tx['transaction_subtype_name'] = 'coinbase'

            #fee
            next_tx['fee'] = 0

            #Sent Currency Amount
            next_tx['sent_currency_amount'] = i['outputs_value']/float(satoshi_to_BTC)

        else:

            for n, send_tx in enumerate(i['inputs']):
                #id
                next_tx['id'] = str(i['hash']) + '_' + str(n)

                #Sender Address
                next_tx['sender_address'] = send_tx['prev_addresses'][0]

                #Transaction Type
                next_tx['transaction_type_name'] = 'payment'

                #Transaction Subtype
                #Will likely need to be re-worked to get more complexity
                next_tx['transaction_subtype_name'] = 'simple_payment'

                #virtual fee calc
                #Virtual fee calculated because each send does not have a few, but the whole tx
                #We divide the fee by it's proportional amount of BTC sent
                #otherwise it's possible to get a negative amount sent :(
                total_value_of_inputs = i['inputs_value']
                percent_of_total_tx_sent = send_tx['prev_value']/float(total_value_of_inputs)
                virtual_fee = i['fee'] * percent_of_total_tx_sent
                next_tx['fee'] = virtual_fee/float(satoshi_to_BTC)

                #Sent Currency Amount
                #With a virtual fee, we need a virtual sent amount
                #Real sent minus virtual fee = virtual sent
                virtual_sent = send_tx['prev_value'] - virtual_fee
                next_tx['sent_currency_amount'] = virtual_sent/float(satoshi_to_BTC)

        processed_transactions.append(next_tx)

    return processed_transactions

def store_transaction_data(block_transactions, json_file_name):
    '''
    Takes a full set of block transactions and stores it as a csv.
    '''
    base_file_name = os.path.splitext(json_file_name)[0]
    csv_file_name = base_file_name + r".csv"
    csv_file_path = r"csv/" + csv_file_name

    print "Saving file: " + csv_file_name
    df = pd.DataFrame.from_dict(block_transactions)

    #column ordering goes here
    columns =  ['id', 'datetime', 'unixtimestamp', 'transaction_hash']
    columns += ['sender_address', 'transaction_type_name']
    columns += ['transaction_subtype_name', 'fee', 'blockchain_network_name']
    columns += ['sent_currency_name', 'sent_currency_amount', 'status']

    df = df[columns]

    df.to_csv(csv_file_path, index=False, header=False)

def main():
    #Go to the directory with all the Json files and return list of locations
    json_file_list = os.listdir(json_dir)

    #Go through each file individually and find the total # of blocks
    for json_file_name in json_file_list:
        print "Processing File: " + json_file_name
        block_transactions = []
        next_json_file = json_dir + r'/' + json_file_name

        #Open the file and load into JSON
        with open (next_json_file, 'r') as f:
            data = f.read()
            json_data = json.loads(data)

        #For each block, process all the transactions and return as a list
        block_keys = json_data.keys()

        for next_key in block_keys:
            print "Processing Block: " + next_key
            block_data = json_data[next_key]
            next_block_tx = process_block_transactions(block_data)
            block_transactions += next_block_tx
        #Store the file with the same name with CSV in the folder

        store_transaction_data(block_transactions, json_file_name)
        break

main()
