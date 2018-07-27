import boto3
from bitcoinrpc.authproxy import AuthServiceProxy, JSONRPCException
from dateutil import tz
import datetime

#AWSVariables
instance_size = 't2small'

#BitcoinBlockchainVariables
rpc_un = "lambdauser"
rpc_pw = "lambdauser1234"
host_ip = "18.211.139.161"

#DynamoDBVariables
dynamodb_client = boto3.client('dynamodb')
table_name = "bitcoin_node_blocks_created"

def get_block_hash_details(block_info):
    '''
    Based on the hash provided, grabs details relevant to the metadata of the
    block being recorded. Returns a dictionary.
    '''

    block_data_dict = {}

    #blockNumber_instanceSize (hash)
    block_data_dict['blockNumber_instanceSize'] = {
        'S': str(block_info['height']) + '_' + instance_size
    }

    #retrievalTimeStamp
    block_data_dict['retrievalTimeStamp'] = {
        'S' : datetime.datetime.utcnow().strftime("%Y-%m-%d %H:%M:%S")
    }

    #instanceSize
    block_data_dict['instanceSize'] = {
        'S': instance_size
    }

    #blockUnixTimeStamp (range)
    #confirms time is in UTC
    block_data_dict['blockUnixTimeStamp'] = {
        'S' : str(block_info['time'])
    }

    #blockUTCDateTimeStamp
    time_zone = tz.gettz('UTC')
    utc_timestamp = datetime.datetime.utcfromtimestamp(block_info['time'])
    block_data_dict['blockUTCDateTimeStamp'] = {
        'S' : utc_timestamp.strftime("%Y-%m-%d %H:%M:%S")
    }

    #dataSize
    block_data_dict['dataSize'] = {
        'S' : str(block_info['size'])
    }

    #blockHash
    block_data_dict['blockHash'] = {
        'S' : block_info['hash']
    }

    #totalTransactions
    block_data_dict['totalTransactions'] = {
        'S' : str(len(block_info['tx']))
    }

    #blockHeight
    block_data_dict['blockHeight'] = {
        'S' : str(block_info['height'])
    }

    return block_data_dict

def upload_to_dynamodb(block_dynamodb_object):
    '''
    Sends an upload to dynamodb to the specified table.
    Returns the dynamodb response.
    '''
    response = dynamodb_client.put_item(
        TableName= table_name,
        Item = block_dynamodb_object
    )
    return response

def handler(event,context):
    #make an rpc connection with node
    rpc_conn = AuthServiceProxy("http://%s:%s@%s:8332"%(rpc_un,rpc_pw,host_ip))
    
    #Get the latestblock
    best_block_hash = rpc_conn.getbestblockhash()
    block_info = rpc_conn.getblock(best_block_hash)

    #Grab the time, hash, datasize and other details
    #Return as a DynamoDB Object
    block_details = get_block_hash_details(block_info)

    #Upload to DynamoDB
    dynamodb_upload_status = upload_to_dynamodb(block_details)

    return dynamodb_upload_status
