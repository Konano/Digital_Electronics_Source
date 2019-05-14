library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity half_adder_1 is
	port(
		a, b: in std_logic;
		p, g: out std_logic
	);
end half_adder_1;

architecture plus of half_adder_1 is
begin
	process(a, b)
	begin
		p <= a xor b;
		g <= a and b;
	end process;
end plus;