import pandas
import requests
import datetime
import time
import json
import sys

etherscan_api_key = "SU775DFF8GEGMER3B8ZPK3QZIJWGIBE45T"
url_endpoint = "https://api.etherscan.io/api"

def find_latest_block(bc_file, starting_block, ending_block):
    '''
    Opens block check file to see the starting point for the
    analysis. Exits program if completed.

    Returns next_block to search
    '''
    with open(bc_file, 'r') as f:
        latest_block = int(f.read())

    if latest_block >= ending_block:
        print "All blocks extracted"
        sys.exit() #Seems like a bad idea, but whatever

    if starting_block > latest_block:
        next_block = starting_block
    else:
        next_block = latest_block

    return next_block

def find_next_block_range(next_block, ending_block, block_per_file):
    '''
    Finds the next block range (based on the block size).
    Returns block_range as a tuple (start, end).
    cont_flag will be 1 if loop should start, 0 if not.
    '''
    cont_flag = 0
    full_range_end_block = next_block + block_per_file
    if next_block < ending_block and full_range_end_block < ending_block:
        cont_flag = 1
        block_range = (next_block, full_range_end_block)
    elif next_block < ending_block and full_range_end_block >= ending_block:
        cont_flag = 1
        block_range = (next_block, ending_block)
    else:
        block_range = (0,0)

    return block_range, cont_flag

def grab_block_transactions(block_num):
    '''
    Goes through the API and pulls one block worth of transactions.
    Returns data in raw JSON.
    '''
    hex_block_num = hex(block_num)

    #Go and grab all transactions in the block
    params = {"module":"proxy", \
                    "action":"eth_getBlockByNumber", \
                    "tag" : hex_block_num, "boolean":"true", \
                    "apikey": etherscan_api_key}

    resp = requests.get(url_endpoint, params=params)
    resp_dict = json.loads(resp.content) #Get a string, must eval to a dict

    return resp_dict

def append_eth_receipt_data(block_data):
    '''
    Takes the raw transaction data from an ethereum blockchain and appends
    relevant tx status information.

    The block data is modified. Each transaction will be altered to include
    a 'block' dict value as well as a 'receipt' dict value. Both sets of
    data will be maintained.
    '''
    #Grab base transaction data
    transactions = block_data['result']['transactions']

    #Create a new list object to replace current transactions
    block_and_receipt_transactions = []
    for n, i in enumerate(transactions):
        if n%50 == 0:
            print "Now processing transaction: " + str(n)
        next_transaction_dict = {'block': i}

        tx_hash = i['hash']

        params = {"module":"proxy", \
                    "action":"eth_getTransactionReceipt", \
                    "txhash" : tx_hash, \
                    "apikey": etherscan_api_key}
        resp = requests.get(url_endpoint, params=params)
        resp_dict = json.loads(resp.content)
        next_transaction_dict['receipt'] = resp_dict['result']
        block_and_receipt_transactions.append(next_transaction_dict)

    #Replace the old transactions data for the amended dataset
    block_data['result']['transactions'] = block_and_receipt_transactions

    return block_data

def grab_transactions_from_api(starting_block, ending_block, block_per_file, bc_file):
    '''
    Iterates through all of the blocks between starting block (inclusive) and
    ending block (exclusive).Will chunk json files based on theh number in
    'block_per_file' and record the last block returned in bc_file.

    Writes directly to json (no return function)
    '''

    #Go through the first (or next) starting block and
    ###Iterate from that point until either end block or next n blocks
    ###defined by blocks per file
    next_block = find_latest_block(bc_file, starting_block, ending_block)

    block_range, cont_flag = find_next_block_range(next_block, ending_block, block_per_file)

    if cont_flag == 0:
        print "No blocks to process"

    while cont_flag == 1:
    #Grab the range of blocks from the API
        next_start_block = block_range[0]
        next_end_block = block_range[1]

        block_dict = {}

        for i in range(next_start_block, next_end_block):
            #pull raw json data from feed, returned as a dict
            print "Now Extracting Block: " + str(i)
            raw_transaction_dict = grab_block_transactions(i)
            block_dict[i] = raw_transaction_dict

        #Once the group of blocks is found, do the secondary search
        ###for finding the confirmed status on the tx and appending
        ###to the original file
        for next_key in block_dict:
            print "Grabbing Transactions for block: " + str(next_key)
            block_dict[next_key] = append_eth_receipt_data(block_dict[next_key])

    #Store the file in a json retrievable format in 'json' sub folder
        str_end_block = next_end_block - 1
        transaction_files_name = r"json/eth_" + str(next_start_block) + "_" \
                                    + str(str_end_block) + ".json"

        print "Writting to file: " + transaction_files_name
        with open(transaction_files_name, 'w') as fp:
            json.dump(block_dict, fp)

        next_block_string = str(next_end_block)
        print "Writting next block string: " + next_block_string
        with open(bc_file, 'w') as f:
            f.write(next_block_string)

        #iterate until the last block has been extracted
        block_range, cont_flag = find_next_block_range(next_end_block\
                                    , ending_block, block_per_file)
        print "Continue Flag is: " + str(cont_flag)

#testing_json_output
def main():
    print "Starting Processing"
    starting_block = 4832685
    ending_block = 4832686
    block_per_file = 60
    bc_file = "latest_block.txt"

    grab_transactions_from_api(starting_block, ending_block, block_per_file, bc_file)

def test():
    print "Starting Processing"
    starting_block=4000000
    ending_block=4000106
    block_per_file = 20
    bc_file_test = "latest_block_test.txt"

    grab_transactions_from_api(starting_block, ending_block, block_per_file, bc_file_test)

main()
