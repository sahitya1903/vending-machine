# 🥤 FSM-Based Electronic Vending Machine (FPGA)

An **FSM-based electronic vending machine** designed and implemented on the **Xilinx Spartan-7 (XC7S50-CSGA324-1)** FPGA.  
The project is structured for reproducibility, using a **Tcl script** to regenerate the Vivado project instead of storing bulky files.

---

## ✨ Features
- **Finite State Machine (FSM) Design** for controlling vending operations  
- Modular **Verilog HDL** implementation  
- **Debouncing logic** for stable input handling  
- **Binary-to-BCD conversion** for display interface  
- **7-segment driver** for real-time user feedback  
- Clean reproducible build setup using **Vivado Tcl script**  

---

## 🛠️ Prerequisites
- [Xilinx Vivado](https://www.xilinx.com/support/download.html) (any version supporting Spartan-7)  
- Ensure `vivado` is accessible in your system PATH  

---

## ⚡ How to Rebuild the Project
- Clone the repository:
```bash
git clone https://github.com/sahitya1903/vending-machine.git
cd vending-machine
```
- Rebuild the Vivado project:
```bash
vivado -mode batch -source vending_machine.tcl
```
- Open the project in Vivado GUI:
- - Launch Vivado
  - Go to File → Open Project
  - Select:
```bash
vending_machine/vending_machine.xpr
```
## 📂 Repository Structure
```bash
vending-machine/
├── constrs/               # Constraint files (pin mappings, clocks, etc.)
│   └── boolean.xdc
├── sources/               # HDL sources
│   ├── Binary_to_BCD.v
│   ├── D_FF.v
│   ├── debounce.v
│   ├── decoder_7segment.v
│   ├── driver_7segment.v
│   ├── Slow_Clock_4Hz.v
│   ├── Top_Module.v
│   └── vending_machine.v
├── vending_machine.tcl    # Tcl script to recreate the Vivado project
├── LICENSE
├── README.md
└── .gitignore
```
## 🎯 Project Highlights
- Implements a real-world vending machine logic using FSM
- Demonstrates digital design concepts: debouncing, clock division, display interfacing
- Scalable and modular HDL structure for academic and hobby projects

## 📜 License
This project is licensed under the MIT License – free to use, modify, and distribute.
