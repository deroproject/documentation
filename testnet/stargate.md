## Dero Stargate DVM Smart Contracts guide to install and test various function of lottery Smart Contract.

**Download** Dero Stargate testnet [source](https://git.dero.io/DeroProject/derosuite_stargate) and [binaries](https://git.dero.io/DeroProject/Dero_Stargate_testnet_binaries).

**Start Dero daemon in testnet mode.**
```
./derod-linux-amd64  --testnet
```

**Start Dero wallet in testnet.** 
```
dero-wallet-cli-linux-amd64 --rpc-server --wallet-file testnet.wallet --testnet
```

**Start Dero wallet second instance to test transfer/ownership functions etc.**
```
dero-wallet-cli-linux-amd64 --wallet-file testnet2.wallet --testnet --rpc-server --rpc-bind=127.0.0.1:30308
```

**Dero testnet Explorer**
```
./explorer-linux-amd64  --rpc-server-address 127.0.0.1:30306 --http-address=0.0.0.0:8080
```

**Dero Stargate Testnet Explorer**  
[https://testnetexplorer.dero.io/ ](https://testnetexplorer.dero.io/)


**Installing Smart Contract.**  
 [Download lottery.bas](https://git.dero.io/DeroProject/derosuite_stargate/src/master/cmd/dvm/lottery.bas)
```
curl  --request POST --data-binary   @lottery.bas http://127.0.0.1:30309/install_sc 
```

**Examples of various lottery Smart Contract functions**
**Eg: To play lottery**
```
curl -X POST http://127.0.0.1:30309/json_rpc -H 'Content-Type: application/json' -d '{"jsonrpc":"2.0","id":"0","method":"transfer_split","params":{"mixin":5,"get_tx_key": true , "sc_tx":{"entrypoint":"Lottery","scid":"ab82caa18753efa0f76e7266af7fdd7f11e0ada5e135bd63f1cd823f5e2c2fdc" , "value":4000000000000 } }}'
```

**Eg: Withdraw balance**
```
curl -X POST http://127.0.0.1:30309/json_rpc -H 'Content-Type: application/json' -d '{"jsonrpc":"2.0","id":"0","method":"transfer_split","params":{"mixin":5,"get_tx_key": true , "sc_tx":{"entrypoint":"Withdraw","scid":"55aaf55b5203cd10f473a9bcf641f305885235e176270ae5e38ba6fa05dbf2b0", "params":{ "amount":"1" } } }}'
```

**Eg: To transfer ownership**
```
curl -X POST http://127.0.0.1:30309/json_rpc -H 'Content-Type: application/json' -d '{"jsonrpc":"2.0","id":"0","method":"transfer_split","params":{"mixin":5,"get_tx_key": true , "sc_tx":{"entrypoint":"TransferOwnership","scid":"55aaf55b5203cd10f473a9bcf641f305885235e176270ae5e38ba6fa05dbf2b0", "params":{ "newowner":"dETohFmTunwF58wAs5Jn3d1N1oaJqwRxvarNJudUh95nVbZyigTja1W8Ljzp3j8VhxbB9gv3TBs4W5gnFa24cehz2cM6nUg84s" } } }}'
```

**Eg: To claim ownership**
```
curl -X POST http://127.0.0.1:30308/json_rpc -H 'Content-Type: application/json' -d '{"jsonrpc":"2.0","id":"0","method":"transfer_split","params":{"mixin":5,"get_tx_key": true , "sc_tx":{"entrypoint":"ClaimOwnership","scid":"55aaf55b5203cd10f473a9bcf641f305885235e176270ae5e38ba6fa05dbf2b0" } }}'
```
