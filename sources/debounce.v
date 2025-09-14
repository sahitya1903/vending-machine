`timescale 1ns / 1ps
module Debounce(
input clk_in,
input pb,
output led);
wire clk_out;
wire Q1, Q2, Q1bar, Q2bar;
Slow_Clock_4Hz u1 (clk_in, clk_out);
D_FF d1 (clk_out, pb, Q1, Q1bar);
D_FF d2 (clk_out, Q1, Q2, Q2bar);
assign led = Q1 & Q2bar;
endmodule