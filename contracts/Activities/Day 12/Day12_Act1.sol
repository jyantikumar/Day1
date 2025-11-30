// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import { AggregatorV3Interface } from "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract Day12_Act1 {
    AggregatorV3Interface internal priceFeed;
    
    address private constant ETH_USD_PRICE_FEED = 0x694AA1769357215DE4FAC081bf1f309aDC325306;

    constructor() {
        priceFeed = AggregatorV3Interface(ETH_USD_PRICE_FEED);
    }

    function getLatestPrice() public view returns (int256 price) {
        (,int256 answer,,,) = priceFeed.latestRoundData();
        
        require(answer > 0, "Price is not available or invalid.");
        
        return answer;
    }
    
    function convertUsdToEth(uint256 usdAmountIn18Decimals) public view returns (uint256 ethAmount) 
    {
        int256 ethPriceUsd = getLatestPrice(); 
        uint8 priceFeedDecimals = priceFeed.decimals();
        uint256 precisionAdjustment = 10 ** priceFeedDecimals; 
        uint256 ethPriceUsd_uint = uint256(ethPriceUsd);
        
        uint256 calculatedEthAmount = (usdAmountIn18Decimals * precisionAdjustment) / ethPriceUsd_uint;
        
        return calculatedEthAmount;
    }

}