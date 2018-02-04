## DERO Blockchain White Paper (Draft Version)

## Table of Contents
* **SUMMARY**
* **CHALLENGES**
  * **IDENTITY AND KYC: VERIFICATION AND LIMITING MISUSE**
  * **VOTING: SAFE, SECURE AND TRANSPARENT** 
  * **ASSETS MANAGEMENTS: PRIVATE AND AUDIT-ABLE**
  * **AUTHENTICATOR 2FA: SECURE PASSWORD MANAGEMENT AND ACCESS**
  * **INTEGRATION WITH TELECOM GATEWAYS**
* **DERO KEY FEATURES**
* **DERO VIRTUAL MACHINE**
* **ROADMAP**
* **SPECIFICATIONS**
* **DERO BLOCKCHAIN DEVELOPMENT**
* **DERO PROJECT COMPANY**

## SUMMARY

  DERO is a new experimental blockchain technology written in Golang with focus on enhanced Privacy and Smart Contracts while maintaining the transparency and security of the blockchain. The goal is to create a unique state of the art blockchain technology with enhanced Reliability, Privacy, Security, Usability, and Portability by bringing together some of the best proven technologies like CryptoNote Protocol and Smart Contracts allowing for creation of Private Contracts.

  Blockchain is an open, distributed ledger that can record transactions between two parties efficiently and in a verifiable and permanent way.

  CryptoNote Protocol use a distributed public ledger that records all balances and transactions of its in-built currency like Bitcoin. Unlike Bitcoin, CryptoNote's transactions cannot be followed through the blockchain in a way that reveals who sent or received coins.The only people with access to the whole set of data about a transaction are the sender or receiver of the transaction.

  Smart Contract is a protocol intended to facilitate, verify, and enforce the negotiation or execution of a digital contract. Smart contracts allow for direct contract execution without a third party. These transactions are trackable and irreversible. Smart contracts were first proposed by Nick Szabo in 1994.

  For more details about Blockchain, CryptoNote Protocol and Smart Contract see:
  * https://en.wikipedia.org/wiki/Blockchain
  * https://en.wikipedia.org/wiki/CryptoNote
  * https://cryptonote.org/whitepaper.pdf
  * https://en.wikipedia.org/wiki/Smart_contract


Examples of a smart contract include access authorization to a building/IOT, asset management, trading, ticket purchasing, shares distribution etc. In some cases one would prefer not to reveal the details of the transaction or contract (i.e. participants, amounts, and contract terms) to the rest of the world.
Private contracts is a unique feature offered by DERO.

## CHALLENGES
* **IDENTITY AND KYC: VERIFICATION AND LIMITING MISUSE**\
    DERO wallets can be used as Identity after wallet address is signed and verified by certifying authority attached to holder’s documents. Addresses can be then treated as Identity in jurisdiction by certifying authority. Every time new Ghost Address can be used to verify identity of Individual with different/same service providers with limit set to one time use only. Even if vendor sells/share/misuse Individual address its would be pointless. Certifying authorities can be Governments, Organizations, Banks, Telecom Operators, Mastercard, Visa, Payment Processors, Aviation Industry etc. Any Organization can also accept wallets already certified by other organizations. Every time when some service provider needs to verify KYC details authorization needs to be cleared by wallet holder for service provider seeking KYC details. Service provider gets to only know that wallet users is certified and allowed for its services and no personal details are visible to service provider. Only certifying authorities have full details of wallets. Hardware wallets with biometrics protections will be integrated for maximum security.
* **VOTING: SAFE, SECURE AND TRANSPARENT**\
    DERO blockchain allows to create a voting smart contract and a list of voters by distributing authorization codes or previously signed wallets that permit their owners  to cast and verify votes.
      Due to CryptoNote Protocol and Ring Signatures cryptographic implementations its impossible to co-relate voters with their votes. 
* **ASSETS MANAGEMENTS: PRIVATE AND AUDIT-ABLE** \
    Assets can be recorded and distributed on DERO blockchain without revealing the complete identity details to the world by using Ghost Addresses and also audit-able and verifiable to authorities and auditors.Viewkeys can be created for audits. Land, property, car registrations etc. can easily be recorded and maintained on DERO blockchain. 
* **AUTHENTICATOR 2FA: SECURE PASSWORD MANAGEMENT AND ACCESS**\
	  DERO blockchain plans to integrate DERO authenticator with OTP and secure passwords for authentication and authorization. Ghost Address can be used as username and if required OTP password will appear in wallet. API and SDKs will be provided to service providers to integrate existing infrastructure with DERO blockchain and creating more secure environment to protect their users.
* **Integration with Telecom Gateways**\
  	DERO blockchain will be integrated with Telecom Gateways to send and receive sms.
Certified wallets will be able to send and receive sms with other services. OTP SMS will be relayed to wallet.

## DERO KEY FEATURES

- CryptoNote Privacy 
- Smart Contracts
- Atomic Swaps
- Mobile and Off-line Wallets
- Lightweight wallet
- Ghost Addresses
- Escrow based on Votes
- Address Signing and Certifying 
- Voting

## DERO VIRTUAL MACHINE

​    Smart Contracts on DERO blockchain will run in a DERO Virtual Machine (DVM). DVM is a Turing complete 256-bit Virtual Machine runtime environment for DERO Smart Contracts with CryptoNote Protocol Privacy and additional modifications.
​    DVM is unique in and the first of its kind in its ability to execute smart contracts while maintaining the privacy and fungiblity of the identities involved in the Smart Contracts. DVM will support Solidity and Golang languages for smart-contracts writing.
​    DVM is in development phase and several other features and optimizations are planned and may be added in the future.

## ROADMAP
* DERO Blockchain full Activation. First Quarter-2018.
* GUI Wallets, Ghost Addresses, Atomic Swap, Smart Contracts Testing. Second Quarter-2018.
* Smart Contracts support on chain. Third Quarter-2018. 
* Strategic market expansion.  

## SPECIFICATIONS
* PoW algorithm: CryptoNight
* Max supply: 18.4 million for first 8 years, Infinite ~1,57,000 DERO/year
* Block reward: Smoothly varying
* Block time: 120 seconds
* Difficulty: Retargets at every block
* Ticker: DERO

## DERO BLOCKCHAIN DEVELOPMENT
   DERO takes a utilitarian approach to the development. From real world examples, use cases, community suggestions, it thrives to develop a blockchain that can be deployed and widely used for practical applications. DERO welcomes everyone to participate in shaping its roadmap and technology by contributing directly to code development, proposing new ideas, or submitting comments and suggestions.
  DERO total premine 2 million. Premine will be locked to various heights for next 4 years and portion of premine will be used for various community activities. 
 * Total premine 2 million DERO
 * First 1 million locking for 4 years straight.
 * Second 0.5 million reserved for various activities. Get unlocked only 10%, 20%, 30%, 40% each year.
 * Third 0.5 million for development. Get unlocked only 20%, 20%, 30%, 30% each year.

## FUTURE
* Reducing Energy Consumption of Network 
* Reducing Block Time
* Increasing Transaction Per Seconds
* Reducing BlockChain Sync Times
* Reducing Blockchain Size
* Increasing Reliability And Security of Network
* Secure Hardware Wallet with Biometrics.
* Audit and Updating Core Cryptography to Quantum Proof

## DERO PROJECT COMPANY :
   Plan to incorporate company which will market, develop, maintain, expand DERO.
Company would be hiring more developers, expand team of marketers, advisors and would be presenting and representing DERO to the world.



​	
​	
​	

**Draft Version, This document will be updated based on community inputs.**

