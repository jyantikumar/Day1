// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract SimpleBank {

    mapping(address => uint) public balances;

    event Withdrawn(address indexed user, uint amount);

    function deposit() public payable {
        require(msg.value > 0, "Must send some ETH");
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance");

        balances[msg.sender] -= amount; 

        (bool success, ) = payable(msg.sender).call{value: amount}("");
        require(success, "Withdraw failed");

        emit Withdrawn(msg.sender, amount); 
    }

    function getBalance() public view returns (uint) {
        return balances[msg.sender];
    }
}
