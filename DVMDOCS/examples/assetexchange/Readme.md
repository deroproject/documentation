### ASSETS Interchange Smart Contract 

This Smart Contract converts assetOne to assetTwo as per defined ratio in contract. Provided exchange has sufficient assets balances.

#### Steps to create an exchange contract.
First create two tokens and deposit it to exchange. Then anyone can use exchange smart contract for conversion of assets.


Step 1] [Create & install an asset/token](https://github.com/deroproject/documentation/tree/master/DVMDOCS/examples/token).  
``` curl  --request POST --data-binary   @token.bas http://127.0.0.1:40403/install_sc ```  

Step 2] [Create & install second asset/token](https://github.com/deroproject/documentation/tree/master/DVMDOCS/examples/token).  
``` curl  --request POST --data-binary   @token2.bas http://127.0.0.1:40403/install_sc ```  

STEP 3] Create and install [example asset_exchange contract](./asset_exchange.bas).  
``` curl  --request POST --data-binary   @asset_exchange.bas http://127.0.0.1:40403/install_sc ```  

Step 4] Deposit assetOne/token1 to exchange contract.  
``` curl --silent http://127.0.0.1:40403/json_rpc -d '{"jsonrpc":"2.0","id":"0","method":"transfer","params":{"scid":"'"Interchange-SCID"'","ringsize":2, "sc_rpc":[{"name":"entrypoint","datatype":"S","value":"Deposit"}], "transfers": [ {"scid":"'"ASSET_ONE_SCID"'", "burn":AssetOneCount_DEPOSITED_TO_EXCHANGE}] }}' -H 'Content-Type: application/json' ```  

Step 5] Deposit assetTwo/token2 to exchange contract.  
```   curl --silent http://127.0.0.1:40403/json_rpc -d '{"jsonrpc":"2.0","id":"0","method":"transfer","params":{"scid":"'"Interchange-SCID"'","ringsize":2, "sc_rpc":[{"name":"entrypoint","datatype":"S","value":"Deposit"}], "transfers": [ {"scid":"'"ASSET_TWO_SCID"'", "burn":AssetTwoCount_DEPOSITED_TO_EXCHANGE}] }}' -H 'Content-Type: application/json'  ```  

Step 6] From any wallet send assetOne exchange SCID.  
```  curl --silent http://127.0.0.1:40403/json_rpc -d '{"jsonrpc":"2.0","id":"0","method":"transfer","params":{"scid":"'"Interchange-SCID"'","ringsize":2, "sc_rpc":[{"name":"entrypoint","datatype":"S","value":"Interchange"},{"name":"incoming","datatype":"H","value":"'"ASSET_ONE_SCID"'"},{"name":"outgoing","datatype":"H","value":"'"ASSET_TWO_SCID"'"}], "transfers": [{"scid":"'"ASSET_ONE_SCID"'", "burn":AssetOneCount_TO_BE__Converted}] }}' -H 'Content-Type: application/json'  ```   

step 7] In wallet check balance of assetTwo.  
``` balance ASSET_TWO_SCID ```  

#### NB: Following used above are variables, please change them. SCIDs  are transaction-IDs returned by respective commands.  
Interchange-SCID  
ASSET_ONE_SCID  
ASSET_TWO_SCID  
AssetOneCount_DEPOSITED_TO_EXCHANGE  
AssetTwoCount_DEPOSITED_TO_EXCHANGE  
AssetOneCount_TO_BE__Converted






 
