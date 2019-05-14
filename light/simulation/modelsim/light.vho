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

-- DATE "04/26/2019 15:02:24"

-- 
-- Device: Altera EPM240T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE, maxii;
USE IEEE.std_logic_1164.all;
USE maxii.maxii_components.all;

ENTITY 	light IS
    PORT (
	display : OUT std_logic_vector(6 DOWNTO 0);
	display_odd : OUT std_logic_vector(3 DOWNTO 0);
	display_even : OUT std_logic_vector(3 DOWNTO 0);
	clk : IN std_logic;
	rst : IN std_logic
	);
END light;

ARCHITECTURE structure OF light IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_display : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_odd : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_display_even : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \cnt[0]~95\ : std_logic;
SIGNAL \cnt[1]~93\ : std_logic;
SIGNAL \cnt[1]~93COUT1_122\ : std_logic;
SIGNAL \cnt[2]~91\ : std_logic;
SIGNAL \cnt[2]~91COUT1_124\ : std_logic;
SIGNAL \cnt[3]~89\ : std_logic;
SIGNAL \cnt[3]~89COUT1_126\ : std_logic;
SIGNAL \cnt[4]~87\ : std_logic;
SIGNAL \cnt[4]~87COUT1_128\ : std_logic;
SIGNAL \cnt[5]~85\ : std_logic;
SIGNAL \cnt[6]~43\ : std_logic;
SIGNAL \cnt[6]~43COUT1_130\ : std_logic;
SIGNAL \cnt[7]~45\ : std_logic;
SIGNAL \cnt[7]~45COUT1_132\ : std_logic;
SIGNAL \cnt[8]~47\ : std_logic;
SIGNAL \cnt[8]~47COUT1_134\ : std_logic;
SIGNAL \cnt[9]~49\ : std_logic;
SIGNAL \cnt[9]~49COUT1_136\ : std_logic;
SIGNAL \cnt[10]~37\ : std_logic;
SIGNAL \cnt[11]~39\ : std_logic;
SIGNAL \cnt[11]~39COUT1_138\ : std_logic;
SIGNAL \cnt[12]~41\ : std_logic;
SIGNAL \cnt[12]~41COUT1_140\ : std_logic;
SIGNAL \cnt[13]~51\ : std_logic;
SIGNAL \cnt[13]~51COUT1_142\ : std_logic;
SIGNAL \cnt[14]~53\ : std_logic;
SIGNAL \cnt[14]~53COUT1_144\ : std_logic;
SIGNAL \cnt[15]~35\ : std_logic;
SIGNAL \cnt[16]~55\ : std_logic;
SIGNAL \cnt[16]~55COUT1_146\ : std_logic;
SIGNAL \cnt[17]~57\ : std_logic;
SIGNAL \cnt[17]~57COUT1_148\ : std_logic;
SIGNAL \cnt[18]~59\ : std_logic;
SIGNAL \cnt[18]~59COUT1_150\ : std_logic;
SIGNAL \cnt[19]~61\ : std_logic;
SIGNAL \cnt[19]~61COUT1_152\ : std_logic;
SIGNAL \cnt[20]~63\ : std_logic;
SIGNAL \cnt[21]~65\ : std_logic;
SIGNAL \cnt[21]~65COUT1_154\ : std_logic;
SIGNAL \cnt[22]~67\ : std_logic;
SIGNAL \cnt[22]~67COUT1_156\ : std_logic;
SIGNAL \cnt[23]~69\ : std_logic;
SIGNAL \cnt[23]~69COUT1_158\ : std_logic;
SIGNAL \cnt[24]~71\ : std_logic;
SIGNAL \cnt[24]~71COUT1_160\ : std_logic;
SIGNAL \cnt[25]~73\ : std_logic;
SIGNAL \cnt[26]~75\ : std_logic;
SIGNAL \cnt[26]~75COUT1_162\ : std_logic;
SIGNAL \cnt[27]~77\ : std_logic;
SIGNAL \cnt[27]~77COUT1_164\ : std_logic;
SIGNAL \cnt[28]~79\ : std_logic;
SIGNAL \cnt[28]~79COUT1_166\ : std_logic;
SIGNAL \cnt[29]~81\ : std_logic;
SIGNAL \cnt[29]~81COUT1_168\ : std_logic;
SIGNAL \cnt[30]~83\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux5~8_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \display_buf_odd[3]~9_combout\ : std_logic;
SIGNAL \display_odd[1]~reg0_regout\ : std_logic;
SIGNAL \display_odd[2]~reg0_regout\ : std_logic;
SIGNAL \display_odd[3]~reg0_regout\ : std_logic;
SIGNAL \display_even[1]~reg0_regout\ : std_logic;
SIGNAL \display_even[2]~reg0_regout\ : std_logic;
SIGNAL \display_even[3]~reg0_regout\ : std_logic;
SIGNAL cnt : std_logic_vector(31 DOWNTO 0);
SIGNAL display_buf : std_logic_vector(3 DOWNTO 0);
SIGNAL display_buf_even : std_logic_vector(3 DOWNTO 0);
SIGNAL display_buf_odd : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~8_combout\ : std_logic;
SIGNAL \ALT_INV_rst~combout\ : std_logic;

BEGIN

display <= ww_display;
display_odd <= ww_display_odd;
display_even <= ww_display_even;
ww_clk <= clk;
ww_rst <= rst;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux9~2_combout\ <= NOT \Mux9~2_combout\;
\ALT_INV_Mux7~2_combout\ <= NOT \Mux7~2_combout\;
\ALT_INV_Mux5~8_combout\ <= NOT \Mux5~8_combout\;
\ALT_INV_rst~combout\ <= NOT \rst~combout\;

\rst~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

\cnt[0]\ : maxii_lcell
-- Equation(s):
-- cnt(0) = DFFEAS(!cnt(0), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , \LessThan0~8_combout\, )
-- \cnt[0]~95\ = CARRY(cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(0),
	aclr => \rst~combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(0),
	cout => \cnt[0]~95\);

\cnt[1]\ : maxii_lcell
-- Equation(s):
-- cnt(1) = DFFEAS(cnt(1) $ (\cnt[0]~95\), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , \LessThan0~8_combout\, )
-- \cnt[1]~93\ = CARRY(!\cnt[0]~95\ # !cnt(1))
-- \cnt[1]~93COUT1_122\ = CARRY(!\cnt[0]~95\ # !cnt(1))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(1),
	aclr => \rst~combout\,
	sclr => \LessThan0~8_combout\,
	cin => \cnt[0]~95\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(1),
	cout0 => \cnt[1]~93\,
	cout1 => \cnt[1]~93COUT1_122\);

\cnt[2]\ : maxii_lcell
-- Equation(s):
-- cnt(2) = DFFEAS(cnt(2) $ (!(!\cnt[0]~95\ & \cnt[1]~93\) # (\cnt[0]~95\ & \cnt[1]~93COUT1_122\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , \LessThan0~8_combout\, )
-- \cnt[2]~91\ = CARRY(cnt(2) & (!\cnt[1]~93\))
-- \cnt[2]~91COUT1_124\ = CARRY(cnt(2) & (!\cnt[1]~93COUT1_122\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(2),
	aclr => \rst~combout\,
	sclr => \LessThan0~8_combout\,
	cin => \cnt[0]~95\,
	cin0 => \cnt[1]~93\,
	cin1 => \cnt[1]~93COUT1_122\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(2),
	cout0 => \cnt[2]~91\,
	cout1 => \cnt[2]~91COUT1_124\);

\cnt[3]\ : maxii_lcell
-- Equation(s):
-- cnt(3) = DFFEAS(cnt(3) $ (!\cnt[0]~95\ & \cnt[2]~91\) # (\cnt[0]~95\ & \cnt[2]~91COUT1_124\), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , \LessThan0~8_combout\, )
-- \cnt[3]~89\ = CARRY(!\cnt[2]~91\ # !cnt(3))
-- \cnt[3]~89COUT1_126\ = CARRY(!\cnt[2]~91COUT1_124\ # !cnt(3))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => cnt(3),
	aclr => \rst~combout\,
	sclr => \LessThan0~8_combout\,
	cin => \cnt[0]~95\,
	cin0 => \cnt[2]~91\,
	cin1 => \cnt[2]~91COUT1_124\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(3),
	cout0 => \cnt[3]~89\,
	cout1 => \cnt[3]~89COUT1_126\);

\cnt[4]\ : maxii_lcell
-- Equation(s):
-- cnt(4) = DFFEAS(cnt(4) $ (!(!\cnt[0]~95\ & \cnt[3]~89\) # (\cnt[0]~95\ & \cnt[3]~89COUT1_126\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , \LessThan0~8_combout\, )
-- \cnt[4]~87\ = CARRY(cnt(4) & (!\cnt[3]~89\))
-- \cnt[4]~87COUT1_128\ = CARRY(cnt(4) & (!\cnt[3]~89COUT1_126\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(4),
	aclr => \rst~combout\,
	sclr => \LessThan0~8_combout\,
	cin => \cnt[0]~95\,
	cin0 => \cnt[3]~89\,
	cin1 => \cnt[3]~89COUT1_126\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(4),
	cout0 => \cnt[4]~87\,
	cout1 => \cnt[4]~87COUT1_128\);

\cnt[5]\ : maxii_lcell
-- Equation(s):
-- cnt(5) = DFFEAS(cnt(5) $ (!\cnt[0]~95\ & \cnt[4]~87\) # (\cnt[0]~95\ & \cnt[4]~87COUT1_128\), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , \LessThan0~8_combout\, )
-- \cnt[5]~85\ = CARRY(!\cnt[4]~87COUT1_128\ # !cnt(5))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => cnt(5),
	aclr => \rst~combout\,
	sclr => \LessThan0~8_combout\,
	cin => \cnt[0]~95\,
	cin0 => \cnt[4]~87\,
	cin1 => \cnt[4]~87COUT1_128\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(5),
	cout => \cnt[5]~85\);

\cnt[6]\ : maxii_lcell
-- Equation(s):
-- cnt(6) = DFFEAS(cnt(6) $ !\cnt[5]~85\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , \LessThan0~8_combout\, )
-- \cnt[6]~43\ = CARRY(cnt(6) & !\cnt[5]~85\)
-- \cnt[6]~43COUT1_130\ = CARRY(cnt(6) & !\cnt[5]~85\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => cnt(6),
	aclr => \rst~combout\,
	sclr => \LessThan0~8_combout\,
	cin => \cnt[5]~85\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(6),
	cout0 => \cnt[6]~43\,
	cout1 => \cnt[6]~43COUT1_130\);

\cnt[7]\ : maxii_lcell
-- Equation(s):
-- cnt(7) = DFFEAS(cnt(7) $ (!\cnt[5]~85\ & \cnt[6]~43\) # (\cnt[5]~85\ & \cnt[6]~43COUT1_130\), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , \LessThan0~8_combout\, )
-- \cnt[7]~45\ = CARRY(!\cnt[6]~43\ # !cnt(7))
-- \cnt[7]~45COUT1_132\ = CARRY(!\cnt[6]~43COUT1_130\ # !cnt(7))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => cnt(7),
	aclr => \rst~combout\,
	sclr => \LessThan0~8_combout\,
	cin => \cnt[5]~85\,
	cin0 => \cnt[6]~43\,
	cin1 => \cnt[6]~43COUT1_130\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(7),
	cout0 => \cnt[7]~45\,
	cout1 => \cnt[7]~45COUT1_132\);

\cnt[8]\ : maxii_lcell
-- Equation(s):
-- cnt(8) = DFFEAS(cnt(8) $ !(!\cnt[5]~85\ & \cnt[7]~45\) # (\cnt[5]~85\ & \cnt[7]~45COUT1_132\), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , \LessThan0~8_combout\, )
-- \cnt[8]~47\ = CARRY(cnt(8) & !\cnt[7]~45\)
-- \cnt[8]~47COUT1_134\ = CARRY(cnt(8) & !\cnt[7]~45COUT1_132\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => cnt(8),
	aclr => \rst~combout\,
	sclr => \LessThan0~8_combout\,
	cin => \cnt[5]~85\,
	cin0 => \cnt[7]~45\,
	cin1 => \cnt[7]~45COUT1_132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(8),
	cout0 => \cnt[8]~47\,
	cout1 => \cnt[8]~47COUT1_134\);

\cnt[9]\ : maxii_lcell
-- Equation(s):
-- cnt(9) = DFFEAS(cnt(9) $ ((!\cnt[5]~85\ & \cnt[8]~47\) # (\cnt[5]~85\ & \cnt[8]~47COUT1_134\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , \LessThan0~8_combout\, )
-- \cnt[9]~49\ = CARRY(!\cnt[8]~47\ # !cnt(9))
-- \cnt[9]~49COUT1_136\ = CARRY(!\cnt[8]~47COUT1_134\ # !cnt(9))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(9),
	aclr => \rst~combout\,
	sclr => \LessThan0~8_combout\,
	cin => \cnt[5]~85\,
	cin0 => \cnt[8]~47\,
	cin1 => \cnt[8]~47COUT1_134\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(9),
	cout0 => \cnt[9]~49\,
	cout1 => \cnt[9]~49COUT1_136\);

\cnt[10]\ : maxii_lcell
-- Equation(s):
-- cnt(10) = DFFEAS(cnt(10) $ (!(!\cnt[5]~85\ & \cnt[9]~49\) # (\cnt[5]~85\ & \cnt[9]~49COUT1_136\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , \LessThan0~8_combout\, )
-- \cnt[10]~37\ = CARRY(cnt(10) & (!\cnt[9]~49COUT1_136\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(10),
	aclr => \rst~combout\,
	sclr => \LessThan0~8_combout\,
	cin => \cnt[5]~85\,
	cin0 => \cnt[9]~49\,
	cin1 => \cnt[9]~49COUT1_136\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(10),
	cout => \cnt[10]~37\);

\cnt[11]\ : maxii_lcell
-- Equation(s):
-- cnt(11) = DFFEAS(cnt(11) $ (\cnt[10]~37\), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , \LessThan0~8_combout\, )
-- \cnt[11]~39\ = CARRY(!\cnt[10]~37\ # !cnt(11))
-- \cnt[11]~39COUT1_138\ = CARRY(!\cnt[10]~37\ # !cnt(11))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(11),
	aclr => \rst~combout\,
	sclr => \LessThan0~8_combout\,
	cin => \cnt[10]~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(11),
	cout0 => \cnt[11]~39\,
	cout1 => \cnt[11]~39COUT1_138\);

\cnt[12]\ : maxii_lcell
-- Equation(s):
-- cnt(12) = DFFEAS(cnt(12) $ (!(!\cnt[10]~37\ & \cnt[11]~39\) # (\cnt[10]~37\ & \cnt[11]~39COUT1_138\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , \LessThan0~8_combout\, )
-- \cnt[12]~41\ = CARRY(cnt(12) & (!\cnt[11]~39\))
-- \cnt[12]~41COUT1_140\ = CARRY(cnt(12) & (!\cnt[11]~39COUT1_138\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(12),
	aclr => \rst~combout\,
	sclr => \LessThan0~8_combout\,
	cin => \cnt[10]~37\,
	cin0 => \cnt[11]~39\,
	cin1 => \cnt[11]~39COUT1_138\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(12),
	cout0 => \cnt[12]~41\,
	cout1 => \cnt[12]~41COUT1_140\);

\cnt[13]\ : maxii_lcell
-- Equation(s):
-- cnt(13) = DFFEAS(cnt(13) $ (!\cnt[10]~37\ & \cnt[12]~41\) # (\cnt[10]~37\ & \cnt[12]~41COUT1_140\), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , \LessThan0~8_combout\, )
-- \cnt[13]~51\ = CARRY(!\cnt[12]~41\ # !cnt(13))
-- \cnt[13]~51COUT1_142\ = CARRY(!\cnt[12]~41COUT1_140\ # !cnt(13))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => cnt(13),
	aclr => \rst~combout\,
	sclr => \LessThan0~8_combout\,
	cin => \cnt[10]~37\,
	cin0 => \cnt[12]~41\,
	cin1 => \cnt[12]~41COUT1_140\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(13),
	cout0 => \cnt[13]~51\,
	cout1 => \cnt[13]~51COUT1_142\);

\cnt[14]\ : maxii_lcell
-- Equation(s):
-- cnt(14) = DFFEAS(cnt(14) $ (!(!\cnt[10]~37\ & \cnt[13]~51\) # (\cnt[10]~37\ & \cnt[13]~51COUT1_142\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , \LessThan0~8_combout\, )
-- \cnt[14]~53\ = CARRY(cnt(14) & (!\cnt[13]~51\))
-- \cnt[14]~53COUT1_144\ = CARRY(cnt(14) & (!\cnt[13]~51COUT1_142\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(14),
	aclr => \rst~combout\,
	sclr => \LessThan0~8_combout\,
	cin => \cnt[10]~37\,
	cin0 => \cnt[13]~51\,
	cin1 => \cnt[13]~51COUT1_142\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(14),
	cout0 => \cnt[14]~53\,
	cout1 => \cnt[14]~53COUT1_144\);

\cnt[15]\ : maxii_lcell
-- Equation(s):
-- cnt(15) = DFFEAS(cnt(15) $ (!\cnt[10]~37\ & \cnt[14]~53\) # (\cnt[10]~37\ & \cnt[14]~53COUT1_144\), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , \LessThan0~8_combout\, )
-- \cnt[15]~35\ = CARRY(!\cnt[14]~53COUT1_144\ # !cnt(15))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => cnt(15),
	aclr => \rst~combout\,
	sclr => \LessThan0~8_combout\,
	cin => \cnt[10]~37\,
	cin0 => \cnt[14]~53\,
	cin1 => \cnt[14]~53COUT1_144\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(15),
	cout => \cnt[15]~35\);

\cnt[16]\ : maxii_lcell
-- Equation(s):
-- cnt(16) = DFFEAS(cnt(16) $ !\cnt[15]~35\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , \LessThan0~8_combout\, )
-- \cnt[16]~55\ = CARRY(cnt(16) & !\cnt[15]~35\)
-- \cnt[16]~55COUT1_146\ = CARRY(cnt(16) & !\cnt[15]~35\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => cnt(16),
	aclr => \rst~combout\,
	sclr => \LessThan0~8_combout\,
	cin => \cnt[15]~35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(16),
	cout0 => \cnt[16]~55\,
	cout1 => \cnt[16]~55COUT1_146\);

\cnt[17]\ : maxii_lcell
-- Equation(s):
-- cnt(17) = DFFEAS(cnt(17) $ (!\cnt[15]~35\ & \cnt[16]~55\) # (\cnt[15]~35\ & \cnt[16]~55COUT1_146\), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , \LessThan0~8_combout\, )
-- \cnt[17]~57\ = CARRY(!\cnt[16]~55\ # !cnt(17))
-- \cnt[17]~57COUT1_148\ = CARRY(!\cnt[16]~55COUT1_146\ # !cnt(17))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => cnt(17),
	aclr => \rst~combout\,
	sclr => \LessThan0~8_combout\,
	cin => \cnt[15]~35\,
	cin0 => \cnt[16]~55\,
	cin1 => \cnt[16]~55COUT1_146\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(17),
	cout0 => \cnt[17]~57\,
	cout1 => \cnt[17]~57COUT1_148\);

\cnt[18]\ : maxii_lcell
-- Equation(s):
-- cnt(18) = DFFEAS(cnt(18) $ !(!\cnt[15]~35\ & \cnt[17]~57\) # (\cnt[15]~35\ & \cnt[17]~57COUT1_148\), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , \LessThan0~8_combout\, )
-- \cnt[18]~59\ = CARRY(cnt(18) & !\cnt[17]~57\)
-- \cnt[18]~59COUT1_150\ = CARRY(cnt(18) & !\cnt[17]~57COUT1_148\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => cnt(18),
	aclr => \rst~combout\,
	sclr => \LessThan0~8_combout\,
	cin => \cnt[15]~35\,
	cin0 => \cnt[17]~57\,
	cin1 => \cnt[17]~57COUT1_148\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(18),
	cout0 => \cnt[18]~59\,
	cout1 => \cnt[18]~59COUT1_150\);

\cnt[19]\ : maxii_lcell
-- Equation(s):
-- cnt(19) = DFFEAS(cnt(19) $ ((!\cnt[15]~35\ & \cnt[18]~59\) # (\cnt[15]~35\ & \cnt[18]~59COUT1_150\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , \LessThan0~8_combout\, )
-- \cnt[19]~61\ = CARRY(!\cnt[18]~59\ # !cnt(19))
-- \cnt[19]~61COUT1_152\ = CARRY(!\cnt[18]~59COUT1_150\ # !cnt(19))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(19),
	aclr => \rst~combout\,
	sclr => \LessThan0~8_combout\,
	cin => \cnt[15]~35\,
	cin0 => \cnt[18]~59\,
	cin1 => \cnt[18]~59COUT1_150\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(19),
	cout0 => \cnt[19]~61\,
	cout1 => \cnt[19]~61COUT1_152\);

\cnt[20]\ : maxii_lcell
-- Equation(s):
-- cnt(20) = DFFEAS(cnt(20) $ (!(!\cnt[15]~35\ & \cnt[19]~61\) # (\cnt[15]~35\ & \cnt[19]~61COUT1_152\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , \LessThan0~8_combout\, )
-- \cnt[20]~63\ = CARRY(cnt(20) & (!\cnt[19]~61COUT1_152\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(20),
	aclr => \rst~combout\,
	sclr => \LessThan0~8_combout\,
	cin => \cnt[15]~35\,
	cin0 => \cnt[19]~61\,
	cin1 => \cnt[19]~61COUT1_152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(20),
	cout => \cnt[20]~63\);

\cnt[21]\ : maxii_lcell
-- Equation(s):
-- cnt(21) = DFFEAS(cnt(21) $ (\cnt[20]~63\), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , \LessThan0~8_combout\, )
-- \cnt[21]~65\ = CARRY(!\cnt[20]~63\ # !cnt(21))
-- \cnt[21]~65COUT1_154\ = CARRY(!\cnt[20]~63\ # !cnt(21))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(21),
	aclr => \rst~combout\,
	sclr => \LessThan0~8_combout\,
	cin => \cnt[20]~63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(21),
	cout0 => \cnt[21]~65\,
	cout1 => \cnt[21]~65COUT1_154\);

\cnt[22]\ : maxii_lcell
-- Equation(s):
-- cnt(22) = DFFEAS(cnt(22) $ (!(!\cnt[20]~63\ & \cnt[21]~65\) # (\cnt[20]~63\ & \cnt[21]~65COUT1_154\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , \LessThan0~8_combout\, )
-- \cnt[22]~67\ = CARRY(cnt(22) & (!\cnt[21]~65\))
-- \cnt[22]~67COUT1_156\ = CARRY(cnt(22) & (!\cnt[21]~65COUT1_154\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(22),
	aclr => \rst~combout\,
	sclr => \LessThan0~8_combout\,
	cin => \cnt[20]~63\,
	cin0 => \cnt[21]~65\,
	cin1 => \cnt[21]~65COUT1_154\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(22),
	cout0 => \cnt[22]~67\,
	cout1 => \cnt[22]~67COUT1_156\);

\cnt[23]\ : maxii_lcell
-- Equation(s):
-- cnt(23) = DFFEAS(cnt(23) $ (!\cnt[20]~63\ & \cnt[22]~67\) # (\cnt[20]~63\ & \cnt[22]~67COUT1_156\), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , \LessThan0~8_combout\, )
-- \cnt[23]~69\ = CARRY(!\cnt[22]~67\ # !cnt(23))
-- \cnt[23]~69COUT1_158\ = CARRY(!\cnt[22]~67COUT1_156\ # !cnt(23))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => cnt(23),
	aclr => \rst~combout\,
	sclr => \LessThan0~8_combout\,
	cin => \cnt[20]~63\,
	cin0 => \cnt[22]~67\,
	cin1 => \cnt[22]~67COUT1_156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(23),
	cout0 => \cnt[23]~69\,
	cout1 => \cnt[23]~69COUT1_158\);

\cnt[24]\ : maxii_lcell
-- Equation(s):
-- cnt(24) = DFFEAS(cnt(24) $ (!(!\cnt[20]~63\ & \cnt[23]~69\) # (\cnt[20]~63\ & \cnt[23]~69COUT1_158\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , \LessThan0~8_combout\, )
-- \cnt[24]~71\ = CARRY(cnt(24) & (!\cnt[23]~69\))
-- \cnt[24]~71COUT1_160\ = CARRY(cnt(24) & (!\cnt[23]~69COUT1_158\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(24),
	aclr => \rst~combout\,
	sclr => \LessThan0~8_combout\,
	cin => \cnt[20]~63\,
	cin0 => \cnt[23]~69\,
	cin1 => \cnt[23]~69COUT1_158\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(24),
	cout0 => \cnt[24]~71\,
	cout1 => \cnt[24]~71COUT1_160\);

\cnt[25]\ : maxii_lcell
-- Equation(s):
-- cnt(25) = DFFEAS(cnt(25) $ (!\cnt[20]~63\ & \cnt[24]~71\) # (\cnt[20]~63\ & \cnt[24]~71COUT1_160\), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , \LessThan0~8_combout\, )
-- \cnt[25]~73\ = CARRY(!\cnt[24]~71COUT1_160\ # !cnt(25))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => cnt(25),
	aclr => \rst~combout\,
	sclr => \LessThan0~8_combout\,
	cin => \cnt[20]~63\,
	cin0 => \cnt[24]~71\,
	cin1 => \cnt[24]~71COUT1_160\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(25),
	cout => \cnt[25]~73\);

\cnt[26]\ : maxii_lcell
-- Equation(s):
-- cnt(26) = DFFEAS(cnt(26) $ !\cnt[25]~73\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , \LessThan0~8_combout\, )
-- \cnt[26]~75\ = CARRY(cnt(26) & !\cnt[25]~73\)
-- \cnt[26]~75COUT1_162\ = CARRY(cnt(26) & !\cnt[25]~73\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => cnt(26),
	aclr => \rst~combout\,
	sclr => \LessThan0~8_combout\,
	cin => \cnt[25]~73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(26),
	cout0 => \cnt[26]~75\,
	cout1 => \cnt[26]~75COUT1_162\);

\cnt[27]\ : maxii_lcell
-- Equation(s):
-- cnt(27) = DFFEAS(cnt(27) $ (!\cnt[25]~73\ & \cnt[26]~75\) # (\cnt[25]~73\ & \cnt[26]~75COUT1_162\), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , \LessThan0~8_combout\, )
-- \cnt[27]~77\ = CARRY(!\cnt[26]~75\ # !cnt(27))
-- \cnt[27]~77COUT1_164\ = CARRY(!\cnt[26]~75COUT1_162\ # !cnt(27))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => cnt(27),
	aclr => \rst~combout\,
	sclr => \LessThan0~8_combout\,
	cin => \cnt[25]~73\,
	cin0 => \cnt[26]~75\,
	cin1 => \cnt[26]~75COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(27),
	cout0 => \cnt[27]~77\,
	cout1 => \cnt[27]~77COUT1_164\);

\cnt[28]\ : maxii_lcell
-- Equation(s):
-- cnt(28) = DFFEAS(cnt(28) $ !(!\cnt[25]~73\ & \cnt[27]~77\) # (\cnt[25]~73\ & \cnt[27]~77COUT1_164\), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , \LessThan0~8_combout\, )
-- \cnt[28]~79\ = CARRY(cnt(28) & !\cnt[27]~77\)
-- \cnt[28]~79COUT1_166\ = CARRY(cnt(28) & !\cnt[27]~77COUT1_164\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => cnt(28),
	aclr => \rst~combout\,
	sclr => \LessThan0~8_combout\,
	cin => \cnt[25]~73\,
	cin0 => \cnt[27]~77\,
	cin1 => \cnt[27]~77COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(28),
	cout0 => \cnt[28]~79\,
	cout1 => \cnt[28]~79COUT1_166\);

\cnt[29]\ : maxii_lcell
-- Equation(s):
-- cnt(29) = DFFEAS(cnt(29) $ ((!\cnt[25]~73\ & \cnt[28]~79\) # (\cnt[25]~73\ & \cnt[28]~79COUT1_166\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , \LessThan0~8_combout\, )
-- \cnt[29]~81\ = CARRY(!\cnt[28]~79\ # !cnt(29))
-- \cnt[29]~81COUT1_168\ = CARRY(!\cnt[28]~79COUT1_166\ # !cnt(29))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(29),
	aclr => \rst~combout\,
	sclr => \LessThan0~8_combout\,
	cin => \cnt[25]~73\,
	cin0 => \cnt[28]~79\,
	cin1 => \cnt[28]~79COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(29),
	cout0 => \cnt[29]~81\,
	cout1 => \cnt[29]~81COUT1_168\);

\cnt[30]\ : maxii_lcell
-- Equation(s):
-- cnt(30) = DFFEAS(cnt(30) $ (!(!\cnt[25]~73\ & \cnt[29]~81\) # (\cnt[25]~73\ & \cnt[29]~81COUT1_168\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , \LessThan0~8_combout\, )
-- \cnt[30]~83\ = CARRY(cnt(30) & (!\cnt[29]~81COUT1_168\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(30),
	aclr => \rst~combout\,
	sclr => \LessThan0~8_combout\,
	cin => \cnt[25]~73\,
	cin0 => \cnt[29]~81\,
	cin1 => \cnt[29]~81COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(30),
	cout => \cnt[30]~83\);

\cnt[31]\ : maxii_lcell
-- Equation(s):
-- cnt(31) = DFFEAS(cnt(31) $ (\cnt[30]~83\), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , \LessThan0~8_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cnt(31),
	aclr => \rst~combout\,
	sclr => \LessThan0~8_combout\,
	cin => \cnt[30]~83\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(31));

\LessThan0~6\ : maxii_lcell
-- Equation(s):
-- \LessThan0~6_combout\ = !cnt(24) & !cnt(27) & !cnt(26) & !cnt(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt(24),
	datab => cnt(27),
	datac => cnt(26),
	datad => cnt(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~6_combout\);

\LessThan0~7\ : maxii_lcell
-- Equation(s):
-- \LessThan0~7_combout\ = !cnt(29) & !cnt(28) & !cnt(30) & \LessThan0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt(29),
	datab => cnt(28),
	datac => cnt(30),
	datad => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~7_combout\);

\LessThan0~5\ : maxii_lcell
-- Equation(s):
-- \LessThan0~5_combout\ = !cnt(23) & !cnt(21) & !cnt(22) & !cnt(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt(23),
	datab => cnt(21),
	datac => cnt(22),
	datad => cnt(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~5_combout\);

\LessThan0~1\ : maxii_lcell
-- Equation(s):
-- \LessThan0~1_combout\ = !cnt(7) & !cnt(8) & !cnt(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => cnt(7),
	datac => cnt(8),
	datad => cnt(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~1_combout\);

\LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \LessThan0~0_combout\ = !cnt(11) & !cnt(15) & !cnt(10) & !cnt(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt(11),
	datab => cnt(15),
	datac => cnt(10),
	datad => cnt(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~0_combout\);

\LessThan0~2\ : maxii_lcell
-- Equation(s):
-- \LessThan0~2_combout\ = !cnt(13) & \LessThan0~0_combout\ & (\LessThan0~1_combout\ # !cnt(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt(13),
	datab => cnt(9),
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~2_combout\);

\LessThan0~3\ : maxii_lcell
-- Equation(s):
-- \LessThan0~3_combout\ = !cnt(14) & !cnt(15) # !cnt(17) # !cnt(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f7f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt(14),
	datab => cnt(16),
	datac => cnt(17),
	datad => cnt(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~3_combout\);

\LessThan0~4\ : maxii_lcell
-- Equation(s):
-- \LessThan0~4_combout\ = \LessThan0~2_combout\ # \LessThan0~3_combout\ # !cnt(19) # !cnt(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff7",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt(18),
	datab => cnt(19),
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~4_combout\);

\LessThan0~8\ : maxii_lcell
-- Equation(s):
-- \LessThan0~8_combout\ = !cnt(31) & (!\LessThan0~4_combout\ # !\LessThan0~5_combout\ # !\LessThan0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1555",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt(31),
	datab => \LessThan0~7_combout\,
	datac => \LessThan0~5_combout\,
	datad => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~8_combout\);

\display_buf[0]\ : maxii_lcell
-- Equation(s):
-- display_buf(0) = DFFEAS(!display_buf(0), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \LessThan0~8_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => display_buf(0),
	aclr => \rst~combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => display_buf(0));

\display_buf[3]\ : maxii_lcell
-- Equation(s):
-- display_buf(3) = DFFEAS(display_buf(3) & (display_buf(1) $ display_buf(2) # !display_buf(0)) # !display_buf(3) & display_buf(1) & display_buf(2) & display_buf(0), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \LessThan0~8_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "68aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => display_buf(3),
	datab => display_buf(1),
	datac => display_buf(2),
	datad => display_buf(0),
	aclr => \rst~combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => display_buf(3));

\display_buf[1]\ : maxii_lcell
-- Equation(s):
-- display_buf(1) = DFFEAS(display_buf(1) & (!display_buf(0)) # !display_buf(1) & display_buf(0) & (display_buf(2) # !display_buf(3)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \LessThan0~8_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "31cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => display_buf(3),
	datab => display_buf(1),
	datac => display_buf(2),
	datad => display_buf(0),
	aclr => \rst~combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => display_buf(1));

\display_buf[2]\ : maxii_lcell
-- Equation(s):
-- display_buf(2) = DFFEAS(display_buf(2) $ (display_buf(0) & display_buf(1) & \LessThan0~8_combout\), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "78f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => display_buf(0),
	datab => display_buf(1),
	datac => display_buf(2),
	datad => \LessThan0~8_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => display_buf(2));

\Mux9~2\ : maxii_lcell
-- Equation(s):
-- \Mux9~2_combout\ = display_buf(2) & (display_buf(3) # !display_buf(0) # !display_buf(1)) # !display_buf(2) & (display_buf(1) # display_buf(0) $ display_buf(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef7e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => display_buf(2),
	datab => display_buf(1),
	datac => display_buf(0),
	datad => display_buf(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~2_combout\);

\Mux8~2\ : maxii_lcell
-- Equation(s):
-- \Mux8~2_combout\ = display_buf(2) & (display_buf(3) # display_buf(1) $ !display_buf(0)) # !display_buf(2) & (display_buf(1) & (display_buf(3)) # !display_buf(1) & display_buf(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe92",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => display_buf(2),
	datab => display_buf(1),
	datac => display_buf(0),
	datad => display_buf(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~2_combout\);

\Mux7~2\ : maxii_lcell
-- Equation(s):
-- \Mux7~2_combout\ = display_buf(3) & !display_buf(2) & !display_buf(1) # !display_buf(3) & (display_buf(1) # display_buf(2) & display_buf(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5652",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => display_buf(3),
	datab => display_buf(2),
	datac => display_buf(1),
	datad => display_buf(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~2_combout\);

\Mux5~8\ : maxii_lcell
-- Equation(s):
-- \Mux5~8_combout\ = !display_buf(3) & !display_buf(2) & !display_buf(1) & !display_buf(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => display_buf(3),
	datab => display_buf(2),
	datac => display_buf(1),
	datad => display_buf(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~8_combout\);

\Mux3~2\ : maxii_lcell
-- Equation(s):
-- \Mux3~2_combout\ = display_buf(3) & (display_buf(2) # display_buf(1) # !display_buf(0)) # !display_buf(3) & (display_buf(0) & !display_buf(2) # !display_buf(0) & (!display_buf(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9af",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => display_buf(3),
	datab => display_buf(2),
	datac => display_buf(1),
	datad => display_buf(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~2_combout\);

\clk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

\display_buf_odd[2]\ : maxii_lcell
-- Equation(s):
-- display_buf_odd(2) = DFFEAS(display_buf_odd(2) $ (\LessThan0~8_combout\ & display_buf_odd(1) & !\rst~combout\), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa6a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => display_buf_odd(2),
	datab => \LessThan0~8_combout\,
	datac => display_buf_odd(1),
	datad => \rst~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => display_buf_odd(2));

\display_buf_odd[3]~9\ : maxii_lcell
-- Equation(s):
-- \display_buf_odd[3]~9_combout\ = !\rst~combout\ & (\LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datad => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display_buf_odd[3]~9_combout\);

\display_buf_odd[3]\ : maxii_lcell
-- Equation(s):
-- display_buf_odd(3) = DFFEAS(display_buf_odd(1) & (display_buf_odd(2) $ display_buf_odd(3)) # !display_buf_odd(1) & display_buf_odd(2) & display_buf_odd(3), GLOBAL(\clk~combout\), VCC, , \display_buf_odd[3]~9_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3cc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => display_buf_odd(1),
	datac => display_buf_odd(2),
	datad => display_buf_odd(3),
	aclr => GND,
	ena => \display_buf_odd[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => display_buf_odd(3));

\display_buf_odd[1]\ : maxii_lcell
-- Equation(s):
-- display_buf_odd(1) = DFFEAS(!display_buf_odd(1) & (display_buf_odd(2) # !display_buf_odd(3)), GLOBAL(\clk~combout\), VCC, , \display_buf_odd[3]~9_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3033",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => display_buf_odd(1),
	datac => display_buf_odd(2),
	datad => display_buf_odd(3),
	aclr => GND,
	ena => \display_buf_odd[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => display_buf_odd(1));

\display_odd[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \display_odd[1]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , !\rst~combout\, display_buf_odd(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => display_buf_odd(1),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_odd[1]~reg0_regout\);

\display_odd[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \display_odd[2]~reg0_regout\ = DFFEAS(display_buf_odd(2), GLOBAL(\clk~combout\), VCC, , !\rst~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => display_buf_odd(2),
	aclr => GND,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_odd[2]~reg0_regout\);

\display_odd[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \display_odd[3]~reg0_regout\ = DFFEAS(display_buf_odd(3), GLOBAL(\clk~combout\), VCC, , !\rst~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => display_buf_odd(3),
	aclr => GND,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_odd[3]~reg0_regout\);

\display_buf_even[2]\ : maxii_lcell
-- Equation(s):
-- display_buf_even(2) = DFFEAS(display_buf_even(2) $ (display_buf_even(1) & !\rst~combout\ & \LessThan0~8_combout\), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d2f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => display_buf_even(1),
	datab => \rst~combout\,
	datac => display_buf_even(2),
	datad => \LessThan0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => display_buf_even(2));

\display_buf_even[3]\ : maxii_lcell
-- Equation(s):
-- display_buf_even(3) = DFFEAS(display_buf_even(3) & (display_buf_even(2) $ display_buf_even(1)) # !display_buf_even(3) & display_buf_even(2) & display_buf_even(1), GLOBAL(\clk~combout\), VCC, , \display_buf_odd[3]~9_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3cc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => display_buf_even(3),
	datac => display_buf_even(2),
	datad => display_buf_even(1),
	aclr => GND,
	ena => \display_buf_odd[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => display_buf_even(3));

\display_buf_even[1]\ : maxii_lcell
-- Equation(s):
-- display_buf_even(1) = DFFEAS(!display_buf_even(1) & (display_buf_even(2) # !display_buf_even(3)), GLOBAL(\clk~combout\), VCC, , \display_buf_odd[3]~9_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => display_buf_even(3),
	datac => display_buf_even(2),
	datad => display_buf_even(1),
	aclr => GND,
	ena => \display_buf_odd[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => display_buf_even(1));

\display_even[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \display_even[1]~reg0_regout\ = DFFEAS(display_buf_even(1), GLOBAL(\clk~combout\), VCC, , !\rst~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => display_buf_even(1),
	aclr => GND,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_even[1]~reg0_regout\);

\display_even[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \display_even[2]~reg0_regout\ = DFFEAS(display_buf_even(2), GLOBAL(\clk~combout\), VCC, , !\rst~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => display_buf_even(2),
	aclr => GND,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_even[2]~reg0_regout\);

\display_even[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \display_even[3]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , !\rst~combout\, display_buf_even(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => display_buf_even(3),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display_even[3]~reg0_regout\);

\display[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux9~2_combout\,
	oe => VCC,
	padio => ww_display(0));

\display[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux8~2_combout\,
	oe => VCC,
	padio => ww_display(1));

\display[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux7~2_combout\,
	oe => VCC,
	padio => ww_display(2));

\display[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux7~2_combout\,
	oe => VCC,
	padio => ww_display(3));

\display[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux5~8_combout\,
	oe => VCC,
	padio => ww_display(4));

\display[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_display(5));

\display[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux3~2_combout\,
	oe => VCC,
	padio => ww_display(6));

\display_odd[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_display_odd(0));

\display_odd[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \display_odd[1]~reg0_regout\,
	oe => VCC,
	padio => ww_display_odd(1));

\display_odd[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \display_odd[2]~reg0_regout\,
	oe => VCC,
	padio => ww_display_odd(2));

\display_odd[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \display_odd[3]~reg0_regout\,
	oe => VCC,
	padio => ww_display_odd(3));

\display_even[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_display_even(0));

\display_even[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \display_even[1]~reg0_regout\,
	oe => VCC,
	padio => ww_display_even(1));

\display_even[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \display_even[2]~reg0_regout\,
	oe => VCC,
	padio => ww_display_even(2));

\display_even[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \display_even[3]~reg0_regout\,
	oe => VCC,
	padio => ww_display_even(3));
END structure;


