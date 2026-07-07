# 16:1 Multiplexer using Verilog HDL (Hierarchical Design)

## Block Diagram

><img width="600" height="566" alt="image" src="https://github.com/user-attachments/assets/6f153062-18e5-46df-8700-55c98e1624dd" />


---

## Hierarchical Design

> ## Hierarchical Design

```text
                           16:1 Multiplexer
                                  │
                    ┌─────────────┴─────────────┐
                    │                           │
                 8:1 MUX                     8:1 MUX
              (i0 - i7)                  (i8 - i15)
                    │                           │
             ┌──────┴──────┐            ┌──────┴──────┐
             │             │            │             │
          4:1 MUX       4:1 MUX      4:1 MUX      4:1 MUX
        (i0-i3)       (i4-i7)      (i8-i11)    (i12-i15)
           │              │             │             │
      ┌────┴────┐    ┌────┴────┐   ┌────┴────┐   ┌────┴────┐
      │         │    │         │   │         │   │         │
    2:1       2:1   2:1       2:1 2:1       2:1 2:1       2:1
```

---

## Overview

This project implements a **16:1 Multiplexer (MUX)** using **Verilog HDL** through a hierarchical design approach. Instead of implementing the multiplexer directly, smaller multiplexers are reused to build larger multiplexers. A **2:1 Multiplexer** is first designed and verified, then used to construct a **4:1 Multiplexer**, followed by an **8:1 Multiplexer**, and finally a **16:1 Multiplexer**. This modular design improves code reusability, readability, scalability, and simplifies verification.

The design is functionally verified using a Verilog testbench. Simulation is performed using **Icarus Verilog**, and the output waveform is analyzed using **GTKWave**.

---

## Objective

The objective of this project is to design, simulate, and verify a hierarchical **16:1 Multiplexer** using Verilog HDL by building larger multiplexers from reusable smaller multiplexer modules.

---

## Features

- Hierarchical RTL Design
- Module Instantiation
- Code Reusability
- Combinational Circuit Design
- Behavioral Modeling
- Functional Verification using Verilog Testbench
- Waveform Analysis using GTKWave

---

## Inputs and Outputs

| Signal | Width | Description |
|---------|------|-------------|
| i0–i15 | 1-bit each | Sixteen data inputs |
| sel | 4-bit | Select lines |
| y | 1-bit | Selected output |

---

## Working Principle

The 16:1 Multiplexer selects one input from sixteen available inputs using a **4-bit select line**.

The design is implemented hierarchically:

- A **2:1 Multiplexer** is designed as the basic building block.
- Three **2:1 Multiplexers** are combined to form one **4:1 Multiplexer**.
- Two **4:1 Multiplexers** and one **2:1 Multiplexer** are combined to form an **8:1 Multiplexer**.
- Finally, two **8:1 Multiplexers** and one **2:1 Multiplexer** are combined to implement the complete **16:1 Multiplexer**.

Since the design is a combinational circuit, the output changes immediately whenever the input or select lines change.

---

## Truth Table

| Select (sel) | Selected Input | Output |
|--------------|----------------|--------|
|0000|i0|y=i0|
|0001|i1|y=i1|
|0010|i2|y=i2|
|0011|i3|y=i3|
|0100|i4|y=i4|
|0101|i5|y=i5|
|0110|i6|y=i6|
|0111|i7|y=i7|
|1000|i8|y=i8|
|1001|i9|y=i9|
|1010|i10|y=i10|
|1011|i11|y=i11|
|1100|i12|y=i12|
|1101|i13|y=i13|
|1110|i14|y=i14|
|1111|i15|y=i15|

---

## Waveform

> 


### Waveform Analysis

The simulation waveform confirms the correct operation of the hierarchical 16:1 Multiplexer.

- The select line (`sel`) changes sequentially from **0000** to **1111**.
- For every select value, the output (`y`) matches the corresponding selected input.
- The output changes immediately whenever the select line changes because the multiplexer is a combinational circuit.
- The waveform verifies the correct functionality of the hierarchical multiplexer design.

---

## Project Structure

```text
MUX16_1/
│── mux2_1.v
│── mux4_1.v
│── mux8_1.v
│── mux16_1.v
│── mux16_1_tb.v
│── mux16_1.vcd
│── waveform.png
└── README.md
```

---

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Visual Studio Code

---

## Simulation Steps

### Compile

```bash
iverilog -o mux16_1_sim mux2_1.v mux4_1.v mux8_1.v mux16_1.v mux16_1_tb.v
```

### Run

```bash
vvp mux16_1_sim
```

### View Waveform

```bash
gtkwave mux16_1.vcd
```

---

## Applications

- Data Routing
- Processor Datapath Design
- ALU Input Selection
- Bus Switching
- Memory Address Selection
- FPGA and ASIC RTL Design
- Digital Communication Systems

---

## Learning Outcomes

Through this project, I learned:

- Hierarchical RTL Design
- Module Instantiation
- Multiplexer Design
- Combinational Logic Design
- Code Reusability
- Functional Verification using Verilog Testbench
- Waveform Analysis using GTKWave
- Modular Hardware Design

---

## Author

**Chakkati Kiran Kumari**

GitHub: https://github.com/KIRAN038
