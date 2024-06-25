// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandling {

  uint public value;

  // Constructor to initialize the value
  constructor(uint initialValue) {
    value = initialValue;
  }

  // Function to deposit funds (example for require())
  function deposit(uint amount) public {
    require(amount > 0, "Deposit amount must be greater than zero"); // Validates positive deposit
    value += amount;
  }

  // Function to withdraw funds (example for assert())
  function withdraw(uint amount) public {
    // Checking the condition for sufficient balance
    require(amount <= value, "Insufficient balance"); // Checks for sufficient balance using require
    value -= amount;
    // Here, assert could be used to check internal state consistency if needed
    assert(value >= 0); // This is more of a sanity check
  }

  // Function to transfer funds to another address (example for revert())
  function transfer(address recipient, uint amount) public {
    if (value < amount) { // Simulates potential error during transfer
      revert("Insufficient funds for transfer"); // Explicitly reverts with message
    }
    value -= amount;
    // Simulate successful transfer (not shown for brevity)
  }
}
