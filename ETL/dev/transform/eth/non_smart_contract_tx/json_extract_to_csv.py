import json
import os
import datetime
import time
import pandas as pd
from dateutil import tz

#JSON directory location
json_dir = r"C:\Users\Bschuster\Documents\hivergent_analytics"
json_dir += r"\ETL\dev\api_extracts\eth\json"

#Global Variables
wei_in_ETH = 1000000000000000000

def tx_cost_in_ETH(gasused, gasprice):
    '''
    Does the conversion to get the actual transaction fee (in ETH) for each ethereum transaction.
    '''
    cost_in_eth = (gasused * gasprice)/float(wei_in_ETH)
    return cost_in_eth

def process_ethereum_json(json_data):
    '''
    Takes the ethereum raw json and adds my defined
    datatypes to the set. Will only process non smart contract
    transactions, defined by those with only '0x' data inputs.

    Returns the data as a list of dictionaries, each
    dictionary as a new transaction on the blockchain.
    '''
    #Read Ethereum transactions
    processed_transactions = []
    raw_blocks = json_data

    #Go through ordered list of keys
    for next_key in raw_blocks.key():
        #Find the next block and raw list of transactions
        next_raw_block = raw_blocks[next_key]
        next_raw_transactions = next_raw_block['result']['transactions']

        #Block Level time datapoints
        raw_timestamp = int(next_raw_block['result']['timestamp'],0)

        unix_timestamp = raw_timestamp
        timestamp = datetime.datetime.fromtimestamp(raw_timestamp).strftime("%Y-%m-%d %H:%M:%S")

        #go through list of transactions
        for next_transaction in next_raw_transactions:
            #if the transaction does not have u'0x', ignore it
            next_input = next_transaction['block']['input']

            if next_input != u'0x':
                continue
            #rest of the transaction processing otherwise
            else:


    pass

def store_transaction_data(transactions, json_file_name):
    '''
    Takes the transaction data and stores the information
    as a CSV files. Uses the same name as the json file,
    minus the file type name.
    '''

    base_file_name = os.path.splitext(json_file_name)[0]
    csv_file_name = base_file_name + r".csv"
    csv_file_path = r"csv/non_smart_contract_tx/" + csv_file_name

    print "Saving file: " + csv_file_name
    df = pd.DataFrame.from_dict(transactions)

    #column ordering goes here
    #TODO: Decide if exchange amounts can be parsed
    columns =  ['id', 'datetime', 'unixtimestamp', 'transaction_hash']
    columns += ['sender_address', 'transaction_type_name']
    columns += ['transaction_subtype_name', 'fee', 'blockchain_network_name']
    columns += ['sent_currency_name', 'sent_currency_amount']
    #columns += ['exchange_received_currency_name', 'exchange_received_amount']
    columns += ['status']

    df = df[columns]

    df.to_csv(csv_file_path, index=False, header=False)

def main():
    #Go and read the files in the json directory

    json_file_list = os.listdir(json_dir)

    for json_file_name in json_file_list:
        print "Processing File: " + json_file_name
        next_json_file = json_dir + r'/' + json_file_name

        #Open the file and load into Json
        with open (next_json_file, 'r') as f:
            data = f.read()
            json_data = json.loads(data)

        #Process the Transactions
        ##and place them into the right datatype

        transactions = process_ethereum_json(json_data)

        #Place the file into a csv formatted file with
        ##the same name

        store_transaction_data(transactions, json_file_name)
