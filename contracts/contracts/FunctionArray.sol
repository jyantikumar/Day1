// SPDX Licence Identifier: MIT 
pragma solidity ^0.8.30;

contract FunctionArray{
    function arrayExample() public pure returns(uint){

       uint[4] memory numbers=[uint(0),1,2,3];
       return numbers[0];
    }
    function arrayParameter(uint [] memory numbers, uint index) public pure returns (uint){
        return numbers[index];
    }
    function callDataFunction(uint [] calldata numbers, uint index) public pure returns (uint){
        return numbers[index];
}
}