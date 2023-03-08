// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

contract TestingContract {
    uint256 public x;

    constructor(uint256 _x) {
        x = _x;
    }
}

contract Create2 {
    TestingContract public testingContract;

    function createTestingContract(uint256 args) public {
        bytes32 salt = keccak256(abi.encodePacked(uint256(1)));
        testingContract = new TestingContract{salt: salt}(args);
        require(address(testingContract) == predictAddress(args, salt));
    }

    function predictAddress(uint256 args, bytes32 salt) internal view returns (address) {
        address predictedAddress = address(
            uint160(
                uint256(
                    keccak256(
                        abi.encodePacked(
                            hex"ff",
                            address(this),
                            salt,
                            keccak256(abi.encodePacked(type(TestingContract).creationCode, abi.encode(args)))
                        )
                    )
                )
            )
        );

        return predictedAddress;
    }
}
