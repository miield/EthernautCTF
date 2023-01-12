The goal of this level is to claim ownership of the given contract instance
The task involve delegatecall low level function, fallback function and method ids
This means contract Delegate executes delegatecall function to contract Delegation, contract Delegation's code is executed
with contract Delegate's storage, as msg.sender and msg.value.

Overriding the owner address variable in Delegation contract which has been assigned to msg.sender  with our own address.
First is to trigger the the fallback function in Delegation contract to call the pwn function to override the owner of to my account
1. Got the delegation contract address from Ethernaut 
2. Pasted the address in delegate contract and deploy
3. Clicked the owner function to see the owner (a different address)
4. Clicked the pwn function and sent the tracnsaction
5. Click the owner function, got my metamask wallet address.