// SPDX Licence Identifier: MIT 
pragma solidity ^0.8.30;

contract ValueTypes{
    //bool
    bool public Active=true; //boolean
    ///integer
    int256 public totalSupply=1000;
    uint256 public temperature=6; //unsigned integer, bawal negative value
    //address
    address public owner=0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    //bytes
    bytes1 public letter= 0x5B;
    //enum // parang array ????
    enum status {Pending, Shipped, Delivered, Cancelled}
    status public OrderStatus=status.Pending;
}