In this task we are manipulating the contract to get more than the given token.

At the point of creating the new instance, 20 token was given to us and we are asked to find a way to get more.
One way to do this is by underflowing the logic, the overflow and underflow was an issue during Solidity 0.6, which made it easy.

How to achieve this in Solidity 0.8 is to call the transfer() from an account that doesn't have any token
This is because the sending token from an empty address will trigger and get us the underflow max uint
Check below for resources

https://www.youtube.com/watch?v=_ylKN2R_o-Y&list=PLiAoBT74VLnmRIPZGg4F36fH3BjQ5fLnz&index=6
https://www.youtube.com/watch?v=IOM1Ty8RwL0&list=PLBy3Qkuapv_7R1ZI_Cs2NOFn7ZTaNWY6G&index=6

