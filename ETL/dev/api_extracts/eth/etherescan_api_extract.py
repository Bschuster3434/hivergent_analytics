import pandas
import requests
import datetime
import time
import json

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
    Goes through the API and pulls one block worth of transactions.
    Returns data in raw JSON.
    '''
    pass

def main(starting_block = 4826779, ending_block = 4832685, block_per_file = 20, bc_file = "latest_block.txt"):
    #starting_block = 4826779 #Dec 31st 2017 start
    #ending_block = 4832685 #Dec 31st 2017 end
    hex_starting_block = hex(starting_block)
    hex_end_block = hex(ending_block)s

    #Go through the first (or next) starting block and
    ###Iterate from that point until either end block or next n blocks
    ###defined by blocks per file
    next_block = find_latest_block(bc_file, starting_block, ending_block)

    block_range, cont_flag = find_next_block_range(next_block, ending_block, block_per_file)

    while cont_flag == 1:
    #Grab the range of blocks from the API
        next_start_block = block_range[0]
        next_end_block = block_range[1]

        for i in range(next_start_block, next_end_block):
            #pull raw json data from feed, returned as a dict
            print "Now Extracting Block: " + str(i)
            raw_transaction_dict = grab_block_transactions(i)
            block_dict[i] = raw_transaction_dict

    #Once the group of blocks is found, do the secondary search
    ###for finding the confirmed status on the tx and appending
    ###to the original file

    #Store the file in a json retrievable format in 'json' sub folder

    #iterate until the last block has been extracted
    pass

#testing_json_output
bc_file_test = "latest_block_test.txt"
main(starting_block=4000000, ending_block=4000020, block_per_file = 10, bc_file = bc_file_test)
