# Error Contract

This Solidity smart contract, named `Error`, provides functions to check whether a given number is two digits or not.

## Functions

### 1. `testRequireWithTwoDigits`

#### Description

This function takes an unsigned integer `_num` as input and uses the `require` statement to ensure that the number is two digits. If the condition is met, it returns a success message; otherwise, it throws an error with the message "Number must be two digits."

### 2. `testRevert`

#### Description

Similar to `testRequireWithTwoDigits`, this function checks if the input number is two digits. However, it uses the `revert` statement for error handling.

### 3. `_isTwoDigits`

#### Description

An internal pure function `_isTwoDigits` checks whether a given number is in the range of two digits (10 to 99).

### 4. `testAssert`

#### Description

This function asserts that the public variable `Number` is a two-digit number using the `_isTwoDigits` function.

## Public Variables

### 1. `Number`

A public unsigned integer variable representing an example two-digit number (initialized with 42).

## Usage

1. Deploy the `Error` contract on a compatible Ethereum blockchain.
2. Call the different functions, such as `testRequireWithTwoDigits`, `testRevert`, and `testAssert`, to test the two-digit validation logic.

