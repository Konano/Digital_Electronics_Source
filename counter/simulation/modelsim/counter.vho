-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "05/17/2019 23:43:45"

-- 
-- Device: Altera EPM240T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	counter IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	mode : IN std_logic;
	clk_1m : IN std_logic;
	dig_0 : BUFFER std_logic_vector(6 DOWNTO 0);
	dig_1 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END counter;

-- Design Ports Information


ARCHITECTURE structure OF counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
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
SIGNAL \mode~combout\ : std_logic;
SIGNAL \clk_1m~combout\ : std_logic;
SIGNAL \timer|main:counter[12]~regout\ : std_logic;
SIGNAL \timer|Add0~0_combout\ : std_logic;
SIGNAL \timer|main:counter[17]~regout\ : std_logic;
SIGNAL \timer|Add0~55_combout\ : std_logic;
SIGNAL \timer|main:counter[11]~regout\ : std_logic;
SIGNAL \timer|Add0~57\ : std_logic;
SIGNAL \timer|Add0~57COUT1_169\ : std_logic;
SIGNAL \timer|Add0~62\ : std_logic;
SIGNAL \timer|Add0~62COUT1_170\ : std_logic;
SIGNAL \timer|Add0~65_combout\ : std_logic;
SIGNAL \timer|main:counter[13]~regout\ : std_logic;
SIGNAL \timer|Add0~67\ : std_logic;
SIGNAL \timer|Add0~67COUT1_171\ : std_logic;
SIGNAL \timer|Add0~70_combout\ : std_logic;
SIGNAL \timer|main:counter[14]~regout\ : std_logic;
SIGNAL \timer|Add0~72\ : std_logic;
SIGNAL \timer|Add0~72COUT1_172\ : std_logic;
SIGNAL \timer|Add0~75_combout\ : std_logic;
SIGNAL \timer|main:counter[15]~regout\ : std_logic;
SIGNAL \timer|Add0~77\ : std_logic;
SIGNAL \timer|Add0~80_combout\ : std_logic;
SIGNAL \timer|main:counter[16]~regout\ : std_logic;
SIGNAL \timer|Add0~82\ : std_logic;
SIGNAL \timer|Add0~82COUT1_173\ : std_logic;
SIGNAL \timer|Add0~85_combout\ : std_logic;
SIGNAL \timer|main:counter[19]~regout\ : std_logic;
SIGNAL \timer|Add0~87\ : std_logic;
SIGNAL \timer|Add0~87COUT1_174\ : std_logic;
SIGNAL \timer|Add0~90_combout\ : std_logic;
SIGNAL \timer|main:counter[18]~regout\ : std_logic;
SIGNAL \timer|Add0~92\ : std_logic;
SIGNAL \timer|Add0~92COUT1_175\ : std_logic;
SIGNAL \timer|Add0~95_combout\ : std_logic;
SIGNAL \timer|Equal0~5_combout\ : std_logic;
SIGNAL \timer|main:counter[23]~regout\ : std_logic;
SIGNAL \timer|Add0~97\ : std_logic;
SIGNAL \timer|Add0~97COUT1_176\ : std_logic;
SIGNAL \timer|Add0~100_combout\ : std_logic;
SIGNAL \timer|main:counter[20]~regout\ : std_logic;
SIGNAL \timer|Add0~102\ : std_logic;
SIGNAL \timer|Add0~105_combout\ : std_logic;
SIGNAL \timer|main:counter[21]~regout\ : std_logic;
SIGNAL \timer|Add0~107\ : std_logic;
SIGNAL \timer|Add0~107COUT1_177\ : std_logic;
SIGNAL \timer|Add0~110_combout\ : std_logic;
SIGNAL \timer|main:counter[22]~regout\ : std_logic;
SIGNAL \timer|Add0~112\ : std_logic;
SIGNAL \timer|Add0~112COUT1_178\ : std_logic;
SIGNAL \timer|Add0~115_combout\ : std_logic;
SIGNAL \timer|Equal0~6_combout\ : std_logic;
SIGNAL \timer|main:counter[31]~regout\ : std_logic;
SIGNAL \timer|Add0~117\ : std_logic;
SIGNAL \timer|Add0~117COUT1_179\ : std_logic;
SIGNAL \timer|Add0~120_combout\ : std_logic;
SIGNAL \timer|main:counter[24]~regout\ : std_logic;
SIGNAL \timer|Add0~122\ : std_logic;
SIGNAL \timer|Add0~122COUT1_180\ : std_logic;
SIGNAL \timer|Add0~125_combout\ : std_logic;
SIGNAL \timer|main:counter[25]~regout\ : std_logic;
SIGNAL \timer|Add0~127\ : std_logic;
SIGNAL \timer|Add0~130_combout\ : std_logic;
SIGNAL \timer|main:counter[26]~regout\ : std_logic;
SIGNAL \timer|Add0~132\ : std_logic;
SIGNAL \timer|Add0~132COUT1_181\ : std_logic;
SIGNAL \timer|Add0~135_combout\ : std_logic;
SIGNAL \timer|main:counter[27]~regout\ : std_logic;
SIGNAL \timer|Add0~137\ : std_logic;
SIGNAL \timer|Add0~137COUT1_182\ : std_logic;
SIGNAL \timer|Add0~140_combout\ : std_logic;
SIGNAL \timer|main:counter[28]~regout\ : std_logic;
SIGNAL \timer|Add0~142\ : std_logic;
SIGNAL \timer|Add0~142COUT1_183\ : std_logic;
SIGNAL \timer|Add0~145_combout\ : std_logic;
SIGNAL \timer|main:counter[29]~regout\ : std_logic;
SIGNAL \timer|Add0~147\ : std_logic;
SIGNAL \timer|Add0~147COUT1_184\ : std_logic;
SIGNAL \timer|Add0~150_combout\ : std_logic;
SIGNAL \timer|main:counter[30]~regout\ : std_logic;
SIGNAL \timer|Add0~152\ : std_logic;
SIGNAL \timer|Add0~155_combout\ : std_logic;
SIGNAL \timer|Equal0~8_combout\ : std_logic;
SIGNAL \timer|Equal0~7_combout\ : std_logic;
SIGNAL \timer|Equal0~9_combout\ : std_logic;
SIGNAL \timer|main:counter[0]~regout\ : std_logic;
SIGNAL \timer|Add0~2\ : std_logic;
SIGNAL \timer|Add0~10_combout\ : std_logic;
SIGNAL \timer|main:counter[1]~regout\ : std_logic;
SIGNAL \timer|Add0~12\ : std_logic;
SIGNAL \timer|Add0~12COUT1_161\ : std_logic;
SIGNAL \timer|Add0~5_combout\ : std_logic;
SIGNAL \timer|main:counter[2]~regout\ : std_logic;
SIGNAL \timer|Add0~7\ : std_logic;
SIGNAL \timer|Add0~7COUT1_162\ : std_logic;
SIGNAL \timer|Add0~15_combout\ : std_logic;
SIGNAL \timer|main:counter[3]~regout\ : std_logic;
SIGNAL \timer|Add0~17\ : std_logic;
SIGNAL \timer|Add0~17COUT1_163\ : std_logic;
SIGNAL \timer|Add0~20_combout\ : std_logic;
SIGNAL \timer|main:counter[4]~regout\ : std_logic;
SIGNAL \timer|Add0~22\ : std_logic;
SIGNAL \timer|Add0~22COUT1_164\ : std_logic;
SIGNAL \timer|Add0~25_combout\ : std_logic;
SIGNAL \timer|main:counter[5]~regout\ : std_logic;
SIGNAL \timer|Add0~27\ : std_logic;
SIGNAL \timer|Add0~30_combout\ : std_logic;
SIGNAL \timer|main:counter[6]~regout\ : std_logic;
SIGNAL \timer|Add0~32\ : std_logic;
SIGNAL \timer|Add0~32COUT1_165\ : std_logic;
SIGNAL \timer|Add0~35_combout\ : std_logic;
SIGNAL \timer|main:counter[7]~regout\ : std_logic;
SIGNAL \timer|Add0~37\ : std_logic;
SIGNAL \timer|Add0~37COUT1_166\ : std_logic;
SIGNAL \timer|Add0~40_combout\ : std_logic;
SIGNAL \timer|main:counter[8]~regout\ : std_logic;
SIGNAL \timer|Add0~42\ : std_logic;
SIGNAL \timer|Add0~42COUT1_167\ : std_logic;
SIGNAL \timer|Add0~45_combout\ : std_logic;
SIGNAL \timer|main:counter[9]~regout\ : std_logic;
SIGNAL \timer|Add0~47\ : std_logic;
SIGNAL \timer|Add0~47COUT1_168\ : std_logic;
SIGNAL \timer|Add0~50_combout\ : std_logic;
SIGNAL \timer|main:counter[10]~regout\ : std_logic;
SIGNAL \timer|Add0~52\ : std_logic;
SIGNAL \timer|Add0~60_combout\ : std_logic;
SIGNAL \timer|Equal0~3_combout\ : std_logic;
SIGNAL \timer|Equal0~0_combout\ : std_logic;
SIGNAL \timer|Equal0~1_combout\ : std_logic;
SIGNAL \timer|Equal0~2_combout\ : std_logic;
SIGNAL \timer|Equal0~4_combout\ : std_logic;
SIGNAL \timer|clk~regout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \db|main:count[0]~regout\ : std_logic;
SIGNAL \db|main:count[1]~regout\ : std_logic;
SIGNAL \db|Add0~0_combout\ : std_logic;
SIGNAL \db|main:count[3]~regout\ : std_logic;
SIGNAL \db|main:count[2]~regout\ : std_logic;
SIGNAL \db|main:count[0]~0_combout\ : std_logic;
SIGNAL \db|output~regout\ : std_logic;
SIGNAL \clk_dec_0~combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \dec_0|bit_1_ff|Q_tmp~regout\ : std_logic;
SIGNAL \dec_0|bit_2_ff|Q_tmp~regout\ : std_logic;
SIGNAL \dec_0|bit_3_ff|Q_tmp~regout\ : std_logic;
SIGNAL \dec_0|carry_ff|Q_tmp~regout\ : std_logic;
SIGNAL \dec_0|rst_in~combout\ : std_logic;
SIGNAL \dec_0|bit_0_ff|Q_tmp~regout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \clk_dec_1~combout\ : std_logic;
SIGNAL \dec_1|bit_2_ff|Q_tmp~regout\ : std_logic;
SIGNAL \dec_1|carry_ff|Q_tmp~regout\ : std_logic;
SIGNAL \dec_1|rst_in~combout\ : std_logic;
SIGNAL \dec_1|bit_0_ff|Q_tmp~regout\ : std_logic;
SIGNAL \dec_1|bit_1_ff|Q_tmp~regout\ : std_logic;
SIGNAL \dec_1|bit_3_ff|Q_tmp~regout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;

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
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux8~0_combout\ <= NOT \Mux8~0_combout\;
\ALT_INV_Mux9~0_combout\ <= NOT \Mux9~0_combout\;
\ALT_INV_Mux10~0_combout\ <= NOT \Mux10~0_combout\;
\ALT_INV_Mux11~0_combout\ <= NOT \Mux11~0_combout\;
\ALT_INV_Mux12~0_combout\ <= NOT \Mux12~0_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mode~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mode,
	combout => \mode~combout\);

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk_1m~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk_1m,
	combout => \clk_1m~combout\);

-- Location: LC_X5_Y2_N0
\timer|main:counter[12]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[12]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~60_combout\, , , VCC)

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
	datac => \timer|Add0~60_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[12]~regout\);

-- Location: LC_X4_Y3_N4
\timer|Add0~0\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~0_combout\ = (!\timer|main:counter[0]~regout\)
-- \timer|Add0~2\ = CARRY((\timer|main:counter[0]~regout\))

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
	combout => \timer|Add0~0_combout\,
	cout => \timer|Add0~2\);

-- Location: LC_X6_Y2_N2
\timer|main:counter[17]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[17]~regout\ = DFFEAS((((\timer|Add0~85_combout\))), GLOBAL(\clk_1m~combout\), VCC, , , , , , )

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
	datad => \timer|Add0~85_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[17]~regout\);

-- Location: LC_X5_Y3_N5
\timer|Add0~55\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~55_combout\ = (\timer|main:counter[11]~regout\ $ ((\timer|Add0~52\)))
-- \timer|Add0~57\ = CARRY(((!\timer|Add0~52\) # (!\timer|main:counter[11]~regout\)))
-- \timer|Add0~57COUT1_169\ = CARRY(((!\timer|Add0~52\) # (!\timer|main:counter[11]~regout\)))

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
	datab => \timer|main:counter[11]~regout\,
	cin => \timer|Add0~52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~55_combout\,
	cout0 => \timer|Add0~57\,
	cout1 => \timer|Add0~57COUT1_169\);

-- Location: LC_X5_Y4_N3
\timer|main:counter[11]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[11]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~55_combout\, , , VCC)

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
	datac => \timer|Add0~55_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[11]~regout\);

-- Location: LC_X5_Y3_N6
\timer|Add0~60\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~60_combout\ = (\timer|main:counter[12]~regout\ $ ((!(!\timer|Add0~52\ & \timer|Add0~57\) # (\timer|Add0~52\ & \timer|Add0~57COUT1_169\))))
-- \timer|Add0~62\ = CARRY(((\timer|main:counter[12]~regout\ & !\timer|Add0~57\)))
-- \timer|Add0~62COUT1_170\ = CARRY(((\timer|main:counter[12]~regout\ & !\timer|Add0~57COUT1_169\)))

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
	cin => \timer|Add0~52\,
	cin0 => \timer|Add0~57\,
	cin1 => \timer|Add0~57COUT1_169\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~60_combout\,
	cout0 => \timer|Add0~62\,
	cout1 => \timer|Add0~62COUT1_170\);

-- Location: LC_X5_Y3_N7
\timer|Add0~65\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~65_combout\ = (\timer|main:counter[13]~regout\ $ (((!\timer|Add0~52\ & \timer|Add0~62\) # (\timer|Add0~52\ & \timer|Add0~62COUT1_170\))))
-- \timer|Add0~67\ = CARRY(((!\timer|Add0~62\) # (!\timer|main:counter[13]~regout\)))
-- \timer|Add0~67COUT1_171\ = CARRY(((!\timer|Add0~62COUT1_170\) # (!\timer|main:counter[13]~regout\)))

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
	cin => \timer|Add0~52\,
	cin0 => \timer|Add0~62\,
	cin1 => \timer|Add0~62COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~65_combout\,
	cout0 => \timer|Add0~67\,
	cout1 => \timer|Add0~67COUT1_171\);

-- Location: LC_X5_Y2_N6
\timer|main:counter[13]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[13]~regout\ = DFFEAS((((\timer|Add0~65_combout\))), GLOBAL(\clk_1m~combout\), VCC, , , , , , )

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
	datad => \timer|Add0~65_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[13]~regout\);

-- Location: LC_X5_Y3_N8
\timer|Add0~70\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~70_combout\ = (\timer|main:counter[14]~regout\ $ ((!(!\timer|Add0~52\ & \timer|Add0~67\) # (\timer|Add0~52\ & \timer|Add0~67COUT1_171\))))
-- \timer|Add0~72\ = CARRY(((\timer|main:counter[14]~regout\ & !\timer|Add0~67\)))
-- \timer|Add0~72COUT1_172\ = CARRY(((\timer|main:counter[14]~regout\ & !\timer|Add0~67COUT1_171\)))

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
	cin => \timer|Add0~52\,
	cin0 => \timer|Add0~67\,
	cin1 => \timer|Add0~67COUT1_171\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~70_combout\,
	cout0 => \timer|Add0~72\,
	cout1 => \timer|Add0~72COUT1_172\);

-- Location: LC_X5_Y4_N5
\timer|main:counter[14]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[14]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~70_combout\, , , VCC)

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
	datac => \timer|Add0~70_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[14]~regout\);

-- Location: LC_X5_Y3_N9
\timer|Add0~75\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~75_combout\ = (\timer|main:counter[15]~regout\ $ (((!\timer|Add0~52\ & \timer|Add0~72\) # (\timer|Add0~52\ & \timer|Add0~72COUT1_172\))))
-- \timer|Add0~77\ = CARRY(((!\timer|Add0~72COUT1_172\) # (!\timer|main:counter[15]~regout\)))

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
	cin => \timer|Add0~52\,
	cin0 => \timer|Add0~72\,
	cin1 => \timer|Add0~72COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~75_combout\,
	cout => \timer|Add0~77\);

-- Location: LC_X5_Y2_N2
\timer|main:counter[15]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[15]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~75_combout\, , , VCC)

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
	datac => \timer|Add0~75_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[15]~regout\);

-- Location: LC_X6_Y3_N0
\timer|Add0~80\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~80_combout\ = (\timer|main:counter[16]~regout\ $ ((!\timer|Add0~77\)))
-- \timer|Add0~82\ = CARRY(((\timer|main:counter[16]~regout\ & !\timer|Add0~77\)))
-- \timer|Add0~82COUT1_173\ = CARRY(((\timer|main:counter[16]~regout\ & !\timer|Add0~77\)))

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
	cin => \timer|Add0~77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~80_combout\,
	cout0 => \timer|Add0~82\,
	cout1 => \timer|Add0~82COUT1_173\);

-- Location: LC_X6_Y2_N8
\timer|main:counter[16]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[16]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~80_combout\, , , VCC)

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
	datac => \timer|Add0~80_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[16]~regout\);

-- Location: LC_X6_Y3_N1
\timer|Add0~85\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~85_combout\ = (\timer|main:counter[17]~regout\ $ (((!\timer|Add0~77\ & \timer|Add0~82\) # (\timer|Add0~77\ & \timer|Add0~82COUT1_173\))))
-- \timer|Add0~87\ = CARRY(((!\timer|Add0~82\) # (!\timer|main:counter[17]~regout\)))
-- \timer|Add0~87COUT1_174\ = CARRY(((!\timer|Add0~82COUT1_173\) # (!\timer|main:counter[17]~regout\)))

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
	cin => \timer|Add0~77\,
	cin0 => \timer|Add0~82\,
	cin1 => \timer|Add0~82COUT1_173\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~85_combout\,
	cout0 => \timer|Add0~87\,
	cout1 => \timer|Add0~87COUT1_174\);

-- Location: LC_X6_Y2_N9
\timer|main:counter[19]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[19]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~95_combout\, , , VCC)

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
	regout => \timer|main:counter[19]~regout\);

-- Location: LC_X6_Y3_N2
\timer|Add0~90\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~90_combout\ = (\timer|main:counter[18]~regout\ $ ((!(!\timer|Add0~77\ & \timer|Add0~87\) # (\timer|Add0~77\ & \timer|Add0~87COUT1_174\))))
-- \timer|Add0~92\ = CARRY(((\timer|main:counter[18]~regout\ & !\timer|Add0~87\)))
-- \timer|Add0~92COUT1_175\ = CARRY(((\timer|main:counter[18]~regout\ & !\timer|Add0~87COUT1_174\)))

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
	cin => \timer|Add0~77\,
	cin0 => \timer|Add0~87\,
	cin1 => \timer|Add0~87COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~90_combout\,
	cout0 => \timer|Add0~92\,
	cout1 => \timer|Add0~92COUT1_175\);

-- Location: LC_X6_Y2_N1
\timer|main:counter[18]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[18]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~90_combout\, , , VCC)

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
	datac => \timer|Add0~90_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[18]~regout\);

-- Location: LC_X6_Y3_N3
\timer|Add0~95\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~95_combout\ = (\timer|main:counter[19]~regout\ $ (((!\timer|Add0~77\ & \timer|Add0~92\) # (\timer|Add0~77\ & \timer|Add0~92COUT1_175\))))
-- \timer|Add0~97\ = CARRY(((!\timer|Add0~92\) # (!\timer|main:counter[19]~regout\)))
-- \timer|Add0~97COUT1_176\ = CARRY(((!\timer|Add0~92COUT1_175\) # (!\timer|main:counter[19]~regout\)))

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
	cin => \timer|Add0~77\,
	cin0 => \timer|Add0~92\,
	cin1 => \timer|Add0~92COUT1_175\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~95_combout\,
	cout0 => \timer|Add0~97\,
	cout1 => \timer|Add0~97COUT1_176\);

-- Location: LC_X3_Y3_N6
\timer|Equal0~5\ : maxii_lcell
-- Equation(s):
-- \timer|Equal0~5_combout\ = (!\timer|Add0~85_combout\ & (!\timer|Add0~95_combout\ & (!\timer|Add0~80_combout\ & !\timer|Add0~90_combout\)))

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
	dataa => \timer|Add0~85_combout\,
	datab => \timer|Add0~95_combout\,
	datac => \timer|Add0~80_combout\,
	datad => \timer|Add0~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Equal0~5_combout\);

-- Location: LC_X6_Y2_N5
\timer|main:counter[23]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[23]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~115_combout\, , , VCC)

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
	regout => \timer|main:counter[23]~regout\);

-- Location: LC_X6_Y3_N4
\timer|Add0~100\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~100_combout\ = (\timer|main:counter[20]~regout\ $ ((!(!\timer|Add0~77\ & \timer|Add0~97\) # (\timer|Add0~77\ & \timer|Add0~97COUT1_176\))))
-- \timer|Add0~102\ = CARRY(((\timer|main:counter[20]~regout\ & !\timer|Add0~97COUT1_176\)))

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
	cin => \timer|Add0~77\,
	cin0 => \timer|Add0~97\,
	cin1 => \timer|Add0~97COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~100_combout\,
	cout => \timer|Add0~102\);

-- Location: LC_X6_Y2_N0
\timer|main:counter[20]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[20]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~100_combout\, , , VCC)

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
	datac => \timer|Add0~100_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[20]~regout\);

-- Location: LC_X6_Y3_N5
\timer|Add0~105\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~105_combout\ = \timer|main:counter[21]~regout\ $ ((((\timer|Add0~102\))))
-- \timer|Add0~107\ = CARRY(((!\timer|Add0~102\)) # (!\timer|main:counter[21]~regout\))
-- \timer|Add0~107COUT1_177\ = CARRY(((!\timer|Add0~102\)) # (!\timer|main:counter[21]~regout\))

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
	dataa => \timer|main:counter[21]~regout\,
	cin => \timer|Add0~102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~105_combout\,
	cout0 => \timer|Add0~107\,
	cout1 => \timer|Add0~107COUT1_177\);

-- Location: LC_X6_Y4_N5
\timer|main:counter[21]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[21]~regout\ = DFFEAS((((\timer|Add0~105_combout\))), GLOBAL(\clk_1m~combout\), VCC, , , , , , )

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
	regout => \timer|main:counter[21]~regout\);

-- Location: LC_X6_Y3_N6
\timer|Add0~110\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~110_combout\ = (\timer|main:counter[22]~regout\ $ ((!(!\timer|Add0~102\ & \timer|Add0~107\) # (\timer|Add0~102\ & \timer|Add0~107COUT1_177\))))
-- \timer|Add0~112\ = CARRY(((\timer|main:counter[22]~regout\ & !\timer|Add0~107\)))
-- \timer|Add0~112COUT1_178\ = CARRY(((\timer|main:counter[22]~regout\ & !\timer|Add0~107COUT1_177\)))

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
	cin => \timer|Add0~102\,
	cin0 => \timer|Add0~107\,
	cin1 => \timer|Add0~107COUT1_177\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~110_combout\,
	cout0 => \timer|Add0~112\,
	cout1 => \timer|Add0~112COUT1_178\);

-- Location: LC_X6_Y2_N3
\timer|main:counter[22]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[22]~regout\ = DFFEAS((((\timer|Add0~110_combout\))), GLOBAL(\clk_1m~combout\), VCC, , , , , , )

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
	datad => \timer|Add0~110_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[22]~regout\);

-- Location: LC_X6_Y3_N7
\timer|Add0~115\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~115_combout\ = (\timer|main:counter[23]~regout\ $ (((!\timer|Add0~102\ & \timer|Add0~112\) # (\timer|Add0~102\ & \timer|Add0~112COUT1_178\))))
-- \timer|Add0~117\ = CARRY(((!\timer|Add0~112\) # (!\timer|main:counter[23]~regout\)))
-- \timer|Add0~117COUT1_179\ = CARRY(((!\timer|Add0~112COUT1_178\) # (!\timer|main:counter[23]~regout\)))

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
	datab => \timer|main:counter[23]~regout\,
	cin => \timer|Add0~102\,
	cin0 => \timer|Add0~112\,
	cin1 => \timer|Add0~112COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~115_combout\,
	cout0 => \timer|Add0~117\,
	cout1 => \timer|Add0~117COUT1_179\);

-- Location: LC_X3_Y3_N7
\timer|Equal0~6\ : maxii_lcell
-- Equation(s):
-- \timer|Equal0~6_combout\ = (!\timer|Add0~115_combout\ & (!\timer|Add0~110_combout\ & (!\timer|Add0~100_combout\ & !\timer|Add0~105_combout\)))

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
	dataa => \timer|Add0~115_combout\,
	datab => \timer|Add0~110_combout\,
	datac => \timer|Add0~100_combout\,
	datad => \timer|Add0~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Equal0~6_combout\);

-- Location: LC_X7_Y2_N5
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

-- Location: LC_X6_Y3_N8
\timer|Add0~120\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~120_combout\ = \timer|main:counter[24]~regout\ $ ((((!(!\timer|Add0~102\ & \timer|Add0~117\) # (\timer|Add0~102\ & \timer|Add0~117COUT1_179\)))))
-- \timer|Add0~122\ = CARRY((\timer|main:counter[24]~regout\ & ((!\timer|Add0~117\))))
-- \timer|Add0~122COUT1_180\ = CARRY((\timer|main:counter[24]~regout\ & ((!\timer|Add0~117COUT1_179\))))

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
	dataa => \timer|main:counter[24]~regout\,
	cin => \timer|Add0~102\,
	cin0 => \timer|Add0~117\,
	cin1 => \timer|Add0~117COUT1_179\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~120_combout\,
	cout0 => \timer|Add0~122\,
	cout1 => \timer|Add0~122COUT1_180\);

-- Location: LC_X6_Y2_N7
\timer|main:counter[24]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[24]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~120_combout\, , , VCC)

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
	datac => \timer|Add0~120_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[24]~regout\);

-- Location: LC_X6_Y3_N9
\timer|Add0~125\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~125_combout\ = \timer|main:counter[25]~regout\ $ (((((!\timer|Add0~102\ & \timer|Add0~122\) # (\timer|Add0~102\ & \timer|Add0~122COUT1_180\)))))
-- \timer|Add0~127\ = CARRY(((!\timer|Add0~122COUT1_180\)) # (!\timer|main:counter[25]~regout\))

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
	dataa => \timer|main:counter[25]~regout\,
	cin => \timer|Add0~102\,
	cin0 => \timer|Add0~122\,
	cin1 => \timer|Add0~122COUT1_180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~125_combout\,
	cout => \timer|Add0~127\);

-- Location: LC_X6_Y2_N6
\timer|main:counter[25]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[25]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~125_combout\, , , VCC)

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
	datac => \timer|Add0~125_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[25]~regout\);

-- Location: LC_X7_Y3_N0
\timer|Add0~130\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~130_combout\ = \timer|main:counter[26]~regout\ $ ((((!\timer|Add0~127\))))
-- \timer|Add0~132\ = CARRY((\timer|main:counter[26]~regout\ & ((!\timer|Add0~127\))))
-- \timer|Add0~132COUT1_181\ = CARRY((\timer|main:counter[26]~regout\ & ((!\timer|Add0~127\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer|main:counter[26]~regout\,
	cin => \timer|Add0~127\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~130_combout\,
	cout0 => \timer|Add0~132\,
	cout1 => \timer|Add0~132COUT1_181\);

-- Location: LC_X7_Y3_N6
\timer|main:counter[26]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[26]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~130_combout\, , , VCC)

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
	datac => \timer|Add0~130_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[26]~regout\);

-- Location: LC_X7_Y3_N1
\timer|Add0~135\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~135_combout\ = \timer|main:counter[27]~regout\ $ (((((!\timer|Add0~127\ & \timer|Add0~132\) # (\timer|Add0~127\ & \timer|Add0~132COUT1_181\)))))
-- \timer|Add0~137\ = CARRY(((!\timer|Add0~132\)) # (!\timer|main:counter[27]~regout\))
-- \timer|Add0~137COUT1_182\ = CARRY(((!\timer|Add0~132COUT1_181\)) # (!\timer|main:counter[27]~regout\))

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
	cin => \timer|Add0~127\,
	cin0 => \timer|Add0~132\,
	cin1 => \timer|Add0~132COUT1_181\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~135_combout\,
	cout0 => \timer|Add0~137\,
	cout1 => \timer|Add0~137COUT1_182\);

-- Location: LC_X7_Y3_N8
\timer|main:counter[27]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[27]~regout\ = DFFEAS((((\timer|Add0~135_combout\))), GLOBAL(\clk_1m~combout\), VCC, , , , , , )

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
	datad => \timer|Add0~135_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[27]~regout\);

-- Location: LC_X7_Y3_N2
\timer|Add0~140\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~140_combout\ = (\timer|main:counter[28]~regout\ $ ((!(!\timer|Add0~127\ & \timer|Add0~137\) # (\timer|Add0~127\ & \timer|Add0~137COUT1_182\))))
-- \timer|Add0~142\ = CARRY(((\timer|main:counter[28]~regout\ & !\timer|Add0~137\)))
-- \timer|Add0~142COUT1_183\ = CARRY(((\timer|main:counter[28]~regout\ & !\timer|Add0~137COUT1_182\)))

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
	datab => \timer|main:counter[28]~regout\,
	cin => \timer|Add0~127\,
	cin0 => \timer|Add0~137\,
	cin1 => \timer|Add0~137COUT1_182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~140_combout\,
	cout0 => \timer|Add0~142\,
	cout1 => \timer|Add0~142COUT1_183\);

-- Location: LC_X7_Y3_N9
\timer|main:counter[28]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[28]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~140_combout\, , , VCC)

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
	datac => \timer|Add0~140_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[28]~regout\);

-- Location: LC_X7_Y3_N3
\timer|Add0~145\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~145_combout\ = (\timer|main:counter[29]~regout\ $ (((!\timer|Add0~127\ & \timer|Add0~142\) # (\timer|Add0~127\ & \timer|Add0~142COUT1_183\))))
-- \timer|Add0~147\ = CARRY(((!\timer|Add0~142\) # (!\timer|main:counter[29]~regout\)))
-- \timer|Add0~147COUT1_184\ = CARRY(((!\timer|Add0~142COUT1_183\) # (!\timer|main:counter[29]~regout\)))

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
	cin => \timer|Add0~127\,
	cin0 => \timer|Add0~142\,
	cin1 => \timer|Add0~142COUT1_183\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~145_combout\,
	cout0 => \timer|Add0~147\,
	cout1 => \timer|Add0~147COUT1_184\);

-- Location: LC_X7_Y2_N4
\timer|main:counter[29]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[29]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~145_combout\, , , VCC)

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
	datac => \timer|Add0~145_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[29]~regout\);

-- Location: LC_X7_Y3_N4
\timer|Add0~150\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~150_combout\ = (\timer|main:counter[30]~regout\ $ ((!(!\timer|Add0~127\ & \timer|Add0~147\) # (\timer|Add0~127\ & \timer|Add0~147COUT1_184\))))
-- \timer|Add0~152\ = CARRY(((\timer|main:counter[30]~regout\ & !\timer|Add0~147COUT1_184\)))

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
	cin => \timer|Add0~127\,
	cin0 => \timer|Add0~147\,
	cin1 => \timer|Add0~147COUT1_184\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~150_combout\,
	cout => \timer|Add0~152\);

-- Location: LC_X7_Y2_N2
\timer|main:counter[30]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[30]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~150_combout\, , , VCC)

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
	datac => \timer|Add0~150_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[30]~regout\);

-- Location: LC_X7_Y3_N5
\timer|Add0~155\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~155_combout\ = ((\timer|Add0~152\ $ (\timer|main:counter[31]~regout\)))

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
	cin => \timer|Add0~152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~155_combout\);

-- Location: LC_X7_Y3_N7
\timer|Equal0~8\ : maxii_lcell
-- Equation(s):
-- \timer|Equal0~8_combout\ = (!\timer|Add0~155_combout\ & (!\timer|Add0~140_combout\ & (!\timer|Add0~150_combout\ & !\timer|Add0~145_combout\)))

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
	datab => \timer|Add0~140_combout\,
	datac => \timer|Add0~150_combout\,
	datad => \timer|Add0~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Equal0~8_combout\);

-- Location: LC_X3_Y3_N2
\timer|Equal0~7\ : maxii_lcell
-- Equation(s):
-- \timer|Equal0~7_combout\ = (!\timer|Add0~120_combout\ & (!\timer|Add0~125_combout\ & (!\timer|Add0~135_combout\ & !\timer|Add0~130_combout\)))

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
	dataa => \timer|Add0~120_combout\,
	datab => \timer|Add0~125_combout\,
	datac => \timer|Add0~135_combout\,
	datad => \timer|Add0~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Equal0~7_combout\);

-- Location: LC_X3_Y3_N8
\timer|Equal0~9\ : maxii_lcell
-- Equation(s):
-- \timer|Equal0~9_combout\ = (\timer|Equal0~5_combout\ & (\timer|Equal0~6_combout\ & (\timer|Equal0~8_combout\ & \timer|Equal0~7_combout\)))

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
	datab => \timer|Equal0~6_combout\,
	datac => \timer|Equal0~8_combout\,
	datad => \timer|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Equal0~9_combout\);

-- Location: LC_X3_Y3_N1
\timer|main:counter[0]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[0]~regout\ = DFFEAS(((\timer|Add0~0_combout\ & ((!\timer|Equal0~9_combout\) # (!\timer|Equal0~4_combout\)))), GLOBAL(\clk_1m~combout\), VCC, , , , , , )

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
	datab => \timer|Add0~0_combout\,
	datac => \timer|Equal0~4_combout\,
	datad => \timer|Equal0~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[0]~regout\);

-- Location: LC_X4_Y3_N5
\timer|Add0~10\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~10_combout\ = (\timer|main:counter[1]~regout\ $ ((\timer|Add0~2\)))
-- \timer|Add0~12\ = CARRY(((!\timer|Add0~2\) # (!\timer|main:counter[1]~regout\)))
-- \timer|Add0~12COUT1_161\ = CARRY(((!\timer|Add0~2\) # (!\timer|main:counter[1]~regout\)))

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
	cin => \timer|Add0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~10_combout\,
	cout0 => \timer|Add0~12\,
	cout1 => \timer|Add0~12COUT1_161\);

-- Location: LC_X4_Y3_N2
\timer|main:counter[1]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[1]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~10_combout\, , , VCC)

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
	datac => \timer|Add0~10_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[1]~regout\);

-- Location: LC_X4_Y3_N6
\timer|Add0~5\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~5_combout\ = \timer|main:counter[2]~regout\ $ ((((!(!\timer|Add0~2\ & \timer|Add0~12\) # (\timer|Add0~2\ & \timer|Add0~12COUT1_161\)))))
-- \timer|Add0~7\ = CARRY((\timer|main:counter[2]~regout\ & ((!\timer|Add0~12\))))
-- \timer|Add0~7COUT1_162\ = CARRY((\timer|main:counter[2]~regout\ & ((!\timer|Add0~12COUT1_161\))))

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
	dataa => \timer|main:counter[2]~regout\,
	cin => \timer|Add0~2\,
	cin0 => \timer|Add0~12\,
	cin1 => \timer|Add0~12COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~5_combout\,
	cout0 => \timer|Add0~7\,
	cout1 => \timer|Add0~7COUT1_162\);

-- Location: LC_X3_Y3_N5
\timer|main:counter[2]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[2]~regout\ = DFFEAS((\timer|Add0~5_combout\ & (((!\timer|Equal0~9_combout\) # (!\timer|Equal0~4_combout\)))), GLOBAL(\clk_1m~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~combout\,
	dataa => \timer|Add0~5_combout\,
	datac => \timer|Equal0~4_combout\,
	datad => \timer|Equal0~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[2]~regout\);

-- Location: LC_X4_Y3_N7
\timer|Add0~15\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~15_combout\ = (\timer|main:counter[3]~regout\ $ (((!\timer|Add0~2\ & \timer|Add0~7\) # (\timer|Add0~2\ & \timer|Add0~7COUT1_162\))))
-- \timer|Add0~17\ = CARRY(((!\timer|Add0~7\) # (!\timer|main:counter[3]~regout\)))
-- \timer|Add0~17COUT1_163\ = CARRY(((!\timer|Add0~7COUT1_162\) # (!\timer|main:counter[3]~regout\)))

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
	cin => \timer|Add0~2\,
	cin0 => \timer|Add0~7\,
	cin1 => \timer|Add0~7COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~15_combout\,
	cout0 => \timer|Add0~17\,
	cout1 => \timer|Add0~17COUT1_163\);

-- Location: LC_X4_Y3_N1
\timer|main:counter[3]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[3]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~15_combout\, , , VCC)

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
	datac => \timer|Add0~15_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[3]~regout\);

-- Location: LC_X4_Y3_N8
\timer|Add0~20\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~20_combout\ = \timer|main:counter[4]~regout\ $ ((((!(!\timer|Add0~2\ & \timer|Add0~17\) # (\timer|Add0~2\ & \timer|Add0~17COUT1_163\)))))
-- \timer|Add0~22\ = CARRY((\timer|main:counter[4]~regout\ & ((!\timer|Add0~17\))))
-- \timer|Add0~22COUT1_164\ = CARRY((\timer|main:counter[4]~regout\ & ((!\timer|Add0~17COUT1_163\))))

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
	dataa => \timer|main:counter[4]~regout\,
	cin => \timer|Add0~2\,
	cin0 => \timer|Add0~17\,
	cin1 => \timer|Add0~17COUT1_163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~20_combout\,
	cout0 => \timer|Add0~22\,
	cout1 => \timer|Add0~22COUT1_164\);

-- Location: LC_X4_Y3_N3
\timer|main:counter[4]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[4]~regout\ = DFFEAS((((\timer|Add0~20_combout\))), GLOBAL(\clk_1m~combout\), VCC, , , , , , )

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
	datad => \timer|Add0~20_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[4]~regout\);

-- Location: LC_X4_Y3_N9
\timer|Add0~25\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~25_combout\ = (\timer|main:counter[5]~regout\ $ (((!\timer|Add0~2\ & \timer|Add0~22\) # (\timer|Add0~2\ & \timer|Add0~22COUT1_164\))))
-- \timer|Add0~27\ = CARRY(((!\timer|Add0~22COUT1_164\) # (!\timer|main:counter[5]~regout\)))

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
	cin => \timer|Add0~2\,
	cin0 => \timer|Add0~22\,
	cin1 => \timer|Add0~22COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~25_combout\,
	cout => \timer|Add0~27\);

-- Location: LC_X2_Y3_N0
\timer|main:counter[5]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[5]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~25_combout\, , , VCC)

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
	datac => \timer|Add0~25_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[5]~regout\);

-- Location: LC_X5_Y3_N0
\timer|Add0~30\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~30_combout\ = (\timer|main:counter[6]~regout\ $ ((!\timer|Add0~27\)))
-- \timer|Add0~32\ = CARRY(((\timer|main:counter[6]~regout\ & !\timer|Add0~27\)))
-- \timer|Add0~32COUT1_165\ = CARRY(((\timer|main:counter[6]~regout\ & !\timer|Add0~27\)))

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
	cin => \timer|Add0~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~30_combout\,
	cout0 => \timer|Add0~32\,
	cout1 => \timer|Add0~32COUT1_165\);

-- Location: LC_X5_Y2_N8
\timer|main:counter[6]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[6]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~30_combout\, , , VCC)

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
	datac => \timer|Add0~30_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[6]~regout\);

-- Location: LC_X5_Y3_N1
\timer|Add0~35\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~35_combout\ = (\timer|main:counter[7]~regout\ $ (((!\timer|Add0~27\ & \timer|Add0~32\) # (\timer|Add0~27\ & \timer|Add0~32COUT1_165\))))
-- \timer|Add0~37\ = CARRY(((!\timer|Add0~32\) # (!\timer|main:counter[7]~regout\)))
-- \timer|Add0~37COUT1_166\ = CARRY(((!\timer|Add0~32COUT1_165\) # (!\timer|main:counter[7]~regout\)))

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
	cin => \timer|Add0~27\,
	cin0 => \timer|Add0~32\,
	cin1 => \timer|Add0~32COUT1_165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~35_combout\,
	cout0 => \timer|Add0~37\,
	cout1 => \timer|Add0~37COUT1_166\);

-- Location: LC_X5_Y2_N3
\timer|main:counter[7]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[7]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~35_combout\, , , VCC)

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
	datac => \timer|Add0~35_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[7]~regout\);

-- Location: LC_X5_Y3_N2
\timer|Add0~40\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~40_combout\ = (\timer|main:counter[8]~regout\ $ ((!(!\timer|Add0~27\ & \timer|Add0~37\) # (\timer|Add0~27\ & \timer|Add0~37COUT1_166\))))
-- \timer|Add0~42\ = CARRY(((\timer|main:counter[8]~regout\ & !\timer|Add0~37\)))
-- \timer|Add0~42COUT1_167\ = CARRY(((\timer|main:counter[8]~regout\ & !\timer|Add0~37COUT1_166\)))

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
	cin => \timer|Add0~27\,
	cin0 => \timer|Add0~37\,
	cin1 => \timer|Add0~37COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~40_combout\,
	cout0 => \timer|Add0~42\,
	cout1 => \timer|Add0~42COUT1_167\);

-- Location: LC_X2_Y3_N6
\timer|main:counter[8]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[8]~regout\ = DFFEAS((((\timer|Add0~40_combout\))), GLOBAL(\clk_1m~combout\), VCC, , , , , , )

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
	datad => \timer|Add0~40_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[8]~regout\);

-- Location: LC_X5_Y3_N3
\timer|Add0~45\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~45_combout\ = (\timer|main:counter[9]~regout\ $ (((!\timer|Add0~27\ & \timer|Add0~42\) # (\timer|Add0~27\ & \timer|Add0~42COUT1_167\))))
-- \timer|Add0~47\ = CARRY(((!\timer|Add0~42\) # (!\timer|main:counter[9]~regout\)))
-- \timer|Add0~47COUT1_168\ = CARRY(((!\timer|Add0~42COUT1_167\) # (!\timer|main:counter[9]~regout\)))

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
	datab => \timer|main:counter[9]~regout\,
	cin => \timer|Add0~27\,
	cin0 => \timer|Add0~42\,
	cin1 => \timer|Add0~42COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~45_combout\,
	cout0 => \timer|Add0~47\,
	cout1 => \timer|Add0~47COUT1_168\);

-- Location: LC_X5_Y4_N2
\timer|main:counter[9]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[9]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~45_combout\, , , VCC)

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
	datac => \timer|Add0~45_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[9]~regout\);

-- Location: LC_X5_Y3_N4
\timer|Add0~50\ : maxii_lcell
-- Equation(s):
-- \timer|Add0~50_combout\ = (\timer|main:counter[10]~regout\ $ ((!(!\timer|Add0~27\ & \timer|Add0~47\) # (\timer|Add0~27\ & \timer|Add0~47COUT1_168\))))
-- \timer|Add0~52\ = CARRY(((\timer|main:counter[10]~regout\ & !\timer|Add0~47COUT1_168\)))

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
	datab => \timer|main:counter[10]~regout\,
	cin => \timer|Add0~27\,
	cin0 => \timer|Add0~47\,
	cin1 => \timer|Add0~47COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Add0~50_combout\,
	cout => \timer|Add0~52\);

-- Location: LC_X5_Y2_N7
\timer|main:counter[10]\ : maxii_lcell
-- Equation(s):
-- \timer|main:counter[10]~regout\ = DFFEAS(GND, GLOBAL(\clk_1m~combout\), VCC, , , \timer|Add0~50_combout\, , , VCC)

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
	datac => \timer|Add0~50_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timer|main:counter[10]~regout\);

-- Location: LC_X4_Y3_N0
\timer|Equal0~3\ : maxii_lcell
-- Equation(s):
-- \timer|Equal0~3_combout\ = (!\timer|Add0~60_combout\ & (!\timer|Add0~70_combout\ & (!\timer|Add0~75_combout\ & !\timer|Add0~65_combout\)))

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
	dataa => \timer|Add0~60_combout\,
	datab => \timer|Add0~70_combout\,
	datac => \timer|Add0~75_combout\,
	datad => \timer|Add0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Equal0~3_combout\);

-- Location: LC_X4_Y4_N6
\timer|Equal0~0\ : maxii_lcell
-- Equation(s):
-- \timer|Equal0~0_combout\ = (\timer|Add0~0_combout\ & (!\timer|Add0~15_combout\ & (\timer|Add0~5_combout\ & !\timer|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timer|Add0~0_combout\,
	datab => \timer|Add0~15_combout\,
	datac => \timer|Add0~5_combout\,
	datad => \timer|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Equal0~0_combout\);

-- Location: LC_X3_Y3_N4
\timer|Equal0~1\ : maxii_lcell
-- Equation(s):
-- \timer|Equal0~1_combout\ = (!\timer|Add0~20_combout\ & (!\timer|Add0~25_combout\ & (!\timer|Add0~35_combout\ & !\timer|Add0~30_combout\)))

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
	dataa => \timer|Add0~20_combout\,
	datab => \timer|Add0~25_combout\,
	datac => \timer|Add0~35_combout\,
	datad => \timer|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Equal0~1_combout\);

-- Location: LC_X3_Y3_N3
\timer|Equal0~2\ : maxii_lcell
-- Equation(s):
-- \timer|Equal0~2_combout\ = (!\timer|Add0~55_combout\ & (!\timer|Add0~50_combout\ & (!\timer|Add0~45_combout\ & !\timer|Add0~40_combout\)))

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
	dataa => \timer|Add0~55_combout\,
	datab => \timer|Add0~50_combout\,
	datac => \timer|Add0~45_combout\,
	datad => \timer|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Equal0~2_combout\);

-- Location: LC_X3_Y3_N0
\timer|Equal0~4\ : maxii_lcell
-- Equation(s):
-- \timer|Equal0~4_combout\ = (\timer|Equal0~3_combout\ & (\timer|Equal0~0_combout\ & (\timer|Equal0~1_combout\ & \timer|Equal0~2_combout\)))

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
	datab => \timer|Equal0~0_combout\,
	datac => \timer|Equal0~1_combout\,
	datad => \timer|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timer|Equal0~4_combout\);

-- Location: LC_X3_Y3_N9
\timer|clk\ : maxii_lcell
-- Equation(s):
-- \timer|clk~regout\ = DFFEAS((\timer|clk~regout\ $ (((\timer|Equal0~4_combout\ & \timer|Equal0~9_combout\)))), GLOBAL(\clk_1m~combout\), VCC, , , , , , )

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

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: LC_X2_Y1_N9
\db|main:count[0]\ : maxii_lcell
-- Equation(s):
-- \db|main:count[0]~regout\ = DFFEAS(((\clk~combout\ & (!\db|main:count[0]~regout\ & !\db|main:count[0]~0_combout\))), GLOBAL(\clk_1m~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~combout\,
	datab => \clk~combout\,
	datac => \db|main:count[0]~regout\,
	datad => \db|main:count[0]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \db|main:count[0]~regout\);

-- Location: LC_X2_Y1_N4
\db|main:count[1]\ : maxii_lcell
-- Equation(s):
-- \db|main:count[1]~regout\ = DFFEAS(((!\db|main:count[0]~0_combout\ & (\db|main:count[1]~regout\ $ (!\db|main:count[0]~regout\)))) # (!\clk~combout\), GLOBAL(\clk_1m~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55d7",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~combout\,
	dataa => \clk~combout\,
	datab => \db|main:count[1]~regout\,
	datac => \db|main:count[0]~regout\,
	datad => \db|main:count[0]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \db|main:count[1]~regout\);

-- Location: LC_X2_Y1_N2
\db|Add0~0\ : maxii_lcell
-- Equation(s):
-- \db|Add0~0_combout\ = (((!\db|main:count[1]~regout\ & !\db|main:count[0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \db|main:count[1]~regout\,
	datad => \db|main:count[0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \db|Add0~0_combout\);

-- Location: LC_X2_Y1_N3
\db|main:count[3]\ : maxii_lcell
-- Equation(s):
-- \db|main:count[3]~regout\ = DFFEAS(((\db|main:count[3]~regout\ & ((\db|main:count[2]~regout\) # (!\db|Add0~0_combout\)))) # (!\clk~combout\), GLOBAL(\clk_1m~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b3bb",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~combout\,
	dataa => \db|main:count[3]~regout\,
	datab => \clk~combout\,
	datac => \db|main:count[2]~regout\,
	datad => \db|Add0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \db|main:count[3]~regout\);

-- Location: LC_X2_Y1_N6
\db|main:count[2]\ : maxii_lcell
-- Equation(s):
-- \db|main:count[2]~regout\ = DFFEAS((\clk~combout\ & ((\db|main:count[2]~regout\ & ((!\db|Add0~0_combout\))) # (!\db|main:count[2]~regout\ & (\db|main:count[3]~regout\ & \db|Add0~0_combout\)))), GLOBAL(\clk_1m~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "08c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~combout\,
	dataa => \db|main:count[3]~regout\,
	datab => \clk~combout\,
	datac => \db|main:count[2]~regout\,
	datad => \db|Add0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \db|main:count[2]~regout\);

-- Location: LC_X2_Y1_N8
\db|main:count[0]~0\ : maxii_lcell
-- Equation(s):
-- \db|main:count[0]~0_combout\ = (!\db|main:count[2]~regout\ & (!\db|main:count[0]~regout\ & (!\db|main:count[1]~regout\ & !\db|main:count[3]~regout\)))

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
	dataa => \db|main:count[2]~regout\,
	datab => \db|main:count[0]~regout\,
	datac => \db|main:count[1]~regout\,
	datad => \db|main:count[3]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \db|main:count[0]~0_combout\);

-- Location: LC_X2_Y1_N5
\db|output\ : maxii_lcell
-- Equation(s):
-- \db|output~regout\ = DFFEAS(((\clk~combout\ & ((\db|output~regout\) # (\db|main:count[0]~0_combout\)))), GLOBAL(\clk_1m~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_1m~combout\,
	datab => \clk~combout\,
	datac => \db|output~regout\,
	datad => \db|main:count[0]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \db|output~regout\);

-- Location: LC_X2_Y3_N7
clk_dec_0 : maxii_lcell
-- Equation(s):
-- \clk_dec_0~combout\ = LCELL((\mode~combout\ & (((\timer|clk~regout\)))) # (!\mode~combout\ & (((\db|output~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mode~combout\,
	datac => \timer|clk~regout\,
	datad => \db|output~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk_dec_0~combout\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: LC_X2_Y3_N2
\dec_0|bit_1_ff|Q_tmp\ : maxii_lcell
-- Equation(s):
-- \dec_0|bit_1_ff|Q_tmp~regout\ = DFFEAS(((\dec_0|bit_0_ff|Q_tmp~regout\ $ (\dec_0|bit_1_ff|Q_tmp~regout\))), GLOBAL(\clk_dec_0~combout\), !GLOBAL(\dec_0|rst_in~combout\), , , , , , )

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

-- Location: LC_X2_Y3_N8
\dec_0|bit_2_ff|Q_tmp\ : maxii_lcell
-- Equation(s):
-- \dec_0|bit_2_ff|Q_tmp~regout\ = DFFEAS(\dec_0|bit_2_ff|Q_tmp~regout\ $ ((((\dec_0|bit_0_ff|Q_tmp~regout\ & \dec_0|bit_1_ff|Q_tmp~regout\)))), GLOBAL(\clk_dec_0~combout\), !GLOBAL(\dec_0|rst_in~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_dec_0~combout\,
	dataa => \dec_0|bit_2_ff|Q_tmp~regout\,
	datac => \dec_0|bit_0_ff|Q_tmp~regout\,
	datad => \dec_0|bit_1_ff|Q_tmp~regout\,
	aclr => \dec_0|rst_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_0|bit_2_ff|Q_tmp~regout\);

-- Location: LC_X2_Y3_N3
\dec_0|bit_3_ff|Q_tmp\ : maxii_lcell
-- Equation(s):
-- \dec_0|bit_3_ff|Q_tmp~regout\ = DFFEAS(\dec_0|bit_3_ff|Q_tmp~regout\ $ (((\dec_0|bit_1_ff|Q_tmp~regout\ & (\dec_0|bit_0_ff|Q_tmp~regout\ & \dec_0|bit_2_ff|Q_tmp~regout\)))), GLOBAL(\clk_dec_0~combout\), !GLOBAL(\dec_0|rst_in~combout\), , , , , , )

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
	clk => \clk_dec_0~combout\,
	dataa => \dec_0|bit_3_ff|Q_tmp~regout\,
	datab => \dec_0|bit_1_ff|Q_tmp~regout\,
	datac => \dec_0|bit_0_ff|Q_tmp~regout\,
	datad => \dec_0|bit_2_ff|Q_tmp~regout\,
	aclr => \dec_0|rst_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_0|bit_3_ff|Q_tmp~regout\);

-- Location: LC_X2_Y3_N9
\dec_0|carry_ff|Q_tmp\ : maxii_lcell
-- Equation(s):
-- \dec_0|carry_ff|Q_tmp~regout\ = DFFEAS((\dec_0|bit_3_ff|Q_tmp~regout\ & (!\dec_0|bit_1_ff|Q_tmp~regout\ & (\dec_0|bit_0_ff|Q_tmp~regout\ & !\dec_0|bit_2_ff|Q_tmp~regout\))), GLOBAL(\clk_dec_0~combout\), !GLOBAL(\dec_0|rst_in~combout\), , , , , , )

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
	dataa => \dec_0|bit_3_ff|Q_tmp~regout\,
	datab => \dec_0|bit_1_ff|Q_tmp~regout\,
	datac => \dec_0|bit_0_ff|Q_tmp~regout\,
	datad => \dec_0|bit_2_ff|Q_tmp~regout\,
	aclr => \dec_0|rst_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_0|carry_ff|Q_tmp~regout\);

-- Location: LC_X2_Y3_N1
\dec_0|rst_in\ : maxii_lcell
-- Equation(s):
-- \dec_0|rst_in~combout\ = (((\rst~combout\) # (\dec_0|carry_ff|Q_tmp~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \rst~combout\,
	datad => \dec_0|carry_ff|Q_tmp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dec_0|rst_in~combout\);

-- Location: LC_X2_Y3_N5
\dec_0|bit_0_ff|Q_tmp\ : maxii_lcell
-- Equation(s):
-- \dec_0|bit_0_ff|Q_tmp~regout\ = DFFEAS((((!\dec_0|bit_0_ff|Q_tmp~regout\))), GLOBAL(\clk_dec_0~combout\), !GLOBAL(\dec_0|rst_in~combout\), , , , , , )

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
	clk => \clk_dec_0~combout\,
	datac => \dec_0|bit_0_ff|Q_tmp~regout\,
	aclr => \dec_0|rst_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_0|bit_0_ff|Q_tmp~regout\);

-- Location: LC_X3_Y2_N7
\Mux6~0\ : maxii_lcell
-- Equation(s):
-- \Mux6~0_combout\ = (\dec_0|bit_3_ff|Q_tmp~regout\) # ((\dec_0|bit_2_ff|Q_tmp~regout\ & ((!\dec_0|bit_1_ff|Q_tmp~regout\) # (!\dec_0|bit_0_ff|Q_tmp~regout\))) # (!\dec_0|bit_2_ff|Q_tmp~regout\ & ((\dec_0|bit_1_ff|Q_tmp~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff7c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dec_0|bit_0_ff|Q_tmp~regout\,
	datab => \dec_0|bit_2_ff|Q_tmp~regout\,
	datac => \dec_0|bit_1_ff|Q_tmp~regout\,
	datad => \dec_0|bit_3_ff|Q_tmp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~0_combout\);

-- Location: LC_X3_Y2_N5
\Mux5~0\ : maxii_lcell
-- Equation(s):
-- \Mux5~0_combout\ = (\dec_0|bit_0_ff|Q_tmp~regout\ & ((\dec_0|bit_1_ff|Q_tmp~regout\) # (\dec_0|bit_2_ff|Q_tmp~regout\ $ (!\dec_0|bit_3_ff|Q_tmp~regout\)))) # (!\dec_0|bit_0_ff|Q_tmp~regout\ & ((\dec_0|bit_2_ff|Q_tmp~regout\ & 
-- ((\dec_0|bit_3_ff|Q_tmp~regout\))) # (!\dec_0|bit_2_ff|Q_tmp~regout\ & (\dec_0|bit_1_ff|Q_tmp~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcb2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dec_0|bit_0_ff|Q_tmp~regout\,
	datab => \dec_0|bit_2_ff|Q_tmp~regout\,
	datac => \dec_0|bit_1_ff|Q_tmp~regout\,
	datad => \dec_0|bit_3_ff|Q_tmp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~0_combout\);

-- Location: LC_X3_Y2_N9
\Mux4~0\ : maxii_lcell
-- Equation(s):
-- \Mux4~0_combout\ = (\dec_0|bit_0_ff|Q_tmp~regout\) # ((\dec_0|bit_1_ff|Q_tmp~regout\ & ((\dec_0|bit_3_ff|Q_tmp~regout\))) # (!\dec_0|bit_1_ff|Q_tmp~regout\ & (\dec_0|bit_2_ff|Q_tmp~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feae",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dec_0|bit_0_ff|Q_tmp~regout\,
	datab => \dec_0|bit_2_ff|Q_tmp~regout\,
	datac => \dec_0|bit_1_ff|Q_tmp~regout\,
	datad => \dec_0|bit_3_ff|Q_tmp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~0_combout\);

-- Location: LC_X3_Y2_N4
\Mux3~0\ : maxii_lcell
-- Equation(s):
-- \Mux3~0_combout\ = (\dec_0|bit_1_ff|Q_tmp~regout\ & ((\dec_0|bit_3_ff|Q_tmp~regout\) # ((\dec_0|bit_0_ff|Q_tmp~regout\ & \dec_0|bit_2_ff|Q_tmp~regout\)))) # (!\dec_0|bit_1_ff|Q_tmp~regout\ & (\dec_0|bit_2_ff|Q_tmp~regout\ $ 
-- (((\dec_0|bit_0_ff|Q_tmp~regout\ & !\dec_0|bit_3_ff|Q_tmp~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc86",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dec_0|bit_0_ff|Q_tmp~regout\,
	datab => \dec_0|bit_2_ff|Q_tmp~regout\,
	datac => \dec_0|bit_1_ff|Q_tmp~regout\,
	datad => \dec_0|bit_3_ff|Q_tmp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~0_combout\);

-- Location: LC_X3_Y2_N8
\Mux2~0\ : maxii_lcell
-- Equation(s):
-- \Mux2~0_combout\ = (\dec_0|bit_2_ff|Q_tmp~regout\ & (((\dec_0|bit_3_ff|Q_tmp~regout\)))) # (!\dec_0|bit_2_ff|Q_tmp~regout\ & (\dec_0|bit_1_ff|Q_tmp~regout\ & ((\dec_0|bit_3_ff|Q_tmp~regout\) # (!\dec_0|bit_0_ff|Q_tmp~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dec_0|bit_0_ff|Q_tmp~regout\,
	datab => \dec_0|bit_2_ff|Q_tmp~regout\,
	datac => \dec_0|bit_1_ff|Q_tmp~regout\,
	datad => \dec_0|bit_3_ff|Q_tmp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~0_combout\);

-- Location: LC_X3_Y2_N6
\Mux1~0\ : maxii_lcell
-- Equation(s):
-- \Mux1~0_combout\ = (\dec_0|bit_2_ff|Q_tmp~regout\ & ((\dec_0|bit_3_ff|Q_tmp~regout\) # (\dec_0|bit_0_ff|Q_tmp~regout\ $ (\dec_0|bit_1_ff|Q_tmp~regout\)))) # (!\dec_0|bit_2_ff|Q_tmp~regout\ & (((\dec_0|bit_1_ff|Q_tmp~regout\ & 
-- \dec_0|bit_3_ff|Q_tmp~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dec_0|bit_0_ff|Q_tmp~regout\,
	datab => \dec_0|bit_2_ff|Q_tmp~regout\,
	datac => \dec_0|bit_1_ff|Q_tmp~regout\,
	datad => \dec_0|bit_3_ff|Q_tmp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~0_combout\);

-- Location: LC_X3_Y2_N2
\Mux0~0\ : maxii_lcell
-- Equation(s):
-- \Mux0~0_combout\ = (\dec_0|bit_1_ff|Q_tmp~regout\ & (((\dec_0|bit_3_ff|Q_tmp~regout\)))) # (!\dec_0|bit_1_ff|Q_tmp~regout\ & (\dec_0|bit_2_ff|Q_tmp~regout\ $ (((\dec_0|bit_0_ff|Q_tmp~regout\ & !\dec_0|bit_3_ff|Q_tmp~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc06",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dec_0|bit_0_ff|Q_tmp~regout\,
	datab => \dec_0|bit_2_ff|Q_tmp~regout\,
	datac => \dec_0|bit_1_ff|Q_tmp~regout\,
	datad => \dec_0|bit_3_ff|Q_tmp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

-- Location: LC_X2_Y3_N4
clk_dec_1 : maxii_lcell
-- Equation(s):
-- \clk_dec_1~combout\ = LCELL(((\dec_0|carry_ff|Q_tmp~regout\ & (\clk_dec_0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \dec_0|carry_ff|Q_tmp~regout\,
	datac => \clk_dec_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk_dec_1~combout\);

-- Location: LC_X2_Y2_N9
\dec_1|bit_2_ff|Q_tmp\ : maxii_lcell
-- Equation(s):
-- \dec_1|bit_2_ff|Q_tmp~regout\ = DFFEAS((\dec_1|bit_2_ff|Q_tmp~regout\ $ (((\dec_1|bit_0_ff|Q_tmp~regout\ & \dec_1|bit_1_ff|Q_tmp~regout\)))), GLOBAL(\clk_dec_1~combout\), !\dec_1|rst_in~combout\, , , , , , )

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
	clk => \clk_dec_1~combout\,
	datab => \dec_1|bit_2_ff|Q_tmp~regout\,
	datac => \dec_1|bit_0_ff|Q_tmp~regout\,
	datad => \dec_1|bit_1_ff|Q_tmp~regout\,
	aclr => \dec_1|rst_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_1|bit_2_ff|Q_tmp~regout\);

-- Location: LC_X2_Y2_N8
\dec_1|carry_ff|Q_tmp\ : maxii_lcell
-- Equation(s):
-- \dec_1|carry_ff|Q_tmp~regout\ = DFFEAS((!\dec_1|bit_1_ff|Q_tmp~regout\ & (\dec_1|bit_0_ff|Q_tmp~regout\ & (!\dec_1|bit_3_ff|Q_tmp~regout\ & \dec_1|bit_2_ff|Q_tmp~regout\))), GLOBAL(\clk_dec_1~combout\), !\dec_1|rst_in~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_dec_1~combout\,
	dataa => \dec_1|bit_1_ff|Q_tmp~regout\,
	datab => \dec_1|bit_0_ff|Q_tmp~regout\,
	datac => \dec_1|bit_3_ff|Q_tmp~regout\,
	datad => \dec_1|bit_2_ff|Q_tmp~regout\,
	aclr => \dec_1|rst_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_1|carry_ff|Q_tmp~regout\);

-- Location: LC_X2_Y2_N4
\dec_1|rst_in\ : maxii_lcell
-- Equation(s):
-- \dec_1|rst_in~combout\ = (((\rst~combout\) # (\dec_1|carry_ff|Q_tmp~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \rst~combout\,
	datad => \dec_1|carry_ff|Q_tmp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dec_1|rst_in~combout\);

-- Location: LC_X2_Y2_N0
\dec_1|bit_0_ff|Q_tmp\ : maxii_lcell
-- Equation(s):
-- \dec_1|bit_0_ff|Q_tmp~regout\ = DFFEAS((((!\dec_1|bit_0_ff|Q_tmp~regout\))), GLOBAL(\clk_dec_1~combout\), !\dec_1|rst_in~combout\, , , , , , )

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

-- Location: LC_X2_Y2_N2
\dec_1|bit_1_ff|Q_tmp\ : maxii_lcell
-- Equation(s):
-- \dec_1|bit_1_ff|Q_tmp~regout\ = DFFEAS((\dec_1|bit_1_ff|Q_tmp~regout\ $ (((\dec_1|bit_0_ff|Q_tmp~regout\)))), GLOBAL(\clk_dec_1~combout\), !\dec_1|rst_in~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_dec_1~combout\,
	datab => \dec_1|bit_1_ff|Q_tmp~regout\,
	datad => \dec_1|bit_0_ff|Q_tmp~regout\,
	aclr => \dec_1|rst_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_1|bit_1_ff|Q_tmp~regout\);

-- Location: LC_X2_Y2_N7
\dec_1|bit_3_ff|Q_tmp\ : maxii_lcell
-- Equation(s):
-- \dec_1|bit_3_ff|Q_tmp~regout\ = DFFEAS(\dec_1|bit_3_ff|Q_tmp~regout\ $ (((\dec_1|bit_1_ff|Q_tmp~regout\ & (\dec_1|bit_0_ff|Q_tmp~regout\ & \dec_1|bit_2_ff|Q_tmp~regout\)))), GLOBAL(\clk_dec_1~combout\), !\dec_1|rst_in~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_dec_1~combout\,
	dataa => \dec_1|bit_1_ff|Q_tmp~regout\,
	datab => \dec_1|bit_3_ff|Q_tmp~regout\,
	datac => \dec_1|bit_0_ff|Q_tmp~regout\,
	datad => \dec_1|bit_2_ff|Q_tmp~regout\,
	aclr => \dec_1|rst_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dec_1|bit_3_ff|Q_tmp~regout\);

-- Location: LC_X2_Y4_N0
\Mux13~0\ : maxii_lcell
-- Equation(s):
-- \Mux13~0_combout\ = (\dec_1|bit_3_ff|Q_tmp~regout\) # ((\dec_1|bit_1_ff|Q_tmp~regout\ & ((!\dec_1|bit_0_ff|Q_tmp~regout\) # (!\dec_1|bit_2_ff|Q_tmp~regout\))) # (!\dec_1|bit_1_ff|Q_tmp~regout\ & (\dec_1|bit_2_ff|Q_tmp~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "befe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dec_1|bit_3_ff|Q_tmp~regout\,
	datab => \dec_1|bit_1_ff|Q_tmp~regout\,
	datac => \dec_1|bit_2_ff|Q_tmp~regout\,
	datad => \dec_1|bit_0_ff|Q_tmp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~0_combout\);

-- Location: LC_X2_Y4_N2
\Mux12~0\ : maxii_lcell
-- Equation(s):
-- \Mux12~0_combout\ = (\dec_1|bit_2_ff|Q_tmp~regout\ & ((\dec_1|bit_3_ff|Q_tmp~regout\) # ((\dec_1|bit_1_ff|Q_tmp~regout\ & \dec_1|bit_0_ff|Q_tmp~regout\)))) # (!\dec_1|bit_2_ff|Q_tmp~regout\ & ((\dec_1|bit_1_ff|Q_tmp~regout\) # 
-- ((!\dec_1|bit_3_ff|Q_tmp~regout\ & \dec_1|bit_0_ff|Q_tmp~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "edac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dec_1|bit_3_ff|Q_tmp~regout\,
	datab => \dec_1|bit_1_ff|Q_tmp~regout\,
	datac => \dec_1|bit_2_ff|Q_tmp~regout\,
	datad => \dec_1|bit_0_ff|Q_tmp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~0_combout\);

-- Location: LC_X2_Y4_N3
\Mux11~0\ : maxii_lcell
-- Equation(s):
-- \Mux11~0_combout\ = (\dec_1|bit_0_ff|Q_tmp~regout\) # ((\dec_1|bit_1_ff|Q_tmp~regout\ & (\dec_1|bit_3_ff|Q_tmp~regout\)) # (!\dec_1|bit_1_ff|Q_tmp~regout\ & ((\dec_1|bit_2_ff|Q_tmp~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffb8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dec_1|bit_3_ff|Q_tmp~regout\,
	datab => \dec_1|bit_1_ff|Q_tmp~regout\,
	datac => \dec_1|bit_2_ff|Q_tmp~regout\,
	datad => \dec_1|bit_0_ff|Q_tmp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~0_combout\);

-- Location: LC_X2_Y4_N4
\Mux10~0\ : maxii_lcell
-- Equation(s):
-- \Mux10~0_combout\ = (\dec_1|bit_1_ff|Q_tmp~regout\ & ((\dec_1|bit_3_ff|Q_tmp~regout\) # ((\dec_1|bit_2_ff|Q_tmp~regout\ & \dec_1|bit_0_ff|Q_tmp~regout\)))) # (!\dec_1|bit_1_ff|Q_tmp~regout\ & (\dec_1|bit_2_ff|Q_tmp~regout\ $ 
-- (((!\dec_1|bit_3_ff|Q_tmp~regout\ & \dec_1|bit_0_ff|Q_tmp~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e9b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dec_1|bit_3_ff|Q_tmp~regout\,
	datab => \dec_1|bit_1_ff|Q_tmp~regout\,
	datac => \dec_1|bit_2_ff|Q_tmp~regout\,
	datad => \dec_1|bit_0_ff|Q_tmp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~0_combout\);

-- Location: LC_X2_Y4_N9
\Mux9~0\ : maxii_lcell
-- Equation(s):
-- \Mux9~0_combout\ = (\dec_1|bit_2_ff|Q_tmp~regout\ & (\dec_1|bit_3_ff|Q_tmp~regout\)) # (!\dec_1|bit_2_ff|Q_tmp~regout\ & (\dec_1|bit_1_ff|Q_tmp~regout\ & ((\dec_1|bit_3_ff|Q_tmp~regout\) # (!\dec_1|bit_0_ff|Q_tmp~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a8ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dec_1|bit_3_ff|Q_tmp~regout\,
	datab => \dec_1|bit_1_ff|Q_tmp~regout\,
	datac => \dec_1|bit_2_ff|Q_tmp~regout\,
	datad => \dec_1|bit_0_ff|Q_tmp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~0_combout\);

-- Location: LC_X2_Y2_N3
\Mux8~0\ : maxii_lcell
-- Equation(s):
-- \Mux8~0_combout\ = (\dec_1|bit_3_ff|Q_tmp~regout\ & ((\dec_1|bit_1_ff|Q_tmp~regout\) # ((\dec_1|bit_2_ff|Q_tmp~regout\)))) # (!\dec_1|bit_3_ff|Q_tmp~regout\ & (\dec_1|bit_2_ff|Q_tmp~regout\ & (\dec_1|bit_1_ff|Q_tmp~regout\ $ 
-- (\dec_1|bit_0_ff|Q_tmp~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be88",
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
	combout => \Mux8~0_combout\);

-- Location: LC_X2_Y2_N6
\Mux7~0\ : maxii_lcell
-- Equation(s):
-- \Mux7~0_combout\ = (\dec_1|bit_1_ff|Q_tmp~regout\ & (\dec_1|bit_3_ff|Q_tmp~regout\)) # (!\dec_1|bit_1_ff|Q_tmp~regout\ & (\dec_1|bit_2_ff|Q_tmp~regout\ $ (((!\dec_1|bit_3_ff|Q_tmp~regout\ & \dec_1|bit_0_ff|Q_tmp~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ab98",
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
	combout => \Mux7~0_combout\);

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dig_0[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux6~0_combout\,
	oe => VCC,
	padio => ww_dig_0(0));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dig_0[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux5~0_combout\,
	oe => VCC,
	padio => ww_dig_0(1));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dig_0[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux4~0_combout\,
	oe => VCC,
	padio => ww_dig_0(2));

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dig_0[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux3~0_combout\,
	oe => VCC,
	padio => ww_dig_0(3));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dig_0[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux2~0_combout\,
	oe => VCC,
	padio => ww_dig_0(4));

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dig_0[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux1~0_combout\,
	oe => VCC,
	padio => ww_dig_0(5));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dig_0[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux0~0_combout\,
	oe => VCC,
	padio => ww_dig_0(6));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dig_1[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux13~0_combout\,
	oe => VCC,
	padio => ww_dig_1(0));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dig_1[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux12~0_combout\,
	oe => VCC,
	padio => ww_dig_1(1));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dig_1[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux11~0_combout\,
	oe => VCC,
	padio => ww_dig_1(2));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dig_1[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux10~0_combout\,
	oe => VCC,
	padio => ww_dig_1(3));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dig_1[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux9~0_combout\,
	oe => VCC,
	padio => ww_dig_1(4));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dig_1[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux8~0_combout\,
	oe => VCC,
	padio => ww_dig_1(5));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dig_1[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux7~0_combout\,
	oe => VCC,
	padio => ww_dig_1(6));
END structure;


