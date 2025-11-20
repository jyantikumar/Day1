// SPDX Licence Identifier: MIT
pragma solidity 0.8.30;


contract internalFunction{
    function helper() internal pure returns (uint256){
        return 100;

    }

    function helperTrigger() public pure returns (uint256){
        return helper();
    }
}

contract InternalChild is internalFunction{
    function useHelper() public pure returns (uint){
        return helper();
    }
}