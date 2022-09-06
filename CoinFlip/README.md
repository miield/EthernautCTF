The idea here is to create randomness to give same output at each time 10times in a row to beat this level

I moved the actions to the remix to be able to perform the transactions properly
Steps Below
1. Create a folder on remix, have 2 files namely; coinflip.sol & coinflipAttack.sol
2. Copy & Paste the code on the Ethernaut to the coinflip.sol
3. Next write the coinflipAttack contract. This contract will have the coinflip.sol logic to process the randomness for the coinflipAttack to get the same random value as many times as possible, 10times as instructed.