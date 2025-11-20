// SPDX Licence Identifier: MIT
pragma solidity 0.8.30;


contract CallData{
    string public name;

    function changeString(string storage nameRef) internal pure returns (string memory) {
        return name;
    }


}