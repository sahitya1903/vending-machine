`timescale 1ns / 1ps
module Top_Module(
input clk, reset, btn1, btn2, btn3,
input [7:0] sw,
output [7:0] led,
output [6:0] seg,
output [3:0] an,
output wire dp);

wire [11:0] money;
wire deb_btn1, deb_btn2, deb_btn3;

Debounce dbn1 (clk, btn1, deb_btn1);
Debounce dbn2 (clk, btn2, deb_btn2);
Debounce dbn3 (clk, btn3, deb_btn3);

wire [3:0] thos, huns, tens, ones;

Binary_to_BCD BCD(money, thos, huns, tens, ones);
driver_7segment SSD(clk, deb_btn1, thos,huns,tens,ones,seg,an,dp);
vending_machine VM (clk,reset, deb_btn2, deb_btn3, sw[3:0], deb_btn1, sw[7:4], money, led[3:0], led[7:4]);

endmodule
