-- Copyright (C) 1991-2009 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 9.0 Build 132 02/25/2009 SJ Full Version"

-- DATE "05/03/2019 23:54:40"

-- 
-- Device: Altera EPM240T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE, maxii;
USE IEEE.std_logic_1164.all;
USE maxii.maxii_components.all;

ENTITY 	full_adder_4 IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	cin : IN std_logic;
	s : OUT std_logic_vector(3 DOWNTO 0);
	cout : OUT std_logic
	);
END full_adder_4;

ARCHITECTURE structure OF full_adder_4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cin : std_logic;
SIGNAL ww_s : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cout : std_logic;
SIGNAL \cin~combout\ : std_logic;
SIGNAL \adder0|s~1_combout\ : std_logic;
SIGNAL \adder0|cout~2_combout\ : std_logic;
SIGNAL \adder1|s~combout\ : std_logic;
SIGNAL \adder1|cout~2_combout\ : std_logic;
SIGNAL \adder2|s~combout\ : std_logic;
SIGNAL \adder2|cout~2_combout\ : std_logic;
SIGNAL \adder3|s~combout\ : std_logic;
SIGNAL \adder3|cout~2_combout\ : std_logic;
SIGNAL \a~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_a <= a;
ww_b <= b;
ww_cin <= cin;
s <= ww_s;
cout <= ww_cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\cin~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_cin,
	combout => \cin~combout\);

\a[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(0),
	combout => \a~combout\(0));

\b[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(0),
	combout => \b~combout\(0));

\adder0|s~1\ : maxii_lcell
-- Equation(s):
-- \adder0|s~1_combout\ = \cin~combout\ $ \a~combout\(0) $ \b~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cin~combout\,
	datac => \a~combout\(0),
	datad => \b~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder0|s~1_combout\);

\b[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(1),
	combout => \b~combout\(1));

\a[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(1),
	combout => \a~combout\(1));

\adder0|cout~2\ : maxii_lcell
-- Equation(s):
-- \adder0|cout~2_combout\ = \cin~combout\ & (\a~combout\(0) # \b~combout\(0)) # !\cin~combout\ & \a~combout\(0) & \b~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cin~combout\,
	datac => \a~combout\(0),
	datad => \b~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder0|cout~2_combout\);

\adder1|s\ : maxii_lcell
-- Equation(s):
-- \adder1|s~combout\ = \b~combout\(1) $ \a~combout\(1) $ \adder0|cout~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9696",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \a~combout\(1),
	datac => \adder0|cout~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder1|s~combout\);

\b[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(2),
	combout => \b~combout\(2));

\a[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(2),
	combout => \a~combout\(2));

\adder1|cout~2\ : maxii_lcell
-- Equation(s):
-- \adder1|cout~2_combout\ = \b~combout\(1) & (\a~combout\(1) # \adder0|cout~2_combout\) # !\b~combout\(1) & \a~combout\(1) & (\adder0|cout~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \a~combout\(1),
	datad => \adder0|cout~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder1|cout~2_combout\);

\adder2|s\ : maxii_lcell
-- Equation(s):
-- \adder2|s~combout\ = \b~combout\(2) $ \a~combout\(2) $ \adder1|cout~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9696",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \a~combout\(2),
	datac => \adder1|cout~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder2|s~combout\);

\b[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(3),
	combout => \b~combout\(3));

\a[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(3),
	combout => \a~combout\(3));

\adder2|cout~2\ : maxii_lcell
-- Equation(s):
-- \adder2|cout~2_combout\ = \a~combout\(2) & (\b~combout\(2) # \adder1|cout~2_combout\) # !\a~combout\(2) & \b~combout\(2) & \adder1|cout~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(2),
	datac => \b~combout\(2),
	datad => \adder1|cout~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder2|cout~2_combout\);

\adder3|s\ : maxii_lcell
-- Equation(s):
-- \adder3|s~combout\ = \b~combout\(3) $ (\a~combout\(3) $ \adder2|cout~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datac => \a~combout\(3),
	datad => \adder2|cout~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder3|s~combout\);

\adder3|cout~2\ : maxii_lcell
-- Equation(s):
-- \adder3|cout~2_combout\ = \b~combout\(3) & (\a~combout\(3) # \adder2|cout~2_combout\) # !\b~combout\(3) & (\a~combout\(3) & \adder2|cout~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datac => \a~combout\(3),
	datad => \adder2|cout~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \adder3|cout~2_combout\);

\s[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \adder0|s~1_combout\,
	oe => VCC,
	padio => ww_s(0));

\s[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \adder1|s~combout\,
	oe => VCC,
	padio => ww_s(1));

\s[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \adder2|s~combout\,
	oe => VCC,
	padio => ww_s(2));

\s[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \adder3|s~combout\,
	oe => VCC,
	padio => ww_s(3));

\cout~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \adder3|cout~2_combout\,
	oe => VCC,
	padio => ww_cout);
END structure;


