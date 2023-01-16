// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

import "./Choice.sol";

import {IGet} from "./IGet.sol";

contract OverWrite {
    Choice public d;

    function create(address _loader) external {
        bytes32 salt = bytes32(uint256(0x01));
        d = new Choice{salt: salt}(_loader);
        require(address(d) == predictAddr(_loader), "Not at predicted address");
    }

    function predictAddr(address _loader) public view returns (address) {
        bytes32 salt = bytes32(uint256(0x01));
        address predictedAddress = address(
            uint160(
                uint256(
                    keccak256(
                        abi.encodePacked(
                            bytes1(0xff),
                            address(this),
                            salt,
                            keccak256(abi.encodePacked(type(Choice).creationCode, abi.encode(_loader)))
                        )
                    )
                )
            )
        );
        return predictedAddress;
    }

    function withdraw() public {
        IGet iget = IGet(address(d));
        iget.withdraw();
    }

    function get() public view returns (uint256) {
        IGet iget = IGet(address(d));
        return iget.get();
    }
}
