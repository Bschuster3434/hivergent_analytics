import time
import datetime
import json
import requests
from requests.compat import urljoin
import sys

block_check_file = "latest_btc_extract_block.txt"

#Starting Point for analysis
starting_block = 501798 #Dec 31st 2017 start
ending_block = 501960 #Dec 31st 2017 end
satoshi_to_BTC = 100000000
block_sizes = 20

#URL Endpoints
#https://chain.api.btc.com/v3/block/3
url_endpoint = "https://chain.api.btc.com"

def find_latest_block(bc_file):
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

def find_next_block_range(next_block):
    '''
    Finds the next block range (based on the block size).
    Returns block_range as a tuple (start, end).
    cont_flag will be 1 if loop should start, 0 if not.
    '''
    pass

def grab_block_transactions(block_number):
    pass

def main():
    '''
    Program will go through one days worth of BTC blockchain Data
    and store them in separate files.

    File names will be 'btc_<block_num_start>_<block_num_end>.json'.

    Check points will be created at various points to be able to
    reuse this script in the future.
    '''

    #Find the next block
    next_block = find_latest_block(block_check_file)

    #Find the next block range and continue flag
    block_range, cont_flag = find_next_block_range(next_block)

    while cont_flag == 1:
        start_block = block_range[0]
        end_block = block_range[1]

        block_dict = {}
        #Loop through each set of blocks
        for i in range(start_block, end_block + 1):
            #pull raw json data from feed, returned as a dict
            print "Now Extracting Block: " + str(i)
            raw_transaction_dict = grab_block_transactions(i)
            block_dict[i] = raw_transaction_dict

        #Save the json data as a .json file
        transaction_files_name = "btc_" + str(start_block) + "_" \
                                    + str(end_block) + ".json"

        print "Writting to file: " transaction_files_name
        with open(transaction_files_name, 'w') as fp:
            json.dump(block_dict, fp)

        next_block_string = str(end_block+1)
        print "Writting next block string: " + next_block_string
        with open(bc_file, 'w') as f:
            f.write(next_block_string)

        #break if no more blocks, else create the next block range
        block_range, cont_flag = find_next_block_range(end_block + 1)
        print "Continue Flag is: " + str(cont_flag)

def test():
    #Test 1
    assert find_latest_block('blockcheck_test.txt') == starting_block
    print "All Tests Passed"

test()
