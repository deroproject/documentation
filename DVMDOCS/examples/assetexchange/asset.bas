/* Private Token Smart Contract Example in DVM-BASIC.  
   DERO Smart Contracts Tokens privacy can be understood just like banks handle cash. Once cash is out from the bank, bank is not aware about it (who owns what value), until it is deposited back.
   Smart contract only maintains supply and other necessary items to keep it working.
   DERO Tokens can be tranfered to other wallets just like native DERO with Homomorphic Encryption and without involvement of issuing Smart Contracts.
   Token issuing Smart Contract cannot hold/freeze/control their tokens once they are issued and sent to any wallet. 
   This token is Private. Use Function InitializePrivate() Uint64 to make any Smart Contract private.

*/


    // Issue Asset after depositing DERO (Convert DERO to TOKENX)
    Function IssueAsset() Uint64 
	10  SEND_ASSET_TO_ADDRESS(SIGNER(), DEROVALUE(),SCID())   // send asset without knowing original balance, this is done homomorphically
	20  RETURN 0
	End Function


    // This function is used to initialize parameters during install time
    // InitializePrivate initializes a private SC
    // Smart contract authors should hardcode their intended address for contract ownership, then add a check within the Initialize() or InitializePrivate() functions to 	ensure that the caller is the true owner.
	Function InitializePrivate() Uint64
	10  IF SIGNER() == address_raw("dero1qywqad0njut7h4h0h0933dfspsdeyfphzzcs5ujw03ghqzhhw8c9zqqevltfj") THEN GOTO 40 //Exit unless smart contract owner.
	20  RETURN 0 // exit 
	40  RETURN 0 
	End Function	

	
