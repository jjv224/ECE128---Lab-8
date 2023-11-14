`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2023 02:20:38 PM
// Design Name: 
// Module Name: Seven_seg_decoder
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


module Seven_seg_decoder(
    input clk,
    input [3:0] bcd_seg,
    output reg [6:0] sseg_o
    );

    always @(posedge clk)    
    begin        
    case (bcd_seg) //case statement                   
        4'b0000: sseg_o = 7'b0000001; //0
        4'b0001: sseg_o = 7'b1001111;
        4'b0010: sseg_o = 7'b0010010;
        4'b0011: sseg_o = 7'b0000110;
        4'b0100: sseg_o = 7'b1001100;
        4'b0101: sseg_o = 7'b0100100;
        4'b0110: sseg_o = 7'b0100000;
        4'b0111: sseg_o = 7'b0001111;
        4'b1000: sseg_o = 7'b0000000;
        4'b1001: sseg_o = 7'b0000100; //9
    
    default : sseg_o = 7'b1111111;                     
    endcase               
    end                
    endmodule


