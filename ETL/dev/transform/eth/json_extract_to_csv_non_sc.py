import json
import os
import datetime
import time
import pandas as pd
from dateutil import tz
import sha3


#JSON directory location
json_dir = r"C:\Users\Bschuster\Documents\hivergent_analytics"
json_dir += r"\ETL\dev\api_extracts\eth\json"

#ABI Research for 12/31/17
df_abi = pd.read_csv('123117_smart_contract_abis.csv')

#Smart Contract Descriptive details
df_sc_desc = pd.read_csv('123117_final_processed_sc.csv')
df_sc_desc = df_sc_desc.fillna('nan')

#Global Variables
wei_in_ETH = 1000000000000000000
network_name = 'ethereum'

def process_input(input_data):
    '''
    Processes the Input for ABI.
    Returns as a dict.
    '''
    result = {}

    for i in range(len(input_data[10:])/64):
        next_input = input_data[:64]
        start_data_input = input_data[64:]
        next_label = 'data_' + str(i).zfill(3)
        result[next_label] = next_input

    return result

def return_function_name_from_abi(input, contract_abi):
    #parse input data to grab hash
    hash_to_match = input[2:10]
    #Go through contract abi and create hash
    for i in contract_abi:
        try:
            next_ascii_function = i['name'] + u'('
        except KeyError:
            #print "No Name Value, continuing"
            continue
        for e in i['inputs']:
            next_ascii_function += e['type']
            if e != i['inputs'][-1]:
                next_ascii_function += ','
        next_ascii_function += u')'

        #print next_ascii_function

        k = sha3.keccak_256()
        k.update(str(next_ascii_function))
        next_func_hash = k.hexdigest()[:8]

        if hash_to_match == next_func_hash:
            #print next_ascii_function
            #Need to add a process of processing abi results
            return next_ascii_function, i #i is the raw abi

    #No Match Found
    return None, None

def categorize_smart_contract(next_tx, tx_data, abi):
    '''
    Go through and codify smart contracts based on logic from the abi and
    description.

    Categorizes Type, Subtype, Function Name
    Also Adds Sent Currency Name/Amount and Exchange Received and Amount
    where applicable.

    Returns the next_tx type with completed fields.
    '''
    i_block = tx_data['block']
    i_receipt = tx_data['receipt']

    next_input = tx_data['block']['input']

    ascii_name, raw_abi = return_function_name_from_abi(i_block['input'], json.loads(abi))

    #If no ascii name, means that we don't know the name of the function
    if ascii_name == None:
        #This will need to be handled as an unknown
        next_tx['transaction_type_name'] = 'admin'
        next_tx['transaction_subtype_name'] = 'uncategorized_smart_contract'
        return next_tx

    #Has a Function Path
    processed_input_data = process_input(next_input)
    sc_description = df_sc_desc[(df_sc_desc['smart_contract_hash'] == i_block['to'])]

    if ascii_name == "transfer(address,uint256)":
        next_tx['transaction_type_name'] = 'payment'
        next_tx['transaction_subtype_name'] = 'token_transfer'
        next_tx['transaction_function_name'] = ascii_name

        #No Smart Contract Description
        #Just return the tx
        if len(sc_description) == 0:
            return next_tx

        #If none of these descriptors are here, continue:
        if sc_description['token_name'].iloc[0] == 'nan' or sc_description['decimal'].iloc[0] == 'nan':
            return next_tx

        #processing Data from Description
        next_tx['sent_currency_name'] = sc_description['token_name'].iloc[0]

        raw_sent_amount = int(processed_input_data['data_001'], 16)
        if sc_description['decimal'].iloc[0] == 0:
            next_tx['sent_currency_amount'] = str(raw_sent_amount)
        else:
            next_tx['sent_currency_amount'] = str(raw_sent_amount/(sc_description['decimal'].iloc[0] * 10))

        return next_tx

    return next_tx

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
    for next_key in raw_blocks.keys():
        print "Now processing block: " + next_key
        #Find the next block and raw list of transactions
        next_raw_block = raw_blocks[next_key]
        next_raw_transactions = next_raw_block['result']['transactions']

        #Block Level time datapoints
        raw_timestamp = int(next_raw_block['result']['timestamp'],0)

        unix_timestamp = raw_timestamp
        timestamp = datetime.datetime.fromtimestamp(raw_timestamp).strftime("%Y-%m-%d %H:%M:%S")

        #go through list of transactions
        for i in next_raw_transactions:
            #if the transaction does not have u'0x', ignore it
            next_input = i['block']['input']

            #inputs are broken up into two different data sets
            ##block and receipt. Block has the transaction data directly
            ##from the blockchain. Receipt includes a few details like gas
            ##and transaction status
            i_block = i['block']
            i_receipt = i['receipt']

            #Universal Variables Regardless of tx
            next_tx = {'datetime': timestamp, 'unixtimestamp': unix_timestamp}
            next_tx['blockchain_network_name'] = network_name

            next_tx['id'] = network_name + "_" + i_block['hash']
            next_tx['transaction_hash'] = i_block['hash']
            next_tx['sender_address'] = i_block['from']

            #Calculating fee
            gas_price = int(i_block['gasPrice'],0)
            gas_used = int(i_receipt['gasUsed'],0)
            next_tx['fee'] = tx_cost_in_ETH(gas_used, gas_price)

            #Status
            next_tx['status'] = int(i_receipt['status'],0)

            #An input assumes a smart contract
            if next_input != u'0x':

                #A 'to' address of None type is a smart contract created
                if i_block['to'] == None:

                    next_tx['transaction_type_name'] = 'admin'
                    next_tx['transaction_subtype_name'] = 'smart_contract_creation'

                #Path for if there is an input and there is a SC address
                #Being Sent To
                else:
                    #Try loop for ABI. IndexError if no ABI.
                    #If no ABI, categorize and move on. Nothing to do.
                    try:
                        next_abi = df_abi[(df_abi['smart_contract_hash'] == i_block['to'])]['abi_corrected'].iloc[0]
                        abi_check = next_abi != 'none'

                    #If ABI is not found, treat it as uncategorizable
                    except IndexError:
                        next_tx['transaction_type_name'] = 'admin'
                        next_tx['transaction_subtype_name'] = 'uncategorized_smart_contract'

                    #If there is an ABI... now we can start to categorize
                    if abi_check:
                        next_tx = categorize_smart_contract(next_tx, i, next_abi)

                    else:
                        #I don't think we should ever get down here, but I'm
                        #not convinced enough that we won't somehow...
                        next_tx['transaction_type_name'] = 'admin'
                        next_tx['transaction_subtype_name'] = 'uncategorized_smart_contract'

            #If next input = '0x', then it's not a smart contract .
            #Need to process like a payment
            #rest of the transaction processing otherwise
            else:
                next_tx['transaction_type_name'] = 'payment'
                next_tx['transaction_subtype_name'] = 'payment'

                next_tx['sent_currency_name'] = 'ETH'
                next_tx['sent_currency_amount'] = int(i_block['value'],0)/float(wei_in_ETH)

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
    #TODO: Decide if exchange amounts can be parsed
    columns =  ['id', 'datetime', 'unixtimestamp', 'transaction_hash']
    columns += ['sender_address', 'transaction_type_name']
    columns += ['transaction_subtype_name', 'fee', 'blockchain_network_name']
    columns += ['transaction_function_name']
    columns += ['sent_currency_name', 'sent_currency_amount']
    #columns += ['exchange_received_currency_name', 'exchange_received_amount']
    columns += ['status']

    df = df[columns]

    df.to_csv(csv_file_path, index=False, header=False)

def main():
    #Non Smart Contract file
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
        break


main()
