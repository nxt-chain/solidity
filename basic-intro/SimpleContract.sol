// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleContract {
    uint256 favNumber;
    bool favBool;

    struct Person {
        uint256 favNumber;
        string name;
    }   

    Person[] public person;
    mapping(string => uint256) public nameToFavNumber;
    
    function store(uint256 _favNumber) public {
        favNumber = _favNumber;
    }

    function retrive() public view returns (uint256) {
        return favNumber;
    }

    function addPerson(string memory _name, uint256 _favNumber) public {
        person.push(Person(_favNumber, _name));
        nameToFavNumber[_name] = _favNumber;
    }
}