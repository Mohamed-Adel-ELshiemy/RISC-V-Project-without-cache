library verilog;
use verilog.vl_types.all;
entity Single_Cycle_Top is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic
    );
end Single_Cycle_Top;
