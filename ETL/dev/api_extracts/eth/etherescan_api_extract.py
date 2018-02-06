import pandas
import requests
import datetime
import time
import json

etherscan_api_key = "SU775DFF8GEGMER3B8ZPK3QZIJWGIBE45T"
url_endpoint = "https://api.etherscan.io/api"

def main(starting_block = 4826779, ending_block = 4832685, block_per_file = 20):
    #starting_block = 4826779 #Dec 31st 2017 start
    #ending_block = 4832685 #Dec 31st 2017 end
    hex_starting_block = hex(starting_block)
    hex_end_block = hex(ending_block)s

    #Go through the first (or next) starting block and
    ###Iterate from that point until either end block or next n blocks
    ###defined by blocks per file

    #Grab the range of blocks from the API

    #Once the group of blocks is found, do the secondary search
    ###for finding the confirmed status on the tx and appending
    ###to the original file

    #Store the file in a json retrievable format in 'json' sub folder

    #iterate until the last block has been extracted
    pass

def test():
    pass

#testing_json_output
main(starting_block=4000000, ending_block=4000020, block_per_file = 10)
