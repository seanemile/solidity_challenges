// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

interface IGet {
    function get() external view returns (uint256);
    function withdraw() external;
}
