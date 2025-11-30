// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Day8Act1 {

 mapping(address => uint) internal balances;

function deposit()public payable{
    require(msg.value > 0, "Input ether amount");
    balances[msg.sender]+=msg.value;
}

function viewBalance()public view returns(uint){
    return balances[msg.sender];
}


}
   