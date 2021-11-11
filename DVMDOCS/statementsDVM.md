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

