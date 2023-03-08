// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.19;

import "forge-std/Test.sol";

contract A {
    uint256 public number;
    bool public boolian;

    constructor(uint256 _number) {
        number = _number;
    }
}

contract ForgeStdTest is Test {
    uint256[] public data = [10, 20, 30, 40, 50];
    A public a;

    function setUp() public {
        a = new A(1);
    }

    function test1() public {
        emit log_array(data);
        emit log_named_array("users", data);
    }

    function testFail2() public {
        uint256 var1 = a.number();
        if (var1 == 1) {
            fail("The function has failed");
        }
    }

    function test3() public {
        assertFalse(a.boolian());
    }

    function test4() public {
        assertEq(a.number(), 1);
    }

    function testFail5() external {
        uint256 a1 = 100;
        uint256 b2 = 200;

        assertApproxEqAbs(a1, b2, 90);
    }

    function testFail6() external {
        uint256 a1 = 100;
        uint256 b2 = 200;
        assertApproxEqRel(a1, b2, 0.4e18);
    }

    function test7() external {
        assertEq(block.timestamp, 1);
        skip(3600);
        assertEq(block.timestamp, 3601);
        rewind(3600);
        assertEq(block.timestamp, 1);
    }

    function test8() external view {
        console2.log(address(this).balance);
    }

    function test9() public {
        hoax(address(10), 200);
    }

    function test10() external {
        startHoax(address(10), 200);
    }

    function test11() external {
        startHoax(address(10), 200);
    }

    // function test12() external {
    //     // deal(address(dai), alice, 10000e18);
    //     // assertEq(dai.balanceOf(alice), 10000e18);
    // }

    function test13() external {
        //address deployment = deployCode("MyContract.sol", abi.encode(arg1,arg3));
    }
}
