# RISC-V Pyramid

A program written in RISC-V assembly that prints a pyramid of asterisks. The project was developed as part of a university assignment to gain practical experience with assembly programming.

## Example

For a height of 4 stored in memory, the program produces the following output:

```text
   *
  ***
 *****
*******
```

## Implementation

For each row, the program calculates the required number of spaces and asterisks and writes the output to a buffer.

The implementation covers several concepts, including:

- RISC-V assembly
- Register and memory management
- Loops and conditional branches
- Subroutines and function calls
- Working with memory buffers
- Calculating character positions
- String output

A key component of the program is a subroutine that writes the appropriate number of spaces and asterisks to a buffer, depending on the current row.

## Execution

The program was developed and executed using the riscVivid simulator.

To run the program:

1. Download or clone the repository.
2. Open the project in the riscVivid simulator.
3. Assemble the program.
4. Run the program in the simulator.
5. Adjust the pyramid height by changing the corresponding value in memory.

## Example Output

For a height of 4:

```text
   *
  ***
 *****
*******
```

## What I Learned

This project provided practical experience with low-level programming. I gained a better understanding of register and memory management, implementing loops and subroutines, and calculating and processing characters in memory.

The complete source code is available in this repository.
