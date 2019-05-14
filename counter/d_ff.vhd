library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity d_ff is
    port(
        D, clk, rst: in std_logic;
        Q, Qn: out std_logic
    );
end entity d_ff;

architecture d_ff_bev of d_ff is
    signal Q_tmp: std_logic;
begin
    main: process(clk, rst)
    begin
        if rst = '1' then
            Q_tmp <= '0';
        elsif rising_edge(clk) then
            Q_tmp <= D;
        end if;
    end process main;

    Q <= Q_tmp;
    Qn <= not Q_tmp;
end d_ff_bev;
