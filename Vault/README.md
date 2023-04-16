The goal of this challenge is to unlock the Vault. The function lock is set to true when the contract is deployed.
To unlock it the lock function need to be set to false
Solution:
* The variable password needs to be match the parameter password in the function unlock
* The variable password  was set during the contract deployment and it is a private variable.
* The password can be got by using the web3 library
* In the browser console of the challenge, after creating an instance of the challenge, type "await web3.eth.getStorageAt(contract.address, 1)". Copy the password
* Get the contract instance address from the console, and load it At Address, do not deploy.
* Paste the password in the unlocked function and click the function.
* Confirm the lock is false.
Submit the challenge.