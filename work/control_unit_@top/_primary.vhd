library verilog;
use verilog.vl_types.all;
entity control_unit_Top is
    port(
        zero            : in     vl_logic;
        op              : in     vl_logic_vector(6 downto 0);
        op5             : in     vl_logic;
        funct7          : in     vl_logic;
        funct3          : in     vl_logic_vector(2 downto 0);
        pcsrc           : out    vl_logic;
        resultsrc       : out    vl_logic;
        memwrite        : out    vl_logic;
        ALUsrc          : out    vl_logic;
        regwrite        : out    vl_logic;
        immsrc          : out    vl_logic_vector(2 downto 0);
        ALUcontrol      : out    vl_logic_vector(2 downto 0)
    );
end control_unit_Top;
