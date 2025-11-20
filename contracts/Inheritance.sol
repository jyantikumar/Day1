// SPDX Licence Identifier: MIT
pragma solidity ^0.8.30;

contract A {
    uint private count = 42;
    uint public countTwo = 100;
}
contract B is A {
    function readCount() public view returns (uint) {
        //return count; ///////di nababasa yung count kasi nakaprivate kaya ayaw kahit nakainherit
        return countTwo;
    }
}
