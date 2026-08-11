8-bit ALU Using Verilog HDL

📌 Project Overview

This project implements an 8-bit Arithmetic Logic Unit (ALU) using Verilog HDL.

An ALU is a fundamental digital circuit used in processors and digital systems to perform arithmetic and logical operations.

The designed ALU supports eight different operations including arithmetic, logical, increment, and decrement operations.

🎯 Objectives

- Design an 8-bit ALU using Verilog HDL.
- Perform arithmetic operations.
- Perform logical operations.
- Generate carry and zero flags.
- Verify the ALU using a testbench.
- Analyze the design using waveform simulation.

🛠️ Technologies Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Digital Electronics
- GitHub

📂 Project Structure

ALU-Verilog/
│
├── README.md
├── alu.v
├── alu_tb.v
└── simulation/
    └── alu_waveform.png

⚙️ ALU Specifications

Parameter| Value
ALU Width| 8 bits
Input A| 8 bits
Input B| 8 bits
Opcode| 3 bits
Number of Operations| 8
Result| 8 bits
Carry Flag| 1 bit
Zero Flag| 1 bit

🔢 Operation Table

Opcode| Operation| Function
"000"| Addition| A + B
"001"| Subtraction| A - B
"010"| AND| A & B
"011"| OR| A | B
"100"| XOR| A ^ B
"101"| NOT| ~A
"110"| Increment| A + 1
"111"| Decrement| A - 1

💡 Working Principle

The ALU receives two 8-bit inputs:

A[7:0]
B[7:0]

A 3-bit opcode selects the required operation.

The result is available at the 8-bit "result" output.

                 ┌──────────────┐
A[7:0] ─────────→│              │
B[7:0] ─────────→│   8-bit ALU  │──→ Result[7:0]
Opcode[2:0] ────→│              │──→ Carry
                 │              │──→ Zero
                 └──────────────┘

🚩 Flags

Carry Flag

The "carry" flag indicates a carry during addition or a borrow condition during subtraction.

Example:

FFH + 01H = 100H

Since the ALU result is 8 bits:

Result = 00H
Carry  = 1

Zero Flag

The "zero" flag becomes "1" when the result is zero.

Example:

FFH + 01H = 00H

Therefore:

Zero = 1

🧪 Testbench

The testbench:

1. Applies two 8-bit inputs.
2. Selects each ALU operation using the opcode.
3. Checks the output result.
4. Checks the carry flag.
5. Checks the zero flag.
6. Tests all eight operations.
7. Performs an additional carry test.
8. Generates a VCD waveform file.

📊 Expected Results

For:

A = 15H
B = 05H

the expected results are:

ADD → 1AH
SUB → 10H
AND → 05H
OR  → 15H
XOR → 10H
NOT → EAH
INC → 16H
DEC → 14H

Additional test:

A = FFH
B = 01H

Result = 00H
Carry  = 1
Zero   = 1

▶️ Simulation Using Icarus Verilog

Step 1: Compile

iverilog -o alu_sim alu.v alu_tb.v

Step 2: Run

vvp alu_sim

Step 3: Open Waveform

gtkwave alu.vcd

Add:

A
B
opcode
result
carry
zero

🌐 Applications

ALUs are used in:

- Microprocessors
- Microcontrollers
- CPUs
- Embedded systems
- FPGA designs
- Digital signal processors
- Arithmetic circuits
- Computer systems

🧠 Key Concepts Learned

- Combinational logic
- Arithmetic operations
- Logical operations
- Verilog "case" statement
- Carry and zero flags
- RTL design
- Testbench development
- Waveform simulation

✅ Conclusion

An 8-bit ALU was successfully designed using Verilog HDL. The ALU performs eight arithmetic and logical operations and generates carry and zero status flags.

The testbench verifies the functionality of the ALU, and waveform simulation can be used to observe the inputs, opcode, result, and status flags.

👩‍💻 Author

JAINY INDHU

Electronics and Communication Engineering Student