architecture carry_plus of full_adder_4 is
    component full_adder_1
        port(
            a, b, cin: in std_logic;
            s, cout: out std_logic
        );
    end component;
    component half_adder_1
        port(
            a, b: in std_logic;
            p, g: out std_logic
        );
    end component;
    signal p, g: std_logic_vector(3 downto 0);
    signal c: std_logic_vector(2 downto 0);
begin
    half_adder0 : half_adder_1 port map(a(0), b(0), p(0), g(0));
    half_adder1 : half_adder_1 port map(a(1), b(1), p(1), g(1));
    half_adder2 : half_adder_1 port map(a(2), b(2), p(2), g(2));
    half_adder3 : half_adder_1 port map(a(3), b(3), p(3), g(3));
	adder0 : full_adder_1 port map(a(0), b(0), cin, s(0));
    adder1 : full_adder_1 port map(a(1), b(1), c(0), s(1));
    adder2 : full_adder_1 port map(a(2), b(2), c(1), s(2));
    adder3 : full_adder_1 port map(a(3), b(3), c(2), s(3));
    process(cin, p, g)
    begin
        c(0) <= g(0) or (p(0) and cin);
        c(1) <= g(1) or (p(1) and g(0)) or (p(1) and p(0) and cin);
        c(2) <= g(2) or (p(2) and g(1)) or (p(2) and p(1) and g(0))  or (p(2) and p(1) and p(0) and cin);
        cout <= g(3) or (p(3) and g(2)) or (p(3) and p(2) and g(1)) or (p(3) and p(2) and p(1) and g(0)) or (p(3) and p(2) and p(1) and p(0) and cin);
    end process;
end carry_plus;