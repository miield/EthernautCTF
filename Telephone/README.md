The idea of this task is a phishing attack, is a way of tricking users to perform some transactions on vulnerable contracts

The vulnerable contracts has a constructor that makes the deployer the owner of the contract.
Below it has a changeOwner() that checks if the caller is not the owner then the owner be changed to the address that will be input

Note that the vulnerability here is more on the logic than it is tx.origin though it has been advised not to be used to authorize contract because it points to the first deployer address of the chain of addresses on transaction.

The solution is to instantiate the telephone contract and deploy in the attack contract in the constructor of the TelephoneAttact contract, that gives access to the Telephone contract.

Then it was possible to call the changeOwner() from the Telephone contract as the owner, ther Telephone contract owner changed to the input address because of the if statement vulnerability.

