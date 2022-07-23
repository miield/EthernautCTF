# Code Review

## Helpful Tips

``` 
await help()
```


## What is expected
1. Claim the contract ownership
2. Take all the funds

## How to claim the ownership
There are 2 ways: then function contribute() and the function receive(). But the receive(), I need to be a contributor to become the contract owner, which brings me back to the function contribute().
So in the console I called function contribute() to contribute 1wei, note that contracts are interacted with differently in the console

``` await contract.contribute({value: 1}) ```

Checked that I am not the owner at this point. I cannot become the owner until the condition below is met
```
        if(contributions[msg.sender] > contributions[owner]) {
        owner = msg.sender;
        }
```
Apparently, the owner has more money, I had to move on to the receive() function, at this point I pass the requirements, as a contributor and also sent another money while calling the function.

``` await contract.sendTransaction({value: 1000}) ```

Note that receive/fallback function can be triggered only when function that is not in the contract is called, apperently ```sendTrasaction()``` is a global function and it is not in the contract.
Voila! I am the contract owner.


## Take all the funds
Now its time to drain the funds, since all the checks have been passed. Before that I check the contract balance
# To check the contract balance

``` await getBalance(contract.address) ```

To withdraw the funds

``` await contract.withdraw() ```

Check the contract balance again to confirm that it is empty

Now I submit the Instance 
