`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/22 16:10:06
// Design Name: 
// Module Name: Mealy
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


module Mealy(input P1,clk,reset, output reg z);
parameter S0 = 0 , S1 = 1 , S2 = 2 , S3 = 3;
    reg [1:0] PS,NS ;

    always@(posedge clk or posedge reset)
        begin
            if(reset)
                PS <= S0;   
            else    
                PS <= NS ;
        end
     
     always@(*)
        begin 
        z = 0;
            case(PS)
            S0 : begin 
                if (P1)
                   NS = S1;
                else 
	               NS = S0;
                end
            S1 : begin
                if (P1)
                   NS = S2;
                else 
	               NS = S0;
                end
            S2 : begin 
                if (!P1)
                   NS = S3;
                else 
	               NS = S2;
                end
            S3 : begin 
                if (P1)
                    begin
                    NS = S1;
                    z = 1 ;
                    end
                else 
	                NS = S0;
            	
            	end


            endcase
            end
endmodule
