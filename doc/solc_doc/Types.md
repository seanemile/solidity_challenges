# Challenges meant to assess knowledge of the solidity language

## Structure of a Contract
1. Code Challange:
    - Declare a contract 'A' with MIT license and latest compiler version.
    - Active SMTChecker on 'A'.
    - Declare a contract 'B' with GPL license.
    - Import 'A' in 'B'.
    - Declare a private unsigned integer state variable 'a' in 'A'.
    - Declare a public function 'bid()'.
    - Declare a public function 'helper()' outside the Contract.

## Types(5) Value Types(7) Reference Types (3)
## 'Bool' 
1. Chisel Demo: 
    - Declare a boolean 
    - Perform 3 logical operations on the boolean.
    - Relational 2 operation.

## 'Integers'
1. chisel Demo:
    - perform (Relational(6) operations, Bit(4) operations, Shift Operations(2),Arithmetic Operators(5) on an integer.
    - Find min and max on Integer types.
    - Demonstrate overflow in integers.
    - Demonstrate two's compliment on unsigned integers. 
    - Shift left with math operation and with shift operation. 
    - Shift right with math operation and with shift operation. 
    - What is the result of int(-5) / int(2).
    - Modulo results in the same sign as its left operand.

## 'Address'
1. Chisel Demo:
    - Fork mainnet.
    - Retrieve USDC interface.
    - Bind it to the USDC address.
    - Query balance on USDC.
    - Query the code on USDC.
    - Query the codehash on USDC.
    - Transfer ether to USDC. 
    - Send ether to USDC. 
    - Call ether to USDC. 
    - What does the 'tranfer()', 'send()' function do on failure.
    - What is the deference between a staticcall, call, delegatecall.
    - Query the balance of the current contract.
    - Check the return type of calling a function on a non existent contract. 

## 'Contract Types'
1. Chisel Demo:
    - Fetch the tether interface from mainnet.
    - Instantiate new contracts with the imported interface that points to the teather contract.
    - Query a read function maybe name

## 'bytes1 .. 32'
1. Chisel Demo:
    - perform (Relational(6) operations, Bit(4) operations, Shift Operations(2),Arithmetic Operators(5) on bytes32.
    - Display the length of bytes1.

## 'bytes'
1. Chisel Demo:
    - Concatenate arbitrary number of bytes 
    - Push bytes to a storage bytes. 

## 'string'
1. Chisel Demo:
    - Concatenate arbitrary number of strings

## 'literals' 5)
1. Chisel Demo:
    - Declare an address literal.
    - Declare integer literal.
    - Declare integer fractional literals.
    - Declare integer in scientific notation.
    - Declare ten million literal with improved readability. 
    - Perform arithmetic with a literal that would otherwise overflow.
    - Shift operations are performed in what type.
    - Declare a String literal.
    - Declare a bytes literal.
    - User all 8 escape sequences on a string literal.
    - Assign a unicode emoji literals to a string.
    - Assign hexadecimal literals.

## 'enum'
1. Chisel Demo:
    - Declare an enum with 4 items.
    - Find out maximum number of items in enum. 
    - Declare function to set enum 
    - Declare a getter function for enums (return enum).
    - Declare a function to get largest value and smallest value.

## User-defined Value Types
1. Code Challange:
    - Declare a minimal library to do fixed point arithmetic on a user defined data type

## Function Types
1. [Code Challange 1](Function.sol)
        - Declare a contract named 'Function'
        - Declare a public payable function 'f()' that returns the selector of the function 'f()'.
        - Assert that the address of 'f()' is equivalent to address of Function
        - Declare another function 'g()' that makes an external call with value and hard coded gas to 'f()'.

2.[Code Challange 2](Pyramid.sol)
    - Create an arrays uitls library that can has the reduce(), (Adds everything in an array and returns the sum). map() modifies each element in an array and returns a new array, range() returns an array from zero to a certain range. User function types that can be passed on to this functions.

3. [Challange 3](Oracle.sol)

## Data Location
1. [Code Challange]()
    - Create a contract 'C'.
    - Declare a uint array 'x'.
    - Declare a public function 'f' that takes in an array 'm' from memory. 
    - Copy the array 'm' to storage.
    - Create a pointer 'y' to storage. 
    - Retrieve values using 'y'.
    - Pop a value from 'y'
    - Delete 'x'
    - Call another function 'g(x)' handling over a reference to x 
    - Call another function 'h(x)' creating an independent temporary copy in memory. 

## Arrays
1. Chisel Challenge: [Code Example](ArrayContract.sol) 
    - Declare a uint array of size 5.
    - Declare 5 dynamic arrays of uint in memory.
    - Access the seventh uint in the third dynamic array.
    - Publicly-visible functions need parameters that are ABI-types. 
    - Create a memory array of fixed size 7.
    - Create a bytes in memory of a specific length.
    - Create an array literal with three items of type uint8[3] memory.
    - Create an array literal with three items of type uint[3] memory.
    - Make this array literal work [1, -1]
    - Create a two dimensional array literal from memory of type uint24(four arrays of with two items each)  
    - Initialize a dynamic-sized array of three items.
    - Retrieve the length of a storage array.
    - Push bytes and storage arrays.
    - Push a zero-initialized element at the end of storage array and use the reference to it to Initialize the pushed element with different values. 
    - Remove items at the end of an array. 

## Dangling Reference to Storage Array Elements
1. [Code Challenge](Dangling.sol)
    - Demonstrate a dangling reference.
2. [Code Challenge](DanglineTuple.sol)
    - Demonstrate a dangling reference occurring temporarily when using complex expression in tuple assignments.
2. [Code Challenge](DanglingBytes.sol)
    - Demonstrate mutiple accesses to a bytes array in storage while simultaneously enlarging it with a tuple.

## Array Slices.
1. [Code Challenge](Proxy.sol)
    - User array slices in proxy like contract to retrive the function selector compare it to known selector if it matches do sth.  

## Structs
1. 
