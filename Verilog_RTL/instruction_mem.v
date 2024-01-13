
module instruction_mem(
	input 		 rst,
	input  [31:0] A,
	output [31:0] RD
);
	
	reg [31:0] mem [0:1023] ;
	
	//assign RD = (rst == 1'b0) ? 32'h0000_0000 : mem[A[31:2]] ;
	
	assign RD = mem[A[31:0]] ;
	
	initial
	begin 
		$readmemh("instruction_mem.txt",mem) ;	
	end 

endmodule