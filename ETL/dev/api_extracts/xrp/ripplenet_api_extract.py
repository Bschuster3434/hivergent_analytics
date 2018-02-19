import pandas
import requests
import datetime
import time
import json
import sys
from dateutil import parser

url_endpoint = "https://data.ripple.com/v2/transactions/"

def find_latest_time(ts_file, start_time, end_time):
    '''
    Read ISO formatted string from file and compare to the start and
    endtime of the given parameters.

    returns the latest start time.
    '''

    pass

def find_next_time_range(start_time, end_time, minutes_per_file):
    '''
    Takes the start time and end time and minutes per file to find the
    next range.

    Returns the time range as a datetime tuple.
    cont_flag will be 1 if loop should start, 0 if not.
    '''

    pass

def grab_timeframe_transactions(iso_next_start_time, iso_next_end_time):
    '''
    Calls Ripplenet Transaction API directly until iterations complete.
    '''

def grab_transactions_from_api(start_time, end_time, minutes_per_file, ts_file):
    '''
    Iterates through all of the transactions between start_time and end_time.
    Will chunk json files based on the number of minutes in 'minutes_per_file'.

    Writes directly to json (no return functioin)
    '''

    next_start_time = find_latest_time(ts_file, start_time, end_time)

    time_range, cont_flag = find_next_time_range(next_start_time, end_time, minutes_per_file)

    if cont_flag = 0:
        print "No blocks to process"

    while cont_flag == 1:

        iso_next_start_time = time_range[0].isoformat()
        next_end_time = time_range[1]
        iso_next_end_time = time_range[1].isoformat()

        #Grab full transactions for that time period
        transactions = grab_timeframe_transactions(iso_next_start_time, iso_next_end_time)

        #Save JSON file with transactions in ISOstart_ISOend.json tx_format
        transaction_files_name = r"json/xrp_" + iso_next_end_time + "_" \
                                    + iso_next_end_time + ".json"

        print "Writting to file: " + transaction_files_name
        with open(transaction_files_name, 'w') as fp:
            json.dump(transactions, fp)

        #Save last start timeframe to ts_file
        print "Writting next block string: " + iso_next_end_time
        with open(ts_file, 'w') as f:
            f.write(iso_next_end_time)

        #Redefine the block_range, including the cont_flat
        block_range, cont_flag = find_next_time_range(next_end_block\
                                    , end_time, minutes_per_file)

        print "Continue Flag is: " + str(cont_flag)

def main():
    print "Starting Process"
    start_time = datetime.datetime(2017,12,31,0,0)
    iso_start_time = start_time.isoformat()
    end_time = datetime.datetime(2018,1,1,0,0)
    iso_end_time = end_time.isoformat()
    minutes_per_file = 10
    ts_file = "latest_timestamp.txt"

    grab_transactions_from_api(start_time, end_time, minutes_per_file, ts_file)

def test():
    print "Starting Process"
    start_time = datetime.datetime(2017,12,31,0,0)
    iso_start_time = start_time.isoformat()
    end_time = datetime.datetime(2018,12,31,0,6)
    iso_end_time = end_time.isoformat()
    minutes_per_file = 2
    ts_file = "test_latest_timestamp.txt"

    grab_transactions_from_api(start_time, end_time, minutes_per_file, ts_file)
