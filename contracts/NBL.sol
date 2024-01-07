// SPDX-License-Identifier: MIT
pragma solidity >=0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/draft-ERC20Permit.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract NBL is ERC20, ERC20Permit {
    constructor() ERC20("NBL", "NBL") ERC20Permit("NBL") {
        uint initialValue = 210000000000 ether;
        _mint(0x17A6bcdB4c672DF5bbB840cA7075fD5f5cF724e6, SafeMath.mul(initialValue, 15) / 100);    // team
        _mint(0x40f8079adb4B4807F3CCd9A7494f19A598535D93, SafeMath.mul(initialValue, 5) / 100);     // private sale
        _mint(0xBA98539C274B4A543b40a599b98311fDDC7526c2, SafeMath.mul(initialValue, 10) / 100);    // market
        _mint(0xB1003f5272CeAE43e4D96F53f3a94de9ba5312b4, SafeMath.mul(initialValue, 45) / 100);    // game reward
        _mint(0x98d5E733c4Ce1745881618C5062B6B5AD235D48A, SafeMath.mul(initialValue, 10) / 100);    // staking reward
        _mint(0x4E1635b50bCF8760D06568B9b4964183E9A9906D, SafeMath.mul(initialValue, 5) / 100);     // Ecosystem fund
        _mint(0x2A4C749839657cbcfc39757cc4Af5Fc4e67c8E32, SafeMath.mul(initialValue, 10) / 100);    // VC
    }
}