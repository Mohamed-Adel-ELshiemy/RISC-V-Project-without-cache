
module sign_extander(
	input  [31:0] in,
	input  [2:0]  immsrc,
	output [31:0] imm_extand
);

assign imm_extand = (immsrc == 3'b000) ? {{20{in[31]}},in[31:20]} :
					(immsrc == 3'b001) ? {{20{in[31]}},in[31:25],in[11:7]} :
					(immsrc == 3'b010) ? {{20{in[31]}},in[7],in[30:25],in[11:8],1'b0}: 32'h0000_0000;

endmodule