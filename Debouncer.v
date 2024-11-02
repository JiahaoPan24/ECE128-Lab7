`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/22 14:36:36
// Design Name: 
// Module Name: Debouncer
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


module Debouncer(input Raw, clk, output reg L);
    reg [4:0] counter;
    wire TC;

    always @(posedge clk)
    begin
        if(~Raw)
            counter <= 5'b00000;
        else
            counter <= counter + 5'b00001;
    end
    
    assign TC = (counter == 5'b11111);
    
    always @(posedge clk)
    begin
        if(~Raw)
            L <= 1'b0;
         else if(TC)
            L <= 1'b1;
    end
    
endmodule
