//SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.7.0 <0.9.0;

contract UserAge {
    struct User {
        uint256 age;
        string name;
    }
    
    mapping(string => User) users;
    
    function setAge(uint256 _age, string memory _name) public {
        users[_name].age = _age;
    }
    
    function getAge(string memory _name) public view returns(uint256) {
        return users[_name].age;
    }
}
