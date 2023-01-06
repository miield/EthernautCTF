// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import './delegate.sol';

contract Delegation {

    address public owner;
    Delegate delegate;

    constructor(address _delegateAddress) {
        delegate = Delegate(_delegateAddress);
        owner = msg.sender;
    }

    fallback() external {
        (bool result,) = address(delegate).delegatecall(msg.data);
        if (result) {
            this;
        }
    }
}

// 0xe9e2227F5fF25f877C5CC3F5DB8d47434Fe6e7FC