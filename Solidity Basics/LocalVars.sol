//SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract LocalVariables {
    uint public i;
    bool public b;
    address public myAddress;

    function foo() external {
        uint x = 123;
        bool f = false;
        x += 456;
        f = true;

        i = 123;
        b = true;
        myAddress = address(1);

    }
}

//Insight here
//The foo function demonstrates the usage of local variables (x and f) and assigns their values to public state variables (i, b, and myAddress) within the Solidity smart contract. 
//The contract essentially showcases basic variable manipulation and state updates in a Solidity contract.
