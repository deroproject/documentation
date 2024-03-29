### DERO Virtual Machine (DVM) 

DERO Virtual Machine represents entire DERO Smart Contracts eco-system which runs on the DERO block chain.  

DVM is a decentralized platform that runs both public and private smart contracts: applications that run exactly as programmed without any possibility of downtime, censorship, fraud or third-party interference.Public Smart contracts are open versions. However, the  DVM is being designed to support Private Smart Contracts where everything is hidden, eg parties, and information involved. Smart Contracts are nothing but rules which apply on transacting parties.  

Current version of DVM is an interpretor based system to avoid security vulneribilities, issues and compiler backdoors. This also allows easy audits of Smart Contracts for quality,bug-testing and security assurances. DVM supports a new language DVM-BASIC.  

DVM apps run on a from scratch custom built privacy supporting, encrypted blockchain, an enormously powerful shared global infrastructure that can move value around and represent the ownership of assets/property without leaking any information.No one knows who owns what and who transferred to whom.

* This enables developers to create puzzles, games, voting, markets, store registries of debts or promises, move funds in accordance with instructions given long in the past (like a will or a futures contract) and many other ideas/things that have not been invented yet, all without a middleman or counterparty risk.


* DVM-BASIC is a contract-oriented, high-level language for implementing smart contracts. It is influenced by GW-BASIC, Visual Basic and C and is designed to target the DERO Virtual Machine (DVM). It is very easy to program and very readable.

* DVM runs Smart Contracts which are a collection of functions written in DVM-BASIC.
These functions can be invoked over the blockchain to do something. SCs can act as libraries for other SCs.


* DVM supports number of comments formats such as ', // , /* */  as good documentation is necessary.

#### DVM Example Factorial program

```
' This is a comment
// This comment is supported
/* this is multi-line comment  */
Function Factorial(s Uint64) Uint64   // this is a commment
	10  DIM result,scopy as Uint64     /* this is also comment */
	15  LET scopy =  s
	20  LET result = 1
	30  LET result = result * s
	40  LET s = s - 1
	50  IF s >= 2 THEN GOTO 30
	70  RETURN result
End Function
```

*  DVM smart contracts are written in a DVM-BASIC custom BASIC style language with line numbers.
*  DVM supports uint64 and string data-types.
*  DVM interprets the smart-contract and processes the SC line-line 
 
* uint64 supports almost all operators namely  +,-,*,/,% 
* uint64 support following bitwise operators & ,|,  ^, ! , >> , <<
* uint64 supports following  logical operators  >, >= , <, <=, == , !=  
* string supports only + operator. string support concatenation with a uint64.
* string supports ==, != logical operators.
* All DVM variables are mandatory to define and are initialized to default values namely 0  and "".

#### Smart Contract execution must return 0 to persist any changes made during execution. During execution, no panics should occur.

### DERO Smart Contract Examples  
First Smart Contract: [Launching your token/asset on DERO blockchain.](https://github.com/deroproject/documentation/blob/master/DVMDOCS/examples/token/token_sc_guide.md)  
Second Smart Contract: [Launching your exchange for interchanging tokens/assets.](https://github.com/deroproject/documentation/tree/master/DVMDOCS/examples/assetexchange)  
[DERO Smart Contract Examples](https://github.com/deroproject/documentation/tree/master/DVMDOCS/examples)  
[More Examples](https://forum.dero.io/t/darch-decentralized-architecture-competition-series/1318)  

### DERO Default Ports: 
```
Mainnet:
Mining Getwork Port: 10100 TCP  
P2P Default Port: 10101 UDP  
RPC Default Port: 10102 TCP  
Wallet RPC Default Port: 10103 TCP  

Testnet:
P2P Default Port: 40401
RPC Default Port: 40402
Wallet RPC Default Port: 40403
```
**NB:**: Change ports to mainnet or testnet based on your requirements.  
