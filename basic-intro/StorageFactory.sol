// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import './SimpleContract.sol';

contract StorageFactory is SimpleContract {

    SimpleContract[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        SimpleContract simpleStorage = new SimpleContract();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        SimpleContract simpleContract = SimpleContract(address(simpleStorageArray[_simpleStorageIndex]));
        simpleContract.store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        SimpleContract simpleContract = SimpleContract(address(simpleStorageArray[_simpleStorageIndex]));
        return simpleContract.retrive();
    }

}