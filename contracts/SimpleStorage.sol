// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {

    uint256 myFavoriteNumber;

    //uint256[] listOfFavoriteNumbers;

    struct Person {
        uint256 favouriteNumber;
        string name;

    }

    // dynamic array
    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;

    // Person public pat = Person({favouriteNumber: 7, name: "Pat"}); 

    function store(uint256 _favoriteNumber) public virtual {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    // 0xd9145CCE52D386f254917e481eB44e9943F39138 
}
