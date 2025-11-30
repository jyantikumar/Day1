// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Day7Act1 {
event ActionPerformed(address user, string action);

function logAction(string memory action)public{
    emit ActionPerformed(msg.sender, action);

}


}
   

