# Smart Contract with require(), assert(), and revert() in Solidity

This project demonstrates how require(), assert(), and revert() functions can be used to validate user input, check for internal errors, and gracefully handle unexpected situations within a smart contract.

## Description 

This project is a simple Solidity smart contract that showcases the use of error handling mechanisms. Solidity is a programming language specifically designed for writing smart contracts, which are self-executing programs stored on a blockchain. 
Solidity allows developers to define rules and conditions that govern the interaction and flow of value on a blockchain network.  Error handling is crucial in smart contracts to ensure their reliability and security. This project demonstrates how `require()`, `assert()`, and `revert()` functions can be used to validate user input, check for internal errors, and gracefully handle unexpected situations within a smart contract.

require(): Used in the deposit function to validate user input. It throws an error with a custom message ("Deposit amount must be greater than zero") if the amount is not greater than zero. This ensures the contract only accepts positive deposits.
assert(): Used in the withdraw function to check for an internal invariant (condition that should always be true). Here, it asserts that the value is greater than or equal to the amount being withdrawn. If this fails, it indicates an unexpected error within the contract logic and reverts the transaction.
revert(): Used in the transfer function to explicitly revert the transaction if there are insufficient funds. This allows for more granular control over error handling and provides a clear error message ("Insufficient funds for transfer") to the user.

## Getting Started

### Executing Program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., token.sol). Copy and paste the following code into the file:

```javascript
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
    assert(value >= amount, "Insufficient balance"); // Checks for sufficient balance (internal)
    value -= amount;
  }
  // Function to transfer funds to another address (example for revert())
  function transfer(uint amount) public {
    if (value < amount) { // Simulates potential error during transfer
      revert("Insufficient funds for transfer"); // Explicitly reverts with message
    }
    value -= amount;
    // Simulate successful transfer (not shown for brevity)
  }
}
```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile demonstration.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "Demonstration" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it and then you can deposit, withdraw and transfer the fund as per your requirements.

## Authors

Mohd Arshad


@MohdArs54582167

https://x.com/MohdArs54582167?t=LLQF6n_B1TiYZBmNg4ZHBA&s=09

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
