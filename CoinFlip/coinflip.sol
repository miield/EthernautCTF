// SPDX-License-Identifier: MIT
// solidity version was changes to the recent version
pragma solidity 0.8.0;

// below import was commented out because it is not needed in 0.8
// import '@openzeppelin/contracts/math/SafeMath.sol';

contract CoinFlip {

    // using SafeMath for uint256; // not needed too

    // we have the state variables below
    uint256 public consecutiveWins;
    uint256 lastHash;
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

    // here I have the constructor to initialize the consecutiveWins variable 
    constructor() public {
        consecutiveWins = 0;
    }

    // this function takes a boolean parameter and return a boolean value as well
    function flip(bool _guess) public returns (bool) {
    // blockValue hashes the second to the last block.number and convert it to uint256 
    // (because the last/current block is not mined yet and we can't have the blockhash), so previous to the current block
        uint256 blockValue = uint256(blockhash(block.number - 1));

    // lastHash is the same as the blockValue it reverts, this stops duplicating same blockValue
        if (lastHash == blockValue) {
            revert();
        }

    // whatever the blockValue is at the different flip is assigned to the lastHash
        lastHash = blockValue;

    // the blockValue is divided by the random numbers value FACTOR
        uint256 coinFlip = blockValue / FACTOR;
    // If the coinFlip value is 1, means true else it is false, value here is assigned to bool side
        bool side = coinFlip == 1 ? true : false;

    // so if side is the same as _guess i.e true, you win everytime, else you loose
        if (side == _guess) {
            consecutiveWins++;
            return true;
        } else {
            consecutiveWins = 0;
            return false;
        }
    }
}