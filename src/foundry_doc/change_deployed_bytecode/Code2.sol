// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract Code2 {
    function get() public pure returns (uint256) {
        return 2;
    }

    function withdraw() external {
        selfdestruct(payable(address(this)));
    }
}
