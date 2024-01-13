library verilog;
use verilog.vl_types.all;
entity ALU_decoder is
    port(
        op5             : in     vl_logic;
        funct7          : in     vl_logic;
        funct3          : in     vl_logic_vector(2 downto 0);
        ALUop           : in     vl_logic_vector(1 downto 0);
        ALUcontrol      : out    vl_logic_vector(2 downto 0)
    );
end ALU_decoder;
