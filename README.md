## How to Rebuild the Project
- This project was created in Xilinx Vivado for the FPGA XC7S50-CSGA324-1 (Spartan-7).
- The repository is kept clean using a reproducible Tcl project script instead of committing bulky Vivado files.

## Prerequisites
- Install Xilinx Vivado (any recent version supporting Spartan-7)
- Ensure vivado is available in your system path

## Steps to Rebuild
- Clone the repository
```bash
git clone https://github.com/sahitya1903/vending-machine.git
cd vending-machine
```
- Rebuild the Vivado project using the Tcl script
```bash
vivado -mode batch -source vending_machine.tcl
```
- Open the project in Vivado (GUI mode)
- Launch Vivado
- Navigate to File → Open Project
- Select the regenerated project file:
```bash
vending_machine/vending_machine.xpr
```
## Repository Structure
```php
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
