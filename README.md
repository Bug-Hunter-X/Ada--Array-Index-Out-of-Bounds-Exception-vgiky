# Ada Array Index Out of Bounds Example

This repository demonstrates a common error in Ada programming: accessing array elements outside of their defined index range, leading to a `Constraint_Error` exception.

## The Problem
The `bug.ada` file contains an Ada program that initializes an array and then attempts to access its elements.  A loop iterates through the array, and inside the loop, a function tries to get a value at a given index. If the provided index is not within the bounds (1..10 in this case) a `Constraint_Error` exception occurs. 

## The Solution
The `bugSolution.ada` file provides a corrected version.  The solution adds comprehensive exception handling to gracefully handle the `Constraint_Error`, preventing program crashes. It also demonstrates adding input validation to avoid the error in the first place.