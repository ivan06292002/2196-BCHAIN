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
//These features leverage numerous international variables supplied by the Ethereum blockchain and Solidity.
//Msg.Sender and block.Timestamp are typically used for authentication and timestamping.
//Gas-related capabilities (tx.Gasprice, gasleft(), block.Gaslimit) offer insights into fuel-associated parameters for transaction execution.
//Cope with(this) is used to reap the settlement's own cope with.
//Block.Coinbase gives the cope with of the miner who mined the block.
//These functionalities can be beneficial for diverse functions, such as auditing, monitoring fuel intake, and understanding transaction context within the Ethereum blockchain.
