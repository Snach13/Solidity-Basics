// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "contracts/SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage {
   
   function store(uint _newNumber) public override {
    myFavoriteNumber = _newNumber + 5;
   }
}