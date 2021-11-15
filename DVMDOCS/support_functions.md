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
LOAD(variable)  
LOAD loads a variable which was previously stored in the blockchain using STORE function.  
Return type will be Uint64/String depending on stored data type.  
Panic if the value does NOT exists.  
Syntax:
```
10  IF LOAD(name) != SIGNER() THEN GOTO 30 
```

#### EXISTS
Uint64 EXISTS(variable)  
EXISTS return 1 if the variable is store in DB and 0 otherwise.  
Syntax:
```
10 IF EXISTS(name) THEN GOTO 50
```

#### STORE
STORE(keyVariable, KeyValue)  
STORE stores key and value in the DB. All storage state of the SC is accessible only from the  SC which created it.  
Syntax:
```
10  STORE("owner", SIGNER()) // Store in DB ["owner"] = address
```

#### RANDOM
Uint64 RANDOM(), Uint64 RANDOM(limit Uint64)  
First form gives a uint64.
RANDOM returns a random using a PRNG seeded on BLID,SCID,TXID. 
Second form returns random number in the range 0 - (limit),  0 is inclusive, limit is exclusive.    
Syntax:
```
10 LET winner = RANDOM() % deposit_count // Finding winner.
```

#### SCID
String SCID()  
Returns SMART CONTRACT ID which is currently running.  
Syntax:
```

```

#### BLID
Returns current BLOCK ID which contains current execution-in-progress TXID.  
String BLID()  
Syntax:
```

```

#### TXID
Returns current TXID which is execution-in-progress.  
String TXID()  
Syntax:
```

```

#### BLOCK_HEIGHT
Returns current chain height of BLID().  
Uint64 BLOCK_HEIGHT()  
Syntax:
```

```

#### BLOCK_TOPOHEIGHT
Returns current topoheight of BLID().  
Uint64  BLOCK_TOPOHEIGHT()  
Syntax:
```

```

#### SIGNER
Returns address of who signed/sent this transaction. SIGNER() returns the raw address.  
String SIGNER()  
Syntax:
```
10  IF LOAD("owner") == SIGNER() THEN GOTO 30
```

#### IS_ADDRESS_VALID
Returns 1 if address is valid, 0 otherwise.  
Uint64 IS_ADDRESS_VALID(p String)
Syntax:
```

```

#### ADDRESS_RAW
Uint64 IS_ADDRESS_VALID(p String)  
Returns address in RAW form as 33 byte keys, Stripping away textual/presentation form. Addresses should always be compared in raw form.  
Syntax:
```

```

#### SEND_DERO_TO_ADDRESS
SEND_DERO_TO_ADDRESS(a String, amount Uint64)  
Sends amount DERO  from SC DERO balance to a address which should be raw form. address must in string form DERO/DETO form.  
If the SC does not have enough balance, it will panic.  
Syntax:
```

```

#### ADD_VALUE
ADD_VALUE(a String, amount Uint64)  
Send specific number of token to specific account.  
If account is being touched for the first time, Tt is done simply.  
If account is already initialized ( It already has some balance, but SC does not know how much). So, It gives additional balance homomorphically.  
Syntax:
```

```

#### DEROVALUE
DEROVALUE() gives DERO transacted/deposited in current transaction.  
Syntax:
```

```

#### TOKENVALUE
TOKENVALUE() gives particular token transacted/deposited in currrent transaction.  
Syntax:
```

```
