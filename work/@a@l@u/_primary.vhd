library verilog;
use verilog.vl_types.all;
entity ALU is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        ALUcontrol      : in     vl_logic_vector(2 downto 0);
        Result          : out    vl_logic_vector(31 downto 0);
        Zero            : out    vl_logic;
        Carry           : out    vl_logic;
        Negative        : out    vl_logic;
        OverFlow        : out    vl_logic
    );
end ALU;
