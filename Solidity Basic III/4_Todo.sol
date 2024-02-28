// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./4_StructDeclaration_Demo.sol";

contract Todos {
  // An array of 'Todo' structs
  Todo[] public todos;
  
function getTodoCount() public view returns (uint) {
        return todos.length;
    }
 // Clear all todos in the array
function clearTodos() public {
        delete todos;
    }
}
