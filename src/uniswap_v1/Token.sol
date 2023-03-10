// SPDX-License-Identifier: MIT
/*
 * @author: https://jeiwan.net/posts/programming-defi-uniswap-1/
 * @notice: This is a simplified version of Uniswap v1 exchange contract
 */
pragma solidity 0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20 {
    constructor(
        string memory name,
        string memory symbol,
        uint256 initialSupply
    ) ERC20(name, symbol) {
        _mint(msg.sender, initialSupply);
    }
}
