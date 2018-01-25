import time
import datetime
import json
import requests
from requests.compat import urljoin
import sys

#URL Endpoints
#https://chain.api.btc.com/v3/block/3
url_endpoint = "https://chain.api.btc.com"

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

def find_next_block_range(next_block, ending_block, block_size):
    '''
    Finds the next block range (based on the block size).
    Returns block_range as a tuple (start, end).
    cont_flag will be 1 if loop should start, 0 if not.
    '''
    cont_flag = 0
    final_full_range_end = next_block + block_size
    if next_block < ending_block and final_full_range_end < ending_block:
        cont_flag = 1
        block_range = (next_block, final_full_range_end)
    elif next_block < ending_block and final_full_range_end >= ending_block:
        cont_flag = 1
        block_range = (next_block, ending_block + 1)
    else:
        block_range = (0,0)

    return block_range, cont_flag

def grab_block_transactions(block_num):
    '''
    Grabs the next set of transactions for the next block.
    Returns as a dictionary.
    '''
    print "Calling API for block: " + str(block_num)
    next_url_call = urljoin(url_endpoint, "v3/block/" + str(block_num) + "/tx")
    resp = json.loads(requests.get(next_url_call).content)

    return resp

def grab_transactions_from_api(starting_block, ending_block, block_size, bc_file):
    '''
    Program will go through one days worth of BTC blockchain Data
    and store them in separate files.

    File names will be 'btc_<block_num_start>_<block_num_end>.json'.

    Check points will be created at various points to be able to
    reuse this script in the future.
    '''

    #Find the next block
    next_block = find_latest_block(bc_file, starting_block, ending_block)

    #Find the next block range and continue flag
    block_range, cont_flag = find_next_block_range(next_block, ending_block, block_size)

    while cont_flag == 1:
        next_start_block = block_range[0]
        next_end_block = block_range[1]

        block_dict = {}
        #Loop through each set of blocks
        for i in range(next_start_block, next_end_block):
            #pull raw json data from feed, returned as a dict
            print "Now Extracting Block: " + str(i)
            raw_transaction_dict = grab_block_transactions(i)
            block_dict[i] = raw_transaction_dict

            time.sleep(1)

        #Save the json data as a .json file
        str_end_block = next_end_block - 1
        transaction_files_name = "btcjson/btc_" + str(next_start_block) + "_" \
                                    + str(str_end_block) + ".json"

        print "Writting to file: " + transaction_files_name
        with open(transaction_files_name, 'w') as fp:
            json.dump(block_dict, fp)

        next_block_string = str(next_end_block)
        print "Writting next block string: " + next_block_string
        with open(bc_file, 'w') as f:
            f.write(next_block_string)

        #break if no more blocks, else create the next block range
        block_range, cont_flag = find_next_block_range(next_end_block\
                                    , ending_block, block_size)
        print "Continue Flag is: " + str(cont_flag)

def main():
    #Starting Point for analysis
    starting_block = 501798 #Dec 31st 2017 start
    ending_block = 501960 #Dec 31st 2017 end
    block_size = 20
    block_check_file = "latest_btc_extract_block.txt"

    grab_transactions_from_api(starting_block, ending_block, \
                                block_size, block_check_file)

def test():
    #Test 1
    test_1_starting_block = 501798
    test_1_ending_block = 501960
    assert find_latest_block('blockcheck_test.txt', \
                        test_1_starting_block, test_1_ending_block) == test_1_starting_block

    test_start_block = 100000
    test_end_block = 100005
    test_block_size = 2
    test_block_check_file = "test_btc_extract_block.txt"

    grab_transactions_from_api(test_start_block, test_end_block, \
                                test_block_size, test_block_check_file)

    print "All Tests Passed"

#main()
test()
