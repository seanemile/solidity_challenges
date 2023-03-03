// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

contract Enum {
    enum State {
        Created,
        Locked,
        Inactive
    }

    State public state;

    constructor() {
        state = State.Created;
    }

    function activate() public {
        state = State.Inactive;
    }

    function isInactive() public view returns (bool) {
        return state == State.Inactive;
    }
}
