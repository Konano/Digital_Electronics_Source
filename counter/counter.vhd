library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity counter is
    port(
        clk, rst, mode, clk_1m: in std_logic;
        dig_0, dig_1: out std_logic_vector(6 downto 0)
    );
    function encode_0(x : in std_logic_vector) return std_logic_vector is
    begin
        case x is
            when "0000" => return "1111011";
            when "0001" => return "1111111";
            when "0010" => return "1110000";
            when "0011" => return "1011111";
            when "0100" => return "1011011";
            when "0101" => return "0110011";
            when "0110" => return "1111001";
            when "0111" => return "1101101";
            when "1000" => return "0110000";
            when "1001" => return "1111110";
            when others => return "0000001";
        end case;
    end function encode_0;
    function encode_1(x : in std_logic_vector) return std_logic_vector is
    begin
        case x is
            when "0000" => return "1011011";
            when "0001" => return "0110011";
            when "0010" => return "1111001";
            when "0011" => return "1101101";
            when "0100" => return "0110000";
            when "0101" => return "1111110";
            when others => return "0000001";
        end case;
    end function encode_1;
end entity counter;

architecture counter_bev of counter is
    component counter_dec
        port(
            clk, rst: in std_logic;
            val_max: in std_logic_vector(3 downto 0);
            Q: out std_logic_vector(3 downto 0);
            carry: out std_logic
        );
    end component counter_dec;
    component transform_clk
        port(
            clk_in: in std_logic;
            clk_out: out std_logic
        );
    end component transform_clk;
    signal carry: std_logic;
    signal clk_dec_0: std_logic;
    signal clk_dec_1: std_logic;
    signal val_0, val_1: std_logic_vector(3 downto 0);
    signal clk_1hz: std_logic;
begin
    timer : transform_clk port map(clk_1m, clk_1hz);
    clk_dec_0 <= clk when mode = '0' else (clk_1hz);
    clk_dec_1 <= clk_dec_0 and carry;
    dec_0: counter_dec port map(clk_dec_0, rst, "1001", val_0, carry);
    dec_1: counter_dec port map(clk_dec_1, rst, "0101", val_1);
    dig_0 <= encode_0(val_0);
    dig_1 <= encode_1(val_1);
end counter_bev;