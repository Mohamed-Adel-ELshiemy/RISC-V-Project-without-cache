
module ALU(
	input  [31:0] A,B,
	input  [2:0]  ALUcontrol,
	output [31:0] Result,
	output        Zero,Carry,Negative,OverFlow
);

   wire Cout;
   wire [31:0] Sum;
   
    assign Sum = (ALUcontrol[0] == 1'b0) ? A + B :
                                          (A + ((~B)+1)) ;
    assign {Cout,Result} = (ALUcontrol == 3'b000) ? Sum :
                           (ALUcontrol == 3'b001) ? Sum :
                           (ALUcontrol == 3'b010) ? A & B :
                           (ALUcontrol == 3'b011) ? A | B :
                           (ALUcontrol == 3'b101) ? {{32{1'b0}},(Sum[31])} :
                           {33{1'b0}};
    assign OverFlow = ((Sum[31] ^ A[31]) & 
                      (~(ALUcontrol[0] ^ B[31] ^ A[31])) &
                      (~ALUcontrol[1]));
    assign Carry = ((~ALUcontrol[1]) & Cout);
    assign Zero = &(~Result);
    assign Negative = Result[31];


endmodule 