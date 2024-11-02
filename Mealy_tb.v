`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/22 16:10:30
// Design Name: 
// Module Name: Mealy_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Mealy_tb;
reg P1;
reg clk;
reg reset;
wire z;

Mealy uut ( .P1(P1), 
        .clk(clk), 
        .reset(reset), 
        .z(z)
);

initial
    begin
        clk = 1'b0;
        reset = 1'b1;
        #10 reset = 1'b0;
    end

always #5 clk = ~ clk;  

initial begin
        #20 P1=1;
        #10 P1=0;
        #10 P1=1;
        #10 P1=1;
        #10 P1=1;
        #10 P1=0;
        #10 P1=0;
        #10 P1=1;
        #10 P1=1;
        #10 P1=0;
        #10 P1=1;
        #10 P1=0;
        
        #10 $finish;
        end
endmodule
