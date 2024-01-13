library verilog;
use verilog.vl_types.all;
entity sign_extander is
    port(
        \in\            : in     vl_logic_vector(31 downto 0);
        immsrc          : in     vl_logic_vector(2 downto 0);
        imm_extand      : out    vl_logic_vector(31 downto 0)
    );
end sign_extander;
