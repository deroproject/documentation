## DERO Blockchain White Paper (Draft Version)

## Table of Contents
* **SUMMARY**
* **CHALLENGES**
  * **IDENTITY AND KYC: VERIFICATION AND LIMITING MISUSE**
  * **VOTING: SAFE, SECURE, AND TRANSPARENT** 
  * **ASSET MANAGEMENT: PRIVATE AND AUDITABLE**
  * **2FA AUTHENTICATOR: SECURE PASSWORD MANAGEMENT AND ACCESS**
  * **INTEGRATION WITH TELECOM GATEWAYS**
* **DERO KEY FEATURES**
* **DERO VIRTUAL MACHINE**
* **ROADMAP**
* **SPECIFICATIONS**
* **DERO BLOCKCHAIN DEVELOPMENT**
* **DERO PROJECT COMPANY**

## SUMMARY

  DERO is a new, experimental blockchain technology written in Golang with a focus on enhanced Privacy and Smart Contracts while maintaining the transparency and security of the blockchain. The goal is to create a unique state of the art blockchain technology with enhanced Reliability, Privacy, Security, Usability, and Portability by bringing together some of the best proven technologies like CryptoNote Protocol and Smart Contracts, thereby allowing for the creation of Private Smart Contracts.

  Blockchain is an open, distributed ledger that can record transactions between two parties efficiently, and in a verifiable and permanent way.

  CryptoNote Protocol uses a distributed public ledger that records all balances and transactions of its in-built currency like Bitcoin. Unlike Bitcoin, CryptoNote's transactions cannot be followed through the blockchain in a way that reveals who sent or received coins. The only people with access to the whole set of data about a transaction are the sender or receiver of the transaction.

  Smart Contract is a protocol intended to facilitate, verify, and enforce the negotiation or execution of a digital contract. Smart contracts allow for direct contract execution without a third party. These transactions are trackable and irreversible. Smart contracts were first proposed by Nick Szabo in 1994.

  For more details about Blockchain, CryptoNote Protocol, and Smart Contract see:
  * https://en.wikipedia.org/wiki/Blockchain
  * https://en.wikipedia.org/wiki/CryptoNote
  * https://cryptonote.org/whitepaper.pdf
  * https://en.wikipedia.org/wiki/Smart_contract


Examples of a smart contract include access authorization to a building/IOT, asset management, trading, ticket purchasing, share distribution etc. In some cases one would prefer not to reveal the details of the transaction or contract (i.e. participants, amounts, and contract terms) to the rest of the world.
Private contracts is a unique feature offered by DERO.

## CHALLENGES
* **IDENTITY AND KYC: VERIFICATION AND LIMITING MISUSE**\
    DERO wallets can be used as Identity after the wallet address is signed and verified by a certifying authority attached to the holder’s documents. Addresses can be then treated as Identity by the certifying authority. A new Ghost Address can be used to verify the identity of an Individual with different/same service providers, with limit set to one time use only. Even if a vendor sells/shares/misuses an Individual address, it would be pointless. Certifying authorities can be Governments, Organizations, Banks, Telecom Operators, Mastercard, VISA, Payment Processors, Aviation Industry etc. Any Organization can also accept wallets already certified by other organizations. Whenever a service provider needs to verify KYC details, authorization needs to be cleared by the wallet holder for the service provider seeking KYC details. The service provider gets to know only that the wallet user is certified and authorized for its services, and no personal details are visible to the service provider. Only certifying authorities have full details of wallets. Hardware wallets with biometric protections will be integrated for maximum security.
* **VOTING: SAFE, SECURE AND TRANSPARENT**\
    DERO blockchain allows the creation of a voting smart contract and a list of voters by distributing authorization codes, or previously signed wallets, that permit their owners to cast and verify votes.
      Due to CryptoNote Protocol and Ring Signatures cryptographic implementation, it's impossible to correlate voters with their votes. 
* **ASSET MANAGEMENT: PRIVATE AND AUDITABLE** \
    Assets can be recorded and distributed on the DERO blockchain without revealing complete identity details to the world by using Ghost Addresses, and can also be auditable and verifiable to authorities and auditors. Viewkeys can be created for audits. Land, property, car registrations etc. can easily be recorded and maintained on the DERO blockchain. 
* **2FA AUTHENTICATOR: SECURE PASSWORD MANAGEMENT AND ACCESS**\
	  DERO blockchain plans to integrate DERO authenticator with OTP and secure passwords for authentication and authorization. Ghost Address can be used as the username, and if required an OTP password will appear in the wallet. An API and SDKs will be provided to service providers to integrate existing infrastructure with the DERO blockchain, and create a more secure environment to protect their users.
* **Integration with Telecom Gateways**\
  	DERO blockchain will be integrated with Telecom Gateways to send and receive SMS messages.
Certified wallets will be able to send and receive SMS messages with other services. OTP SMS will be relayed to wallet.

## DERO KEY FEATURES

- CryptoNote Privacy 
- Smart Contracts
- Atomic Swaps
- Mobile and Offline Wallets
- Lightweight Wallet
- Ghost Addresses
- Escrow Based on Votes
- Address Signing and Certifying 
- Voting

## DERO VIRTUAL MACHINE

​    Smart Contracts on the DERO blockchain will run in a DERO Virtual Machine (DVM). DVM is a Turing complete 256-bit Virtual Machine runtime environment for DERO Smart Contracts with CryptoNote Protocol Privacy and additional modifications.
​    DVM is unique in its ability to execute Smart Contracts while maintaining the privacy and fungiblity of the identities involved in the Smart Contracts. DVM will support the Solidity and Golang languages for writing Smart Contracts.
​    DVM is in the development phase, and several other features and optimizations are planned which may be added in the future.

## ROADMAP
* DERO Blockchain full Activation: Q1 2018.
* GUI Wallets, Ghost Addresses, Atomic Swap, Smart Contract Testing: Q2 2018.
* Smart Contract support on chain. Q3 2018. 
* Strategic market expansion.  

## SPECIFICATIONS
* PoW algorithm: CryptoNight
* Max supply: 18.4 million for first 8 years, Infinite ~157,000 DERO/year
* Block reward: Smoothly varying
* Block time: 120 seconds
* Difficulty: Retargets at every block
* Ticker: DERO

## DERO BLOCKCHAIN DEVELOPMENT
   DERO takes a utilitarian approach to development. From real world examples, use cases, community suggestions, it strives to develop a blockchain that can be deployed and widely used for practical applications. DERO welcomes everyone to participate in shaping its roadmap and technology by contributing directly to code development, proposing new ideas, or submitting comments and suggestions.
  DERO total premine 2 million. Premine will be locked to various heights for the next 4 years, and a portion of the premine will be used for various community activities. 
 * Total premine 2 million DERO
 * First 1 million locked for 4 years.
 * Second 0.5 million reserved for various activities. Unlocked at 10%, 20%, 30%, 40% respectively in years 1-4.
 * Third 0.5 million for development. Unlocked at 20%, 20%, 30%, 30% respectively in years 1-4.

## FUTURE
* Reducing Energy Consumption of the Network 
* Reducing Block Time
* Increasing Transaction Per Second
* Reducing BlockChain Sync Times
* Reducing Blockchain Size
* Increasing Reliability and Security of the Network
* Secure Hardware Wallet with Biometrics.
* Audit and Updating Core Cryptography to Quantum Proof

## DERO PROJECT COMPANY :
   Plan to incorporate a company which will market, develop, maintain, and expand DERO.
Company would hire more developers, expand the marketing team, add advisors, and would be representing DERO to the world.



​	
​	
​	

**Draft Version, This document will be updated based on community inputs.**

