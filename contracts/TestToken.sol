// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract TestToken is ERC20, Ownable {
    uint256 public constant TOTAL_SUPPLY = 1000_000 ether;

    constructor() ERC20("TestToken", "TT") {
        _mint(owner(), TOTAL_SUPPLY);
    }
}
