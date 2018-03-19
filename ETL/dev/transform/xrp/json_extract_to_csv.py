import json
import os
import datetime
import time
import pandas as pd
from dateutil import tz
from dateutil import parser


json_dir = r"C:\Users\Bschuster\Documents\hivergent_analytics"
json_dir += r"\ETL\dev\api_extracts\xrp\json"

#XRP given denomination
given_denomination_to_xrp = float(1000000)

def classify_ripple_transaction_subtype(transaction_subtype):
    '''
    Takes the transaction subtype native to ripple and rolls
    it up to one of three types: "payment", "exchange", "admin".

    returns a string.
    '''

    exchange_types = ['OfferCreate', 'OfferCancel']
    payment_types = ['Payment']
    admin_types = ['SetRegularKey', 'TrustSet', 'AccountSet']

    if transaction_subtype in exchange_types:
        return 'exchange'
    elif transaction_subtype in payment_types:
        return "payment"
    elif transaction_subtype in admin_types:
        return 'admin'
    else:
        return "unknown"

def process_ripple_json(json_data):
    '''
    Takes the Ripple raw json and adds my defined
    datatypes to the set.

    Returns the data as a list of dictionaries, each
    dictionary as a new transaction on the blockchain.
    '''
    processed_transactions = []
    raw_transactions = json_data['txs']

    for n, i in enumerate(raw_transactions):
        #Give notice of which transaction we've processed
        if n%500 == 0:
            print "Now printing Transaction #: " + str(n)

        tx_datetime = parser.parse(i['date'])
        tx_formatted_date = tx_datetime.strftime("%Y-%m-%d %H:%M:%S")
        unix_timestamp = int(time.mktime(tx_datetime.timetuple()))
        network_name = 'ripple'

        next_tx = {'datetime': tx_formatted_date, 'unixtimestamp': unix_timestamp,\
                        'blockchain_network_name': network_name}

        #Unique Hash
        next_tx['transaction_hash'] = i['hash']
        next_tx['id'] = network_name + '_' + i['hash']

        #Transaction Subype
        transaction_subtype = i['tx']['TransactionType']
        next_tx['transaction_subtype_name'] = transaction_subtype

        #Transaction type
        transaction_type = classify_ripple_transaction_subtype(transaction_subtype)
        next_tx['transaction_type_name'] = transaction_type

        #Fee
        next_tx['fee'] = '{0:f}'.format(float(i['tx']['Fee'])/given_denomination_to_xrp)

        #Status
        if i['meta']['TransactionResult'] == 'tesSUCCESS':
            next_tx['status'] = 1
        else:
            next_tx['status'] = 0

        #Going through each subtype as needed
        if transaction_subtype == "OfferCreate":

            #Sender Pays in not XRP, and receives not XRP
            if type(i['tx']["TakerGets"]) == type({}) and type(i['tx']["TakerPays"]) == type({}):

                #Account Sending
                next_tx['sender_address'] = i['tx']['Account']

                #Amount Sent
                next_tx['sent_currency_amount'] = i['tx']['TakerGets']['value']

                #Amount Sent Denomination
                next_tx['sent_currency_name'] = i['tx']['TakerGets']['currency'].upper()

                #Amount Received
                next_tx['exchange_received_amount'] = i['tx']['TakerPays']['value']

                #Received Denomination
                next_tx['exchange_received_currency_name'] = i['tx']['TakerPays']['currency'].upper()


            #Sender Pays in XRP, but Receives not XRP
            elif type(i['tx']["TakerGets"]) != type({}) and type(i['tx']["TakerPays"]) == type({}):
                #Account Sending
                next_tx['sender_address'] = i['tx']['Account']

                #Amount Sent
                next_tx['sent_currency_amount'] = '{0:f}'.format(int(i['tx']['TakerGets'])/float(1000000))

                #Amount Sent Denomination
                next_tx['sent_currency_name'] = 'XRP'

                #Amount Received
                next_tx['exchange_received_amount'] = i['tx']['TakerPays']['value']

                #Received Denomination
                next_tx['exchange_received_currency_name'] = i['tx']['TakerPays']['currency'].upper()

            #Sender Pays in not XRP and receives XRP
            elif type(i['tx']["TakerGets"]) == type({}) and type(i['tx']["TakerPays"]) != type({}):
                #Account Sending
                next_tx['sender_address'] = i['tx']['Account']

                #Amount Sent
                next_tx['sent_currency_amount'] = i['tx']['TakerGets']['value']

                #Amount Sent Denomination
                next_tx['sent_currency_name'] = i['tx']['TakerGets']['currency'].upper()

                #Amount Received
                next_tx['exchange_received_amount'] = '{0:f}'.format(int(i['tx']['TakerPays'])/float(1000000))

                #Received Denomination
                next_tx['exchange_received_currency_name'] = 'XRP'

            #Sender Pays in XRP and Receives XRP
            else:

                #Account Sending
                next_tx['sender_address'] = i['tx']['Account']

                #Amount Sent
                next_tx['sent_currency_amount'] = '{0:f}'.format(int(i['tx']['TakerGets'])/float(1000000))

                #Amount Sent Denomination
                next_tx['sent_currency_name'] = 'XRP'

                #Amount Received
                next_tx['exchange_received_amount'] = '{0:f}'.format(int(i['tx']['TakerPays'])/float(1000000))

                #Received Denomination
                next_tx['exchange_received_currency_name'] = 'XRP'

        elif transaction_subtype == 'Payment':
                #Account Sender
                next_tx['sender_address'] = i['tx']['Account']

                #Sometimes payments are in amounts other than XRP
                if type(i['tx']['Amount']) == type({}):
                    #Amount Received
                    next_tx['exchange_received_amount'] = i['tx']['Amount']['value']

                    #Received Denomination
                    next_tx['exchange_received_currency_name'] = i['tx']['Amount']['currency'].upper()

                    #Amount Sent
                    next_tx['sent_currency_amount'] = i['tx']['Amount']['value']

                    #Amount Sent Denomination
                    next_tx['sent_currency_name'] = i['tx']['Amount']['currency'].upper()

                else:
                    #Amount Received
                    next_tx['exchange_received_amount'] = '{0:f}'.format(int(i['tx']['Amount'])/float(1000000))

                    #Received Denomination
                    next_tx['exchange_received_currency_name'] = 'XRP'

                    #Amount Sent
                    next_tx['sent_currency_amount'] = '{0:f}'.format(int(i['tx']['Amount'])/float(1000000))

                    #Amount Sent Denomination
                    next_tx['sent_currency_name'] = 'XRP'

        processed_transactions.append(next_tx)

    return processed_transactions

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
    columns =  ['id', 'datetime', 'unixtimestamp', 'transaction_hash']
    columns += ['sender_address', 'transaction_type_name']
    columns += ['transaction_subtype_name', 'fee', 'blockchain_network_name']
    columns += ['sent_currency_name', 'sent_currency_amount']
    columns += ['exchange_received_currency_name', 'exchange_received_amount']
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

        #Process the transations
        ## and place them in the right data type
        transactions = process_ripple_json(json_data)

        #Place the file into a csv formatted file with
        ##the same name
        store_transaction_data(transactions, json_file_name)

main()
