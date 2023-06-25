// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title This is a  contract
/// @author arn-ob
/// @notice 
/// @dev 
contract EnumContract {
    enum State { Waiting, Ready, Active }
    State public state;

   constructor() {
        state = State.Waiting;
    }

    function activate() public {
        state = State.Active;
    }

    function isActive() public view returns (bool) {
        return state == State.Active;
    }

}
