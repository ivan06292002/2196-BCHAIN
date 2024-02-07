//SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract GlobalVariables { 
    function globalVar() external view returns (address, uint, uint) {
        address sender = msg.sender;
        uint timestamp = block.timestamp;
        uint blockNum = block.number;
        return (sender, timestamp, blockNum); 
    }
     function gasVariables() external view returns (uint, uint, uint) {
        uint gasPrice = tx.gasprice;
        uint gasLimit = gasleft();
        uint gasRemaining = block.gaslimit - gasleft();
        return (gasPrice, gasLimit, gasRemaining);
    }

    function contractAddress() external view returns (address) {
        return address(this);
    }

    function getCoinbase() external view returns (address) {
        return block.coinbase;
    }
}

//Insight here