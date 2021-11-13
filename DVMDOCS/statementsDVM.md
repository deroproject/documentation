### Statements supported by  DERO Virtual Machine.  

#### DIM 
DIM stands for data in memory and is used to define variable names within a function.  

Syntax:
```
10 DIM variable1 as type 
20 DIM variable1,variable2 as type
30 DIM key,owner as String
40 DIM count as Uint64
```  
Supported type in DVM are Uint64, String.  
All DVM variables are mandatory to be defined and are initialized to default values: 0 for Uint64  and "" for String.  

#### Function  
Function statement is used to define a function.  
Syntax:  
```
Function ADD(x uint64, y uint64) uint64 
10 RETURN x + y
End Function
```  
Function syntax is of two types.  
```
    Function function_name( 0 or more arguments )
    Function function_name( 0 or more arguments ) return type
```
DVM functions follow some following rules:  
* All functions begin with Function keyword. 
* Function name should be alpha-numeric.
* If the first letter of the function is upper case alphabet then function can be invoked by blockchain and other smart-contracts. 
* If the first letter of the function is lower case alphabet then function can only be invoked by other functions within the smart contract.
* Function may or may not have a return type.
* All functions must use RETURN to return from function or to return a value. RETURN is mandatory.
* All functions must end with End Function. End Function is mandatory
* A function can have a implicit parameter value of type uint64, which contains amount of DERO value sent with the transaction.

Any error caused during processing will immediately stop execution and discard all changes that occur during SC execution.  
Any entrypoint which returns uint64 value 0 is termed as success and will make transaction to commit all state changes.  

#### GOTO
GOTO is used to jump to any line number within the function.  
GOTO cannot cross function boundary.  
Syntax:  
```
// If signer is owner then withdraw. 
Function Withdraw( amount Uint64) Uint64 
10  IF LOAD("owner") == SIGNER() THEN GOTO 30 
20  RETURN 1
30  SEND_DERO_TO_ADDRESS(SIGNER(),amount)
40  RETURN 0
End Function``
```

#### IF  
IF statement executes a statement if a specified condition is true.  
IF has following forms:
1. IF condition THEN GOTO lineNumber
2. IF condition THEN GOTO lineNumber ELSE GOTO lineNumber  
  
Syntax:  
```
10 IF COUNT == 0 THEN GOTO 110
20 IF COUNT == 0 THEN GOTO 110 ELSE GOTO 200
```

#### LET  
LET is used to assign a value to a variable.   
Value can be as complex as possible and can contain complex expression.  
Syntax:  
```
10 LET COUNT = 10
10 LET x = 2 + 3 + ADD(2,3)
```
Any assignments within DVM can only be done using LET.  
 



