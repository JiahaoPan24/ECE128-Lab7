`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/22 15:08:11
// Design Name: 
// Module Name: Moore_tb
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


module Moore_tb;
reg P1;
reg clk;
reg reset;
wire z;

Moore uut ( .P1(P1), 
        .clk(clk), 
        .reset(reset), 
        .z(z)
);

initial
    begin
        clk = 1'b0;
        reset = 1'b1;
        #15 reset = 1'b0;
    end

always #5 clk = ~ clk;  

initial begin
        #15 P1=1;
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
