#!/usr/bin/env bash

# set -x   # to enable debug and verbose printing of each and every command

CURDIR=`/bin/pwd`
BASEDIR=$(dirname $0)
ABSPATH=$(readlink -f $0)
ABSDIR=$(dirname $ABSPATH)


command -v curl >/dev/null 2>&1 || { echo "I require curl but it's not installed.  Aborting." >&2; exit 1; }
command -v jq >/dev/null 2>&1 || { echo "I require jq but it's not installed.  Aborting." >&2; exit 1; }


daemon_rpc_port="20000"  # daemon rpc is listening on this port

# we have number of wallets listening at ports from 30000
# we will be using 3 wallets, named owner, player1,player2
owner_rpc_port="30000"
player1_rpc_port="30001"
player2_rpc_port="30002"

owner_address=$(curl --silent http://127.0.0.1:$owner_rpc_port/json_rpc -d '{"jsonrpc":"2.0","id":"0","method":"getaddress"}' -H 'Content-Type: application/json'| jq -r ".result.address")
player1_address=$(curl --silent http://127.0.0.1:$player1_rpc_port/json_rpc -d '{"jsonrpc":"2.0","id":"0","method":"getaddress"}' -H 'Content-Type: application/json'| jq -r ".result.address")
player2_address=$(curl --silent http://127.0.0.1:$player2_rpc_port/json_rpc -d '{"jsonrpc":"2.0","id":"0","method":"getaddress"}' -H 'Content-Type: application/json'| jq -r ".result.address")


function balance(){
  	curl --silent http://127.0.0.1:$1/json_rpc -d '{"jsonrpc":"2.0","id":"0","method":"getbalance"}' -H 'Content-Type: application/json'| jq -r ".result.balance"
}



echo "SC owner address" $owner_address
echo "player1 address" $player1_address
echo "player2 address" $player2_address


# echo -n "wallet1 sending dero to 2 wallets txid "
# curl --silent http://127.0.0.1:$player1_rpc_port/json_rpc -d '{"jsonrpc":"2.0","id":"0","method":"transfer","params":{ "transfers":[{"amount":10000,"destination":"'"$player2_address"'"},{"amount":10000,"destination":"'"$owner_address"'"}] }}' -H 'Content-Type: application/json' | jq -r ".result.txid"
# exit 0

# use owner wallet to load/install an lotter sc to chain
#scid=$(curl --silent --request POST --data-binary   @nameservice.bas http://127.0.0.1:$owner_rpc_port/install_sc| jq -r ".txid")
scid="0000000000000000000000000000000000000000000000000000000000000001"
echo "Name Service SCID" $scid

sleep 1


#curl --silent http://127.0.0.1:$daemon_rpc_port/json_rpc -d '{"jsonrpc":"2.0","id":"0","method":"getsc","params":{ "scid":"'"$scid"'" , "code":false, "keysstring":["deposit_count"]}}' -H 'Content-Type: application/json'

username="user11"
echo -n "wallet1 Registering '$username' txid "
curl --silent http://127.0.0.1:$player1_rpc_port/json_rpc -d '{"jsonrpc":"2.0","id":"0","method":"scinvoke","params":{"scid":"'"$scid"'","ringsize":2, "sc_rpc":[{"name":"entrypoint","datatype":"S","value":"Register"},  {"name":"name","datatype":"S","value":"'"$username"'" }] }}' -H 'Content-Type: application/json' | jq -r ".result.txid"
sleep 2

echo -n $username "registeration result"
curl --silent http://127.0.0.1:$daemon_rpc_port/json_rpc -d '{"jsonrpc":"2.0","id":"0","method":"DERO.NameToAddress","params":{"name":"'"$username"'"  }}' -H 'Content-Type: application/json' 
#| jq -r ".result.address"

exit 0



