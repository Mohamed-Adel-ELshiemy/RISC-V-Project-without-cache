
module mux(
	input [31:0]  a,b,
	input         sel,
	output [31:0] c
);

	assign c = (sel == 1'b0) ? a : b;

endmodule