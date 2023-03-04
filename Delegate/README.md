The goal of this level is to claim ownership of the given contract instance `Delegate` instance
The task involve delegatecall low level function, fallback function and method ids
This means contract Delegation executes `pwn()` function in the Delegate contract by using the delegateCall low level function, which
also triggers the fallback function in the Delegation contract to make the caller address the owner of the Delegate contract.

Overriding the owner in the Delegation contract which has been assigned to msg.sender with our own address.
First is to trigger the the fallback function in Delegation contract to do that, get the Delegation address from the console f12(level instance address) to call the pwn function to override the owner of to my account
* Create a new instance of Delegation task in the console f12(level instance address
* Got the delegation contract address from Ethernaut 
2. Run `await contract.owner()` to get the Delegation contract owner address to confirm
3. Next, run `contract.abi` to get the contract information to be sure that the contract is Delegation
4. Create a variable to hold the call on the fallback function `var attack_delegate = web3.utils.keccak256("pwn()")`
* web3 is a library that provides hashing function `keccak256` which hashes the `pwn()` function.
5. Run `contract.sendTransaction({data: pwn_attack})`, this triggers the fallback function because the `pwn()` function of the var `attack_delegate` is not available in the delegation contract.
3. The owner of the Delegate contract is now the address that called the functions above; the metamask wallet address
5. Run `await contract.owner()` to be sure that the owner of the contract is the address of the player.
6. Go to the Ethernaut and submit instance.
