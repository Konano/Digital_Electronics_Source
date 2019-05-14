library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity transform_clk is
    port(
        clk_in: in std_logic;
        clk_out: out std_logic
    );
end entity transform_clk;

architecture transform of transform_clk is
    signal clk: std_logic := '0';
begin
    main: process(clk_in) is
        variable counter : integer := 0;
    begin
        if rising_edge(clk_in) then
            counter := counter + 1;
            if counter = 500000 then
                counter := 0;
                clk <= not clk;
            end if;
        end if;
    end process main;
    clk_out <= clk;
end transform;
