// SPDX Licence Identifier: MIT
pragma solidity ^0.8.30;
contract publicFunction{

    function greet() public pure returns (string memory){
        return "Hello blockchan";

    }

    function otherFunction() public pure  returns (string memory){
        return greet();
    }
}