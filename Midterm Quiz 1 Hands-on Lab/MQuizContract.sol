// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract MQuizContract {
address owner;
uint256 public newAge;
uint256 public workedHours;
uint256 public ratePerHour;
uint256 public totalEarnings;

modifier onlyOwner() {
require(msg.sender == owner, "Access denied. Caller is not the owner");
_;
}

modifier rateGreaterThanZero(uint256 _rate) {
require(_rate > 0, "Invalid hourly rate. Must be larger than zero");
_;
}

modifier hoursWorkedGreaterThanZero(uint256 _hoursWorked) {
require(_hoursWorked > 0, "Invalid hours worked. Must be greater than zero");
_;
}

constructor() {
owner = msg.sender;
}

function setNewAge(uint256 _age) public onlyOwner {
newAge = _age;
}

function setWorkedHours(uint256 _hoursWorked) public onlyOwner hoursWorkedGreaterThanZero(_hoursWorked) {
workedHours = _hoursWorked;
}

function setHourlyRate(uint256 _hourlyRate) public onlyOwner rateGreaterThanZero(_hourlyRate) {
ratePerHour = _hourlyRate;
}

function calculateTotalEarnings() public onlyOwner {
require(ratePerHour > 0 && workedHours > 0, "Invalid calculation. Hourly rate or hours worked cannot be zero");
totalEarnings = ratePerHour * workedHours;
}
}