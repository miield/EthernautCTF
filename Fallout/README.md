This Fallout level vulnerability is quiet a silly one but critical. 

Brief Explanation
In the past the constructors were named after the contract's name but as a constructor but as a function, which can cause huge loss if being careless. 

The Fallout contructor was misspelled, see below

fal1out not fallout

Note that the second l is 1 (one) not l, which implicates the constructor that the Fal1out function is a regular function not a constructor, anyone that calls it becomes the contract owner and also can be called as many times as possible unlike the contructor that can only be called once.

Calling the Fal1out function makes you the contract owner and give access to call the functions that are restricted to onlyOwner function like collectAllocations() that makes the owner withdraw all the money in the contract.

For more knowledge read about the Rubixi hack
