`timescale 1ns / 1ps
module Slow_Clock_4Hz(
input clk_in,
output reg clk_out);
reg [25:0] count = 0;

always @ (posedge clk_in)
begin
    count <= count + 1;
    if (count == 12_500_000)
        begin
        count <= 0;
        clk_out = ~ clk_out;
        end
end 
endmodule
