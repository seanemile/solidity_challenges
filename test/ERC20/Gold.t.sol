// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

import "forge-std/Test.sol";
import {Gold} from "../../src/ERC20/Gold.sol";

contract GoldTest is Test {
    Gold gold;

    function setUp() public {
        gold = new Gold();
    }

    function testInitialBalance() public {
        assertEq(gold.balanceOf(address(this)), 1000_000 * 10 ** gold.decimals());
    }
}
