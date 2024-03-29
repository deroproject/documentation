#!/usr/bin/env bash

#set -x   # to enable debug and verbose printing of each and every command

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

function scbalance(){
  	curl --silent http://127.0.0.1:$daemon_rpc_port/json_rpc -d '{"jsonrpc":"2.0","id":"0","method":"getsc","params":{ "scid":"'"$1"'" , "code":false, "keysstring":["deposit_count"]}}' -H 'Content-Type: application/json' | jq -r ".result.balance"
}

echo "SC owner address" $owner_address
echo "player1 address" $player1_address
echo "player2 address" $player2_address


# use owner wallet to load/install an lotter sc to chain
scid=$(curl --silent --request POST --data-binary   @lottery.bas http://127.0.0.1:$owner_rpc_port/install_sc| jq -r ".txid")

echo "SCID" $scid


 sleep 1


#curl --silent http://127.0.0.1:$daemon_rpc_port/json_rpc -d '{"jsonrpc":"2.0","id":"0","method":"getsc","params":{ "scid":"'"$scid"'" , "code":false, "keysstring":["deposit_count"]}}' -H 'Content-Type: application/json'

echo -n "Player 1 play txid "
curl --silent http://127.0.0.1:$player1_rpc_port/json_rpc -d '{"jsonrpc":"2.0","id":"0","method":"scinvoke","params":{"sc_dero_deposit":3,"scid":"'"$scid"'","ringsize":2, "sc_rpc":[{"name":"entrypoint","datatype":"S","value":"Lottery"}] }}' -H 'Content-Type: application/json' | jq -r ".result.txid"
echo -n "Player 2 play txid "
curl --silent http://127.0.0.1:$player2_rpc_port/json_rpc -d '{"jsonrpc":"2.0","id":"0","method":"scinvoke","params":{"sc_dero_deposit":300,"scid":"'"$scid"'","ringsize":2, "sc_rpc":[{"name":"entrypoint","datatype":"S","value":"Lottery"}] }}' -H 'Content-Type: application/json' | jq -r ".result.txid"
sleep 2

curl --silent http://127.0.0.1:$daemon_rpc_port/json_rpc -d '{"jsonrpc":"2.0","id":"0","method":"getsc","params":{ "scid":"'"$scid"'" , "code":false, "keysstring":["deposit_count"]}}' -H 'Content-Type: application/json'  | jq -r ".result.balance"


echo "SC balance" $(scbalance $scid)
echo "SC owner balance" $(balance $owner_rpc_port)
echo "SC player1 balance" $(balance $player1_rpc_port)
echo "SC player2 balance" $(balance $player2_rpc_port)