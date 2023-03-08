// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract A {
    // slot 0
    uint256 public var1 = 256;

    // slot 1
    address public var2 = 0x9ACc1d6Aa9b846083E8a497A661853aaE07F0F00;

    // slot 2
    bytes32 public var3 = 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;

    // slot 3
    uint128 public var4 = 1;
    uint128 public var5 = 2;

    function slot5() external returns (uint256) {
        uint256 ans;
        assembly {
            let slot := var5.slot
            let offset := var5.offset
            ans := sload(slot)
        }
        return ans;
    }

    function howManyEvens(uint256 startNum, uint256 endNum) external pure returns (uint256) {
        uint256 ans;
        assembly {
            for { let i := startNum } lt(i, endNum) { i := add(i, 1) } {
                if iszero(i) { continue }
                if iszero(mod(i, 2)) { ans := add(ans, 1) }
            }
        }
        return ans;
    }

    function readVar4AndVar5() external view returns (uint128, uint128) {
        uint128 readVar4;
        uint128 readVar5;

        bytes32 mask = 0x00000000000000000000000000000000ffffffffffffffffffffffffffffffff;

        assembly {
            let slot3 := sload(3)

            // the and() operation sets var5 to 0x00
            readVar4 := and(slot3, mask)

            // we shift var5 to var4's position
            // var5's old position becomes 0x00
            readVar5 := shr(mul(var5.offset, 8), slot3)
        }

        return (readVar4, readVar5);
    }

    function writeVar5(uint256 newVal) external {
        assembly {
            // load slot 3
            let slot3 := sload(3)

            // mask for clearing var5
            let mask := 0x00000000000000000000000000000000ffffffffffffffffffffffffffffffff

            // isolate var4
            let clearedVar5 := and(slot3, mask)

            // format new value into var5 position
            let shiftedVal := shl(mul(var5.offset, 8), newVal)

            // combine new value with isolated var4
            let newSlot3 := or(shiftedVal, clearedVar5)

            // store new value to slot 3
            sstore(3, newSlot3)
        }
    }

    function getDynamicArray(uint256[] memory arr) external view returns (uint256[] memory) {
        assembly {
            // where array is stored in memory (0x80)
            let location := arr

            // length of array is stored at arr (4)
            let length := mload(arr)

            // gets next available memory location
            let nextMemoryLocation := add(add(location, 0x20), mul(length, 0x20))

            // stores new value to memory
            mstore(nextMemoryLocation, 4)

            // increment length by 1
            length := add(length, 1)

            // store new length value
            mstore(location, add(length, 1))

            // update free memory pointer
            mstore(0x40, 0x140)

            return(add(location, 0x20), mul(length, 0x20))
        }
    }
}
