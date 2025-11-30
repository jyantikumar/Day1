// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import { AggregatorV3Interface } from "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract Day12_Act2 {
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
    
    function convertEthToPeso()public view returns (int256 price) {
        (,int256 answer,,,) = priceFeed.latestRoundData();
        
        require(answer > 0, "Price is not available or invalid.");
        
        return answer*59;
    }

}