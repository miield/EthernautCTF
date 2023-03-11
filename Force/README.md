The goal is tho make the contractbalance greater tha zero, the contract is practically empty
Apart from using fallback function or sending eth directly to the contract
Another way is to is to use use the selfdestruct function

Create a new contract, deploy the contract with the address of the force contract, and make the contract payable
Use the selfdestruct function in the contract constructor
Right before deploying the contract, send eth to the contract
Deploy the contract and it automatically sends the eth to the force contract
