// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Day6Act2{

    uint[] public Scores;

/////////////////add scores to the array
    function addScore(uint value)public{
        Scores.push(value);
    }
/////////////////remove last score
    function removeScore()public{
        Scores.pop();
    }
/////////////value ng selected index
    function getScore(uint index)public view returns(uint){
        return Scores[index];
    }
////////////array length
    function getTotalScores() public view returns(uint){
        return Scores.length;
    }
/*
//////////display Scores Array
    function displayScores() public view returns(uint[] memory){
        return Scores;
    } *///////////////////////


}