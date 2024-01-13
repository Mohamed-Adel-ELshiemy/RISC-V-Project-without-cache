
module register_file(
	input      	  clk,rst,
	input  [4:0]  A1,A2,A3,
	input         WE3,
	input  [31:0] WD3,
	output [31:0] RD1,RD2
);

reg [31:0] registers [0:31] ; 
integer i ;

assign RD1 = registers[A1] ;

assign RD2 = registers[A2] ;

always @(posedge clk , negedge rst)
begin
	//  registers <= 32'h0000_0000 ;
	if(!rst)
	  for(i=0;i<32;i=i+1)
	  begin
		  registers[i] <= 32'h0000_0000 ;
		end  
	else if(WE3)
	registers[A3] <= WD3 ;
end 

endmodule 