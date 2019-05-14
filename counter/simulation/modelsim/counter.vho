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

-- DATE "05/10/2019 14:08:12"

-- 
-- Device: Altera EPM240T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE, maxii;
USE IEEE.std_logic_1164.all;
USE maxii.maxii_components.all;

ENTITY 	counter IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	mode : IN std_logic;
	clk_1m : IN std_logic;
	dig_0 : OUT std_logic_vector(6 DOWNTO 0);
	dig_1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END counter;

ARCHITECTURE structure OF counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_mode : std_logic;
SIGNAL ww_clk_1m : std_logic;
SIGNAL ww_dig_0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_dig_1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \timer|clk~regout\ : std_logic;
SIGNAL \clk_dec_0~combout\ : std_logic;
SIGNAL \clk_dec_1~combout\ : std_logic;
SIGNAL \timer|Add0~94\ : std_logic;
SIGNAL \timer|Add0~93_combout\ : std_logic;
SIGNAL \timer|Add0~96\ : std_logic;
SIGNAL \timer|Add0~96COUT1_183\ : std_logic;
SIGNAL \timer|Add0~95_combout\ : std_logic;
SIGNAL \timer|Add0~98\ : std_logic;
SIGNAL \timer|Add0~98COUT1_185\ : std_logic;
SIGNAL \timer|Add0~97_combout\ : std_logic;
SIGNAL \timer|Add0~100\ : std_logic;
SIGNAL \timer|Add0~100COUT1_187\ : std_logic;
SIGNAL \timer|Add0~99_combout\ : std_logic;
SIGNAL \timer|Equal0~0_combout\ : std_logic;
SIGNAL \timer|Add0~102\ : std_logic;
SIGNAL \timer|Add0~101_combout\ : std_logic;
SIGNAL \timer|Add0~104\ : std_logic;
SIGNAL \timer|Add0~104COUT1_189\ : std_logic;
SIGNAL \timer|Add0~103_combout\ : std_logic;
SIGNAL \timer|Add0~106\ : std_logic;
SIGNAL \timer|Add0~106COUT1_191\ : std_logic;
SIGNAL \timer|Add0~105_combout\ : std_logic;
SIGNAL \timer|Add0~108\ : std_logic;
SIGNAL \timer|Add0~108COUT1_193\ : std_logic;
SIGNAL \timer|Add0~107_combout\ : std_logic;
SIGNAL \timer|Equal0~1_combout\ : std_logic;
SIGNAL \timer|Add0~110\ : std_logic;
SIGNAL \timer|Add0~110COUT1_195\ : std_logic;
SIGNAL \timer|Add0~109_combout\ : std_logic;
SIGNAL \timer|Add0~112\ : std_logic;
SIGNAL \timer|Add0~112COUT1_197\ : std_logic;
SIGNAL \timer|Add0~111_combout\ : std_logic;
SIGNAL \timer|Add0~114\ : std_logic;
SIGNAL \timer|Add0~113_combout\ : std_logic;
SIGNAL \timer|Add0~116\ : std_logic;
SIGNAL \timer|Add0~116COUT1_199\ : std_logic;
SIGNAL \timer|Add0~115_combout\ : std_logic;
SIGNAL \timer|Equal0~2_combout\ : std_logic;
SIGNAL \timer|Add0~118\ : std_logic;
SIGNAL \timer|Add0~118COUT1_203\ : std_logic;
SIGNAL \timer|Add0~117_combout\ : std_logic;
SIGNAL \timer|Add0~120\ : std_logic;
SIGNAL \timer|Add0~119_combout\ : std_logic;
SIGNAL \timer|Add0~122\ : std_logic;
SIGNAL \timer|Add0~122COUT1_201\ : std_logic;
SIGNAL \timer|Add0~121_combout\ : std_logic;
SIGNAL \timer|Add0~124\ : std_logic;
SIGNAL \timer|Add0~124COUT1_205\ : std_logic;
SIGNAL \timer|Add0~123_combout\ : std_logic;
SIGNAL \timer|Equal0~3_combout\ : std_logic;
SIGNAL \timer|Equal0~4_combout\ : std_logic;
SIGNAL \timer|Add0~126\ : std_logic;
SIGNAL \timer|Add0~126COUT1_207\ : std_logic;
SIGNAL \timer|Add0~125_combout\ : std_logic;
SIGNAL \timer|Add0~128\ : std_logic;
SIGNAL \timer|Add0~128COUT1_209\ : std_logic;
SIGNAL \timer|Add0~127_combout\ : std_logic;
SIGNAL \timer|Add0~130\ : std_logic;
SIGNAL \timer|Add0~130COUT1_211\ : std_logic;
SIGNAL \timer|Add0~129_combout\ : std_logic;
SIGNAL \timer|Add0~132\ : std_logic;
SIGNAL \timer|Add0~132COUT1_213\ : std_logic;
SIGNAL \timer|Add0~131_combout\ : std_logic;
SIGNAL \timer|Equal0~5_combout\ : std_logic;
SIGNAL \timer|Add0~134\ : std_logic;
SIGNAL \timer|Add0~133_combout\ : std_logic;
SIGNAL \timer|Add0~136\ : std_logic;
SIGNAL \timer|Add0~136COUT1_215\ : std_logic;
SIGNAL \timer|Add0~135_combout\ : std_logic;
SIGNAL \timer|Add0~138\ : std_logic;
SIGNAL \timer|Add0~138COUT1_217\ : std_logic;
SIGNAL \timer|Add0~137_combout\ : std_logic;
SIGNAL \timer|Add0~140\ : std_logic;
SIGNAL \timer|Add0~140COUT1_219\ : std_logic;
SIGNAL \timer|Add0~139_combout\ : std_logic;
SIGNAL \timer|Equal0~6_combout\ : std_logic;
SIGNAL \timer|Add0~142\ : std_logic;
SIGNAL \timer|Add0~142COUT1_221\ : std_logic;
SIGNAL \timer|Add0~141_combout\ : std_logic;
SIGNAL \timer|Add0~144\ : std_logic;
SIGNAL \timer|Add0~143_combout\ : std_logic;
SIGNAL \timer|Add0~146\ : std_logic;
SIGNAL \timer|Add0~146COUT1_223\ : std_logic;
SIGNAL \timer|Add0~145_combout\ : std_logic;
SIGNAL \timer|Add0~148\ : std_logic;
SIGNAL \timer|Add0~148COUT1_225\ : std_logic;
SIGNAL \timer|Add0~147_combout\ : std_logic;
SIGNAL \timer|Equal0~7_combout\ : std_logic;
SIGNAL \timer|Add0~150\ : std_logic;
SIGNAL \timer|Add0~150COUT1_227\ : std_logic;
SIGNAL \timer|Add0~149_combout\ : std_logic;
SIGNAL \timer|Add0~152\ : std_logic;
SIGNAL \timer|Add0~152COUT1_229\ : std_logic;
SIGNAL \timer|Add0~151_combout\ : std_logic;
SIGNAL \timer|Add0~154\ : std_logic;
SIGNAL \timer|Add0~153_combout\ : std_logic;
SIGNAL \timer|Add0~155_combout\ : std_logic;
SIGNAL \timer|Equal0~8_combout\ : std_logic;
SIGNAL \timer|Equal0~9_combout\ : std_logic;
SIGNAL \timer|main:counter[0]~regout\ : std_logic;
SIGNAL \timer|main:counter[1]~regout\ : std_logic;
SIGNAL \timer|main:counter[2]~regout\ : std_logic;
SIGNAL \timer|main:counter[3]~regout\ : std_logic;
SIGNAL \timer|main:counter[5]~regout\ : std_logic;
SIGNAL \timer|main:counter[4]~regout\ : std_logic;
SIGNAL \timer|main:counter[6]~regout\ : std_logic;
SIGNAL \timer|main:counter[7]~regout\ : std_logic;
SIGNAL \timer|main:counter[8]~regout\ : std_logic;
SIGNAL \timer|main:counter[9]~regout\ : std_logic;
SIGNAL \timer|main:counter[10]~regout\ : std_logic;
SIGNAL \timer|main:counter[11]~regout\ : std_logic;
SIGNAL \timer|main:counter[13]~regout\ : std_logic;
SIGNAL \timer|main:counter[15]~regout\ : std_logic;
SIGNAL \timer|main:counter[12]~regout\ : std_logic;
SIGNAL \timer|main:counter[14]~regout\ : std_logic;
SIGNAL \timer|main:counter[16]~regout\ : std_logic;
SIGNAL \timer|main:counter[17]~regout\ : std_logic;
SIGNAL \timer|main:counter[18]~regout\ : std_logic;
SIGNAL \timer|main:counter[19]~regout\ : std_logic;
SIGNAL \timer|main:counter[20]~regout\ : std_logic;
SIGNAL \timer|main:counter[21]~regout\ : std_logic;
SIGNAL \timer|main:counter[22]~regout\ : std_logic;
SIGNAL \timer|main:counter[23]~regout\ : std_logic;
SIGNAL \timer|main:counter[24]~regout\ : std_logic;
SIGNAL \timer|main:counter[25]~regout\ : std_logic;
SIGNAL \timer|main:counter[26]~regout\ : std_logic;
SIGNAL \timer|main:counter[27]~regout\ : std_logic;
SIGNAL \timer|main:counter[28]~regout\ : std_logic;
SIGNAL \timer|main:counter[29]~regout\ : std_logic;
SIGNAL \timer|main:counter[30]~regout\ : std_logic;
SIGNAL \timer|main:counter[31]~regout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \mode~combout\ : std_logic;
SIGNAL \clk_1m~combout\ : std_logic;
SIGNAL \dec_0|bit_1_ff|Q_tmp~regout\ : std_logic;
SIGNAL \dec_0|bit_3_ff|Q_tmp~regout\ : std_logic;
SIGNAL \dec_0|carry_ff|Q_tmp~regout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \dec_0|rst_in~combout\ : std_logic;
SIGNAL \dec_0|bit_0_ff|Q_tmp~regout\ : std_logic;
SIGNAL \dec_0|bit_2_ff|Q_tmp~regout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \dec_1|bit_2_ff|Q_tmp~regout\ : std_logic;
SIGNAL \dec_1|carry_ff|Q_tmp~regout\ : std_logic;
SIGNAL \dec_1|rst_in~combout\ : std_logic;
SIGNAL \dec_1|bit_0_ff|Q_tmp~regout\ : std_logic;
SIGNAL \dec_1|bit_1_ff|Q_tmp~regout\ : std_logic;
SIGNAL \dec_1|bit_3_ff|Q_tmp~regout\ : std_logic;
SIGNAL \dec_1|Equal0~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \dec_1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_mode <= mode;
ww_clk_1m <= clk_1m;
dig_0 <= ww_dig_0;
dig_1 <= ww_dig_1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\dec_1|ALT_INV_Equal0~0_combout\ <= NOT \dec_1|Equal0~0_combout\;
\ALT_INV_Mux12~0_combout\ <= NOT \Mux12~0_combout\;
\ALT_INV_Mux10~0_combout\ <= NOT \Mux10~0_combout\;
\ALT_INV_Mux9~0_combout\ <= NOT \Mux9~0_combout\;

\timer|clk\ : maxii_lcell
-- Equation(s):
-- \timer|clk~regout\ = DFFEAS(\timer|clk~regout\ $ (\timer|Equal0~4_combout\ & \timer|Equal0~9_combout\), GLOBAL(\clk_1m~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~combout\,
	datab => \timer|clk~regout\,
	datac => \timer|Equal0~4_combout\,
	datad => \timer|Equal0~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|clk~regout\);

\clk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

\mode~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mode,
	combout => \mode~combout\);

clk_dec_0 : maxii_lcell
-- Equation(s):
-- \clk_dec_0~combout\ = LCELL(\mode~combout\ & (\timer|clk~regout\) # !\mode~combout\ & \clk~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk~combout\,
	datac => \mode~combout\,
	datad => \timer|clk~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk_dec_0~combout\);

clk_dec_1 : maxii_lcell
-- Equation(s):
-- \clk_dec_1~combout\ = LCELL(\clk_dec_0~combout\ & \dec_0|carry_ff|Q_tmp~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \clk_dec_0~combout\,
	datad => \dec_0|carry_ff|Q_tmp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk_dec_1~combout\);

\timer|Add0~93\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~93_combout\ = !\timer|main:counter[0]~regout\
-- \timer|Add0~94\ = CARRY(\timer|main:counter[0]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer|main:counter[0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~93_combout\,
	cout => \timer|Add0~94\);

\timer|Add0~95\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~95_combout\ = \timer|main:counter[1]~regout\ $ \timer|Add0~94\
-- \timer|Add0~96\ = CARRY(!\timer|Add0~94\ # !\timer|main:counter[1]~regout\)
-- \timer|Add0~96COUT1_183\ = CARRY(!\timer|Add0~94\ # !\timer|main:counter[1]~regout\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer|main:counter[1]~regout\,
	cin => \timer|Add0~94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~95_combout\,
	cout0 => \timer|Add0~96\,
	cout1 => \timer|Add0~96COUT1_183\);

\timer|Add0~97\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~97_combout\ = \timer|main:counter[2]~regout\ $ !(!\timer|Add0~94\ & \timer|Add0~96\) # (\timer|Add0~94\ & \timer|Add0~96COUT1_183\)
-- \timer|Add0~98\ = CARRY(\timer|main:counter[2]~regout\ & !\timer|Add0~96\)
-- \timer|Add0~98COUT1_185\ = CARRY(\timer|main:counter[2]~regout\ & !\timer|Add0~96COUT1_183\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer|main:counter[2]~regout\,
	cin => \timer|Add0~94\,
	cin0 => \timer|Add0~96\,
	cin1 => \timer|Add0~96COUT1_183\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~97_combout\,
	cout0 => \timer|Add0~98\,
	cout1 => \timer|Add0~98COUT1_185\);

\timer|Add0~99\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~99_combout\ = \timer|main:counter[3]~regout\ $ (!\timer|Add0~94\ & \timer|Add0~98\) # (\timer|Add0~94\ & \timer|Add0~98COUT1_185\)
-- \timer|Add0~100\ = CARRY(!\timer|Add0~98\ # !\timer|main:counter[3]~regout\)
-- \timer|Add0~100COUT1_187\ = CARRY(!\timer|Add0~98COUT1_185\ # !\timer|main:counter[3]~regout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer|main:counter[3]~regout\,
	cin => \timer|Add0~94\,
	cin0 => \timer|Add0~98\,
	cin1 => \timer|Add0~98COUT1_185\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~99_combout\,
	cout0 => \timer|Add0~100\,
	cout1 => \timer|Add0~100COUT1_187\);

\timer|Equal0~0\ : maxii_lcell
-- Equation(s):
-- \timer|Equal0~0_combout\ = !\timer|Add0~99_combout\ & !\timer|Add0~93_combout\ & !\timer|Add0~97_combout\ & !\timer|Add0~95_combout\

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
	dataa => \timer|Add0~99_combout\,
	datab => \timer|Add0~93_combout\,
	datac => \timer|Add0~97_combout\,
	datad => \timer|Add0~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Equal0~0_combout\);

\timer|Add0~101\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~101_combout\ = \timer|main:counter[5]~regout\ $ (!\timer|Add0~94\ & \timer|Add0~104\) # (\timer|Add0~94\ & \timer|Add0~104COUT1_189\)
-- \timer|Add0~102\ = CARRY(!\timer|Add0~104COUT1_189\ # !\timer|main:counter[5]~regout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer|main:counter[5]~regout\,
	cin => \timer|Add0~94\,
	cin0 => \timer|Add0~104\,
	cin1 => \timer|Add0~104COUT1_189\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~101_combout\,
	cout => \timer|Add0~102\);

\timer|Add0~103\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~103_combout\ = \timer|main:counter[4]~regout\ $ !(!\timer|Add0~94\ & \timer|Add0~100\) # (\timer|Add0~94\ & \timer|Add0~100COUT1_187\)
-- \timer|Add0~104\ = CARRY(\timer|main:counter[4]~regout\ & !\timer|Add0~100\)
-- \timer|Add0~104COUT1_189\ = CARRY(\timer|main:counter[4]~regout\ & !\timer|Add0~100COUT1_187\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer|main:counter[4]~regout\,
	cin => \timer|Add0~94\,
	cin0 => \timer|Add0~100\,
	cin1 => \timer|Add0~100COUT1_187\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~103_combout\,
	cout0 => \timer|Add0~104\,
	cout1 => \timer|Add0~104COUT1_189\);

\timer|Add0~105\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~105_combout\ = \timer|main:counter[6]~regout\ $ !\timer|Add0~102\
-- \timer|Add0~106\ = CARRY(\timer|main:counter[6]~regout\ & !\timer|Add0~102\)
-- \timer|Add0~106COUT1_191\ = CARRY(\timer|main:counter[6]~regout\ & !\timer|Add0~102\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer|main:counter[6]~regout\,
	cin => \timer|Add0~102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~105_combout\,
	cout0 => \timer|Add0~106\,
	cout1 => \timer|Add0~106COUT1_191\);

\timer|Add0~107\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~107_combout\ = \timer|main:counter[7]~regout\ $ (!\timer|Add0~102\ & \timer|Add0~106\) # (\timer|Add0~102\ & \timer|Add0~106COUT1_191\)
-- \timer|Add0~108\ = CARRY(!\timer|Add0~106\ # !\timer|main:counter[7]~regout\)
-- \timer|Add0~108COUT1_193\ = CARRY(!\timer|Add0~106COUT1_191\ # !\timer|main:counter[7]~regout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer|main:counter[7]~regout\,
	cin => \timer|Add0~102\,
	cin0 => \timer|Add0~106\,
	cin1 => \timer|Add0~106COUT1_191\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~107_combout\,
	cout0 => \timer|Add0~108\,
	cout1 => \timer|Add0~108COUT1_193\);

\timer|Equal0~1\ : maxii_lcell
-- Equation(s):
-- \timer|Equal0~1_combout\ = !\timer|Add0~103_combout\ & \timer|Add0~101_combout\ & !\timer|Add0~105_combout\ & !\timer|Add0~107_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer|Add0~103_combout\,
	datab => \timer|Add0~101_combout\,
	datac => \timer|Add0~105_combout\,
	datad => \timer|Add0~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Equal0~1_combout\);

\timer|Add0~109\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~109_combout\ = \timer|main:counter[8]~regout\ $ !(!\timer|Add0~102\ & \timer|Add0~108\) # (\timer|Add0~102\ & \timer|Add0~108COUT1_193\)
-- \timer|Add0~110\ = CARRY(\timer|main:counter[8]~regout\ & !\timer|Add0~108\)
-- \timer|Add0~110COUT1_195\ = CARRY(\timer|main:counter[8]~regout\ & !\timer|Add0~108COUT1_193\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer|main:counter[8]~regout\,
	cin => \timer|Add0~102\,
	cin0 => \timer|Add0~108\,
	cin1 => \timer|Add0~108COUT1_193\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~109_combout\,
	cout0 => \timer|Add0~110\,
	cout1 => \timer|Add0~110COUT1_195\);

\timer|Add0~111\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~111_combout\ = \timer|main:counter[9]~regout\ $ ((!\timer|Add0~102\ & \timer|Add0~110\) # (\timer|Add0~102\ & \timer|Add0~110COUT1_195\))
-- \timer|Add0~112\ = CARRY(!\timer|Add0~110\ # !\timer|main:counter[9]~regout\)
-- \timer|Add0~112COUT1_197\ = CARRY(!\timer|Add0~110COUT1_195\ # !\timer|main:counter[9]~regout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer|main:counter[9]~regout\,
	cin => \timer|Add0~102\,
	cin0 => \timer|Add0~110\,
	cin1 => \timer|Add0~110COUT1_195\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~111_combout\,
	cout0 => \timer|Add0~112\,
	cout1 => \timer|Add0~112COUT1_197\);

\timer|Add0~113\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~113_combout\ = \timer|main:counter[10]~regout\ $ (!(!\timer|Add0~102\ & \timer|Add0~112\) # (\timer|Add0~102\ & \timer|Add0~112COUT1_197\))
-- \timer|Add0~114\ = CARRY(\timer|main:counter[10]~regout\ & (!\timer|Add0~112COUT1_197\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer|main:counter[10]~regout\,
	cin => \timer|Add0~102\,
	cin0 => \timer|Add0~112\,
	cin1 => \timer|Add0~112COUT1_197\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~113_combout\,
	cout => \timer|Add0~114\);

\timer|Add0~115\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~115_combout\ = \timer|main:counter[11]~regout\ $ (\timer|Add0~114\)
-- \timer|Add0~116\ = CARRY(!\timer|Add0~114\ # !\timer|main:counter[11]~regout\)
-- \timer|Add0~116COUT1_199\ = CARRY(!\timer|Add0~114\ # !\timer|main:counter[11]~regout\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer|main:counter[11]~regout\,
	cin => \timer|Add0~114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~115_combout\,
	cout0 => \timer|Add0~116\,
	cout1 => \timer|Add0~116COUT1_199\);

\timer|Equal0~2\ : maxii_lcell
-- Equation(s):
-- \timer|Equal0~2_combout\ = \timer|Add0~109_combout\ & !\timer|Add0~113_combout\ & !\timer|Add0~115_combout\ & !\timer|Add0~111_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer|Add0~109_combout\,
	datab => \timer|Add0~113_combout\,
	datac => \timer|Add0~115_combout\,
	datad => \timer|Add0~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Equal0~2_combout\);

\timer|Add0~117\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~117_combout\ = \timer|main:counter[13]~regout\ $ (!\timer|Add0~114\ & \timer|Add0~122\) # (\timer|Add0~114\ & \timer|Add0~122COUT1_201\)
-- \timer|Add0~118\ = CARRY(!\timer|Add0~122\ # !\timer|main:counter[13]~regout\)
-- \timer|Add0~118COUT1_203\ = CARRY(!\timer|Add0~122COUT1_201\ # !\timer|main:counter[13]~regout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer|main:counter[13]~regout\,
	cin => \timer|Add0~114\,
	cin0 => \timer|Add0~122\,
	cin1 => \timer|Add0~122COUT1_201\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~117_combout\,
	cout0 => \timer|Add0~118\,
	cout1 => \timer|Add0~118COUT1_203\);

\timer|Add0~119\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~119_combout\ = \timer|main:counter[15]~regout\ $ (!\timer|Add0~114\ & \timer|Add0~124\) # (\timer|Add0~114\ & \timer|Add0~124COUT1_205\)
-- \timer|Add0~120\ = CARRY(!\timer|Add0~124COUT1_205\ # !\timer|main:counter[15]~regout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer|main:counter[15]~regout\,
	cin => \timer|Add0~114\,
	cin0 => \timer|Add0~124\,
	cin1 => \timer|Add0~124COUT1_205\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~119_combout\,
	cout => \timer|Add0~120\);

\timer|Add0~121\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~121_combout\ = \timer|main:counter[12]~regout\ $ !(!\timer|Add0~114\ & \timer|Add0~116\) # (\timer|Add0~114\ & \timer|Add0~116COUT1_199\)
-- \timer|Add0~122\ = CARRY(\timer|main:counter[12]~regout\ & !\timer|Add0~116\)
-- \timer|Add0~122COUT1_201\ = CARRY(\timer|main:counter[12]~regout\ & !\timer|Add0~116COUT1_199\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer|main:counter[12]~regout\,
	cin => \timer|Add0~114\,
	cin0 => \timer|Add0~116\,
	cin1 => \timer|Add0~116COUT1_199\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~121_combout\,
	cout0 => \timer|Add0~122\,
	cout1 => \timer|Add0~122COUT1_201\);

\timer|Add0~123\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~123_combout\ = \timer|main:counter[14]~regout\ $ !(!\timer|Add0~114\ & \timer|Add0~118\) # (\timer|Add0~114\ & \timer|Add0~118COUT1_203\)
-- \timer|Add0~124\ = CARRY(\timer|main:counter[14]~regout\ & !\timer|Add0~118\)
-- \timer|Add0~124COUT1_205\ = CARRY(\timer|main:counter[14]~regout\ & !\timer|Add0~118COUT1_203\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer|main:counter[14]~regout\,
	cin => \timer|Add0~114\,
	cin0 => \timer|Add0~118\,
	cin1 => \timer|Add0~118COUT1_203\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~123_combout\,
	cout0 => \timer|Add0~124\,
	cout1 => \timer|Add0~124COUT1_205\);

\timer|Equal0~3\ : maxii_lcell
-- Equation(s):
-- \timer|Equal0~3_combout\ = !\timer|Add0~123_combout\ & \timer|Add0~119_combout\ & \timer|Add0~117_combout\ & !\timer|Add0~121_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer|Add0~123_combout\,
	datab => \timer|Add0~119_combout\,
	datac => \timer|Add0~117_combout\,
	datad => \timer|Add0~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Equal0~3_combout\);

\timer|Equal0~4\ : maxii_lcell
-- Equation(s):
-- \timer|Equal0~4_combout\ = \timer|Equal0~3_combout\ & \timer|Equal0~2_combout\ & \timer|Equal0~0_combout\ & \timer|Equal0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer|Equal0~3_combout\,
	datab => \timer|Equal0~2_combout\,
	datac => \timer|Equal0~0_combout\,
	datad => \timer|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Equal0~4_combout\);

\timer|Add0~125\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~125_combout\ = \timer|main:counter[16]~regout\ $ !\timer|Add0~120\
-- \timer|Add0~126\ = CARRY(\timer|main:counter[16]~regout\ & !\timer|Add0~120\)
-- \timer|Add0~126COUT1_207\ = CARRY(\timer|main:counter[16]~regout\ & !\timer|Add0~120\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer|main:counter[16]~regout\,
	cin => \timer|Add0~120\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~125_combout\,
	cout0 => \timer|Add0~126\,
	cout1 => \timer|Add0~126COUT1_207\);

\timer|Add0~127\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~127_combout\ = \timer|main:counter[17]~regout\ $ (!\timer|Add0~120\ & \timer|Add0~126\) # (\timer|Add0~120\ & \timer|Add0~126COUT1_207\)
-- \timer|Add0~128\ = CARRY(!\timer|Add0~126\ # !\timer|main:counter[17]~regout\)
-- \timer|Add0~128COUT1_209\ = CARRY(!\timer|Add0~126COUT1_207\ # !\timer|main:counter[17]~regout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer|main:counter[17]~regout\,
	cin => \timer|Add0~120\,
	cin0 => \timer|Add0~126\,
	cin1 => \timer|Add0~126COUT1_207\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~127_combout\,
	cout0 => \timer|Add0~128\,
	cout1 => \timer|Add0~128COUT1_209\);

\timer|Add0~129\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~129_combout\ = \timer|main:counter[18]~regout\ $ !(!\timer|Add0~120\ & \timer|Add0~128\) # (\timer|Add0~120\ & \timer|Add0~128COUT1_209\)
-- \timer|Add0~130\ = CARRY(\timer|main:counter[18]~regout\ & !\timer|Add0~128\)
-- \timer|Add0~130COUT1_211\ = CARRY(\timer|main:counter[18]~regout\ & !\timer|Add0~128COUT1_209\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer|main:counter[18]~regout\,
	cin => \timer|Add0~120\,
	cin0 => \timer|Add0~128\,
	cin1 => \timer|Add0~128COUT1_209\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~129_combout\,
	cout0 => \timer|Add0~130\,
	cout1 => \timer|Add0~130COUT1_211\);

\timer|Add0~131\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~131_combout\ = \timer|main:counter[19]~regout\ $ (!\timer|Add0~120\ & \timer|Add0~130\) # (\timer|Add0~120\ & \timer|Add0~130COUT1_211\)
-- \timer|Add0~132\ = CARRY(!\timer|Add0~130\ # !\timer|main:counter[19]~regout\)
-- \timer|Add0~132COUT1_213\ = CARRY(!\timer|Add0~130COUT1_211\ # !\timer|main:counter[19]~regout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer|main:counter[19]~regout\,
	cin => \timer|Add0~120\,
	cin0 => \timer|Add0~130\,
	cin1 => \timer|Add0~130COUT1_211\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~131_combout\,
	cout0 => \timer|Add0~132\,
	cout1 => \timer|Add0~132COUT1_213\);

\timer|Equal0~5\ : maxii_lcell
-- Equation(s):
-- \timer|Equal0~5_combout\ = \timer|Add0~125_combout\ & \timer|Add0~127_combout\ & !\timer|Add0~131_combout\ & \timer|Add0~129_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer|Add0~125_combout\,
	datab => \timer|Add0~127_combout\,
	datac => \timer|Add0~131_combout\,
	datad => \timer|Add0~129_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Equal0~5_combout\);

\timer|Add0~133\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~133_combout\ = \timer|main:counter[20]~regout\ $ !(!\timer|Add0~120\ & \timer|Add0~132\) # (\timer|Add0~120\ & \timer|Add0~132COUT1_213\)
-- \timer|Add0~134\ = CARRY(\timer|main:counter[20]~regout\ & !\timer|Add0~132COUT1_213\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer|main:counter[20]~regout\,
	cin => \timer|Add0~120\,
	cin0 => \timer|Add0~132\,
	cin1 => \timer|Add0~132COUT1_213\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~133_combout\,
	cout => \timer|Add0~134\);

\timer|Add0~135\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~135_combout\ = \timer|main:counter[21]~regout\ $ \timer|Add0~134\
-- \timer|Add0~136\ = CARRY(!\timer|Add0~134\ # !\timer|main:counter[21]~regout\)
-- \timer|Add0~136COUT1_215\ = CARRY(!\timer|Add0~134\ # !\timer|main:counter[21]~regout\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer|main:counter[21]~regout\,
	cin => \timer|Add0~134\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~135_combout\,
	cout0 => \timer|Add0~136\,
	cout1 => \timer|Add0~136COUT1_215\);

\timer|Add0~137\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~137_combout\ = \timer|main:counter[22]~regout\ $ !(!\timer|Add0~134\ & \timer|Add0~136\) # (\timer|Add0~134\ & \timer|Add0~136COUT1_215\)
-- \timer|Add0~138\ = CARRY(\timer|main:counter[22]~regout\ & !\timer|Add0~136\)
-- \timer|Add0~138COUT1_217\ = CARRY(\timer|main:counter[22]~regout\ & !\timer|Add0~136COUT1_215\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer|main:counter[22]~regout\,
	cin => \timer|Add0~134\,
	cin0 => \timer|Add0~136\,
	cin1 => \timer|Add0~136COUT1_215\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~137_combout\,
	cout0 => \timer|Add0~138\,
	cout1 => \timer|Add0~138COUT1_217\);

\timer|Add0~139\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~139_combout\ = \timer|main:counter[23]~regout\ $ ((!\timer|Add0~134\ & \timer|Add0~138\) # (\timer|Add0~134\ & \timer|Add0~138COUT1_217\))
-- \timer|Add0~140\ = CARRY(!\timer|Add0~138\ # !\timer|main:counter[23]~regout\)
-- \timer|Add0~140COUT1_219\ = CARRY(!\timer|Add0~138COUT1_217\ # !\timer|main:counter[23]~regout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer|main:counter[23]~regout\,
	cin => \timer|Add0~134\,
	cin0 => \timer|Add0~138\,
	cin1 => \timer|Add0~138COUT1_217\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~139_combout\,
	cout0 => \timer|Add0~140\,
	cout1 => \timer|Add0~140COUT1_219\);

\timer|Equal0~6\ : maxii_lcell
-- Equation(s):
-- \timer|Equal0~6_combout\ = !\timer|Add0~133_combout\ & !\timer|Add0~135_combout\ & !\timer|Add0~139_combout\ & !\timer|Add0~137_combout\

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
	dataa => \timer|Add0~133_combout\,
	datab => \timer|Add0~135_combout\,
	datac => \timer|Add0~139_combout\,
	datad => \timer|Add0~137_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Equal0~6_combout\);

\timer|Add0~141\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~141_combout\ = \timer|main:counter[24]~regout\ $ !(!\timer|Add0~134\ & \timer|Add0~140\) # (\timer|Add0~134\ & \timer|Add0~140COUT1_219\)
-- \timer|Add0~142\ = CARRY(\timer|main:counter[24]~regout\ & !\timer|Add0~140\)
-- \timer|Add0~142COUT1_221\ = CARRY(\timer|main:counter[24]~regout\ & !\timer|Add0~140COUT1_219\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer|main:counter[24]~regout\,
	cin => \timer|Add0~134\,
	cin0 => \timer|Add0~140\,
	cin1 => \timer|Add0~140COUT1_219\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~141_combout\,
	cout0 => \timer|Add0~142\,
	cout1 => \timer|Add0~142COUT1_221\);

\timer|Add0~143\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~143_combout\ = \timer|main:counter[25]~regout\ $ (!\timer|Add0~134\ & \timer|Add0~142\) # (\timer|Add0~134\ & \timer|Add0~142COUT1_221\)
-- \timer|Add0~144\ = CARRY(!\timer|Add0~142COUT1_221\ # !\timer|main:counter[25]~regout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer|main:counter[25]~regout\,
	cin => \timer|Add0~134\,
	cin0 => \timer|Add0~142\,
	cin1 => \timer|Add0~142COUT1_221\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~143_combout\,
	cout => \timer|Add0~144\);

\timer|Add0~145\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~145_combout\ = \timer|main:counter[26]~regout\ $ !\timer|Add0~144\
-- \timer|Add0~146\ = CARRY(\timer|main:counter[26]~regout\ & !\timer|Add0~144\)
-- \timer|Add0~146COUT1_223\ = CARRY(\timer|main:counter[26]~regout\ & !\timer|Add0~144\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer|main:counter[26]~regout\,
	cin => \timer|Add0~144\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~145_combout\,
	cout0 => \timer|Add0~146\,
	cout1 => \timer|Add0~146COUT1_223\);

\timer|Add0~147\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~147_combout\ = \timer|main:counter[27]~regout\ $ ((!\timer|Add0~144\ & \timer|Add0~146\) # (\timer|Add0~144\ & \timer|Add0~146COUT1_223\))
-- \timer|Add0~148\ = CARRY(!\timer|Add0~146\ # !\timer|main:counter[27]~regout\)
-- \timer|Add0~148COUT1_225\ = CARRY(!\timer|Add0~146COUT1_223\ # !\timer|main:counter[27]~regout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer|main:counter[27]~regout\,
	cin => \timer|Add0~144\,
	cin0 => \timer|Add0~146\,
	cin1 => \timer|Add0~146COUT1_223\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~147_combout\,
	cout0 => \timer|Add0~148\,
	cout1 => \timer|Add0~148COUT1_225\);

\timer|Equal0~7\ : maxii_lcell
-- Equation(s):
-- \timer|Equal0~7_combout\ = !\timer|Add0~143_combout\ & !\timer|Add0~145_combout\ & !\timer|Add0~141_combout\ & !\timer|Add0~147_combout\

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
	dataa => \timer|Add0~143_combout\,
	datab => \timer|Add0~145_combout\,
	datac => \timer|Add0~141_combout\,
	datad => \timer|Add0~147_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Equal0~7_combout\);

\timer|Add0~149\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~149_combout\ = \timer|main:counter[28]~regout\ $ (!(!\timer|Add0~144\ & \timer|Add0~148\) # (\timer|Add0~144\ & \timer|Add0~148COUT1_225\))
-- \timer|Add0~150\ = CARRY(\timer|main:counter[28]~regout\ & (!\timer|Add0~148\))
-- \timer|Add0~150COUT1_227\ = CARRY(\timer|main:counter[28]~regout\ & (!\timer|Add0~148COUT1_225\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer|main:counter[28]~regout\,
	cin => \timer|Add0~144\,
	cin0 => \timer|Add0~148\,
	cin1 => \timer|Add0~148COUT1_225\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~149_combout\,
	cout0 => \timer|Add0~150\,
	cout1 => \timer|Add0~150COUT1_227\);

\timer|Add0~151\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~151_combout\ = \timer|main:counter[29]~regout\ $ (!\timer|Add0~144\ & \timer|Add0~150\) # (\timer|Add0~144\ & \timer|Add0~150COUT1_227\)
-- \timer|Add0~152\ = CARRY(!\timer|Add0~150\ # !\timer|main:counter[29]~regout\)
-- \timer|Add0~152COUT1_229\ = CARRY(!\timer|Add0~150COUT1_227\ # !\timer|main:counter[29]~regout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer|main:counter[29]~regout\,
	cin => \timer|Add0~144\,
	cin0 => \timer|Add0~150\,
	cin1 => \timer|Add0~150COUT1_227\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~151_combout\,
	cout0 => \timer|Add0~152\,
	cout1 => \timer|Add0~152COUT1_229\);

\timer|Add0~153\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~153_combout\ = \timer|main:counter[30]~regout\ $ !(!\timer|Add0~144\ & \timer|Add0~152\) # (\timer|Add0~144\ & \timer|Add0~152COUT1_229\)
-- \timer|Add0~154\ = CARRY(\timer|main:counter[30]~regout\ & !\timer|Add0~152COUT1_229\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timer|main:counter[30]~regout\,
	cin => \timer|Add0~144\,
	cin0 => \timer|Add0~152\,
	cin1 => \timer|Add0~152COUT1_229\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~153_combout\,
	cout => \timer|Add0~154\);

\timer|Add0~155\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~155_combout\ = \timer|Add0~154\ $ \timer|main:counter[31]~regout\

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \timer|main:counter[31]~regout\,
	cin => \timer|Add0~154\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~155_combout\);

\timer|Equal0~8\ : maxii_lcell
-- Equation(s):
-- \timer|Equal0~8_combout\ = !\timer|Add0~155_combout\ & !\timer|Add0~149_combout\ & !\timer|Add0~153_combout\ & !\timer|Add0~151_combout\

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
	dataa => \timer|Add0~155_combout\,
	datab => \timer|Add0~149_combout\,
	datac => \timer|Add0~153_combout\,
	datad => \timer|Add0~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Equal0~8_combout\);

\timer|Equal0~9\ : maxii_lcell
-- Equation(s):
-- \timer|Equal0~9_combout\ = \timer|Equal0~5_combout\ & \timer|Equal0~8_combout\ & \timer|Equal0~7_combout\ & \timer|Equal0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer|Equal0~5_combout\,
	datab => \timer|Equal0~8_combout\,
	datac => \timer|Equal0~7_combout\,
	datad => \timer|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Equal0~9_combout\);

\clk_1m~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk_1m,
	combout => \clk_1m~combout\);

\timer|main:counter[0]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[0]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~93_combout\, , , VCC)

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
	clk => \clk_1m~combout\,
	datac => \timer|Add0~93_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[0]~regout\);

\timer|main:counter[1]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[1]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~95_combout\, , , VCC)

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
	clk => \clk_1m~combout\,
	datac => \timer|Add0~95_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[1]~regout\);

\timer|main:counter[2]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[2]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~97_combout\, , , VCC)

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
	clk => \clk_1m~combout\,
	datac => \timer|Add0~97_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[2]~regout\);

\timer|main:counter[3]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[3]~regout\ = DFFEAS(\timer|Add0~99_combout\, GLOBAL(\clk_1m~combout\), VCC, , , , , , )

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
	clk => \clk_1m~combout\,
	datad => \timer|Add0~99_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[3]~regout\);

\timer|main:counter[5]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[5]~regout\ = DFFEAS(\timer|Add0~101_combout\ & (!\timer|Equal0~9_combout\ # !\timer|Equal0~4_combout\), GLOBAL(\clk_1m~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~combout\,
	datab => \timer|Add0~101_combout\,
	datac => \timer|Equal0~4_combout\,
	datad => \timer|Equal0~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[5]~regout\);

\timer|main:counter[4]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[4]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~103_combout\, , , VCC)

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
	clk => \clk_1m~combout\,
	datac => \timer|Add0~103_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[4]~regout\);

\timer|main:counter[6]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[6]~regout\ = DFFEAS(\timer|Add0~105_combout\, GLOBAL(\clk_1m~combout\), VCC, , , , , , )

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
	clk => \clk_1m~combout\,
	datad => \timer|Add0~105_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[6]~regout\);

\timer|main:counter[7]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[7]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~107_combout\, , , VCC)

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
	clk => \clk_1m~combout\,
	datac => \timer|Add0~107_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[7]~regout\);

\timer|main:counter[8]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[8]~regout\ = DFFEAS(\timer|Add0~109_combout\ & (!\timer|Equal0~9_combout\ # !\timer|Equal0~4_combout\), GLOBAL(\clk_1m~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~combout\,
	datab => \timer|Equal0~4_combout\,
	datac => \timer|Add0~109_combout\,
	datad => \timer|Equal0~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[8]~regout\);

\timer|main:counter[9]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[9]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~111_combout\, , , VCC)

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
	clk => \clk_1m~combout\,
	datac => \timer|Add0~111_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[9]~regout\);

\timer|main:counter[10]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[10]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~113_combout\, , , VCC)

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
	clk => \clk_1m~combout\,
	datac => \timer|Add0~113_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[10]~regout\);

\timer|main:counter[11]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[11]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~115_combout\, , , VCC)

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
	clk => \clk_1m~combout\,
	datac => \timer|Add0~115_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[11]~regout\);

\timer|main:counter[13]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[13]~regout\ = DFFEAS(\timer|Add0~117_combout\ & (!\timer|Equal0~9_combout\ # !\timer|Equal0~4_combout\), GLOBAL(\clk_1m~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~combout\,
	datab => \timer|Equal0~4_combout\,
	datac => \timer|Add0~117_combout\,
	datad => \timer|Equal0~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[13]~regout\);

\timer|main:counter[15]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[15]~regout\ = DFFEAS(\timer|Add0~119_combout\ & (!\timer|Equal0~9_combout\ # !\timer|Equal0~4_combout\), GLOBAL(\clk_1m~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~combout\,
	datab => \timer|Add0~119_combout\,
	datac => \timer|Equal0~4_combout\,
	datad => \timer|Equal0~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[15]~regout\);

\timer|main:counter[12]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[12]~regout\ = DFFEAS(\timer|Add0~121_combout\, GLOBAL(\clk_1m~combout\), VCC, , , , , , )

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
	clk => \clk_1m~combout\,
	datad => \timer|Add0~121_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[12]~regout\);

\timer|main:counter[14]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[14]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~123_combout\, , , VCC)

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
	clk => \clk_1m~combout\,
	datac => \timer|Add0~123_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[14]~regout\);

\timer|main:counter[16]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[16]~regout\ = DFFEAS(\timer|Add0~125_combout\ & (!\timer|Equal0~9_combout\ # !\timer|Equal0~4_combout\), GLOBAL(\clk_1m~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~combout\,
	datab => \timer|Add0~125_combout\,
	datac => \timer|Equal0~4_combout\,
	datad => \timer|Equal0~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[16]~regout\);

\timer|main:counter[17]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[17]~regout\ = DFFEAS(\timer|Add0~127_combout\ & (!\timer|Equal0~9_combout\ # !\timer|Equal0~4_combout\), GLOBAL(\clk_1m~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~combout\,
	datab => \timer|Add0~127_combout\,
	datac => \timer|Equal0~4_combout\,
	datad => \timer|Equal0~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[17]~regout\);

\timer|main:counter[18]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[18]~regout\ = DFFEAS(\timer|Add0~129_combout\ & (!\timer|Equal0~9_combout\ # !\timer|Equal0~4_combout\), GLOBAL(\clk_1m~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~combout\,
	datab => \timer|Add0~129_combout\,
	datac => \timer|Equal0~4_combout\,
	datad => \timer|Equal0~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[18]~regout\);

\timer|main:counter[19]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[19]~regout\ = DFFEAS(\timer|Add0~131_combout\, GLOBAL(\clk_1m~combout\), VCC, , , , , , )

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
	clk => \clk_1m~combout\,
	datad => \timer|Add0~131_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[19]~regout\);

\timer|main:counter[20]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[20]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~133_combout\, , , VCC)

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
	clk => \clk_1m~combout\,
	datac => \timer|Add0~133_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[20]~regout\);

\timer|main:counter[21]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[21]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~135_combout\, , , VCC)

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
	clk => \clk_1m~combout\,
	datac => \timer|Add0~135_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[21]~regout\);

\timer|main:counter[22]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[22]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~137_combout\, , , VCC)

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
	clk => \clk_1m~combout\,
	datac => \timer|Add0~137_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[22]~regout\);

\timer|main:counter[23]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[23]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~139_combout\, , , VCC)

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
	clk => \clk_1m~combout\,
	datac => \timer|Add0~139_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[23]~regout\);

\timer|main:counter[24]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[24]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~141_combout\, , , VCC)

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
	clk => \clk_1m~combout\,
	datac => \timer|Add0~141_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[24]~regout\);

\timer|main:counter[25]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[25]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~143_combout\, , , VCC)

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
	clk => \clk_1m~combout\,
	datac => \timer|Add0~143_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[25]~regout\);

\timer|main:counter[26]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[26]~regout\ = DFFEAS(\timer|Add0~145_combout\, GLOBAL(\clk_1m~combout\), VCC, , , , , , )

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
	clk => \clk_1m~combout\,
	datad => \timer|Add0~145_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[26]~regout\);

\timer|main:counter[27]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[27]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~147_combout\, , , VCC)

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
	clk => \clk_1m~combout\,
	datac => \timer|Add0~147_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[27]~regout\);

\timer|main:counter[28]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[28]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~149_combout\, , , VCC)

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
	clk => \clk_1m~combout\,
	datac => \timer|Add0~149_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[28]~regout\);

\timer|main:counter[29]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[29]~regout\ = DFFEAS(\timer|Add0~151_combout\, GLOBAL(\clk_1m~combout\), VCC, , , , , , )

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
	clk => \clk_1m~combout\,
	datad => \timer|Add0~151_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[29]~regout\);

\timer|main:counter[30]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[30]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~153_combout\, , , VCC)

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
	clk => \clk_1m~combout\,
	datac => \timer|Add0~153_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[30]~regout\);

\timer|main:counter[31]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[31]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~155_combout\, , , VCC)

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
	clk => \clk_1m~combout\,
	datac => \timer|Add0~155_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[31]~regout\);

\dec_0|bit_1_ff|Q_tmp\ : maxii_lcell
-- Equation(s):
-- \dec_0|bit_1_ff|Q_tmp~regout\ = DFFEAS(\dec_0|bit_0_ff|Q_tmp~regout\ $ \dec_0|bit_1_ff|Q_tmp~regout\, GLOBAL(\clk_dec_0~combout\), !GLOBAL(\dec_0|rst_in~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_dec_0~combout\,
	datac => \dec_0|bit_0_ff|Q_tmp~regout\,
	datad => \dec_0|bit_1_ff|Q_tmp~regout\,
	aclr => \dec_0|rst_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_0|bit_1_ff|Q_tmp~regout\);

\dec_0|bit_3_ff|Q_tmp\ : maxii_lcell
-- Equation(s):
-- \dec_0|bit_3_ff|Q_tmp~regout\ = DFFEAS(\dec_0|bit_3_ff|Q_tmp~regout\ $ (\dec_0|bit_0_ff|Q_tmp~regout\ & \dec_0|bit_1_ff|Q_tmp~regout\ & \dec_0|bit_2_ff|Q_tmp~regout\), GLOBAL(\clk_dec_0~combout\), !GLOBAL(\dec_0|rst_in~combout\), , , , , , )

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
	clk => \clk_dec_0~combout\,
	dataa => \dec_0|bit_0_ff|Q_tmp~regout\,
	datab => \dec_0|bit_1_ff|Q_tmp~regout\,
	datac => \dec_0|bit_3_ff|Q_tmp~regout\,
	datad => \dec_0|bit_2_ff|Q_tmp~regout\,
	aclr => \dec_0|rst_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_0|bit_3_ff|Q_tmp~regout\);

\dec_0|carry_ff|Q_tmp\ : maxii_lcell
-- Equation(s):
-- \dec_0|carry_ff|Q_tmp~regout\ = DFFEAS(\dec_0|bit_0_ff|Q_tmp~regout\ & !\dec_0|bit_1_ff|Q_tmp~regout\ & \dec_0|bit_3_ff|Q_tmp~regout\ & !\dec_0|bit_2_ff|Q_tmp~regout\, GLOBAL(\clk_dec_0~combout\), !GLOBAL(\dec_0|rst_in~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_dec_0~combout\,
	dataa => \dec_0|bit_0_ff|Q_tmp~regout\,
	datab => \dec_0|bit_1_ff|Q_tmp~regout\,
	datac => \dec_0|bit_3_ff|Q_tmp~regout\,
	datad => \dec_0|bit_2_ff|Q_tmp~regout\,
	aclr => \dec_0|rst_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_0|carry_ff|Q_tmp~regout\);

\rst~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

\dec_0|rst_in\ : maxii_lcell
-- Equation(s):
-- \dec_0|rst_in~combout\ = \dec_0|carry_ff|Q_tmp~regout\ # \rst~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \dec_0|carry_ff|Q_tmp~regout\,
	datad => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dec_0|rst_in~combout\);

\dec_0|bit_0_ff|Q_tmp\ : maxii_lcell
-- Equation(s):
-- \dec_0|bit_0_ff|Q_tmp~regout\ = DFFEAS(!\dec_0|bit_0_ff|Q_tmp~regout\, GLOBAL(\clk_dec_0~combout\), !GLOBAL(\dec_0|rst_in~combout\), , , , , , )

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
	clk => \clk_dec_0~combout\,
	datad => \dec_0|bit_0_ff|Q_tmp~regout\,
	aclr => \dec_0|rst_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_0|bit_0_ff|Q_tmp~regout\);

\dec_0|bit_2_ff|Q_tmp\ : maxii_lcell
-- Equation(s):
-- \dec_0|bit_2_ff|Q_tmp~regout\ = DFFEAS(\dec_0|bit_2_ff|Q_tmp~regout\ $ (\dec_0|bit_0_ff|Q_tmp~regout\ & \dec_0|bit_1_ff|Q_tmp~regout\), GLOBAL(\clk_dec_0~combout\), !GLOBAL(\dec_0|rst_in~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5af0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_dec_0~combout\,
	dataa => \dec_0|bit_0_ff|Q_tmp~regout\,
	datac => \dec_0|bit_2_ff|Q_tmp~regout\,
	datad => \dec_0|bit_1_ff|Q_tmp~regout\,
	aclr => \dec_0|rst_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_0|bit_2_ff|Q_tmp~regout\);

\Mux6~0\ : maxii_lcell
-- Equation(s):
-- \Mux6~0_combout\ = !\dec_0|bit_2_ff|Q_tmp~regout\ & (\dec_0|bit_1_ff|Q_tmp~regout\ & !\dec_0|bit_3_ff|Q_tmp~regout\ & !\dec_0|bit_0_ff|Q_tmp~regout\ # !\dec_0|bit_1_ff|Q_tmp~regout\ & \dec_0|bit_3_ff|Q_tmp~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1014",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dec_0|bit_2_ff|Q_tmp~regout\,
	datab => \dec_0|bit_1_ff|Q_tmp~regout\,
	datac => \dec_0|bit_3_ff|Q_tmp~regout\,
	datad => \dec_0|bit_0_ff|Q_tmp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~0_combout\);

\Mux5~0\ : maxii_lcell
-- Equation(s):
-- \Mux5~0_combout\ = \dec_0|bit_1_ff|Q_tmp~regout\ & (\dec_0|bit_2_ff|Q_tmp~regout\ # \dec_0|bit_3_ff|Q_tmp~regout\ # !\dec_0|bit_0_ff|Q_tmp~regout\) # !\dec_0|bit_1_ff|Q_tmp~regout\ & \dec_0|bit_3_ff|Q_tmp~regout\ & (\dec_0|bit_2_ff|Q_tmp~regout\ # 
-- !\dec_0|bit_0_ff|Q_tmp~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dec_0|bit_2_ff|Q_tmp~regout\,
	datab => \dec_0|bit_1_ff|Q_tmp~regout\,
	datac => \dec_0|bit_3_ff|Q_tmp~regout\,
	datad => \dec_0|bit_0_ff|Q_tmp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~0_combout\);

\Mux4~0\ : maxii_lcell
-- Equation(s):
-- \Mux4~0_combout\ = \dec_0|bit_0_ff|Q_tmp~regout\ & (\dec_0|bit_1_ff|Q_tmp~regout\ & (!\dec_0|bit_3_ff|Q_tmp~regout\) # !\dec_0|bit_1_ff|Q_tmp~regout\ & !\dec_0|bit_2_ff|Q_tmp~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1d00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dec_0|bit_2_ff|Q_tmp~regout\,
	datab => \dec_0|bit_1_ff|Q_tmp~regout\,
	datac => \dec_0|bit_3_ff|Q_tmp~regout\,
	datad => \dec_0|bit_0_ff|Q_tmp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~0_combout\);

\Mux3~0\ : maxii_lcell
-- Equation(s):
-- \Mux3~0_combout\ = \dec_0|bit_1_ff|Q_tmp~regout\ & (\dec_0|bit_3_ff|Q_tmp~regout\ # !\dec_0|bit_2_ff|Q_tmp~regout\ & !\dec_0|bit_0_ff|Q_tmp~regout\) # !\dec_0|bit_1_ff|Q_tmp~regout\ & (\dec_0|bit_0_ff|Q_tmp~regout\ & \dec_0|bit_2_ff|Q_tmp~regout\ # 
-- !\dec_0|bit_0_ff|Q_tmp~regout\ & (\dec_0|bit_3_ff|Q_tmp~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2f4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dec_0|bit_2_ff|Q_tmp~regout\,
	datab => \dec_0|bit_1_ff|Q_tmp~regout\,
	datac => \dec_0|bit_3_ff|Q_tmp~regout\,
	datad => \dec_0|bit_0_ff|Q_tmp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~0_combout\);

\Mux2~0\ : maxii_lcell
-- Equation(s):
-- \Mux2~0_combout\ = \dec_0|bit_2_ff|Q_tmp~regout\ & (\dec_0|bit_3_ff|Q_tmp~regout\ # \dec_0|bit_1_ff|Q_tmp~regout\ & \dec_0|bit_0_ff|Q_tmp~regout\) # !\dec_0|bit_2_ff|Q_tmp~regout\ & \dec_0|bit_1_ff|Q_tmp~regout\ & \dec_0|bit_3_ff|Q_tmp~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dec_0|bit_2_ff|Q_tmp~regout\,
	datab => \dec_0|bit_1_ff|Q_tmp~regout\,
	datac => \dec_0|bit_3_ff|Q_tmp~regout\,
	datad => \dec_0|bit_0_ff|Q_tmp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~0_combout\);

\Mux1~0\ : maxii_lcell
-- Equation(s):
-- \Mux1~0_combout\ = \dec_0|bit_1_ff|Q_tmp~regout\ & (\dec_0|bit_3_ff|Q_tmp~regout\ # !\dec_0|bit_2_ff|Q_tmp~regout\ & \dec_0|bit_0_ff|Q_tmp~regout\) # !\dec_0|bit_1_ff|Q_tmp~regout\ & \dec_0|bit_2_ff|Q_tmp~regout\ & (\dec_0|bit_3_ff|Q_tmp~regout\ # 
-- !\dec_0|bit_0_ff|Q_tmp~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee24",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dec_0|bit_1_ff|Q_tmp~regout\,
	datab => \dec_0|bit_2_ff|Q_tmp~regout\,
	datac => \dec_0|bit_0_ff|Q_tmp~regout\,
	datad => \dec_0|bit_3_ff|Q_tmp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~0_combout\);

\Mux0~0\ : maxii_lcell
-- Equation(s):
-- \Mux0~0_combout\ = \dec_0|bit_1_ff|Q_tmp~regout\ & (\dec_0|bit_3_ff|Q_tmp~regout\) # !\dec_0|bit_1_ff|Q_tmp~regout\ & (\dec_0|bit_0_ff|Q_tmp~regout\ & \dec_0|bit_2_ff|Q_tmp~regout\ # !\dec_0|bit_0_ff|Q_tmp~regout\ & (\dec_0|bit_3_ff|Q_tmp~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dec_0|bit_1_ff|Q_tmp~regout\,
	datab => \dec_0|bit_2_ff|Q_tmp~regout\,
	datac => \dec_0|bit_0_ff|Q_tmp~regout\,
	datad => \dec_0|bit_3_ff|Q_tmp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

\dec_1|bit_2_ff|Q_tmp\ : maxii_lcell
-- Equation(s):
-- \dec_1|bit_2_ff|Q_tmp~regout\ = DFFEAS(\dec_1|bit_2_ff|Q_tmp~regout\ $ (\dec_1|bit_1_ff|Q_tmp~regout\ & \dec_1|bit_0_ff|Q_tmp~regout\), GLOBAL(\clk_dec_1~combout\), !\dec_1|rst_in~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3cf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_dec_1~combout\,
	datab => \dec_1|bit_1_ff|Q_tmp~regout\,
	datac => \dec_1|bit_2_ff|Q_tmp~regout\,
	datad => \dec_1|bit_0_ff|Q_tmp~regout\,
	aclr => \dec_1|rst_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_1|bit_2_ff|Q_tmp~regout\);

\dec_1|carry_ff|Q_tmp\ : maxii_lcell
-- Equation(s):
-- \dec_1|carry_ff|Q_tmp~regout\ = DFFEAS(!\dec_1|bit_3_ff|Q_tmp~regout\ & \dec_1|bit_0_ff|Q_tmp~regout\ & \dec_1|bit_2_ff|Q_tmp~regout\ & !\dec_1|bit_1_ff|Q_tmp~regout\, GLOBAL(\clk_dec_1~combout\), !\dec_1|rst_in~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_dec_1~combout\,
	dataa => \dec_1|bit_3_ff|Q_tmp~regout\,
	datab => \dec_1|bit_0_ff|Q_tmp~regout\,
	datac => \dec_1|bit_2_ff|Q_tmp~regout\,
	datad => \dec_1|bit_1_ff|Q_tmp~regout\,
	aclr => \dec_1|rst_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_1|carry_ff|Q_tmp~regout\);

\dec_1|rst_in\ : maxii_lcell
-- Equation(s):
-- \dec_1|rst_in~combout\ = \dec_1|carry_ff|Q_tmp~regout\ # \rst~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dec_1|carry_ff|Q_tmp~regout\,
	datad => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dec_1|rst_in~combout\);

\dec_1|bit_0_ff|Q_tmp\ : maxii_lcell
-- Equation(s):
-- \dec_1|bit_0_ff|Q_tmp~regout\ = DFFEAS(!\dec_1|bit_0_ff|Q_tmp~regout\, GLOBAL(\clk_dec_1~combout\), !\dec_1|rst_in~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_dec_1~combout\,
	datac => \dec_1|bit_0_ff|Q_tmp~regout\,
	aclr => \dec_1|rst_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_1|bit_0_ff|Q_tmp~regout\);

\dec_1|bit_1_ff|Q_tmp\ : maxii_lcell
-- Equation(s):
-- \dec_1|bit_1_ff|Q_tmp~regout\ = DFFEAS(\dec_1|bit_1_ff|Q_tmp~regout\ $ \dec_1|bit_0_ff|Q_tmp~regout\, GLOBAL(\clk_dec_1~combout\), !\dec_1|rst_in~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_dec_1~combout\,
	datab => \dec_1|bit_1_ff|Q_tmp~regout\,
	datac => \dec_1|bit_0_ff|Q_tmp~regout\,
	aclr => \dec_1|rst_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_1|bit_1_ff|Q_tmp~regout\);

\dec_1|bit_3_ff|Q_tmp\ : maxii_lcell
-- Equation(s):
-- \dec_1|bit_3_ff|Q_tmp~regout\ = DFFEAS(\dec_1|bit_3_ff|Q_tmp~regout\ $ (\dec_1|bit_1_ff|Q_tmp~regout\ & \dec_1|bit_2_ff|Q_tmp~regout\ & \dec_1|bit_0_ff|Q_tmp~regout\), GLOBAL(\clk_dec_1~combout\), !\dec_1|rst_in~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_dec_1~combout\,
	dataa => \dec_1|bit_3_ff|Q_tmp~regout\,
	datab => \dec_1|bit_1_ff|Q_tmp~regout\,
	datac => \dec_1|bit_2_ff|Q_tmp~regout\,
	datad => \dec_1|bit_0_ff|Q_tmp~regout\,
	aclr => \dec_1|rst_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_1|bit_3_ff|Q_tmp~regout\);

\dec_1|Equal0~0\ : maxii_lcell
-- Equation(s):
-- \dec_1|Equal0~0_combout\ = !\dec_1|bit_3_ff|Q_tmp~regout\ & !\dec_1|bit_1_ff|Q_tmp~regout\ & \dec_1|bit_2_ff|Q_tmp~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \dec_1|bit_3_ff|Q_tmp~regout\,
	datac => \dec_1|bit_1_ff|Q_tmp~regout\,
	datad => \dec_1|bit_2_ff|Q_tmp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dec_1|Equal0~0_combout\);

\Mux12~0\ : maxii_lcell
-- Equation(s):
-- \Mux12~0_combout\ = \dec_1|bit_1_ff|Q_tmp~regout\ # \dec_1|bit_3_ff|Q_tmp~regout\ # !\dec_1|bit_0_ff|Q_tmp~regout\ & \dec_1|bit_2_ff|Q_tmp~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffba",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dec_1|bit_1_ff|Q_tmp~regout\,
	datab => \dec_1|bit_0_ff|Q_tmp~regout\,
	datac => \dec_1|bit_2_ff|Q_tmp~regout\,
	datad => \dec_1|bit_3_ff|Q_tmp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~0_combout\);

\Mux11~0\ : maxii_lcell
-- Equation(s):
-- \Mux11~0_combout\ = !\dec_1|bit_3_ff|Q_tmp~regout\ & \dec_1|bit_0_ff|Q_tmp~regout\ & (\dec_1|bit_1_ff|Q_tmp~regout\ $ \dec_1|bit_2_ff|Q_tmp~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0440",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dec_1|bit_3_ff|Q_tmp~regout\,
	datab => \dec_1|bit_0_ff|Q_tmp~regout\,
	datac => \dec_1|bit_1_ff|Q_tmp~regout\,
	datad => \dec_1|bit_2_ff|Q_tmp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~0_combout\);

\Mux10~0\ : maxii_lcell
-- Equation(s):
-- \Mux10~0_combout\ = \dec_1|bit_3_ff|Q_tmp~regout\ # \dec_1|bit_2_ff|Q_tmp~regout\ $ (\dec_1|bit_0_ff|Q_tmp~regout\ & !\dec_1|bit_1_ff|Q_tmp~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fabe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dec_1|bit_3_ff|Q_tmp~regout\,
	datab => \dec_1|bit_0_ff|Q_tmp~regout\,
	datac => \dec_1|bit_2_ff|Q_tmp~regout\,
	datad => \dec_1|bit_1_ff|Q_tmp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~0_combout\);

\Mux9~0\ : maxii_lcell
-- Equation(s):
-- \Mux9~0_combout\ = \dec_1|bit_3_ff|Q_tmp~regout\ # \dec_1|bit_1_ff|Q_tmp~regout\ & (\dec_1|bit_0_ff|Q_tmp~regout\ # \dec_1|bit_2_ff|Q_tmp~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dec_1|bit_3_ff|Q_tmp~regout\,
	datab => \dec_1|bit_1_ff|Q_tmp~regout\,
	datac => \dec_1|bit_0_ff|Q_tmp~regout\,
	datad => \dec_1|bit_2_ff|Q_tmp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~0_combout\);

\Mux8~0\ : maxii_lcell
-- Equation(s):
-- \Mux8~0_combout\ = !\dec_1|bit_3_ff|Q_tmp~regout\ & (\dec_1|bit_2_ff|Q_tmp~regout\ & (!\dec_1|bit_1_ff|Q_tmp~regout\) # !\dec_1|bit_2_ff|Q_tmp~regout\ & (\dec_1|bit_0_ff|Q_tmp~regout\ # \dec_1|bit_1_ff|Q_tmp~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0554",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dec_1|bit_3_ff|Q_tmp~regout\,
	datab => \dec_1|bit_0_ff|Q_tmp~regout\,
	datac => \dec_1|bit_2_ff|Q_tmp~regout\,
	datad => \dec_1|bit_1_ff|Q_tmp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~0_combout\);

\dig_0[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux6~0_combout\,
	oe => VCC,
	padio => ww_dig_0(0));

\dig_0[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux5~0_combout\,
	oe => VCC,
	padio => ww_dig_0(1));

\dig_0[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux4~0_combout\,
	oe => VCC,
	padio => ww_dig_0(2));

\dig_0[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux3~0_combout\,
	oe => VCC,
	padio => ww_dig_0(3));

\dig_0[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux2~0_combout\,
	oe => VCC,
	padio => ww_dig_0(4));

\dig_0[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux1~0_combout\,
	oe => VCC,
	padio => ww_dig_0(5));

\dig_0[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux0~0_combout\,
	oe => VCC,
	padio => ww_dig_0(6));

\dig_1[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dec_1|ALT_INV_Equal0~0_combout\,
	oe => VCC,
	padio => ww_dig_1(0));

\dig_1[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux12~0_combout\,
	oe => VCC,
	padio => ww_dig_1(1));

\dig_1[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux11~0_combout\,
	oe => VCC,
	padio => ww_dig_1(2));

\dig_1[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux10~0_combout\,
	oe => VCC,
	padio => ww_dig_1(3));

\dig_1[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux9~0_combout\,
	oe => VCC,
	padio => ww_dig_1(4));

\dig_1[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux8~0_combout\,
	oe => VCC,
	padio => ww_dig_1(5));

\dig_1[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux10~0_combout\,
	oe => VCC,
	padio => ww_dig_1(6));
END structure;


