// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/draft-ERC20Permit.sol";

contract NBL is ERC20, ERC20Permit {
    constructor(uint initialValue) ERC20("NBL", "NBL") ERC20Permit("NBL") {
        _mint(msg.sender, initialValue);
    }
}