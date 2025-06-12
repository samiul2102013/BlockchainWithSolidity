// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.3 < 0.9;

import "./SimpleStorage.sol";
contract StorageFactory is SimpleStorage {
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStoreageIndex, uint256 _simpleStorageNumber) public {
        SimpleStorage simpleStorage = SimpleStorage(address(simpleStorageArray[_simpleStoreageIndex]));
        simpleStorage.store(_simpleStorageNumber);
    }
    function sfGet(uint256 _simpleStoreageIndex) public view returns (uint256){
        SimpleStorage simpleStorage = SimpleStorage(address(simpleStorageArray[_simpleStoreageIndex]));
        return simpleStorage.retrieve();
    }
}