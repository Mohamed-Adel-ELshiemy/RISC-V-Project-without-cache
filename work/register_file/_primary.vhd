library verilog;
use verilog.vl_types.all;
entity register_file is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        A1              : in     vl_logic_vector(4 downto 0);
        A2              : in     vl_logic_vector(4 downto 0);
        A3              : in     vl_logic_vector(4 downto 0);
        WE3             : in     vl_logic;
        WD3             : in     vl_logic_vector(31 downto 0);
        RD1             : out    vl_logic_vector(31 downto 0);
        RD2             : out    vl_logic_vector(31 downto 0)
    );
end register_file;
