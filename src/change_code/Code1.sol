// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Code1 {
    function get() public pure returns (uint256) {
        return 1;
    }

    function withdraw() external {
        selfdestruct(payable(address(this)));
    }
}
