// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

/////////////////////// Interface ng Receiver Contract
interface ICalculatorReceiver {
    function getSum(uint256 _num1, uint256 _num2) external pure returns (uint256);
    function getDifference(uint256 _num1, uint256 _num2) external pure returns (uint256);
    function getProduct(uint256 _num1, uint256 _num2) external pure returns (uint256);
    function getQuotient(uint256 _num1, uint256 _num2) external pure returns (uint256);
}

///////////////////////Caller Contract
contract CalculatorCaller {
    ICalculatorReceiver receiverContract;

    constructor(address _receiverAddress) {
        receiverContract = ICalculatorReceiver(_receiverAddress);
    }

    function callSum(uint256 _num1, uint256 _num2) public view returns (uint256) {
        return receiverContract.getSum(_num1, _num2);
    }

    function callDifference(uint256 _num1, uint256 _num2) public view returns (uint256) {
        return receiverContract.getDifference(_num1, _num2);
    }

    function callProduct(uint256 _num1, uint256 _num2) public view returns (uint256) {
        return receiverContract.getProduct(_num1, _num2);
    }

    function callQuotient(uint256 _num1, uint256 _num2) public view returns (uint256) {
        return receiverContract.getQuotient(_num1, _num2);
    }
}
///////////////////////Receiver Contract

contract CalculatorReceiver {
    function getSum(uint256 _num1, uint256 _num2) external pure returns (uint256) {
        return _num1 + _num2;
    }

    function getDifference(uint256 _num1, uint256 _num2) external pure returns (uint256) {
        if (_num2 > _num1) {
            return 0;
        }
        return _num1 - _num2;
    }

    function getProduct(uint256 _num1, uint256 _num2) external pure returns (uint256) {
        return _num1 * _num2;
    }

    function getQuotient(uint256 _num1, uint256 _num2) external pure returns (uint256) {
        if (_num2 == 0) {
            return 0;
        }
        return _num1 /_num2;
    }
}
