library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity full_adder_1 is
	port(
		a, b, cin: in std_logic;
		s, cout: out std_logic
	);
end full_adder_1;

architecture plus of full_adder_1 is
	component half_adder_1
        port(
            a, b: in std_logic;
			p, g: out std_logic
        );
    end component;
	signal p, g: std_logic;
begin
	adder: half_adder_1 port map(a, b, p, g);
	process(cin, p, g)
	begin
		s <= p xor cin;
		cout <= g or (cin and p);
	end process;
end plus;