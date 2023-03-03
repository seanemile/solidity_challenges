// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

contract Function {

  function f() public payable returns(bytes4) {
    assert(this.f.selector == bytes4(keccak256("f()"))); 
    assert(this.f.address == address(this)); 
    return this.f.selector;
  }
  
  function g() public {
    this.f{gas: 10, value: 1 ether}();
  }
  
}

