// SPDX Licence Identifier: MIT
pragma solidity 0.8.30;

contract Return{

    function multipleReturns() public pure returns (uint, uint, string memory){
        uint num=10;
        uint numTwo=20;
        string memory theHello="Hello world";

        return (num, numTwo, theHello);

    }

}