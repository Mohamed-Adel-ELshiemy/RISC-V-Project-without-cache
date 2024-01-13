
module main_decoder(
input zero,
input [6:0] op,  
output pcsrc,resultsrc,memwrite,ALUsrc,regwrite,
output [2:0] immsrc,
output [1:0] ALUop
);

wire branch;

assign branch = (op == 7'b1100_011) ? 1'b1 : 1'b0 ;

assign pcsrc = (zero & branch) ;

assign resultsrc = (op == 7'b0000_011) ? 1'b1 : 1'b0 ;

assign memwrite = (op == 7'b0100_011) ? 1'b1 : 1'b0 ;

assign ALUsrc = ((op == 7'b0000_011)|(op == 7'b0100_011)) ? 1'b1 : 1'b0 ;

assign regwrite = ((op == 7'b0000_011)|(op == 7'b0110_011)) ? 1'b1 : 1'b0 ;

assign immsrc = (op == 7'b0100_011) ? 2'b01 : (op == 7'b1100_011) ? 2'b10 :2'b00 ;

assign ALUop = (op == 7'b0110_011) ? 2'b10 : (op == 7'b1100_011) ? 2'b01 : 2'b00 ;


endmodule