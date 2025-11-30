// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Day7Act2{
event VoteCasted(address indexed voter, uint proposalId, bool choice);

function vote(uint proposalId, bool choice)public{
    emit VoteCasted(msg.sender, proposalId, choice);

}


}
   