import json
import os
import datetime
import pandas as pd
from dateutil import tz

#JSON directory location
json_dir = r"C:\Users\Bschuster\Documents\hivergent_analytics"
json_dir += r"\ETL\dev\api_extracts\eth\json"

def process_ethereum_json(json_data):
    '''
    Takes the Ripple raw json and adds my defined
    datatypes to the set.

    Returns the data as a list of dictionaries, each
    dictionary as a new transaction on the blockchain.
    '''
    #Read Ethereum transactions
    processed_transactions = []
    raw_transactions = json_data['result']['transactions']

    pass

def store_transaction_data(transactions, json_file_name):
    '''
    Takes the transaction data and stores the information
    as a CSV files. Uses the same name as the json file,
    minus the file type name.
    '''

    base_file_name = os.path.splitext(json_file_name)[0]
    csv_file_name = base_file_name + r".csv"
    csv_file_path = r"csv/" + csv_file_name

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
