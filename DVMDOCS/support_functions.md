#### DVM inbuilt support functions which provide some functionality or expose DVM internals.

#### List of DVM support functions.
1. [LOAD](#load) 
1. [EXISTS](#exists) 
1. [STORE](#store) 
1. [RANDOM](#random) 
1. [SCID](#scid) 
1. [BLID](#blid) 
1. [TXID](#txid) 
1. [BLOCK_HEIGHT](#block_height) 
1. [BLOCK_TOPOHEIGHT](#block_topoheight) 
1. [SIGNER](#signer) 
1. [IS_ADDRESS_VALID](#is_address_valid) 
1. [ADDRESS_RAW](#address_raw) 
1. [SEND_DERO_TO_ADDRESS](#send_dero_to_address) 
1. [ADD_VALUE](#add_value) 
1. [DEROVALUE](#derovalue) 
1. [TOKENVALUE](#tokenvalue) 



##### LOAD
LOAD loads a variable which was previously stored in the blockchain using STORE function. Return type will be Uint64/String depending on what is stored.
It will panic  if the value does NOT exists.

#### EXISTS
EXISTS return 1 if the variable is store in DB and 0 otherwise.

#### STORE
STORE stores key and value in the DB. All storage state of the SC is accessible only from the  SC which created it.

#### RANDOM
RANDOM returns a random using a PRNG seeded on BLID,SCID,TXID. First form gives a uint64, second form returns 
random number in the range 0 - (limit),  0 is inclusive, limit is exclusive.

#### SCID
Returns SMART CONTRACT ID which is currently running.

#### BLID
Returns current BLOCK ID which contains current execution-in-progress TXID.

#### TXID
Returns current TXID which is execution-in-progress.

#### BLOCK_HEIGHT
Returns current chain height of BLID().

#### BLOCK_TOPOHEIGHT
Returns current topoheight of BLID().

#### SIGNER
Returns address of who signed/sent this transaction. SIGNER() returns the raw address.  

#### IS_ADDRESS_VALID
Returns 1 if address is valid, 0 otherwise.  

#### ADDRESS_RAW
Returns address in RAW form as 33 byte keys, stripping away textual/presentation form. Addresses should always be compared in  RAW form.

#### SEND_DERO_TO_ADDRESS
Sends amount DERO  from SC DERO balance to a address which should be raw form. address must in string form DERO/DETO form.
If the SC does not have enough balance, it will panic.  

#### ADD_VALUE
Send specific number of token to specific account.
If account is bring touched for the first time, it is done simply.
If account is already initialized ( it already has some balance, but SC does not know how much). So, it gives additional balance homomorphically.

#### DEROVALUE
DEROVALUE() gives DERO transacted/deposited in current transaction.

#### TOKENVALUE
TOKENVALUE() gives particular token transacted/deposited in currrent transaction.
