// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "forge-std/Test.sol";
import "../src/Exchange.sol";
import "../src/Token.sol";

contract ExchangeTest is Test {
    Token public token;
    Exchange public exchange;

    function setUp() public {
        token = new Token("Afrikanas","AFR", 1000_000);
        exchange = Exchange(address(token));
    }

    function testAddLiquidity() public {
        exchange.addLiquidity{value: 10 ether}(1000);
    }
}
