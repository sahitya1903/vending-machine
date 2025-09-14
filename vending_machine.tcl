# project.tcl - Recreate Vivado project for Vending Machine
# FPGA Part: XC7S50-CSGA324-1

# Create project in ./vending_machine directory
create_project vending_machine ./vending_machine -part xc7s50csg324-1 -force

# Add source files
add_files ./sources/Binary_to_BCD.v
add_files ./sources/D_FF.v
add_files ./sources/debounce.v
add_files ./sources/decoder_7segment.v
add_files ./sources/driver_7segment.v
add_files ./sources/Slow_Clock_4Hz.v
add_files ./sources/Top_Module.v
add_files ./sources/vending_machine.v

# Add constraints
add_files -fileset constrs_1 ./constrs/boolean.xdc

# Set the top module
set_property top Top_Module [current_fileset]

# Update compile order
update_compile_order -fileset sources_1
