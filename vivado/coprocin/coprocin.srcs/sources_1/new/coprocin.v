`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/10 23:07:22
// Design Name: 
// Module Name: coprocin
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


module coprocin(
    input CLK,
    input [27:0] stamp,
    input [3:0] channel,
    input reset,
    input valid,
    output reg [3:0]out_test
    );
    
    always @(posedge CLK)
    begin
        if(reset ==1'b0) out_test<=4'b0;
        else if (valid) out_test <= channel[3:0];
    end  
endmodule
