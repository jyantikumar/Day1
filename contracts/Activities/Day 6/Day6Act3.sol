// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Day6Act3{

        mapping(address => uint) public balances;

/////// deposit
        function deposit(uint amount) public returns(uint){
            balances[msg.sender]+=amount;
        }
///////get balance ng wallet
        function getBalance(address user) public view returns(uint){
            return balances[user];
        }
/////// 0.
        function resetMyBalance() public{
            delete balances[msg.sender];
        }

}