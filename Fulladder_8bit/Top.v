`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:30:22 02/01/2024 
// Design Name: 
// Module Name:    Top 
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
module Top(
input [7:0] a, b,
input ci,
output [7:0] S,
output cout
    );
wire c1, c2, c3, c4, c5, c6, c7;

Fulladder1 fa1(a[0], b[0], ci, S[0], c1);
Fulladder2 fa2(c1, a[1], b[1], S[1], c2);
Fulladder3 fa3(c2, a[2], b[2], S[2], c3);
Fulladder4 fa4(c3, a[3], b[3], S[3], c4);
Fulladder5 fa5(c4, a[4], b[4], S[4], c5);
Fulladder6 fa6(c5, a[5], b[5], S[5], c6);
Fulladder7 fa7(c6, a[6], b[6], S[6], c7);
Fulladder8 fa8(c7, a[7], b[7], S[7], cout); 


endmodule
