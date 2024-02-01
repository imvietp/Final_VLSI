`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:26:18 02/01/2024
// Design Name:   Top
// Module Name:   E:/Tai lieu dai hoc/HK2 23 - 24/Vi_mach/verilog/Fulladder_8bit/testbench.v
// Project Name:  Fulladder_8bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Top
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
	reg ci;

	// Outputs
	wire [7:0] S;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	Top uut (
		.a(a), 
		.b(b), 
		.ci(ci), 
		.S(S), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 8'b00011100;
		b = 8'b11110000;
		ci = 1;

		// Wait 100 ns for global reset to finish
		#100;
		a = 8'b00011101;
		b = 8'b11110010;
		ci = 1;

		// Wait 100 ns for global reset to finish
		#100;
		
		a = 8'b10011100;
		b = 8'b11111100;
		ci = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

