`timescale 1ns/1ps
module D_FF(
input clk, D,
output reg Q,Qbar);
always @ (posedge clk)
begin
Q <= D;
Qbar<=~Q;
end
endmodule