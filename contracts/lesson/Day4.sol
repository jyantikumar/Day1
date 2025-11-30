// SPDX Licence Identifier: MIT 
pragma solidity ^0.8.30;

contract Day4{
    function cToF(uint cel) public pure returns(uint){
        return (cel * 9) / 5 + 32;
    }

    function hoursToSec (uint hour) public pure returns (uint){
        return hour*60;
    }

    function ave3(int num1, int num2,int num3) public pure returns(int){
        return (num1+num2+num3)/3;
    }

    function etherToDollars(uint eth) public pure returns(uint){
        return eth*2970;
    }

}