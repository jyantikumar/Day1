// SPDX Licence Identifier: MIT 
pragma solidity ^0.8.30;

contract ValueTypes{
    string public name="Jyanti";
    uint256 public Score=100;
    uint256 public level=50;
    bool public life=true;
    string public message;


    function PlayerStat() public{
         if(life){
        message="Player is alive";
        }else{
        message="Player is dead";
        }

    }

    
}