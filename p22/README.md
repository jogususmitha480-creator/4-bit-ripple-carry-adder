# 4-Bit Ripple Carry Adder

## Overview

This project implements a 4-bit Ripple Carry Adder using Verilog HDL.

A Ripple Carry Adder is a digital circuit used to add two binary numbers.
It is constructed by connecting multiple full adders in cascade. The carry
output from one full adder is connected to the carry input of the next
full adder.

## Features

- 4-bit binary addition
- Verilog HDL implementation
- Four full adders connected in cascade
- Supports carry input
- Produces a 4-bit sum
- Produces a final carry output
- Includes a Verilog testbench
- Simulation output included

## Inputs

| Signal | Width | Description |
|--------|-------|-------------|
| A      | 4-bit | First binary number |
| B      | 4-bit | Second binary number |
| Cin    | 1-bit | Input carry |

## Outputs

| Signal | Width | Description |
|--------|-------|-------------|
| Sum    | 4-bit | Result of addition |
| Cout   | 1-bit | Final carry output |

## Working Principle

The circuit contains four full adders:

```text
A[0] B[0] Cin
     │
     ▼
   Full Adder 0
     │
     └── C1

A[1] B[1] C1
     │
     ▼
   Full Adder 1
     │
     └── C2

A[2] B[2] C2
     │
     ▼
   Full Adder 2
     │
     └── C3

A[3] B[3] C3
     │
     ▼
   Full Adder 3
     │
     └── Cout