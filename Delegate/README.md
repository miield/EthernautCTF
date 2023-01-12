The goal of this level is to claim ownership of the given contract instance
The task involve delegatecall low level function, fallback function and method ids
This means contract Delegate executes delegatecall function to contract Delegation, contract Delegation's code is executed
with contract Delegate's storage, as msg.sender and msg.value.

Overriding the owner address variable in Delegation contract which has been assigned to msg.sender  with our own address.
First is to trigger the the fallback function in Delegation contract to call the pwn function to override the owner of to my account
1. Got the contract address from Ethernaut