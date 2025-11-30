// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Day6Act1 {

    uint[3] public fixedArray=[1,2,3];
    //////// act 1
    /////change value ng selected index
    function setNumber(uint index, uint value)public returns(uint){
        fixedArray[index]=value;
    }
    ///////////////display value ng selected array index
    function getNumber(uint index)public view returns(uint){
        return  fixedArray[index];
    }


}
