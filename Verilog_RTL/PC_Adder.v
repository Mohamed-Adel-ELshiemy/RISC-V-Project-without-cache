
module PC_Adder (
	input          clk,rst,
  input      [31:0]a,b,
  output reg [31:0]c
);

always @(posedge clk ,negedge rst)
begin
		if(!rst)
			c <= 32'h0000_0000;
		else
			c <= a + b;
end

endmodule
