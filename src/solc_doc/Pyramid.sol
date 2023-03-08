// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

library ArrayUtils {
    // internal functions can be used in internal library functions because
    // they will be part of the same code context
    function map(uint256[] memory self, function (uint) pure returns (uint) f)
        internal
        pure
        returns (uint256[] memory r)
    {
        r = new uint[](self.length);
        for (uint256 i = 0; i < self.length; i++) {
            r[i] = f(self[i]);
        }
    }

    function reduce(uint256[] memory self, function (uint, uint) pure returns (uint) f)
        internal
        pure
        returns (uint256 r)
    {
        r = self[0];
        for (uint256 i = 1; i < self.length; i++) {
            r = f(r, self[i]);
        }
    }

    function range(uint256 length) internal pure returns (uint256[] memory r) {
        r = new uint[](length);
        for (uint256 i = 0; i < r.length; i++) {
            r[i] = i;
        }
    }
}

contract Pyramid {
    using ArrayUtils for *;

    function pyramid(uint256 l) public pure returns (uint256) {
        return ArrayUtils.range(l).map(square).reduce(sum);
    }

    function square(uint256 x) internal pure returns (uint256) {
        return x * x;
    }

    function sum(uint256 x, uint256 y) internal pure returns (uint256) {
        return x + y;
    }
}
