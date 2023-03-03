The goal of this level is to claim ownership of the given contract instance
The task involve delegatecall low level function, fallback function and method ids
This means contract Delegate executes delegatecall function delegating to contract Delegation, contract Delegation's code is executed
with contract Delegate's storage, as msg.sender and msg.value.

Overriding the owner in the Delegation contract which has been assigned to msg.sender with our own address.
First is to trigger the the fallback function in Delegation contract to do that, get the Delegation address from the console f12(level instance address) to call the pwn function to override the owner of to my account
* Copy and paste the code from Ethernaut to remix
* Got the delegation contract address from Ethernaut (f12(level instance address)
2. Pasted the Delegation address in delegate contract (At Address)
3. Click At Address, this brings up the functions in Delegation
4. Clicked the pwn function and sent the transaction
3. Clicked the owner function to see the owner (a different address)
5. Click the owner function, got my metamask wallet address (0xe420026b7D597bcd162B5475D7c4cEc19403dBdb)
6. Go to the Ethernaut and submit instance.
