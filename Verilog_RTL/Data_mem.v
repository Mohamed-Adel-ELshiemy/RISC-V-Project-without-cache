
module Data_mem(
	input [31:0]  A,WD,
	input         clk,rst,WE,
	output [31:0] RD
);

integer i ;
reg [31:0] mem [0:1023] ;

assign RD = (WE == 1'b0) ? mem[A] : 32'h0000_0000 ;

always @(posedge clk , negedge rst)
begin
	if(!rst)
		begin
			for(i=0;i<1024;i=i+1)
			begin
				mem [i] <= 32'h0000_0000;
			end	
		end
	else if(WE == 1'b1)
		begin
			mem[A] <= WD ;
		end
end
	
endmodule
