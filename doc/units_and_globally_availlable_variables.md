# Units and globally available variables.
## Ether Units
1. Chisel demo
    - Assert 1 wei is equal to what literal integer
    - Assert 1 gwei is equal to what literal integer
    - Assert 1 ether is equal to what literal integer

## Time Units
1. Chisel demo
    - Assert 1 second is equal to what literal
    - Assert 1 min is equal to how many seconds
    - Assert 1 hour is equal how many minutes.
    - Assert 1 day is equal to how many hours.
    - Assert 1 week is equal to how many days.
    - Declare a function that takes in start date and enddate and does something if it's within time range.

## Block & Transaction properties 
1. Chisel demo
    - Fork mainnet
    - Check current block number. 
    - Check block hash of a recent block.
    - Check current base fee
    - check current chainid
    - Check current coinbase
    - Check current difficulty 
    - Check prevrandao 
    - Check gas limit
    - check time stamp
    - check the gasleft 
    - How many member functions does msg have(4). 
    - How many members does tx have (2).

## Abi encoding and Decoding functions
1. Chisel Demo
    - Abi endoce a payload 
    - Decode the payload 
    - Encode packed show ambigouity
    - Encode with selector
    - Encode with signature
    - Encode call 

## Error handling
1. Chisel Demo
    - Revert of failure
    - Check an assertion
    - Return string on failure on revert
    - Return string on failure on require

## Mathematical and Cryptographic functions 
1. Chisel Demo
    - Perform an addition then modula with one function 
    - Perform an multiplication then modula with one function 
    - Compute the Keccak-256 hash of input.
    - Compute the sha256 hash of input
    - Compute the RIPEMD-160 hash of input.
    - Recover the address associated with the public key from elliptic curve signater of return zero.

## Type information 
1. Code demo:
    - Retrieve the name of a contract.
    - Retrieve the creation code of a contract.
    - Retrieve the runtime code of a contract. 
    - Retrieve the interface Id of a contract. 
    - Retrieve the max and min of an integer. 
