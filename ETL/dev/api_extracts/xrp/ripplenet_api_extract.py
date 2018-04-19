import pandas
import requests
import datetime
import time
import json
import sys
from dateutil import parser
import re

url_endpoint = "https://data.ripple.com/v2/transactions/"

def find_latest_time(ts_file, start_datetime, end_datetime):
    '''
    Read ISO formatted string from file and compare to the start and
    endtime of the given parameters.

    returns the latest start time as a datetime object.
    '''

    with open(ts_file, 'r') as f:
        latest_iso_datetime = f.read()

    #convert from ISO format to datetime
    latest_datetime = parser.parse(latest_iso_datetime)

    if latest_datetime >= end_datetime:
        print "All transactions extracted"
        sys.exit() #Seems like a bad idea, but whatever

    if start_datetime > latest_datetime:
        next_time = start_datetime
    else:
        next_time = latest_datetime

    return next_time

def find_next_time_range(next_datetime, end_datetime, minutes_per_file):
    '''
    Takes the start time and end time and minutes per file to find the
    next range.

    Returns the time range as a datetime tuple.
    cont_flag will be 1 if loop should start, 0 if not.
    '''
    cont_flag = 0
    full_range_end_datetime = next_datetime + datetime.timedelta(minutes=minutes_per_file)
    if next_datetime < end_datetime and full_range_end_datetime < end_datetime:
        cont_flag = 1
        datetime_range = (next_datetime, full_range_end_datetime)
    elif next_datetime < end_datetime and full_range_end_datetime >= end_datetime:
        cont_flag = 1
        datetime_range = (next_datetime, end_datetime)
    else:
        datetime_range = (0,0)

    return datetime_range, cont_flag

def grab_timeframe_transactions(iso_next_start_datetime, iso_next_end_datetime):
    '''
    Calls Ripplenet Transaction API directly until iterations complete.
    returns full list of transactions as a dictionary.
    '''
    transactions = []

    params = {"start": iso_next_start_datetime , "end" : iso_next_end_datetime, "limit" : 100}
    while True:
        if len(transactions) % 50 == 0:
            time.sleep(1)
            print "Number of transactions processed: " + str(len(transactions))
        resp = requests.get(url_endpoint, params=params)
        resp_dict = json.loads(resp.content)
        next_transactions = resp_dict['transactions']
        transactions = transactions + next_transactions
        if 'marker' in resp_dict:
            params['marker'] = resp_dict['marker']
        else:
            break

    return transactions

def grab_transactions_from_api(start_datetime, end_datetime, minutes_per_file, ts_file):
    '''
    Iterates through all of the transactions between start_datetime and end_datetime.
    Will chunk json files based on the number of minutes in 'minutes_per_file'.

    Writes directly to json (no return functioin)
    '''

    next_start_datetime = find_latest_time(ts_file, start_datetime, end_datetime)

    time_range, cont_flag = find_next_time_range(next_start_datetime, end_datetime, minutes_per_file)

    if cont_flag == 0:
        print "No transactions to process"

    while cont_flag == 1:

        iso_next_start_datetime = time_range[0].isoformat()
        next_end_datetime = time_range[1]
        iso_next_end_datetime = time_range[1].isoformat()

        print "Processing TimeRange: " + iso_next_start_datetime + " - " \
                                + iso_next_end_datetime

        #Grab full transactions for that time period
        transactions = {'txs': grab_timeframe_transactions(iso_next_start_datetime, iso_next_end_datetime)}

        #Save JSON file with transactions in ISOstart_ISOend.json tx_format
        transaction_file_name = r"json/xrp_" + iso_next_start_datetime + "_" \
                                    + iso_next_end_datetime + ".json"
        transaction_file_name = transaction_file_name.replace(':', '')
        transaction_file_name = transaction_file_name.replace('-', '')

        print "Writting to file: " + transaction_file_name
        with open(transaction_file_name, 'w') as fp:
            json.dump(transactions, fp)

        #Save last start timeframe to ts_file
        print "Writting next datetime string: " + iso_next_end_datetime
        with open(ts_file, 'w') as f:
            f.write(iso_next_end_datetime)

        #Redefine the datetime_range, including the cont_flat
        time_range, cont_flag = find_next_time_range(next_end_datetime \
                                    , end_datetime, minutes_per_file)

        print "Continue Flag is: " + str(cont_flag)

def main():
    print "Starting Process"
    start_datetime = datetime.datetime(2017,12,30,19,0)
    iso_start_datetime = start_datetime.isoformat()
    end_datetime = datetime.datetime(2017,12,31,0,0)
    iso_end_datetime = end_datetime.isoformat()
    minutes_per_file = 5
    ts_file = "latest_timestamp.txt"

    grab_transactions_from_api(start_datetime, end_datetime, minutes_per_file, ts_file)

def test():
    print "Starting Process"
    start_datetime = datetime.datetime(2017,12,31,0,0)
    iso_start_datetime = start_datetime.isoformat()
    end_datetime = datetime.datetime(2017,12,31,0,6)
    iso_end_datetime = end_datetime.isoformat()
    minutes_per_file = 2
    ts_file = "test_latest_timestamp.txt"

    grab_transactions_from_api(start_datetime, end_datetime, minutes_per_file, ts_file)

main()
