from bitcoinrpc.authproxy import AuthServiceProxy, JSONRPCException

#hardcoded variables
rpc_un = "lambdauser"
rpc_pw = "Lambd@4orTHEwyN"
host_ip = "52.87.171.193"

rpc_conn = AuthServiceProxy("http://%s:%s@%s:8332"%(rpc_un,rpc_pw,host_ip))

def handler(event,context):
    block_height = rpc_conn.betblockcount()
    return block_height
