`timescale 1ns / 1ps

module vending_machine(
input clk,
input reset,
input twenty,
input fifty,
input[3:0] select,
input buy,
input[3:0] load,
output reg [11:0] money=0,
output reg [3:0] products=0,
output reg [3:0] out_of_stock=0
);

reg twenty_prev, fifty_prev;
reg buy_prev;
reg [3:0] stock0=4'b1111;
reg [3:0] stock1=4'b1111;
reg [3:0] stock2=4'b1111;
reg [3:0] stock3=4'b1111;

always@(posedge clk)
begin
twenty_prev<=twenty;
fifty_prev<=fifty;
buy_prev<=buy;

if (reset==1)
money<=1'b0;
else if (twenty_prev==1'b0 && twenty==1'b1)
money<=money+12'd20;
else if (fifty_prev==1'b0 && fifty==1'b1)
money<=money+12'd50;
else if (buy_prev==1'b0 && buy==1'b1)

case(select)
4'b0001:
if(money>=12'd20 && stock0>0)
begin
products[0] <=1'b1;
stock0<=stock0-1'b1;
money<=money-12'd20;
end

4'b0010:
if(money>=12'd60 && stock1>0)
begin
products[1] <=1'b1;
stock1<=stock1-1'b1;
money<=money-12'd60;
end

4'b0100:
if (money>=12'd100 && stock2>0)
begin
products[2]<=1'b1;
stock2<=stock2-1'b1;
money<=money-12'd100;
end

4'b1000:
if(money>=12'd150 && stock3>0)
begin
products[3]<=1'b1;
stock3<=stock3-1'b1;
money<=money-12'd150;
end

endcase

else if (buy_prev ==1'b1 && buy==1'b0)
begin
products [0]<=1'b0;
products [1]<=1'b0;
products [2]<=1'b0;
products [3]<=1'b0;
end

else begin
if (stock0==4'b0000)
out_of_stock[0]<=1'b1;
else out_of_stock[0]<=1'b0;

if (stock1==4'b0000)
out_of_stock[1]<=1'b1;
else out_of_stock[1]<=1'b0;

if (stock2==4'b0000)
out_of_stock[2]<=1'b1;
else out_of_stock[2]<=1'b0;

if (stock3==4'b0000)
out_of_stock[3]<=1'b1;
else out_of_stock[3]<=1'b0;

case(load)
4'b0001: stock0<=4'b1111;
4'b0010: stock1<=4'b1111;
4'b0100: stock2<=4'b1111;
4'b1000: stock3<=4'b1111;
endcase
end
end
endmodule
