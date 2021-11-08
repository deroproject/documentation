#### Register and associate DERO wallet to username.   

Step 1] Check whether username is already registered. You cannot register username if already registered.  
``` curl http://127.0.0.1:40402/json_rpc -d '{"jsonrpc":"2.0","id":"0","method":"nametoaddress","params":{"name":"TESTUSERNAME" }}' -H 'Content-Type: application/json' ```  

Step 2] Register and associate DERO wallet to username.  
``` curl http://127.0.0.1:40403/json_rpc -d '{"jsonrpc":"2.0","id":"0","method":"scinvoke","params":{"scid":"0000000000000000000000000000000000000000000000000000000000000001","ringsize":2, "sc_rpc":[{"name":"entrypoint","datatype":"S","value":"Register"}, {"name":"name","datatype":"S","value":"TESTUSERNAME" }] }}' -H 'Content-Type: application/json' ```  

#### NB: "scid":"0000000000000000000000000000000000000000000000000000000000000001"  is reserved for nameservice registration.  


