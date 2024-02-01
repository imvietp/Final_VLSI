`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:53:21 02/01/2024
// Design Name:   adder8
// Module Name:   E:/Tai lieu dai hoc/HK2 23 - 24/Vi_mach/verilog/FullSubtractor_8bit/testbench.v
// Project Name:  FullSubtractor_8bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;
	reg cin;

	// Outputs
	wire cout;
	wire [7:0] s;

	// Instantiate the Unit Under Test (UUT)
	adder8 uut (
		.cout(cout), 
		.s(s), 
		.a(a), 
		.b(b), 
		.cin(cin)
	);

	initial begin
		// Initialize Inputs
	// Initialize Inputs
		a = 8'b00011100;
		b = 8'b11110000;
		cin = 1;

		// Wait 100 ns for global reset to finish
		#100;
		a = 8'b00011101;
		b = 8'b11110010;
		cin = 1;

		// Wait 100 ns for global reset to finish
		#100;
		
		a = 8'b10011100;
		b = 8'b11111100;
		cin = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

