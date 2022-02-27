#### Register and associate DERO wallet to username.   

Make sure wallet is running with ```--rpc-server``` option.

##### Step 1]
Check whether username is already registered. You cannot register username if already registered.  
``` curl http://127.0.0.1:10102/json_rpc -d '{"jsonrpc":"2.0","id":"0","method":"nametoaddress","params":{"name":"TESTUSERNAME" }}' -H 'Content-Type: application/json' ```  

##### Step 2]
Register and associate DERO wallet to username.  
``` curl http://127.0.0.1:10103/json_rpc -d '{"jsonrpc":"2.0","id":"0","method":"scinvoke","params":{"scid":"0000000000000000000000000000000000000000000000000000000000000001","ringsize":2, "sc_rpc":[{"name":"entrypoint","datatype":"S","value":"Register"}, {"name":"name","datatype":"S","value":"TESTUSERNAME" }] }}' -H 'Content-Type: application/json' ```  

#### NB: Replace TESTUSERNAME with your desired available username in abvove steps.  
#### NB: "scid":"0000000000000000000000000000000000000000000000000000000000000001"  is reserved for nameservice registration.  


