The goal of this level is to claim ownership of the given contract instance
The task involve delegatecall low level function, fallback function and method ids
This means contract Delegate executes delegatecall to contract Delegation, contract Delegation's code is executed
with contract Delegate's storage, as msg.sender and msg.value.