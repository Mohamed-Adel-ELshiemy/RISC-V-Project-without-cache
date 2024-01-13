library verilog;
use verilog.vl_types.all;
entity instruction_mem is
    port(
        rst             : in     vl_logic;
        A               : in     vl_logic_vector(31 downto 0);
        RD              : out    vl_logic_vector(31 downto 0)
    );
end instruction_mem;
