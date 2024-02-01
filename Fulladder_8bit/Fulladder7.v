`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:23:22 02/01/2024 
// Design Name: 
// Module Name:    Fulladder7 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Fulladder7(
input ci,
input a, b, 
output S,
output cout
    );

assign S = ci ^ ( a ^ b );
assign cout = (a & b) | (b & ci) | (ci & a); 

endmodule