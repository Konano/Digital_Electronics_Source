architecture sys_plus of full_adder_4 is
    signal sys: std_logic_vector(4 downto 0);
begin
    process(cin, a, b)
    begin
        sys <= "00000" + a + b + cin;
    end process;
    process(sys)
    begin
        s <= sys(3 downto 0);
        cout <= sys(4);
    end process;
end sys_plus;