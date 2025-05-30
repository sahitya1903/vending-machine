# 🥤 Vending Machine FSM (Verilog)

A Verilog-based vending machine project built for FPGA implementation using **Xilinx Vivado**. It handles coin input, item selection, change return, and displays values on a 7-segment display.

## 🔧 Features
- FSM-based vending logic
- Debounced button inputs
- 4Hz clock divider
- Binary to BCD conversion
- 7-segment display driver

## 📁 Files
- `vending_machine.v` – FSM logic  
- `Top_Module.v` – Integration top  
- `debounce.v`, `D_FF.v` – Input handling  
- `Slow_Clock_4Hz.v` – Clock divider  
- `Binary_to_BCD.v`, `decoder_7segment.v`, `driver_7segment.v` – Display logic

## 🚀 Run
Open `vending_machine.xpr` in Vivado → Synthesize → Implement → Generate Bitstream → Upload to FPGA.

## 🛠️ Tools
- Vivado 2020.2+
- FPGA (e.g., Real Digital Boolean Board)

## 📜 License
MIT License
