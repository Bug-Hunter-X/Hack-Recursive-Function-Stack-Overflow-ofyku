# Hack Recursive Function Stack Overflow Bug

This repository demonstrates a common error in Hack:  a recursive function that lacks proper handling of negative input values.  The `foo` function calculates the factorial, but without bounds checking, it will recursively call itself indefinitely when given a negative integer, resulting in a stack overflow.

The solution demonstrates how to add a check for negative input to prevent this error.

## How to reproduce

1. Clone this repository.
2. Run the `bug.hack` file using the HHVM compiler.
3. Observe the stack overflow error when calling `foo` with a negative argument.
4. Run the `bugSolution.hack` file to see how to fix this error.

## Bug details

The original `foo` function fails to handle negative inputs.  This leads to unbounded recursion and eventually a stack overflow.  This illustrates a common oversight when dealing with recursive functions and highlights the importance of input validation.  The Hack compiler's type system does not catch this specific issue automatically.

## Solution

The solution involves adding an explicit check at the beginning of the function to return an error or handle negative input appropriately.