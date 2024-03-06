// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract GradeContract {
address contractOwner;
uint256 public prelim;
uint256 public mid;
uint256 public finals;
uint256 public gradeStatus;
string public name;
address public owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "For the owner only!");
        _;
    }


modifier prelimBetweenZeroToOneHundred(uint256 _prelim) {
require(_prelim < 100 , "Grade must be between 0 to 100");
_;
}

modifier midBetweenZeroToOneHundred(uint256 _mid) {
require(_mid <  100 , "Grade must be between 0 to 100");
_;
}

modifier finalBetweenZeroToOneHundred(uint256 _mid) {
require(_mid <  100 , "Grade must be between 0 to 100");
_;
}

function setName(string calldata _name) public {
name = _name;
}

function setPrelimGrade(uint256 _prelim) public onlyOwner prelimBetweenZeroToOneHundred(_prelim){
prelim = _prelim;
}

function setMidtermGrade(uint256 _mid) public onlyOwner midBetweenZeroToOneHundred(_mid) {
mid= _mid;
}

function setFinalGrade(uint256 _finals) public onlyOwner finalBetweenZeroToOneHundred(_finals) {
finals= _finals;
}


function calculateGrade() public onlyOwner {
gradeStatus = 1;
}



}