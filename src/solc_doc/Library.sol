// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

type UFixed256x18 is uint256;

library FixedMath {
    uint256 constant multiplier = 1e18;

    function add(UFixed256x18 a, UFixed256x18 b) internal pure returns (UFixed256x18) {
        return UFixed256x18.wrap(UFixed256x18.unwrap(a) + UFixed256x18.unwrap(b));
    }

    function sub(UFixed256x18 a, UFixed256x18 b) internal pure returns (UFixed256x18) {
        return UFixed256x18.wrap(UFixed256x18.unwrap(a) - UFixed256x18.unwrap(b));
    }
}
