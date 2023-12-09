-- Copyright (C) 1991-2008 Altera Corporation
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
-- VERSION "Version 8.1 Build 163 10/28/2008 SJ Web Edition"

-- DATE "12/19/2022 21:31:30"

-- 
-- Device: Altera EPF10K30ETC144-1 Package TQFP144
-- 

-- 
-- This VHDL file should be used for Custom VHDL only
-- 

LIBRARY IEEE, flex10ke;
USE IEEE.std_logic_1164.all;
USE flex10ke.flex10ke_components.all;

ENTITY 	test IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	opcode : IN std_logic_vector(2 DOWNTO 0);
	C : OUT std_logic_vector(3 DOWNTO 0);
	ZF : OUT std_logic;
	CF : OUT std_logic;
	SF : OUT std_logic
	);
END test;

ARCHITECTURE structure OF test IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_opcode : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_C : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ZF : std_logic;
SIGNAL ww_CF : std_logic;
SIGNAL ww_SF : std_logic;
SIGNAL \ZF~799_combout\ : std_logic;
SIGNAL \Add2|adder|result_node|cout[30]\ : std_logic;
SIGNAL \Equal11~320_combout\ : std_logic;
SIGNAL \Equal11~321_combout\ : std_logic;
SIGNAL \Equal11~322_combout\ : std_logic;
SIGNAL \x[31]~regout\ : std_logic;
SIGNAL \Add2|adder|unreg_res_node[31]~combout\ : std_logic;
SIGNAL \ZF~808_combout\ : std_logic;
SIGNAL \Add5~88_combout\ : std_logic;
SIGNAL \Add8~87_combout\ : std_logic;
SIGNAL \y~507_combout\ : std_logic;
SIGNAL \x~6621_combout\ : std_logic;
SIGNAL \C~1574_combout\ : std_logic;
SIGNAL \C~1584_combout\ : std_logic;
SIGNAL \x~6623_combout\ : std_logic;
SIGNAL \C~1576_combout\ : std_logic;
SIGNAL \C~1577_combout\ : std_logic;
SIGNAL \C~1585_combout\ : std_logic;
SIGNAL \C~1579_combout\ : std_logic;
SIGNAL \C~1587_combout\ : std_logic;
SIGNAL \C~1627\ : std_logic;
SIGNAL \C~1581_combout\ : std_logic;
SIGNAL \SF~499_combout\ : std_logic;
SIGNAL \SF~504_combout\ : std_logic;
SIGNAL \LessThan0~315_combout\ : std_logic;
SIGNAL \LessThan0~316_combout\ : std_logic;
SIGNAL \opcode[0]~dataout\ : std_logic;
SIGNAL \opcode[2]~dataout\ : std_logic;
SIGNAL \opcode[1]~dataout\ : std_logic;
SIGNAL \Equal7~12_combout\ : std_logic;
SIGNAL \Equal4~13_combout\ : std_logic;
SIGNAL \Equal0~13_combout\ : std_logic;
SIGNAL \C~1537_combout\ : std_logic;
SIGNAL \x~6618_combout\ : std_logic;
SIGNAL \reset~dataout\ : std_logic;
SIGNAL \clk~dataout\ : std_logic;
SIGNAL \x[1]~regout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \x[0]~6684_combout\ : std_logic;
SIGNAL \Add2|adder|result_node|cout[0]\ : std_logic;
SIGNAL \Add2|adder|result_node|cs_buffer[1]~combout\ : std_logic;
SIGNAL \x[0]~regout\ : std_logic;
SIGNAL \Equal10~25_combout\ : std_logic;
SIGNAL \x~6615_combout\ : std_logic;
SIGNAL \C~1546_combout\ : std_logic;
SIGNAL \C~1542_combout\ : std_logic;
SIGNAL \A[1]~dataout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \A[2]~dataout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \B[2]~dataout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \B[1]~dataout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \C~1541_combout\ : std_logic;
SIGNAL \C~1545_combout\ : std_logic;
SIGNAL \A[3]~dataout\ : std_logic;
SIGNAL \B[3]~dataout\ : std_logic;
SIGNAL \LessThan0~310_combout\ : std_logic;
SIGNAL \A[0]~dataout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Add8~86_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \LessThan0~322\ : std_logic;
SIGNAL \LessThan0~318_combout\ : std_logic;
SIGNAL \C~1573_combout\ : std_logic;
SIGNAL \y~504_combout\ : std_logic;
SIGNAL \B[0]~dataout\ : std_logic;
SIGNAL \Add5~87_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Add5~86_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \C~1572_combout\ : std_logic;
SIGNAL \y~503_combout\ : std_logic;
SIGNAL \y~505_combout\ : std_logic;
SIGNAL \y~506_combout\ : std_logic;
SIGNAL \y~regout\ : std_logic;
SIGNAL \C~1615\ : std_logic;
SIGNAL \C~1617\ : std_logic;
SIGNAL \C~1582_combout\ : std_logic;
SIGNAL \C[0]~reg0_regout\ : std_logic;
SIGNAL \C~1547_combout\ : std_logic;
SIGNAL \C[1]~reg0_regout\ : std_logic;
SIGNAL \C~1548_combout\ : std_logic;
SIGNAL \C[2]~reg0_regout\ : std_logic;
SIGNAL \x[2]~regout\ : std_logic;
SIGNAL \Add2|adder|result_node|cout[1]\ : std_logic;
SIGNAL \Add2|adder|result_node|cs_buffer[2]~combout\ : std_logic;
SIGNAL \Equal11~312_combout\ : std_logic;
SIGNAL \C~1552_combout\ : std_logic;
SIGNAL \C~1624\ : std_logic;
SIGNAL \C~1586_combout\ : std_logic;
SIGNAL \C~1553_combout\ : std_logic;
SIGNAL \x~6664_combout\ : std_logic;
SIGNAL \x[12]~regout\ : std_logic;
SIGNAL \Add2|adder|result_node|cout[2]\ : std_logic;
SIGNAL \Add2|adder|result_node|cs_buffer[3]~combout\ : std_logic;
SIGNAL \x~6678_combout\ : std_logic;
SIGNAL \x[3]~regout\ : std_logic;
SIGNAL \Add2|adder|result_node|cout[3]\ : std_logic;
SIGNAL \Add2|adder|result_node|cs_buffer[4]~combout\ : std_logic;
SIGNAL \x~6676_combout\ : std_logic;
SIGNAL \x[4]~regout\ : std_logic;
SIGNAL \Add2|adder|result_node|cout[4]\ : std_logic;
SIGNAL \Add2|adder|result_node|cs_buffer[5]~combout\ : std_logic;
SIGNAL \x~6674_combout\ : std_logic;
SIGNAL \x[5]~regout\ : std_logic;
SIGNAL \Add2|adder|result_node|cout[5]\ : std_logic;
SIGNAL \Add2|adder|result_node|cs_buffer[6]~combout\ : std_logic;
SIGNAL \x~6672_combout\ : std_logic;
SIGNAL \x[6]~regout\ : std_logic;
SIGNAL \Add2|adder|result_node|cout[6]\ : std_logic;
SIGNAL \Add2|adder|result_node|cs_buffer[7]~combout\ : std_logic;
SIGNAL \x~6670_combout\ : std_logic;
SIGNAL \x[7]~regout\ : std_logic;
SIGNAL \Add2|adder|result_node|cout[7]\ : std_logic;
SIGNAL \Add2|adder|result_node|cs_buffer[8]~combout\ : std_logic;
SIGNAL \x~6668_combout\ : std_logic;
SIGNAL \x[8]~regout\ : std_logic;
SIGNAL \Add2|adder|result_node|cout[8]\ : std_logic;
SIGNAL \Add2|adder|result_node|cs_buffer[9]~combout\ : std_logic;
SIGNAL \x~6682_combout\ : std_logic;
SIGNAL \x[9]~regout\ : std_logic;
SIGNAL \Add2|adder|result_node|cout[9]\ : std_logic;
SIGNAL \Add2|adder|result_node|cs_buffer[10]~combout\ : std_logic;
SIGNAL \x~6680_combout\ : std_logic;
SIGNAL \x[10]~regout\ : std_logic;
SIGNAL \Add2|adder|result_node|cout[10]\ : std_logic;
SIGNAL \Add2|adder|result_node|cs_buffer[11]~combout\ : std_logic;
SIGNAL \x~6666_combout\ : std_logic;
SIGNAL \x[11]~regout\ : std_logic;
SIGNAL \Add2|adder|result_node|cout[11]\ : std_logic;
SIGNAL \Add2|adder|result_node|cs_buffer[12]~combout\ : std_logic;
SIGNAL \x~6662_combout\ : std_logic;
SIGNAL \x[13]~regout\ : std_logic;
SIGNAL \Add2|adder|result_node|cout[12]\ : std_logic;
SIGNAL \Add2|adder|result_node|cs_buffer[13]~combout\ : std_logic;
SIGNAL \x~6660_combout\ : std_logic;
SIGNAL \x[14]~regout\ : std_logic;
SIGNAL \Add2|adder|result_node|cout[13]\ : std_logic;
SIGNAL \Add2|adder|result_node|cs_buffer[14]~combout\ : std_logic;
SIGNAL \Equal11~319_combout\ : std_logic;
SIGNAL \x~6656_combout\ : std_logic;
SIGNAL \x[16]~regout\ : std_logic;
SIGNAL \Add2|adder|result_node|cout[14]\ : std_logic;
SIGNAL \Add2|adder|result_node|cs_buffer[15]~combout\ : std_logic;
SIGNAL \x~6658_combout\ : std_logic;
SIGNAL \x[15]~regout\ : std_logic;
SIGNAL \Add2|adder|result_node|cout[15]\ : std_logic;
SIGNAL \Add2|adder|result_node|cs_buffer[16]~combout\ : std_logic;
SIGNAL \x~6654_combout\ : std_logic;
SIGNAL \x[17]~regout\ : std_logic;
SIGNAL \Add2|adder|result_node|cout[16]\ : std_logic;
SIGNAL \Add2|adder|result_node|cs_buffer[17]~combout\ : std_logic;
SIGNAL \x~6652_combout\ : std_logic;
SIGNAL \x[18]~regout\ : std_logic;
SIGNAL \Add2|adder|result_node|cout[17]\ : std_logic;
SIGNAL \Add2|adder|result_node|cs_buffer[18]~combout\ : std_logic;
SIGNAL \Equal11~318_combout\ : std_logic;
SIGNAL \x~6648_combout\ : std_logic;
SIGNAL \x[26]~regout\ : std_logic;
SIGNAL \Add2|adder|result_node|cout[18]\ : std_logic;
SIGNAL \Add2|adder|result_node|cs_buffer[19]~combout\ : std_logic;
SIGNAL \x~6646_combout\ : std_logic;
SIGNAL \x[19]~regout\ : std_logic;
SIGNAL \Add2|adder|result_node|cout[19]\ : std_logic;
SIGNAL \Add2|adder|result_node|cs_buffer[20]~combout\ : std_logic;
SIGNAL \x~6644_combout\ : std_logic;
SIGNAL \x[20]~regout\ : std_logic;
SIGNAL \Add2|adder|result_node|cout[20]\ : std_logic;
SIGNAL \Add2|adder|result_node|cs_buffer[21]~combout\ : std_logic;
SIGNAL \x~6642_combout\ : std_logic;
SIGNAL \x[21]~regout\ : std_logic;
SIGNAL \Add2|adder|result_node|cout[21]\ : std_logic;
SIGNAL \Add2|adder|result_node|cs_buffer[22]~combout\ : std_logic;
SIGNAL \x~6640_combout\ : std_logic;
SIGNAL \x[22]~regout\ : std_logic;
SIGNAL \Add2|adder|result_node|cout[22]\ : std_logic;
SIGNAL \Add2|adder|result_node|cs_buffer[23]~combout\ : std_logic;
SIGNAL \x~6638_combout\ : std_logic;
SIGNAL \x[23]~regout\ : std_logic;
SIGNAL \Add2|adder|result_node|cout[23]\ : std_logic;
SIGNAL \Add2|adder|result_node|cs_buffer[24]~combout\ : std_logic;
SIGNAL \x~6636_combout\ : std_logic;
SIGNAL \x[24]~regout\ : std_logic;
SIGNAL \Add2|adder|result_node|cout[24]\ : std_logic;
SIGNAL \Add2|adder|result_node|cs_buffer[25]~combout\ : std_logic;
SIGNAL \x~6650_combout\ : std_logic;
SIGNAL \x[25]~regout\ : std_logic;
SIGNAL \Add2|adder|result_node|cout[25]\ : std_logic;
SIGNAL \Add2|adder|result_node|cs_buffer[26]~combout\ : std_logic;
SIGNAL \Equal11~315_combout\ : std_logic;
SIGNAL \Equal11~314_combout\ : std_logic;
SIGNAL \Equal11~316_combout\ : std_logic;
SIGNAL \x~6632_combout\ : std_logic;
SIGNAL \x[28]~regout\ : std_logic;
SIGNAL \Add2|adder|result_node|cout[26]\ : std_logic;
SIGNAL \Add2|adder|result_node|cs_buffer[27]~combout\ : std_logic;
SIGNAL \x~6634_combout\ : std_logic;
SIGNAL \x[27]~regout\ : std_logic;
SIGNAL \Add2|adder|result_node|cout[27]\ : std_logic;
SIGNAL \Add2|adder|result_node|cs_buffer[28]~combout\ : std_logic;
SIGNAL \x~6630_combout\ : std_logic;
SIGNAL \x[29]~regout\ : std_logic;
SIGNAL \Add2|adder|result_node|cout[28]\ : std_logic;
SIGNAL \Add2|adder|result_node|cs_buffer[29]~combout\ : std_logic;
SIGNAL \x~6628_combout\ : std_logic;
SIGNAL \x[30]~regout\ : std_logic;
SIGNAL \Add2|adder|result_node|cout[29]\ : std_logic;
SIGNAL \Add2|adder|result_node|cs_buffer[30]~combout\ : std_logic;
SIGNAL \Equal11~313_combout\ : std_logic;
SIGNAL \Equal11~317_combout\ : std_logic;
SIGNAL \Equal11~323_combout\ : std_logic;
SIGNAL \C~1620\ : std_logic;
SIGNAL \C~1622\ : std_logic;
SIGNAL \C~1583_combout\ : std_logic;
SIGNAL \C[3]~reg0_regout\ : std_logic;
SIGNAL \ZF~811_combout\ : std_logic;
SIGNAL \Decoder2~42_combout\ : std_logic;
SIGNAL \Decoder2~41_combout\ : std_logic;
SIGNAL \ZF~823\ : std_logic;
SIGNAL \ZF~812_combout\ : std_logic;
SIGNAL \ZF~798_combout\ : std_logic;
SIGNAL \always0~72_combout\ : std_logic;
SIGNAL \ZF~801_combout\ : std_logic;
SIGNAL \ZF~802_combout\ : std_logic;
SIGNAL \next_state~146_combout\ : std_logic;
SIGNAL \CF~324_combout\ : std_logic;
SIGNAL \next_state~regout\ : std_logic;
SIGNAL \C~1543_combout\ : std_logic;
SIGNAL \ZF~810_combout\ : std_logic;
SIGNAL \ZF~800_combout\ : std_logic;
SIGNAL \ZF~803_combout\ : std_logic;
SIGNAL \ZF~804_combout\ : std_logic;
SIGNAL \ZF~reg0_regout\ : std_logic;
SIGNAL \CF~326_combout\ : std_logic;
SIGNAL \CF~325_combout\ : std_logic;
SIGNAL \CF~reg0_regout\ : std_logic;
SIGNAL \C~1544_combout\ : std_logic;
SIGNAL \SF~500_combout\ : std_logic;
SIGNAL \SF~498_combout\ : std_logic;
SIGNAL \SF~489_combout\ : std_logic;
SIGNAL \SF~512\ : std_logic;
SIGNAL \SF~515\ : std_logic;
SIGNAL \SF~503_combout\ : std_logic;
SIGNAL \SF~reg0_regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_A <= A;
ww_B <= B;
ww_opcode <= opcode;
C <= ww_C;
ZF <= ww_ZF;
CF <= ww_CF;
SF <= ww_SF;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ZF~799\ : flex10ke_lcell
-- Equation(s):
-- \ZF~799_combout\ = \Add2|adder|result_node|cs_buffer[2]~combout\ # \Add2|adder|result_node|cs_buffer[1]~combout\ & \x[0]~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \Add2|adder|result_node|cs_buffer[1]~combout\,
	datac => \x[0]~regout\,
	datad => \Add2|adder|result_node|cs_buffer[2]~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ZF~799_combout\);

\Add2|adder|result_node|cs_buffer[30]\ : flex10ke_lcell
-- Equation(s):
-- \Add2|adder|result_node|cs_buffer[30]~combout\ = \x[30]~regout\ $ !\Add2|adder|result_node|cout[29]\
-- \Add2|adder|result_node|cout[30]\ = CARRY(!\x[30]~regout\ & \Add2|adder|result_node|cout[29]\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "c330",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \x[30]~regout\,
	cin => \Add2|adder|result_node|cout[29]\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2|adder|result_node|cs_buffer[30]~combout\,
	cout => \Add2|adder|result_node|cout[30]\);

\Equal11~320\ : flex10ke_lcell
-- Equation(s):
-- \Equal11~320_combout\ = !\Add2|adder|result_node|cs_buffer[7]~combout\ & !\Add2|adder|result_node|cs_buffer[8]~combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \Add2|adder|result_node|cs_buffer[7]~combout\,
	datad => \Add2|adder|result_node|cs_buffer[8]~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal11~320_combout\);

\Equal11~321\ : flex10ke_lcell
-- Equation(s):
-- \Equal11~321_combout\ = !\Add2|adder|result_node|cs_buffer[3]~combout\ & !\Add2|adder|result_node|cs_buffer[4]~combout\ & !\Add2|adder|result_node|cs_buffer[5]~combout\ & !\Add2|adder|result_node|cs_buffer[6]~combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Add2|adder|result_node|cs_buffer[3]~combout\,
	datab => \Add2|adder|result_node|cs_buffer[4]~combout\,
	datac => \Add2|adder|result_node|cs_buffer[5]~combout\,
	datad => \Add2|adder|result_node|cs_buffer[6]~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal11~321_combout\);

\Equal11~322\ : flex10ke_lcell
-- Equation(s):
-- \Equal11~322_combout\ = !\Add2|adder|result_node|cs_buffer[9]~combout\ & !\Add2|adder|result_node|cs_buffer[10]~combout\ & \Equal11~321_combout\ & \Equal11~320_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Add2|adder|result_node|cs_buffer[9]~combout\,
	datab => \Add2|adder|result_node|cs_buffer[10]~combout\,
	datac => \Equal11~321_combout\,
	datad => \Equal11~320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal11~322_combout\);

\x[31]\ : flex10ke_lcell
-- Equation(s):
-- \x[31]~regout\ = DFFEA(\x~6615_combout\ & (!\C~1537_combout\ # !\x~6621_combout\) # !\x~6615_combout\ & !\Add2|adder|unreg_res_node[31]~combout\ & (!\C~1537_combout\ # !\x~6621_combout\), GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0bbb",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x~6615_combout\,
	datab => \Add2|adder|unreg_res_node[31]~combout\,
	datac => \x~6621_combout\,
	datad => \C~1537_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \x[31]~regout\);

\Add2|adder|unreg_res_node[31]\ : flex10ke_lcell
-- Equation(s):
-- \Add2|adder|unreg_res_node[31]~combout\ = \Add2|adder|result_node|cout[30]\ $ !\x[31]~regout\

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \x[31]~regout\,
	cin => \Add2|adder|result_node|cout[30]\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2|adder|unreg_res_node[31]~combout\);

\Add5~88\ : flex10ke_lcell
-- Equation(s):
-- \Add5~88_combout\ = \B[3]~dataout\ $ (\B[0]~dataout\ # \B[1]~dataout\ # \B[2]~dataout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5556",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~dataout\,
	datab => \B[0]~dataout\,
	datac => \B[1]~dataout\,
	datad => \B[2]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~88_combout\);

\Add8~87\ : flex10ke_lcell
-- Equation(s):
-- \Add8~87_combout\ = \A[3]~dataout\ $ (\A[0]~dataout\ # \A[1]~dataout\ # \A[2]~dataout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5556",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~dataout\,
	datab => \A[0]~dataout\,
	datac => \A[1]~dataout\,
	datad => \A[2]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~87_combout\);

\y~507\ : flex10ke_lcell
-- Equation(s):
-- \y~507_combout\ = !\reset~dataout\ & !\Equal11~323_combout\ & \Equal10~25_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \reset~dataout\,
	datac => \Equal11~323_combout\,
	datad => \Equal10~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \y~507_combout\);

\x~6621\ : flex10ke_lcell
-- Equation(s):
-- \x~6621_combout\ = \opcode[0]~dataout\ & !\x[31]~regout\ # !\opcode[0]~dataout\ & (\opcode[2]~dataout\ & !\x[31]~regout\ # !\opcode[2]~dataout\ & (!\opcode[1]~dataout\))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5553",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x[31]~regout\,
	datab => \opcode[1]~dataout\,
	datac => \opcode[0]~dataout\,
	datad => \opcode[2]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \x~6621_combout\);

\x~6623\ : flex10ke_lcell
-- Equation(s):
-- \x~6623_combout\ = !\opcode[1]~dataout\ & !\opcode[0]~dataout\ & !\opcode[2]~dataout\ # !\x~6615_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5557",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x~6615_combout\,
	datab => \opcode[1]~dataout\,
	datac => \opcode[0]~dataout\,
	datad => \opcode[2]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \x~6623_combout\);

\C~1576\ : flex10ke_lcell
-- Equation(s):
-- \C~1576_combout\ = \Equal11~312_combout\ & (\Mux4~3_combout\ $ \Mux6~3_combout\ $ \y~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "9600",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~3_combout\,
	datab => \Mux6~3_combout\,
	datac => \y~regout\,
	datad => \Equal11~312_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C~1576_combout\);

\C~1587\ : flex10ke_lcell
-- Equation(s):
-- \C~1587_combout\ = (!\Equal11~323_combout\ & \Equal11~312_combout\ & (\B[3]~dataout\ $ !\A[3]~dataout\)) & CASCADE(\C~1627\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "4100",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~323_combout\,
	datab => \B[3]~dataout\,
	datac => \A[3]~dataout\,
	datad => \Equal11~312_combout\,
	cascin => \C~1627\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C~1587_combout\);

\C~1581\ : flex10ke_lcell
-- Equation(s):
-- \C~1627\ = !\LessThan0~318_combout\ & (\Mux5~3_combout\ $ \Mux4~3_combout\ $ \y~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "4114",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~318_combout\,
	datab => \Mux5~3_combout\,
	datac => \Mux4~3_combout\,
	datad => \y~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C~1581_combout\,
	cascout => \C~1627\);

\LessThan0~316\ : flex10ke_lcell
-- Equation(s):
-- \LessThan0~316_combout\ = \B[1]~dataout\ & !\B[0]~dataout\ & \A[0]~dataout\ & \A[1]~dataout\ # !\B[1]~dataout\ & (\A[1]~dataout\ # !\B[0]~dataout\ & \A[0]~dataout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "7510",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~dataout\,
	datab => \B[0]~dataout\,
	datac => \A[0]~dataout\,
	datad => \A[1]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~316_combout\);

\opcode[0]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_opcode(0),
	dataout => \opcode[0]~dataout\);

\opcode[2]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_opcode(2),
	dataout => \opcode[2]~dataout\);

\opcode[1]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_opcode(1),
	dataout => \opcode[1]~dataout\);

\Equal7~12\ : flex10ke_lcell
-- Equation(s):
-- \Equal7~12_combout\ = !\opcode[2]~dataout\ & \opcode[0]~dataout\ & \opcode[1]~dataout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \opcode[2]~dataout\,
	datac => \opcode[0]~dataout\,
	datad => \opcode[1]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal7~12_combout\);

\Equal4~13\ : flex10ke_lcell
-- Equation(s):
-- \Equal4~13_combout\ = !\opcode[2]~dataout\ & !\opcode[1]~dataout\ & \opcode[0]~dataout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \opcode[2]~dataout\,
	datac => \opcode[1]~dataout\,
	datad => \opcode[0]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal4~13_combout\);

\Equal0~13\ : flex10ke_lcell
-- Equation(s):
-- \Equal0~13_combout\ = !\opcode[1]~dataout\ & !\opcode[0]~dataout\ & \opcode[2]~dataout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \opcode[1]~dataout\,
	datac => \opcode[0]~dataout\,
	datad => \opcode[2]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~13_combout\);

\C~1537\ : flex10ke_lcell
-- Equation(s):
-- \C~1537_combout\ = !\Equal7~12_combout\ & !\Equal4~13_combout\ & !\Equal0~13_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \Equal7~12_combout\,
	datac => \Equal4~13_combout\,
	datad => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C~1537_combout\);

\x~6618\ : flex10ke_lcell
-- Equation(s):
-- \x~6618_combout\ = !\opcode[1]~dataout\ & !\opcode[0]~dataout\ & !\opcode[2]~dataout\ & \C~1537_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~dataout\,
	datab => \opcode[0]~dataout\,
	datac => \opcode[2]~dataout\,
	datad => \C~1537_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \x~6618_combout\);

\reset~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_reset,
	dataout => \reset~dataout\);

\clk~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_clk,
	dataout => \clk~dataout\);

\x[1]\ : flex10ke_lcell
-- Equation(s):
-- \x[1]~regout\ = DFFEA(!\Add2|adder|result_node|cs_buffer[1]~combout\ & !\x~6618_combout\, GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , \x~6623_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x~6623_combout\,
	datac => \Add2|adder|result_node|cs_buffer[1]~combout\,
	datad => \x~6618_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \x[1]~regout\);

\~GND\ : flex10ke_lcell
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \~GND~combout\);

\x[0]~6684\ : flex10ke_lcell
-- Equation(s):
-- \x[0]~6684_combout\ = !\x~6618_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \x~6618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \x[0]~6684_combout\);

\x[0]\ : flex10ke_lcell
-- Equation(s):
-- \x[0]~regout\ = DFFEA((!\x[0]~regout\ & \x[0]~6684_combout\) # (\~GND~combout\ & !\x[0]~6684_combout\), GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , \x~6623_combout\, , )
-- \Add2|adder|result_node|cout[0]\ = CARRY(!\x[0]~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "3355",
	operation_mode => "up_dn_cntr",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x~6623_combout\,
	datac => \~GND~combout\,
	datad => \x[0]~6684_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \x[0]~regout\,
	cout => \Add2|adder|result_node|cout[0]\);

\Add2|adder|result_node|cs_buffer[1]\ : flex10ke_lcell
-- Equation(s):
-- \Add2|adder|result_node|cs_buffer[1]~combout\ = \x[1]~regout\ $ !\Add2|adder|result_node|cout[0]\
-- \Add2|adder|result_node|cout[1]\ = CARRY(!\x[1]~regout\ & \Add2|adder|result_node|cout[0]\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "c330",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \x[1]~regout\,
	cin => \Add2|adder|result_node|cout[0]\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2|adder|result_node|cs_buffer[1]~combout\,
	cout => \Add2|adder|result_node|cout[1]\);

\Equal10~25\ : flex10ke_lcell
-- Equation(s):
-- \Equal10~25_combout\ = !\opcode[0]~dataout\ & !\opcode[2]~dataout\ & \opcode[1]~dataout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \opcode[0]~dataout\,
	datac => \opcode[2]~dataout\,
	datad => \opcode[1]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal10~25_combout\);

\x~6615\ : flex10ke_lcell
-- Equation(s):
-- \x~6615_combout\ = !\Equal7~12_combout\ & !\Equal4~13_combout\ & !\Equal0~13_combout\ & !\Equal10~25_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~12_combout\,
	datab => \Equal4~13_combout\,
	datac => \Equal0~13_combout\,
	datad => \Equal10~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \x~6615_combout\);

\C~1546\ : flex10ke_lcell
-- Equation(s):
-- \C~1546_combout\ = !\Add2|adder|result_node|cs_buffer[2]~combout\ & !\Add2|adder|result_node|cs_buffer[1]~combout\ & !\x[0]~regout\ & !\x~6615_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Add2|adder|result_node|cs_buffer[2]~combout\,
	datab => \Add2|adder|result_node|cs_buffer[1]~combout\,
	datac => \x[0]~regout\,
	datad => \x~6615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C~1546_combout\);

\C~1542\ : flex10ke_lcell
-- Equation(s):
-- \C~1542_combout\ = !\always0~72_combout\ & !\Equal4~13_combout\ & !\Equal0~13_combout\ & \Equal7~12_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \always0~72_combout\,
	datab => \Equal4~13_combout\,
	datac => \Equal0~13_combout\,
	datad => \Equal7~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C~1542_combout\);

\A[1]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_A(1),
	dataout => \A[1]~dataout\);

\Mux4~2\ : flex10ke_lcell
-- Equation(s):
-- \Mux4~2_combout\ = \x[0]~regout\ & (\A[1]~dataout\ # \Add2|adder|result_node|cs_buffer[1]~combout\) # !\x[0]~regout\ & \A[0]~dataout\ & (!\Add2|adder|result_node|cs_buffer[1]~combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~dataout\,
	datab => \x[0]~regout\,
	datac => \A[1]~dataout\,
	datad => \Add2|adder|result_node|cs_buffer[1]~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~2_combout\);

\A[2]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_A(2),
	dataout => \A[2]~dataout\);

\Mux4~3\ : flex10ke_lcell
-- Equation(s):
-- \Mux4~3_combout\ = \Mux4~2_combout\ & (\A[3]~dataout\ # !\Add2|adder|result_node|cs_buffer[1]~combout\) # !\Mux4~2_combout\ & (\Add2|adder|result_node|cs_buffer[1]~combout\ & \A[2]~dataout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "bc8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~dataout\,
	datab => \Mux4~2_combout\,
	datac => \Add2|adder|result_node|cs_buffer[1]~combout\,
	datad => \A[2]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~3_combout\);

\B[2]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_B(2),
	dataout => \B[2]~dataout\);

\Mux6~2\ : flex10ke_lcell
-- Equation(s):
-- \Mux6~2_combout\ = \Add2|adder|result_node|cs_buffer[1]~combout\ & (\B[2]~dataout\ # \x[0]~regout\) # !\Add2|adder|result_node|cs_buffer[1]~combout\ & \B[0]~dataout\ & (!\x[0]~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~dataout\,
	datab => \Add2|adder|result_node|cs_buffer[1]~combout\,
	datac => \B[2]~dataout\,
	datad => \x[0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~2_combout\);

\B[1]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_B(1),
	dataout => \B[1]~dataout\);

\Mux6~3\ : flex10ke_lcell
-- Equation(s):
-- \Mux6~3_combout\ = \Mux6~2_combout\ & (\B[3]~dataout\ # !\x[0]~regout\) # !\Mux6~2_combout\ & (\x[0]~regout\ & \B[1]~dataout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "bc8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~dataout\,
	datab => \Mux6~2_combout\,
	datac => \x[0]~regout\,
	datad => \B[1]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~3_combout\);

\C~1541\ : flex10ke_lcell
-- Equation(s):
-- \C~1541_combout\ = \Equal4~13_combout\ & (\Mux4~3_combout\ $ \Mux6~3_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "3c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \Mux4~3_combout\,
	datac => \Mux6~3_combout\,
	datad => \Equal4~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C~1541_combout\);

\C~1545\ : flex10ke_lcell
-- Equation(s):
-- \C~1545_combout\ = !\C~1544_combout\ & !\C~1542_combout\ & (\Equal0~13_combout\ # !\C~1541_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1101",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \C~1544_combout\,
	datab => \C~1542_combout\,
	datac => \C~1541_combout\,
	datad => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C~1545_combout\);

\A[3]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_A(3),
	dataout => \A[3]~dataout\);

\B[3]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_B(3),
	dataout => \B[3]~dataout\);

\LessThan0~310\ : flex10ke_lcell
-- Equation(s):
-- \LessThan0~310_combout\ = \A[3]~dataout\ $ \B[3]~dataout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \A[3]~dataout\,
	datad => \B[3]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~310_combout\);

\A[0]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_A(0),
	dataout => \A[0]~dataout\);

\Mux7~2\ : flex10ke_lcell
-- Equation(s):
-- \Mux7~2_combout\ = \Add2|adder|result_node|cs_buffer[1]~combout\ & \x[0]~regout\ # !\Add2|adder|result_node|cs_buffer[1]~combout\ & (\A[0]~dataout\ $ (\x[0]~regout\ & \A[1]~dataout\))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "9cd8",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Add2|adder|result_node|cs_buffer[1]~combout\,
	datab => \x[0]~regout\,
	datac => \A[0]~dataout\,
	datad => \A[1]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~2_combout\);

\Add8~86\ : flex10ke_lcell
-- Equation(s):
-- \Add8~86_combout\ = \A[2]~dataout\ $ (\A[0]~dataout\ # \A[1]~dataout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "333c",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~dataout\,
	datac => \A[0]~dataout\,
	datad => \A[1]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~86_combout\);

\Mux7~3\ : flex10ke_lcell
-- Equation(s):
-- \Mux7~3_combout\ = \Mux7~2_combout\ & (\Add8~87_combout\ # !\Add2|adder|result_node|cs_buffer[1]~combout\) # !\Mux7~2_combout\ & (\Add2|adder|result_node|cs_buffer[1]~combout\ & \Add8~86_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "bc8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~87_combout\,
	datab => \Mux7~2_combout\,
	datac => \Add2|adder|result_node|cs_buffer[1]~combout\,
	datad => \Add8~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~3_combout\);

\LessThan0~315\ : flex10ke_lcell
-- Equation(s):
-- \LessThan0~322\ = \A[3]~dataout\ & \B[3]~dataout\ & (\B[2]~dataout\ # !\A[2]~dataout\) # !\A[3]~dataout\ & (\B[2]~dataout\ # \B[3]~dataout\ # !\A[2]~dataout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f751",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~dataout\,
	datab => \A[2]~dataout\,
	datac => \B[2]~dataout\,
	datad => \B[3]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~315_combout\,
	cascout => \LessThan0~322\);

\LessThan0~318\ : flex10ke_lcell
-- Equation(s):
-- \LessThan0~318_combout\ = (\LessThan0~310_combout\ # \A[2]~dataout\ $ \B[2]~dataout\ # !\LessThan0~316_combout\) & CASCADE(\LessThan0~322\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff7d",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~316_combout\,
	datab => \A[2]~dataout\,
	datac => \B[2]~dataout\,
	datad => \LessThan0~310_combout\,
	cascin => \LessThan0~322\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~318_combout\);

\C~1573\ : flex10ke_lcell
-- Equation(s):
-- \C~1573_combout\ = \LessThan0~318_combout\ & (\A[3]~dataout\ $ !\B[3]~dataout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "c300",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~dataout\,
	datac => \B[3]~dataout\,
	datad => \LessThan0~318_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C~1573_combout\);

\y~504\ : flex10ke_lcell
-- Equation(s):
-- \y~504_combout\ = \Mux7~3_combout\ & \C~1573_combout\ & (\Mux6~3_combout\ # \y~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "e000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~3_combout\,
	datab => \y~regout\,
	datac => \Mux7~3_combout\,
	datad => \C~1573_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \y~504_combout\);

\B[0]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_B(0),
	dataout => \B[0]~dataout\);

\Add5~87\ : flex10ke_lcell
-- Equation(s):
-- \Add5~87_combout\ = \B[2]~dataout\ $ (\B[0]~dataout\ # \B[1]~dataout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "333c",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~dataout\,
	datac => \B[0]~dataout\,
	datad => \B[1]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~87_combout\);

\Mux5~2\ : flex10ke_lcell
-- Equation(s):
-- \Mux5~2_combout\ = \Add2|adder|result_node|cs_buffer[1]~combout\ & (\Add5~87_combout\ # \x[0]~regout\) # !\Add2|adder|result_node|cs_buffer[1]~combout\ & \B[0]~dataout\ & (!\x[0]~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~dataout\,
	datab => \Add2|adder|result_node|cs_buffer[1]~combout\,
	datac => \Add5~87_combout\,
	datad => \x[0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~2_combout\);

\Add5~86\ : flex10ke_lcell
-- Equation(s):
-- \Add5~86_combout\ = \B[0]~dataout\ $ \B[1]~dataout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \B[0]~dataout\,
	datad => \B[1]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~86_combout\);

\Mux5~3\ : flex10ke_lcell
-- Equation(s):
-- \Mux5~3_combout\ = \Mux5~2_combout\ & (\Add5~88_combout\ # !\x[0]~regout\) # !\Mux5~2_combout\ & (\x[0]~regout\ & \Add5~86_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "bc8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~88_combout\,
	datab => \Mux5~2_combout\,
	datac => \x[0]~regout\,
	datad => \Add5~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~3_combout\);

\C~1572\ : flex10ke_lcell
-- Equation(s):
-- \C~1572_combout\ = !\LessThan0~318_combout\ & (\A[3]~dataout\ $ !\B[3]~dataout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "3003",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~318_combout\,
	datac => \A[3]~dataout\,
	datad => \B[3]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C~1572_combout\);

\y~503\ : flex10ke_lcell
-- Equation(s):
-- \y~503_combout\ = \Mux5~3_combout\ & \C~1572_combout\ & (\Mux4~3_combout\ # \y~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "e000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~3_combout\,
	datab => \y~regout\,
	datac => \Mux5~3_combout\,
	datad => \C~1572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \y~503_combout\);

\y~505\ : flex10ke_lcell
-- Equation(s):
-- \y~505_combout\ = \y~504_combout\ # \y~503_combout\ # \always0~72_combout\ & \LessThan0~310_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fff8",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \always0~72_combout\,
	datab => \LessThan0~310_combout\,
	datac => \y~504_combout\,
	datad => \y~503_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \y~505_combout\);

\y~506\ : flex10ke_lcell
-- Equation(s):
-- \y~506_combout\ = \C~1573_combout\ & !\C~1572_combout\ & (\Mux6~3_combout\) # !\C~1573_combout\ & (\Mux4~3_combout\ # !\C~1572_combout\ & \Mux6~3_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "7350",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \C~1573_combout\,
	datab => \C~1572_combout\,
	datac => \Mux4~3_combout\,
	datad => \Mux6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \y~506_combout\);

y : flex10ke_lcell
-- Equation(s):
-- \y~regout\ = DFFEA(\y~505_combout\ # \y~506_combout\ & \y~regout\, GLOBAL(\clk~dataout\), , , \y~507_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "fccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \y~507_combout\,
	datab => \y~505_combout\,
	datac => \y~506_combout\,
	datad => \y~regout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y~regout\);

\C~1574\ : flex10ke_lcell
-- Equation(s):
-- \C~1615\ = \Mux5~3_combout\ $ \Mux4~3_combout\ $ !\y~regout\ # !\C~1572_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "7dd7",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \C~1572_combout\,
	datab => \Mux5~3_combout\,
	datac => \Mux4~3_combout\,
	datad => \y~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C~1574_combout\,
	cascout => \C~1615\);

\C~1584\ : flex10ke_lcell
-- Equation(s):
-- \C~1617\ = (\Mux7~3_combout\ $ \Mux6~3_combout\ $ !\y~regout\ # !\C~1573_combout\) & CASCADE(\C~1615\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "7dd7",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \C~1573_combout\,
	datab => \Mux7~3_combout\,
	datac => \Mux6~3_combout\,
	datad => \y~regout\,
	cascin => \C~1615\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C~1584_combout\,
	cascout => \C~1617\);

\C~1582\ : flex10ke_lcell
-- Equation(s):
-- \C~1582_combout\ = (\Mux4~3_combout\ $ \Mux6~3_combout\ $ !\y~regout\ # !\LessThan0~310_combout\) & CASCADE(\C~1617\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "7dd7",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~310_combout\,
	datab => \Mux4~3_combout\,
	datac => \Mux6~3_combout\,
	datad => \y~regout\,
	cascin => \C~1617\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C~1582_combout\);

\C[0]~reg0\ : flex10ke_lcell
-- Equation(s):
-- \C[0]~reg0_regout\ = DFFEA(!\C~1582_combout\ & \C~1537_combout\ # !\C~1545_combout\, GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , \C~1546_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "3f33",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \C~1546_combout\,
	datab => \C~1545_combout\,
	datac => \C~1582_combout\,
	datad => \C~1537_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C[0]~reg0_regout\);

\C~1547\ : flex10ke_lcell
-- Equation(s):
-- \C~1547_combout\ = !\Add2|adder|result_node|cs_buffer[2]~combout\ & !\Add2|adder|result_node|cs_buffer[1]~combout\ & !\x~6615_combout\ & \x[0]~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Add2|adder|result_node|cs_buffer[2]~combout\,
	datab => \Add2|adder|result_node|cs_buffer[1]~combout\,
	datac => \x~6615_combout\,
	datad => \x[0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C~1547_combout\);

\C[1]~reg0\ : flex10ke_lcell
-- Equation(s):
-- \C[1]~reg0_regout\ = DFFEA(!\C~1582_combout\ & \C~1537_combout\ # !\C~1545_combout\, GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , \C~1547_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "3f33",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \C~1547_combout\,
	datab => \C~1545_combout\,
	datac => \C~1582_combout\,
	datad => \C~1537_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C[1]~reg0_regout\);

\C~1548\ : flex10ke_lcell
-- Equation(s):
-- \C~1548_combout\ = !\Add2|adder|result_node|cs_buffer[2]~combout\ & !\x[0]~regout\ & !\x~6615_combout\ & \Add2|adder|result_node|cs_buffer[1]~combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Add2|adder|result_node|cs_buffer[2]~combout\,
	datab => \x[0]~regout\,
	datac => \x~6615_combout\,
	datad => \Add2|adder|result_node|cs_buffer[1]~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C~1548_combout\);

\C[2]~reg0\ : flex10ke_lcell
-- Equation(s):
-- \C[2]~reg0_regout\ = DFFEA(!\C~1582_combout\ & \C~1537_combout\ # !\C~1545_combout\, GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , \C~1548_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "3f33",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \C~1548_combout\,
	datab => \C~1545_combout\,
	datac => \C~1582_combout\,
	datad => \C~1537_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C[2]~reg0_regout\);

\x[2]\ : flex10ke_lcell
-- Equation(s):
-- \x[2]~regout\ = DFFEA(!\Add2|adder|result_node|cs_buffer[2]~combout\ & !\x~6618_combout\, GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , \x~6623_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x~6623_combout\,
	datac => \Add2|adder|result_node|cs_buffer[2]~combout\,
	datad => \x~6618_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \x[2]~regout\);

\Add2|adder|result_node|cs_buffer[2]\ : flex10ke_lcell
-- Equation(s):
-- \Add2|adder|result_node|cs_buffer[2]~combout\ = \x[2]~regout\ $ !\Add2|adder|result_node|cout[1]\
-- \Add2|adder|result_node|cout[2]\ = CARRY(!\x[2]~regout\ & \Add2|adder|result_node|cout[1]\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "c330",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \x[2]~regout\,
	cin => \Add2|adder|result_node|cout[1]\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2|adder|result_node|cs_buffer[2]~combout\,
	cout => \Add2|adder|result_node|cout[2]\);

\Equal11~312\ : flex10ke_lcell
-- Equation(s):
-- \Equal11~312_combout\ = !\Add2|adder|result_node|cs_buffer[2]~combout\ & \Add2|adder|result_node|cs_buffer[1]~combout\ & \x[0]~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \Add2|adder|result_node|cs_buffer[2]~combout\,
	datac => \Add2|adder|result_node|cs_buffer[1]~combout\,
	datad => \x[0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal11~312_combout\);

\C~1552\ : flex10ke_lcell
-- Equation(s):
-- \C~1552_combout\ = \C~1537_combout\ & (\Equal10~25_combout\) # !\C~1537_combout\ & \Equal11~312_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \C~1537_combout\,
	datac => \Equal11~312_combout\,
	datad => \Equal10~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C~1552_combout\);

\C~1579\ : flex10ke_lcell
-- Equation(s):
-- \C~1624\ = \LessThan0~318_combout\ & (\Mux7~3_combout\ $ \Mux6~3_combout\ $ \y~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "9600",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~3_combout\,
	datab => \Mux6~3_combout\,
	datac => \y~regout\,
	datad => \LessThan0~318_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C~1579_combout\,
	cascout => \C~1624\);

\C~1586\ : flex10ke_lcell
-- Equation(s):
-- \C~1586_combout\ = (!\Equal11~323_combout\ & \Equal11~312_combout\ & (\B[3]~dataout\ $ !\A[3]~dataout\)) & CASCADE(\C~1624\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "4100",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~323_combout\,
	datab => \B[3]~dataout\,
	datac => \A[3]~dataout\,
	datad => \Equal11~312_combout\,
	cascin => \C~1624\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C~1586_combout\);

\C~1553\ : flex10ke_lcell
-- Equation(s):
-- \C~1553_combout\ = \C[3]~reg0_regout\ & (\Add2|adder|result_node|cs_buffer[2]~combout\ # !\x[0]~regout\ # !\Add2|adder|result_node|cs_buffer[1]~combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f700",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Add2|adder|result_node|cs_buffer[1]~combout\,
	datab => \x[0]~regout\,
	datac => \Add2|adder|result_node|cs_buffer[2]~combout\,
	datad => \C[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C~1553_combout\);

\x~6664\ : flex10ke_lcell
-- Equation(s):
-- \x~6664_combout\ = \opcode[0]~dataout\ & !\x[12]~regout\ # !\opcode[0]~dataout\ & (\opcode[2]~dataout\ & !\x[12]~regout\ # !\opcode[2]~dataout\ & (!\opcode[1]~dataout\))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5553",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x[12]~regout\,
	datab => \opcode[1]~dataout\,
	datac => \opcode[0]~dataout\,
	datad => \opcode[2]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \x~6664_combout\);

\x[12]\ : flex10ke_lcell
-- Equation(s):
-- \x[12]~regout\ = DFFEA(\x~6615_combout\ & (!\C~1537_combout\ # !\x~6664_combout\) # !\x~6615_combout\ & !\Add2|adder|result_node|cs_buffer[12]~combout\ & (!\C~1537_combout\ # !\x~6664_combout\), GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0bbb",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x~6615_combout\,
	datab => \Add2|adder|result_node|cs_buffer[12]~combout\,
	datac => \x~6664_combout\,
	datad => \C~1537_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \x[12]~regout\);

\Add2|adder|result_node|cs_buffer[3]\ : flex10ke_lcell
-- Equation(s):
-- \Add2|adder|result_node|cs_buffer[3]~combout\ = \x[3]~regout\ $ !\Add2|adder|result_node|cout[2]\
-- \Add2|adder|result_node|cout[3]\ = CARRY(!\x[3]~regout\ & \Add2|adder|result_node|cout[2]\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "c330",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \x[3]~regout\,
	cin => \Add2|adder|result_node|cout[2]\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2|adder|result_node|cs_buffer[3]~combout\,
	cout => \Add2|adder|result_node|cout[3]\);

\x~6678\ : flex10ke_lcell
-- Equation(s):
-- \x~6678_combout\ = \opcode[0]~dataout\ & !\x[3]~regout\ # !\opcode[0]~dataout\ & (\opcode[2]~dataout\ & !\x[3]~regout\ # !\opcode[2]~dataout\ & (!\opcode[1]~dataout\))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5553",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x[3]~regout\,
	datab => \opcode[1]~dataout\,
	datac => \opcode[0]~dataout\,
	datad => \opcode[2]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \x~6678_combout\);

\x[3]\ : flex10ke_lcell
-- Equation(s):
-- \x[3]~regout\ = DFFEA(\x~6615_combout\ & (!\C~1537_combout\ # !\x~6678_combout\) # !\x~6615_combout\ & !\Add2|adder|result_node|cs_buffer[3]~combout\ & (!\C~1537_combout\ # !\x~6678_combout\), GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0bbb",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x~6615_combout\,
	datab => \Add2|adder|result_node|cs_buffer[3]~combout\,
	datac => \x~6678_combout\,
	datad => \C~1537_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \x[3]~regout\);

\Add2|adder|result_node|cs_buffer[4]\ : flex10ke_lcell
-- Equation(s):
-- \Add2|adder|result_node|cs_buffer[4]~combout\ = \x[4]~regout\ $ !\Add2|adder|result_node|cout[3]\
-- \Add2|adder|result_node|cout[4]\ = CARRY(!\x[4]~regout\ & \Add2|adder|result_node|cout[3]\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "c330",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \x[4]~regout\,
	cin => \Add2|adder|result_node|cout[3]\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2|adder|result_node|cs_buffer[4]~combout\,
	cout => \Add2|adder|result_node|cout[4]\);

\x~6676\ : flex10ke_lcell
-- Equation(s):
-- \x~6676_combout\ = \opcode[0]~dataout\ & !\x[4]~regout\ # !\opcode[0]~dataout\ & (\opcode[2]~dataout\ & !\x[4]~regout\ # !\opcode[2]~dataout\ & (!\opcode[1]~dataout\))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5553",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x[4]~regout\,
	datab => \opcode[1]~dataout\,
	datac => \opcode[0]~dataout\,
	datad => \opcode[2]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \x~6676_combout\);

\x[4]\ : flex10ke_lcell
-- Equation(s):
-- \x[4]~regout\ = DFFEA(\x~6615_combout\ & (!\C~1537_combout\ # !\x~6676_combout\) # !\x~6615_combout\ & !\Add2|adder|result_node|cs_buffer[4]~combout\ & (!\C~1537_combout\ # !\x~6676_combout\), GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0bbb",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x~6615_combout\,
	datab => \Add2|adder|result_node|cs_buffer[4]~combout\,
	datac => \x~6676_combout\,
	datad => \C~1537_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \x[4]~regout\);

\Add2|adder|result_node|cs_buffer[5]\ : flex10ke_lcell
-- Equation(s):
-- \Add2|adder|result_node|cs_buffer[5]~combout\ = \x[5]~regout\ $ !\Add2|adder|result_node|cout[4]\
-- \Add2|adder|result_node|cout[5]\ = CARRY(!\x[5]~regout\ & \Add2|adder|result_node|cout[4]\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "c330",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \x[5]~regout\,
	cin => \Add2|adder|result_node|cout[4]\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2|adder|result_node|cs_buffer[5]~combout\,
	cout => \Add2|adder|result_node|cout[5]\);

\x~6674\ : flex10ke_lcell
-- Equation(s):
-- \x~6674_combout\ = \opcode[0]~dataout\ & !\x[5]~regout\ # !\opcode[0]~dataout\ & (\opcode[2]~dataout\ & !\x[5]~regout\ # !\opcode[2]~dataout\ & (!\opcode[1]~dataout\))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5553",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x[5]~regout\,
	datab => \opcode[1]~dataout\,
	datac => \opcode[0]~dataout\,
	datad => \opcode[2]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \x~6674_combout\);

\x[5]\ : flex10ke_lcell
-- Equation(s):
-- \x[5]~regout\ = DFFEA(\x~6615_combout\ & (!\C~1537_combout\ # !\x~6674_combout\) # !\x~6615_combout\ & !\Add2|adder|result_node|cs_buffer[5]~combout\ & (!\C~1537_combout\ # !\x~6674_combout\), GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0bbb",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x~6615_combout\,
	datab => \Add2|adder|result_node|cs_buffer[5]~combout\,
	datac => \x~6674_combout\,
	datad => \C~1537_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \x[5]~regout\);

\Add2|adder|result_node|cs_buffer[6]\ : flex10ke_lcell
-- Equation(s):
-- \Add2|adder|result_node|cs_buffer[6]~combout\ = \x[6]~regout\ $ !\Add2|adder|result_node|cout[5]\
-- \Add2|adder|result_node|cout[6]\ = CARRY(!\x[6]~regout\ & \Add2|adder|result_node|cout[5]\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "c330",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \x[6]~regout\,
	cin => \Add2|adder|result_node|cout[5]\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2|adder|result_node|cs_buffer[6]~combout\,
	cout => \Add2|adder|result_node|cout[6]\);

\x~6672\ : flex10ke_lcell
-- Equation(s):
-- \x~6672_combout\ = \opcode[0]~dataout\ & !\x[6]~regout\ # !\opcode[0]~dataout\ & (\opcode[2]~dataout\ & !\x[6]~regout\ # !\opcode[2]~dataout\ & (!\opcode[1]~dataout\))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5553",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x[6]~regout\,
	datab => \opcode[1]~dataout\,
	datac => \opcode[0]~dataout\,
	datad => \opcode[2]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \x~6672_combout\);

\x[6]\ : flex10ke_lcell
-- Equation(s):
-- \x[6]~regout\ = DFFEA(\x~6615_combout\ & (!\C~1537_combout\ # !\x~6672_combout\) # !\x~6615_combout\ & !\Add2|adder|result_node|cs_buffer[6]~combout\ & (!\C~1537_combout\ # !\x~6672_combout\), GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0bbb",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x~6615_combout\,
	datab => \Add2|adder|result_node|cs_buffer[6]~combout\,
	datac => \x~6672_combout\,
	datad => \C~1537_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \x[6]~regout\);

\Add2|adder|result_node|cs_buffer[7]\ : flex10ke_lcell
-- Equation(s):
-- \Add2|adder|result_node|cs_buffer[7]~combout\ = \x[7]~regout\ $ !\Add2|adder|result_node|cout[6]\
-- \Add2|adder|result_node|cout[7]\ = CARRY(!\x[7]~regout\ & \Add2|adder|result_node|cout[6]\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "c330",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \x[7]~regout\,
	cin => \Add2|adder|result_node|cout[6]\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2|adder|result_node|cs_buffer[7]~combout\,
	cout => \Add2|adder|result_node|cout[7]\);

\x~6670\ : flex10ke_lcell
-- Equation(s):
-- \x~6670_combout\ = \opcode[0]~dataout\ & !\x[7]~regout\ # !\opcode[0]~dataout\ & (\opcode[2]~dataout\ & !\x[7]~regout\ # !\opcode[2]~dataout\ & (!\opcode[1]~dataout\))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5553",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x[7]~regout\,
	datab => \opcode[1]~dataout\,
	datac => \opcode[0]~dataout\,
	datad => \opcode[2]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \x~6670_combout\);

\x[7]\ : flex10ke_lcell
-- Equation(s):
-- \x[7]~regout\ = DFFEA(\x~6615_combout\ & (!\C~1537_combout\ # !\x~6670_combout\) # !\x~6615_combout\ & !\Add2|adder|result_node|cs_buffer[7]~combout\ & (!\C~1537_combout\ # !\x~6670_combout\), GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0bbb",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x~6615_combout\,
	datab => \Add2|adder|result_node|cs_buffer[7]~combout\,
	datac => \x~6670_combout\,
	datad => \C~1537_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \x[7]~regout\);

\Add2|adder|result_node|cs_buffer[8]\ : flex10ke_lcell
-- Equation(s):
-- \Add2|adder|result_node|cs_buffer[8]~combout\ = \x[8]~regout\ $ !\Add2|adder|result_node|cout[7]\
-- \Add2|adder|result_node|cout[8]\ = CARRY(!\x[8]~regout\ & \Add2|adder|result_node|cout[7]\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "c330",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \x[8]~regout\,
	cin => \Add2|adder|result_node|cout[7]\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2|adder|result_node|cs_buffer[8]~combout\,
	cout => \Add2|adder|result_node|cout[8]\);

\x~6668\ : flex10ke_lcell
-- Equation(s):
-- \x~6668_combout\ = \opcode[0]~dataout\ & !\x[8]~regout\ # !\opcode[0]~dataout\ & (\opcode[2]~dataout\ & !\x[8]~regout\ # !\opcode[2]~dataout\ & (!\opcode[1]~dataout\))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5553",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x[8]~regout\,
	datab => \opcode[1]~dataout\,
	datac => \opcode[0]~dataout\,
	datad => \opcode[2]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \x~6668_combout\);

\x[8]\ : flex10ke_lcell
-- Equation(s):
-- \x[8]~regout\ = DFFEA(\x~6615_combout\ & (!\C~1537_combout\ # !\x~6668_combout\) # !\x~6615_combout\ & !\Add2|adder|result_node|cs_buffer[8]~combout\ & (!\C~1537_combout\ # !\x~6668_combout\), GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0bbb",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x~6615_combout\,
	datab => \Add2|adder|result_node|cs_buffer[8]~combout\,
	datac => \x~6668_combout\,
	datad => \C~1537_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \x[8]~regout\);

\Add2|adder|result_node|cs_buffer[9]\ : flex10ke_lcell
-- Equation(s):
-- \Add2|adder|result_node|cs_buffer[9]~combout\ = \x[9]~regout\ $ !\Add2|adder|result_node|cout[8]\
-- \Add2|adder|result_node|cout[9]\ = CARRY(!\x[9]~regout\ & \Add2|adder|result_node|cout[8]\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "c330",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \x[9]~regout\,
	cin => \Add2|adder|result_node|cout[8]\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2|adder|result_node|cs_buffer[9]~combout\,
	cout => \Add2|adder|result_node|cout[9]\);

\x~6682\ : flex10ke_lcell
-- Equation(s):
-- \x~6682_combout\ = \opcode[0]~dataout\ & !\x[9]~regout\ # !\opcode[0]~dataout\ & (\opcode[2]~dataout\ & !\x[9]~regout\ # !\opcode[2]~dataout\ & (!\opcode[1]~dataout\))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5553",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x[9]~regout\,
	datab => \opcode[1]~dataout\,
	datac => \opcode[0]~dataout\,
	datad => \opcode[2]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \x~6682_combout\);

\x[9]\ : flex10ke_lcell
-- Equation(s):
-- \x[9]~regout\ = DFFEA(\x~6615_combout\ & (!\C~1537_combout\ # !\x~6682_combout\) # !\x~6615_combout\ & !\Add2|adder|result_node|cs_buffer[9]~combout\ & (!\C~1537_combout\ # !\x~6682_combout\), GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0bbb",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x~6615_combout\,
	datab => \Add2|adder|result_node|cs_buffer[9]~combout\,
	datac => \x~6682_combout\,
	datad => \C~1537_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \x[9]~regout\);

\Add2|adder|result_node|cs_buffer[10]\ : flex10ke_lcell
-- Equation(s):
-- \Add2|adder|result_node|cs_buffer[10]~combout\ = \x[10]~regout\ $ !\Add2|adder|result_node|cout[9]\
-- \Add2|adder|result_node|cout[10]\ = CARRY(!\x[10]~regout\ & \Add2|adder|result_node|cout[9]\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "c330",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \x[10]~regout\,
	cin => \Add2|adder|result_node|cout[9]\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2|adder|result_node|cs_buffer[10]~combout\,
	cout => \Add2|adder|result_node|cout[10]\);

\x~6680\ : flex10ke_lcell
-- Equation(s):
-- \x~6680_combout\ = \opcode[0]~dataout\ & !\x[10]~regout\ # !\opcode[0]~dataout\ & (\opcode[2]~dataout\ & !\x[10]~regout\ # !\opcode[2]~dataout\ & (!\opcode[1]~dataout\))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5553",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x[10]~regout\,
	datab => \opcode[1]~dataout\,
	datac => \opcode[0]~dataout\,
	datad => \opcode[2]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \x~6680_combout\);

\x[10]\ : flex10ke_lcell
-- Equation(s):
-- \x[10]~regout\ = DFFEA(\x~6615_combout\ & (!\C~1537_combout\ # !\x~6680_combout\) # !\x~6615_combout\ & !\Add2|adder|result_node|cs_buffer[10]~combout\ & (!\C~1537_combout\ # !\x~6680_combout\), GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0bbb",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x~6615_combout\,
	datab => \Add2|adder|result_node|cs_buffer[10]~combout\,
	datac => \x~6680_combout\,
	datad => \C~1537_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \x[10]~regout\);

\Add2|adder|result_node|cs_buffer[11]\ : flex10ke_lcell
-- Equation(s):
-- \Add2|adder|result_node|cs_buffer[11]~combout\ = \x[11]~regout\ $ !\Add2|adder|result_node|cout[10]\
-- \Add2|adder|result_node|cout[11]\ = CARRY(!\x[11]~regout\ & \Add2|adder|result_node|cout[10]\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "c330",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \x[11]~regout\,
	cin => \Add2|adder|result_node|cout[10]\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2|adder|result_node|cs_buffer[11]~combout\,
	cout => \Add2|adder|result_node|cout[11]\);

\x~6666\ : flex10ke_lcell
-- Equation(s):
-- \x~6666_combout\ = \opcode[0]~dataout\ & !\x[11]~regout\ # !\opcode[0]~dataout\ & (\opcode[2]~dataout\ & !\x[11]~regout\ # !\opcode[2]~dataout\ & (!\opcode[1]~dataout\))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5553",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x[11]~regout\,
	datab => \opcode[1]~dataout\,
	datac => \opcode[0]~dataout\,
	datad => \opcode[2]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \x~6666_combout\);

\x[11]\ : flex10ke_lcell
-- Equation(s):
-- \x[11]~regout\ = DFFEA(\x~6615_combout\ & (!\C~1537_combout\ # !\x~6666_combout\) # !\x~6615_combout\ & !\Add2|adder|result_node|cs_buffer[11]~combout\ & (!\C~1537_combout\ # !\x~6666_combout\), GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0bbb",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x~6615_combout\,
	datab => \Add2|adder|result_node|cs_buffer[11]~combout\,
	datac => \x~6666_combout\,
	datad => \C~1537_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \x[11]~regout\);

\Add2|adder|result_node|cs_buffer[12]\ : flex10ke_lcell
-- Equation(s):
-- \Add2|adder|result_node|cs_buffer[12]~combout\ = \x[12]~regout\ $ !\Add2|adder|result_node|cout[11]\
-- \Add2|adder|result_node|cout[12]\ = CARRY(!\x[12]~regout\ & \Add2|adder|result_node|cout[11]\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "c330",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \x[12]~regout\,
	cin => \Add2|adder|result_node|cout[11]\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2|adder|result_node|cs_buffer[12]~combout\,
	cout => \Add2|adder|result_node|cout[12]\);

\x~6662\ : flex10ke_lcell
-- Equation(s):
-- \x~6662_combout\ = \opcode[0]~dataout\ & !\x[13]~regout\ # !\opcode[0]~dataout\ & (\opcode[2]~dataout\ & !\x[13]~regout\ # !\opcode[2]~dataout\ & (!\opcode[1]~dataout\))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5553",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x[13]~regout\,
	datab => \opcode[1]~dataout\,
	datac => \opcode[0]~dataout\,
	datad => \opcode[2]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \x~6662_combout\);

\x[13]\ : flex10ke_lcell
-- Equation(s):
-- \x[13]~regout\ = DFFEA(\x~6615_combout\ & (!\C~1537_combout\ # !\x~6662_combout\) # !\x~6615_combout\ & !\Add2|adder|result_node|cs_buffer[13]~combout\ & (!\C~1537_combout\ # !\x~6662_combout\), GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0bbb",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x~6615_combout\,
	datab => \Add2|adder|result_node|cs_buffer[13]~combout\,
	datac => \x~6662_combout\,
	datad => \C~1537_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \x[13]~regout\);

\Add2|adder|result_node|cs_buffer[13]\ : flex10ke_lcell
-- Equation(s):
-- \Add2|adder|result_node|cs_buffer[13]~combout\ = \x[13]~regout\ $ !\Add2|adder|result_node|cout[12]\
-- \Add2|adder|result_node|cout[13]\ = CARRY(!\x[13]~regout\ & \Add2|adder|result_node|cout[12]\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "c330",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \x[13]~regout\,
	cin => \Add2|adder|result_node|cout[12]\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2|adder|result_node|cs_buffer[13]~combout\,
	cout => \Add2|adder|result_node|cout[13]\);

\x~6660\ : flex10ke_lcell
-- Equation(s):
-- \x~6660_combout\ = \opcode[0]~dataout\ & !\x[14]~regout\ # !\opcode[0]~dataout\ & (\opcode[2]~dataout\ & !\x[14]~regout\ # !\opcode[2]~dataout\ & (!\opcode[1]~dataout\))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5553",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x[14]~regout\,
	datab => \opcode[1]~dataout\,
	datac => \opcode[0]~dataout\,
	datad => \opcode[2]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \x~6660_combout\);

\x[14]\ : flex10ke_lcell
-- Equation(s):
-- \x[14]~regout\ = DFFEA(\x~6615_combout\ & (!\C~1537_combout\ # !\x~6660_combout\) # !\x~6615_combout\ & !\Add2|adder|result_node|cs_buffer[14]~combout\ & (!\C~1537_combout\ # !\x~6660_combout\), GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0bbb",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x~6615_combout\,
	datab => \Add2|adder|result_node|cs_buffer[14]~combout\,
	datac => \x~6660_combout\,
	datad => \C~1537_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \x[14]~regout\);

\Add2|adder|result_node|cs_buffer[14]\ : flex10ke_lcell
-- Equation(s):
-- \Add2|adder|result_node|cs_buffer[14]~combout\ = \x[14]~regout\ $ !\Add2|adder|result_node|cout[13]\
-- \Add2|adder|result_node|cout[14]\ = CARRY(!\x[14]~regout\ & \Add2|adder|result_node|cout[13]\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "c330",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \x[14]~regout\,
	cin => \Add2|adder|result_node|cout[13]\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2|adder|result_node|cs_buffer[14]~combout\,
	cout => \Add2|adder|result_node|cout[14]\);

\Equal11~319\ : flex10ke_lcell
-- Equation(s):
-- \Equal11~319_combout\ = !\Add2|adder|result_node|cs_buffer[11]~combout\ & !\Add2|adder|result_node|cs_buffer[12]~combout\ & !\Add2|adder|result_node|cs_buffer[13]~combout\ & !\Add2|adder|result_node|cs_buffer[14]~combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Add2|adder|result_node|cs_buffer[11]~combout\,
	datab => \Add2|adder|result_node|cs_buffer[12]~combout\,
	datac => \Add2|adder|result_node|cs_buffer[13]~combout\,
	datad => \Add2|adder|result_node|cs_buffer[14]~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal11~319_combout\);

\x~6656\ : flex10ke_lcell
-- Equation(s):
-- \x~6656_combout\ = \opcode[0]~dataout\ & !\x[16]~regout\ # !\opcode[0]~dataout\ & (\opcode[2]~dataout\ & !\x[16]~regout\ # !\opcode[2]~dataout\ & (!\opcode[1]~dataout\))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5553",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x[16]~regout\,
	datab => \opcode[1]~dataout\,
	datac => \opcode[0]~dataout\,
	datad => \opcode[2]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \x~6656_combout\);

\x[16]\ : flex10ke_lcell
-- Equation(s):
-- \x[16]~regout\ = DFFEA(\x~6615_combout\ & (!\C~1537_combout\ # !\x~6656_combout\) # !\x~6615_combout\ & !\Add2|adder|result_node|cs_buffer[16]~combout\ & (!\C~1537_combout\ # !\x~6656_combout\), GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0bbb",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x~6615_combout\,
	datab => \Add2|adder|result_node|cs_buffer[16]~combout\,
	datac => \x~6656_combout\,
	datad => \C~1537_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \x[16]~regout\);

\Add2|adder|result_node|cs_buffer[15]\ : flex10ke_lcell
-- Equation(s):
-- \Add2|adder|result_node|cs_buffer[15]~combout\ = \x[15]~regout\ $ !\Add2|adder|result_node|cout[14]\
-- \Add2|adder|result_node|cout[15]\ = CARRY(!\x[15]~regout\ & \Add2|adder|result_node|cout[14]\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "c330",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \x[15]~regout\,
	cin => \Add2|adder|result_node|cout[14]\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2|adder|result_node|cs_buffer[15]~combout\,
	cout => \Add2|adder|result_node|cout[15]\);

\x~6658\ : flex10ke_lcell
-- Equation(s):
-- \x~6658_combout\ = \opcode[0]~dataout\ & !\x[15]~regout\ # !\opcode[0]~dataout\ & (\opcode[2]~dataout\ & !\x[15]~regout\ # !\opcode[2]~dataout\ & (!\opcode[1]~dataout\))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5553",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x[15]~regout\,
	datab => \opcode[1]~dataout\,
	datac => \opcode[0]~dataout\,
	datad => \opcode[2]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \x~6658_combout\);

\x[15]\ : flex10ke_lcell
-- Equation(s):
-- \x[15]~regout\ = DFFEA(\x~6615_combout\ & (!\C~1537_combout\ # !\x~6658_combout\) # !\x~6615_combout\ & !\Add2|adder|result_node|cs_buffer[15]~combout\ & (!\C~1537_combout\ # !\x~6658_combout\), GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0bbb",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x~6615_combout\,
	datab => \Add2|adder|result_node|cs_buffer[15]~combout\,
	datac => \x~6658_combout\,
	datad => \C~1537_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \x[15]~regout\);

\Add2|adder|result_node|cs_buffer[16]\ : flex10ke_lcell
-- Equation(s):
-- \Add2|adder|result_node|cs_buffer[16]~combout\ = \x[16]~regout\ $ !\Add2|adder|result_node|cout[15]\
-- \Add2|adder|result_node|cout[16]\ = CARRY(!\x[16]~regout\ & \Add2|adder|result_node|cout[15]\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "c330",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \x[16]~regout\,
	cin => \Add2|adder|result_node|cout[15]\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2|adder|result_node|cs_buffer[16]~combout\,
	cout => \Add2|adder|result_node|cout[16]\);

\x~6654\ : flex10ke_lcell
-- Equation(s):
-- \x~6654_combout\ = \opcode[0]~dataout\ & !\x[17]~regout\ # !\opcode[0]~dataout\ & (\opcode[2]~dataout\ & !\x[17]~regout\ # !\opcode[2]~dataout\ & (!\opcode[1]~dataout\))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5553",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x[17]~regout\,
	datab => \opcode[1]~dataout\,
	datac => \opcode[0]~dataout\,
	datad => \opcode[2]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \x~6654_combout\);

\x[17]\ : flex10ke_lcell
-- Equation(s):
-- \x[17]~regout\ = DFFEA(\x~6615_combout\ & (!\C~1537_combout\ # !\x~6654_combout\) # !\x~6615_combout\ & !\Add2|adder|result_node|cs_buffer[17]~combout\ & (!\C~1537_combout\ # !\x~6654_combout\), GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0bbb",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x~6615_combout\,
	datab => \Add2|adder|result_node|cs_buffer[17]~combout\,
	datac => \x~6654_combout\,
	datad => \C~1537_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \x[17]~regout\);

\Add2|adder|result_node|cs_buffer[17]\ : flex10ke_lcell
-- Equation(s):
-- \Add2|adder|result_node|cs_buffer[17]~combout\ = \x[17]~regout\ $ !\Add2|adder|result_node|cout[16]\
-- \Add2|adder|result_node|cout[17]\ = CARRY(!\x[17]~regout\ & \Add2|adder|result_node|cout[16]\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "c330",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \x[17]~regout\,
	cin => \Add2|adder|result_node|cout[16]\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2|adder|result_node|cs_buffer[17]~combout\,
	cout => \Add2|adder|result_node|cout[17]\);

\x~6652\ : flex10ke_lcell
-- Equation(s):
-- \x~6652_combout\ = \opcode[0]~dataout\ & !\x[18]~regout\ # !\opcode[0]~dataout\ & (\opcode[2]~dataout\ & !\x[18]~regout\ # !\opcode[2]~dataout\ & (!\opcode[1]~dataout\))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5553",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x[18]~regout\,
	datab => \opcode[1]~dataout\,
	datac => \opcode[0]~dataout\,
	datad => \opcode[2]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \x~6652_combout\);

\x[18]\ : flex10ke_lcell
-- Equation(s):
-- \x[18]~regout\ = DFFEA(\x~6615_combout\ & (!\C~1537_combout\ # !\x~6652_combout\) # !\x~6615_combout\ & !\Add2|adder|result_node|cs_buffer[18]~combout\ & (!\C~1537_combout\ # !\x~6652_combout\), GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0bbb",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x~6615_combout\,
	datab => \Add2|adder|result_node|cs_buffer[18]~combout\,
	datac => \x~6652_combout\,
	datad => \C~1537_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \x[18]~regout\);

\Add2|adder|result_node|cs_buffer[18]\ : flex10ke_lcell
-- Equation(s):
-- \Add2|adder|result_node|cs_buffer[18]~combout\ = \x[18]~regout\ $ !\Add2|adder|result_node|cout[17]\
-- \Add2|adder|result_node|cout[18]\ = CARRY(!\x[18]~regout\ & \Add2|adder|result_node|cout[17]\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "c330",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \x[18]~regout\,
	cin => \Add2|adder|result_node|cout[17]\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2|adder|result_node|cs_buffer[18]~combout\,
	cout => \Add2|adder|result_node|cout[18]\);

\Equal11~318\ : flex10ke_lcell
-- Equation(s):
-- \Equal11~318_combout\ = !\Add2|adder|result_node|cs_buffer[15]~combout\ & !\Add2|adder|result_node|cs_buffer[16]~combout\ & !\Add2|adder|result_node|cs_buffer[17]~combout\ & !\Add2|adder|result_node|cs_buffer[18]~combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Add2|adder|result_node|cs_buffer[15]~combout\,
	datab => \Add2|adder|result_node|cs_buffer[16]~combout\,
	datac => \Add2|adder|result_node|cs_buffer[17]~combout\,
	datad => \Add2|adder|result_node|cs_buffer[18]~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal11~318_combout\);

\x~6648\ : flex10ke_lcell
-- Equation(s):
-- \x~6648_combout\ = \opcode[0]~dataout\ & !\x[26]~regout\ # !\opcode[0]~dataout\ & (\opcode[2]~dataout\ & !\x[26]~regout\ # !\opcode[2]~dataout\ & (!\opcode[1]~dataout\))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5553",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x[26]~regout\,
	datab => \opcode[1]~dataout\,
	datac => \opcode[0]~dataout\,
	datad => \opcode[2]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \x~6648_combout\);

\x[26]\ : flex10ke_lcell
-- Equation(s):
-- \x[26]~regout\ = DFFEA(\x~6615_combout\ & (!\C~1537_combout\ # !\x~6648_combout\) # !\x~6615_combout\ & !\Add2|adder|result_node|cs_buffer[26]~combout\ & (!\C~1537_combout\ # !\x~6648_combout\), GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0bbb",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x~6615_combout\,
	datab => \Add2|adder|result_node|cs_buffer[26]~combout\,
	datac => \x~6648_combout\,
	datad => \C~1537_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \x[26]~regout\);

\Add2|adder|result_node|cs_buffer[19]\ : flex10ke_lcell
-- Equation(s):
-- \Add2|adder|result_node|cs_buffer[19]~combout\ = \x[19]~regout\ $ !\Add2|adder|result_node|cout[18]\
-- \Add2|adder|result_node|cout[19]\ = CARRY(!\x[19]~regout\ & \Add2|adder|result_node|cout[18]\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "c330",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \x[19]~regout\,
	cin => \Add2|adder|result_node|cout[18]\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2|adder|result_node|cs_buffer[19]~combout\,
	cout => \Add2|adder|result_node|cout[19]\);

\x~6646\ : flex10ke_lcell
-- Equation(s):
-- \x~6646_combout\ = \opcode[0]~dataout\ & !\x[19]~regout\ # !\opcode[0]~dataout\ & (\opcode[2]~dataout\ & !\x[19]~regout\ # !\opcode[2]~dataout\ & (!\opcode[1]~dataout\))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5553",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x[19]~regout\,
	datab => \opcode[1]~dataout\,
	datac => \opcode[0]~dataout\,
	datad => \opcode[2]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \x~6646_combout\);

\x[19]\ : flex10ke_lcell
-- Equation(s):
-- \x[19]~regout\ = DFFEA(\x~6615_combout\ & (!\C~1537_combout\ # !\x~6646_combout\) # !\x~6615_combout\ & !\Add2|adder|result_node|cs_buffer[19]~combout\ & (!\C~1537_combout\ # !\x~6646_combout\), GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0bbb",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x~6615_combout\,
	datab => \Add2|adder|result_node|cs_buffer[19]~combout\,
	datac => \x~6646_combout\,
	datad => \C~1537_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \x[19]~regout\);

\Add2|adder|result_node|cs_buffer[20]\ : flex10ke_lcell
-- Equation(s):
-- \Add2|adder|result_node|cs_buffer[20]~combout\ = \x[20]~regout\ $ !\Add2|adder|result_node|cout[19]\
-- \Add2|adder|result_node|cout[20]\ = CARRY(!\x[20]~regout\ & \Add2|adder|result_node|cout[19]\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "c330",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \x[20]~regout\,
	cin => \Add2|adder|result_node|cout[19]\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2|adder|result_node|cs_buffer[20]~combout\,
	cout => \Add2|adder|result_node|cout[20]\);

\x~6644\ : flex10ke_lcell
-- Equation(s):
-- \x~6644_combout\ = \opcode[0]~dataout\ & !\x[20]~regout\ # !\opcode[0]~dataout\ & (\opcode[2]~dataout\ & !\x[20]~regout\ # !\opcode[2]~dataout\ & (!\opcode[1]~dataout\))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5553",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x[20]~regout\,
	datab => \opcode[1]~dataout\,
	datac => \opcode[0]~dataout\,
	datad => \opcode[2]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \x~6644_combout\);

\x[20]\ : flex10ke_lcell
-- Equation(s):
-- \x[20]~regout\ = DFFEA(\x~6615_combout\ & (!\C~1537_combout\ # !\x~6644_combout\) # !\x~6615_combout\ & !\Add2|adder|result_node|cs_buffer[20]~combout\ & (!\C~1537_combout\ # !\x~6644_combout\), GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0bbb",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x~6615_combout\,
	datab => \Add2|adder|result_node|cs_buffer[20]~combout\,
	datac => \x~6644_combout\,
	datad => \C~1537_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \x[20]~regout\);

\Add2|adder|result_node|cs_buffer[21]\ : flex10ke_lcell
-- Equation(s):
-- \Add2|adder|result_node|cs_buffer[21]~combout\ = \x[21]~regout\ $ !\Add2|adder|result_node|cout[20]\
-- \Add2|adder|result_node|cout[21]\ = CARRY(!\x[21]~regout\ & \Add2|adder|result_node|cout[20]\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "c330",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \x[21]~regout\,
	cin => \Add2|adder|result_node|cout[20]\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2|adder|result_node|cs_buffer[21]~combout\,
	cout => \Add2|adder|result_node|cout[21]\);

\x~6642\ : flex10ke_lcell
-- Equation(s):
-- \x~6642_combout\ = \opcode[0]~dataout\ & !\x[21]~regout\ # !\opcode[0]~dataout\ & (\opcode[2]~dataout\ & !\x[21]~regout\ # !\opcode[2]~dataout\ & (!\opcode[1]~dataout\))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5553",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x[21]~regout\,
	datab => \opcode[1]~dataout\,
	datac => \opcode[0]~dataout\,
	datad => \opcode[2]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \x~6642_combout\);

\x[21]\ : flex10ke_lcell
-- Equation(s):
-- \x[21]~regout\ = DFFEA(\x~6615_combout\ & (!\C~1537_combout\ # !\x~6642_combout\) # !\x~6615_combout\ & !\Add2|adder|result_node|cs_buffer[21]~combout\ & (!\C~1537_combout\ # !\x~6642_combout\), GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0bbb",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x~6615_combout\,
	datab => \Add2|adder|result_node|cs_buffer[21]~combout\,
	datac => \x~6642_combout\,
	datad => \C~1537_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \x[21]~regout\);

\Add2|adder|result_node|cs_buffer[22]\ : flex10ke_lcell
-- Equation(s):
-- \Add2|adder|result_node|cs_buffer[22]~combout\ = \x[22]~regout\ $ !\Add2|adder|result_node|cout[21]\
-- \Add2|adder|result_node|cout[22]\ = CARRY(!\x[22]~regout\ & \Add2|adder|result_node|cout[21]\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "c330",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \x[22]~regout\,
	cin => \Add2|adder|result_node|cout[21]\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2|adder|result_node|cs_buffer[22]~combout\,
	cout => \Add2|adder|result_node|cout[22]\);

\x~6640\ : flex10ke_lcell
-- Equation(s):
-- \x~6640_combout\ = \opcode[0]~dataout\ & !\x[22]~regout\ # !\opcode[0]~dataout\ & (\opcode[2]~dataout\ & !\x[22]~regout\ # !\opcode[2]~dataout\ & (!\opcode[1]~dataout\))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5553",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x[22]~regout\,
	datab => \opcode[1]~dataout\,
	datac => \opcode[0]~dataout\,
	datad => \opcode[2]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \x~6640_combout\);

\x[22]\ : flex10ke_lcell
-- Equation(s):
-- \x[22]~regout\ = DFFEA(\x~6615_combout\ & (!\C~1537_combout\ # !\x~6640_combout\) # !\x~6615_combout\ & !\Add2|adder|result_node|cs_buffer[22]~combout\ & (!\C~1537_combout\ # !\x~6640_combout\), GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0bbb",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x~6615_combout\,
	datab => \Add2|adder|result_node|cs_buffer[22]~combout\,
	datac => \x~6640_combout\,
	datad => \C~1537_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \x[22]~regout\);

\Add2|adder|result_node|cs_buffer[23]\ : flex10ke_lcell
-- Equation(s):
-- \Add2|adder|result_node|cs_buffer[23]~combout\ = \x[23]~regout\ $ !\Add2|adder|result_node|cout[22]\
-- \Add2|adder|result_node|cout[23]\ = CARRY(!\x[23]~regout\ & \Add2|adder|result_node|cout[22]\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "c330",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \x[23]~regout\,
	cin => \Add2|adder|result_node|cout[22]\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2|adder|result_node|cs_buffer[23]~combout\,
	cout => \Add2|adder|result_node|cout[23]\);

\x~6638\ : flex10ke_lcell
-- Equation(s):
-- \x~6638_combout\ = \opcode[0]~dataout\ & !\x[23]~regout\ # !\opcode[0]~dataout\ & (\opcode[2]~dataout\ & !\x[23]~regout\ # !\opcode[2]~dataout\ & (!\opcode[1]~dataout\))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5553",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x[23]~regout\,
	datab => \opcode[1]~dataout\,
	datac => \opcode[0]~dataout\,
	datad => \opcode[2]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \x~6638_combout\);

\x[23]\ : flex10ke_lcell
-- Equation(s):
-- \x[23]~regout\ = DFFEA(\x~6615_combout\ & (!\C~1537_combout\ # !\x~6638_combout\) # !\x~6615_combout\ & !\Add2|adder|result_node|cs_buffer[23]~combout\ & (!\C~1537_combout\ # !\x~6638_combout\), GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0bbb",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x~6615_combout\,
	datab => \Add2|adder|result_node|cs_buffer[23]~combout\,
	datac => \x~6638_combout\,
	datad => \C~1537_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \x[23]~regout\);

\Add2|adder|result_node|cs_buffer[24]\ : flex10ke_lcell
-- Equation(s):
-- \Add2|adder|result_node|cs_buffer[24]~combout\ = \x[24]~regout\ $ !\Add2|adder|result_node|cout[23]\
-- \Add2|adder|result_node|cout[24]\ = CARRY(!\x[24]~regout\ & \Add2|adder|result_node|cout[23]\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "c330",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \x[24]~regout\,
	cin => \Add2|adder|result_node|cout[23]\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2|adder|result_node|cs_buffer[24]~combout\,
	cout => \Add2|adder|result_node|cout[24]\);

\x~6636\ : flex10ke_lcell
-- Equation(s):
-- \x~6636_combout\ = \opcode[0]~dataout\ & !\x[24]~regout\ # !\opcode[0]~dataout\ & (\opcode[2]~dataout\ & !\x[24]~regout\ # !\opcode[2]~dataout\ & (!\opcode[1]~dataout\))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5553",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x[24]~regout\,
	datab => \opcode[1]~dataout\,
	datac => \opcode[0]~dataout\,
	datad => \opcode[2]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \x~6636_combout\);

\x[24]\ : flex10ke_lcell
-- Equation(s):
-- \x[24]~regout\ = DFFEA(\x~6615_combout\ & (!\C~1537_combout\ # !\x~6636_combout\) # !\x~6615_combout\ & !\Add2|adder|result_node|cs_buffer[24]~combout\ & (!\C~1537_combout\ # !\x~6636_combout\), GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0bbb",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x~6615_combout\,
	datab => \Add2|adder|result_node|cs_buffer[24]~combout\,
	datac => \x~6636_combout\,
	datad => \C~1537_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \x[24]~regout\);

\Add2|adder|result_node|cs_buffer[25]\ : flex10ke_lcell
-- Equation(s):
-- \Add2|adder|result_node|cs_buffer[25]~combout\ = \x[25]~regout\ $ !\Add2|adder|result_node|cout[24]\
-- \Add2|adder|result_node|cout[25]\ = CARRY(!\x[25]~regout\ & \Add2|adder|result_node|cout[24]\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "c330",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \x[25]~regout\,
	cin => \Add2|adder|result_node|cout[24]\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2|adder|result_node|cs_buffer[25]~combout\,
	cout => \Add2|adder|result_node|cout[25]\);

\x~6650\ : flex10ke_lcell
-- Equation(s):
-- \x~6650_combout\ = \opcode[0]~dataout\ & !\x[25]~regout\ # !\opcode[0]~dataout\ & (\opcode[2]~dataout\ & !\x[25]~regout\ # !\opcode[2]~dataout\ & (!\opcode[1]~dataout\))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5553",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x[25]~regout\,
	datab => \opcode[1]~dataout\,
	datac => \opcode[0]~dataout\,
	datad => \opcode[2]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \x~6650_combout\);

\x[25]\ : flex10ke_lcell
-- Equation(s):
-- \x[25]~regout\ = DFFEA(\x~6615_combout\ & (!\C~1537_combout\ # !\x~6650_combout\) # !\x~6615_combout\ & !\Add2|adder|result_node|cs_buffer[25]~combout\ & (!\C~1537_combout\ # !\x~6650_combout\), GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0bbb",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x~6615_combout\,
	datab => \Add2|adder|result_node|cs_buffer[25]~combout\,
	datac => \x~6650_combout\,
	datad => \C~1537_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \x[25]~regout\);

\Add2|adder|result_node|cs_buffer[26]\ : flex10ke_lcell
-- Equation(s):
-- \Add2|adder|result_node|cs_buffer[26]~combout\ = \x[26]~regout\ $ !\Add2|adder|result_node|cout[25]\
-- \Add2|adder|result_node|cout[26]\ = CARRY(!\x[26]~regout\ & \Add2|adder|result_node|cout[25]\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "c330",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \x[26]~regout\,
	cin => \Add2|adder|result_node|cout[25]\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2|adder|result_node|cs_buffer[26]~combout\,
	cout => \Add2|adder|result_node|cout[26]\);

\Equal11~315\ : flex10ke_lcell
-- Equation(s):
-- \Equal11~315_combout\ = !\Add2|adder|result_node|cs_buffer[19]~combout\ & !\Add2|adder|result_node|cs_buffer[20]~combout\ & !\Add2|adder|result_node|cs_buffer[21]~combout\ & !\Add2|adder|result_node|cs_buffer[22]~combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Add2|adder|result_node|cs_buffer[19]~combout\,
	datab => \Add2|adder|result_node|cs_buffer[20]~combout\,
	datac => \Add2|adder|result_node|cs_buffer[21]~combout\,
	datad => \Add2|adder|result_node|cs_buffer[22]~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal11~315_combout\);

\Equal11~314\ : flex10ke_lcell
-- Equation(s):
-- \Equal11~314_combout\ = !\Add2|adder|result_node|cs_buffer[23]~combout\ & !\Add2|adder|result_node|cs_buffer[24]~combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \Add2|adder|result_node|cs_buffer[23]~combout\,
	datad => \Add2|adder|result_node|cs_buffer[24]~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal11~314_combout\);

\Equal11~316\ : flex10ke_lcell
-- Equation(s):
-- \Equal11~316_combout\ = !\Add2|adder|result_node|cs_buffer[25]~combout\ & !\Add2|adder|result_node|cs_buffer[26]~combout\ & \Equal11~315_combout\ & \Equal11~314_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Add2|adder|result_node|cs_buffer[25]~combout\,
	datab => \Add2|adder|result_node|cs_buffer[26]~combout\,
	datac => \Equal11~315_combout\,
	datad => \Equal11~314_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal11~316_combout\);

\x~6632\ : flex10ke_lcell
-- Equation(s):
-- \x~6632_combout\ = \opcode[0]~dataout\ & !\x[28]~regout\ # !\opcode[0]~dataout\ & (\opcode[2]~dataout\ & !\x[28]~regout\ # !\opcode[2]~dataout\ & (!\opcode[1]~dataout\))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5553",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x[28]~regout\,
	datab => \opcode[1]~dataout\,
	datac => \opcode[0]~dataout\,
	datad => \opcode[2]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \x~6632_combout\);

\x[28]\ : flex10ke_lcell
-- Equation(s):
-- \x[28]~regout\ = DFFEA(\x~6615_combout\ & (!\C~1537_combout\ # !\x~6632_combout\) # !\x~6615_combout\ & !\Add2|adder|result_node|cs_buffer[28]~combout\ & (!\C~1537_combout\ # !\x~6632_combout\), GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0bbb",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x~6615_combout\,
	datab => \Add2|adder|result_node|cs_buffer[28]~combout\,
	datac => \x~6632_combout\,
	datad => \C~1537_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \x[28]~regout\);

\Add2|adder|result_node|cs_buffer[27]\ : flex10ke_lcell
-- Equation(s):
-- \Add2|adder|result_node|cs_buffer[27]~combout\ = \x[27]~regout\ $ !\Add2|adder|result_node|cout[26]\
-- \Add2|adder|result_node|cout[27]\ = CARRY(!\x[27]~regout\ & \Add2|adder|result_node|cout[26]\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "c330",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \x[27]~regout\,
	cin => \Add2|adder|result_node|cout[26]\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2|adder|result_node|cs_buffer[27]~combout\,
	cout => \Add2|adder|result_node|cout[27]\);

\x~6634\ : flex10ke_lcell
-- Equation(s):
-- \x~6634_combout\ = \opcode[0]~dataout\ & !\x[27]~regout\ # !\opcode[0]~dataout\ & (\opcode[2]~dataout\ & !\x[27]~regout\ # !\opcode[2]~dataout\ & (!\opcode[1]~dataout\))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5553",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x[27]~regout\,
	datab => \opcode[1]~dataout\,
	datac => \opcode[0]~dataout\,
	datad => \opcode[2]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \x~6634_combout\);

\x[27]\ : flex10ke_lcell
-- Equation(s):
-- \x[27]~regout\ = DFFEA(\x~6615_combout\ & (!\C~1537_combout\ # !\x~6634_combout\) # !\x~6615_combout\ & !\Add2|adder|result_node|cs_buffer[27]~combout\ & (!\C~1537_combout\ # !\x~6634_combout\), GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0bbb",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x~6615_combout\,
	datab => \Add2|adder|result_node|cs_buffer[27]~combout\,
	datac => \x~6634_combout\,
	datad => \C~1537_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \x[27]~regout\);

\Add2|adder|result_node|cs_buffer[28]\ : flex10ke_lcell
-- Equation(s):
-- \Add2|adder|result_node|cs_buffer[28]~combout\ = \x[28]~regout\ $ !\Add2|adder|result_node|cout[27]\
-- \Add2|adder|result_node|cout[28]\ = CARRY(!\x[28]~regout\ & \Add2|adder|result_node|cout[27]\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "c330",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \x[28]~regout\,
	cin => \Add2|adder|result_node|cout[27]\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2|adder|result_node|cs_buffer[28]~combout\,
	cout => \Add2|adder|result_node|cout[28]\);

\x~6630\ : flex10ke_lcell
-- Equation(s):
-- \x~6630_combout\ = \opcode[0]~dataout\ & !\x[29]~regout\ # !\opcode[0]~dataout\ & (\opcode[2]~dataout\ & !\x[29]~regout\ # !\opcode[2]~dataout\ & (!\opcode[1]~dataout\))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5553",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x[29]~regout\,
	datab => \opcode[1]~dataout\,
	datac => \opcode[0]~dataout\,
	datad => \opcode[2]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \x~6630_combout\);

\x[29]\ : flex10ke_lcell
-- Equation(s):
-- \x[29]~regout\ = DFFEA(\x~6615_combout\ & (!\C~1537_combout\ # !\x~6630_combout\) # !\x~6615_combout\ & !\Add2|adder|result_node|cs_buffer[29]~combout\ & (!\C~1537_combout\ # !\x~6630_combout\), GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0bbb",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x~6615_combout\,
	datab => \Add2|adder|result_node|cs_buffer[29]~combout\,
	datac => \x~6630_combout\,
	datad => \C~1537_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \x[29]~regout\);

\Add2|adder|result_node|cs_buffer[29]\ : flex10ke_lcell
-- Equation(s):
-- \Add2|adder|result_node|cs_buffer[29]~combout\ = \x[29]~regout\ $ !\Add2|adder|result_node|cout[28]\
-- \Add2|adder|result_node|cout[29]\ = CARRY(!\x[29]~regout\ & \Add2|adder|result_node|cout[28]\)

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	clock_enable_mode => "false",
	lut_mask => "c330",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \x[29]~regout\,
	cin => \Add2|adder|result_node|cout[28]\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2|adder|result_node|cs_buffer[29]~combout\,
	cout => \Add2|adder|result_node|cout[29]\);

\x~6628\ : flex10ke_lcell
-- Equation(s):
-- \x~6628_combout\ = \opcode[0]~dataout\ & !\x[30]~regout\ # !\opcode[0]~dataout\ & (\opcode[2]~dataout\ & !\x[30]~regout\ # !\opcode[2]~dataout\ & (!\opcode[1]~dataout\))

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5553",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x[30]~regout\,
	datab => \opcode[1]~dataout\,
	datac => \opcode[0]~dataout\,
	datad => \opcode[2]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \x~6628_combout\);

\x[30]\ : flex10ke_lcell
-- Equation(s):
-- \x[30]~regout\ = DFFEA(\x~6615_combout\ & (!\C~1537_combout\ # !\x~6628_combout\) # !\x~6615_combout\ & !\Add2|adder|result_node|cs_buffer[30]~combout\ & (!\C~1537_combout\ # !\x~6628_combout\), GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0bbb",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \x~6615_combout\,
	datab => \Add2|adder|result_node|cs_buffer[30]~combout\,
	datac => \x~6628_combout\,
	datad => \C~1537_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \x[30]~regout\);

\Equal11~313\ : flex10ke_lcell
-- Equation(s):
-- \Equal11~313_combout\ = !\Add2|adder|result_node|cs_buffer[27]~combout\ & !\Add2|adder|result_node|cs_buffer[28]~combout\ & !\Add2|adder|result_node|cs_buffer[29]~combout\ & !\Add2|adder|result_node|cs_buffer[30]~combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Add2|adder|result_node|cs_buffer[27]~combout\,
	datab => \Add2|adder|result_node|cs_buffer[28]~combout\,
	datac => \Add2|adder|result_node|cs_buffer[29]~combout\,
	datad => \Add2|adder|result_node|cs_buffer[30]~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal11~313_combout\);

\Equal11~317\ : flex10ke_lcell
-- Equation(s):
-- \Equal11~317_combout\ = !\Add2|adder|unreg_res_node[31]~combout\ & \Equal11~316_combout\ & \Equal11~313_combout\ & \Equal11~312_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Add2|adder|unreg_res_node[31]~combout\,
	datab => \Equal11~316_combout\,
	datac => \Equal11~313_combout\,
	datad => \Equal11~312_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal11~317_combout\);

\Equal11~323\ : flex10ke_lcell
-- Equation(s):
-- \Equal11~323_combout\ = \Equal11~322_combout\ & \Equal11~319_combout\ & \Equal11~318_combout\ & \Equal11~317_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~322_combout\,
	datab => \Equal11~319_combout\,
	datac => \Equal11~318_combout\,
	datad => \Equal11~317_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal11~323_combout\);

\C~1577\ : flex10ke_lcell
-- Equation(s):
-- \C~1620\ = \A[3]~dataout\ & (\B[3]~dataout\) # !\A[3]~dataout\ & (\Equal11~323_combout\ # !\B[3]~dataout\) # !\C~1576_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fd77",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \C~1576_combout\,
	datab => \A[3]~dataout\,
	datac => \Equal11~323_combout\,
	datad => \B[3]~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C~1577_combout\,
	cascout => \C~1620\);

\C~1585\ : flex10ke_lcell
-- Equation(s):
-- \C~1622\ = (\LessThan0~318_combout\ & (\B[3]~dataout\) # !\LessThan0~318_combout\ & !\A[3]~dataout\ # !\Equal11~323_combout\) & CASCADE(\C~1620\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f757",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~323_combout\,
	datab => \A[3]~dataout\,
	datac => \LessThan0~318_combout\,
	datad => \B[3]~dataout\,
	cascin => \C~1620\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C~1585_combout\,
	cascout => \C~1622\);

\C~1583\ : flex10ke_lcell
-- Equation(s):
-- \C~1583_combout\ = (!\C~1587_combout\ & !\C~1586_combout\ & (\Equal11~323_combout\ # !\C~1553_combout\)) & CASCADE(\C~1622\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1101",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \C~1587_combout\,
	datab => \C~1586_combout\,
	datac => \C~1553_combout\,
	datad => \Equal11~323_combout\,
	cascin => \C~1622\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C~1583_combout\);

\C[3]~reg0\ : flex10ke_lcell
-- Equation(s):
-- \C[3]~reg0_regout\ = DFFEA(!\C~1583_combout\ & \C~1537_combout\ # !\C~1545_combout\, GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , \C~1552_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "3f33",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \C~1552_combout\,
	datab => \C~1545_combout\,
	datac => \C~1583_combout\,
	datad => \C~1537_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C[3]~reg0_regout\);

\ZF~811\ : flex10ke_lcell
-- Equation(s):
-- \ZF~811_combout\ = !\x~6615_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \x~6615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ZF~811_combout\);

\Decoder2~42\ : flex10ke_lcell
-- Equation(s):
-- \Decoder2~42_combout\ = !\Add2|adder|result_node|cs_buffer[2]~combout\ & !\x[0]~regout\ & \Add2|adder|result_node|cs_buffer[1]~combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \Add2|adder|result_node|cs_buffer[2]~combout\,
	datac => \x[0]~regout\,
	datad => \Add2|adder|result_node|cs_buffer[1]~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder2~42_combout\);

\Decoder2~41\ : flex10ke_lcell
-- Equation(s):
-- \Decoder2~41_combout\ = !\Add2|adder|result_node|cs_buffer[2]~combout\ & !\Add2|adder|result_node|cs_buffer[1]~combout\ & \x[0]~regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \Add2|adder|result_node|cs_buffer[2]~combout\,
	datac => \Add2|adder|result_node|cs_buffer[1]~combout\,
	datad => \x[0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder2~41_combout\);

\ZF~808\ : flex10ke_lcell
-- Equation(s):
-- \ZF~823\ = \C[1]~reg0_regout\ & \Decoder2~41_combout\ & (\Decoder2~42_combout\ # !\C[2]~reg0_regout\) # !\C[1]~reg0_regout\ & (\Decoder2~42_combout\ # !\C[2]~reg0_regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f351",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \C[1]~reg0_regout\,
	datab => \C[2]~reg0_regout\,
	datac => \Decoder2~42_combout\,
	datad => \Decoder2~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ZF~808_combout\,
	cascout => \ZF~823\);

\ZF~812\ : flex10ke_lcell
-- Equation(s):
-- \ZF~812_combout\ = (!\Add2|adder|result_node|cs_buffer[2]~combout\ & !\Add2|adder|result_node|cs_buffer[1]~combout\ & !\x[0]~regout\ # !\C[0]~reg0_regout\) & CASCADE(\ZF~823\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "5557",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \C[0]~reg0_regout\,
	datab => \Add2|adder|result_node|cs_buffer[2]~combout\,
	datac => \Add2|adder|result_node|cs_buffer[1]~combout\,
	datad => \x[0]~regout\,
	cascin => \ZF~823\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ZF~812_combout\);

\ZF~798\ : flex10ke_lcell
-- Equation(s):
-- \ZF~798_combout\ = !\C~1553_combout\ & \ZF~812_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \C~1553_combout\,
	datad => \ZF~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ZF~798_combout\);

\always0~72\ : flex10ke_lcell
-- Equation(s):
-- \always0~72_combout\ = \Mux4~3_combout\ & \Mux6~3_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \Mux4~3_combout\,
	datad => \Mux6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always0~72_combout\);

\ZF~801\ : flex10ke_lcell
-- Equation(s):
-- \ZF~801_combout\ = \Add2|adder|result_node|cs_buffer[2]~combout\ & (\Equal7~12_combout\ # \Equal4~13_combout\) # !\Add2|adder|result_node|cs_buffer[2]~combout\ & \SF~489_combout\ & (\Equal4~13_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \SF~489_combout\,
	datab => \Equal7~12_combout\,
	datac => \Add2|adder|result_node|cs_buffer[2]~combout\,
	datad => \Equal4~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ZF~801_combout\);

\ZF~802\ : flex10ke_lcell
-- Equation(s):
-- \ZF~802_combout\ = \ZF~801_combout\ # !\Equal4~13_combout\ & \always0~72_combout\ & \Equal7~12_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff40",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~13_combout\,
	datab => \always0~72_combout\,
	datac => \Equal7~12_combout\,
	datad => \ZF~801_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ZF~802_combout\);

\next_state~146\ : flex10ke_lcell
-- Equation(s):
-- \next_state~146_combout\ = !\Equal10~25_combout\ & !\Equal7~12_combout\ & !\Equal4~13_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \Equal10~25_combout\,
	datac => \Equal7~12_combout\,
	datad => \Equal4~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_state~146_combout\);

\CF~324\ : flex10ke_lcell
-- Equation(s):
-- \CF~324_combout\ = \Equal0~13_combout\ & (\Mux4~3_combout\ & (\Mux6~3_combout\ # \next_state~regout\) # !\Mux4~3_combout\ & \Mux6~3_combout\ & \next_state~regout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "e800",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~3_combout\,
	datab => \Mux6~3_combout\,
	datac => \next_state~regout\,
	datad => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CF~324_combout\);

next_state : flex10ke_lcell
-- Equation(s):
-- \next_state~regout\ = DFFEA(\CF~324_combout\ # !\Equal0~13_combout\ & (\next_state~146_combout\ $ !\next_state~regout\), GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff41",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~13_combout\,
	datab => \next_state~146_combout\,
	datac => \next_state~regout\,
	datad => \CF~324_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \next_state~regout\);

\C~1543\ : flex10ke_lcell
-- Equation(s):
-- \C~1543_combout\ = \next_state~regout\ $ \Mux4~3_combout\ $ \Mux6~3_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \next_state~regout\,
	datac => \Mux4~3_combout\,
	datad => \Mux6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C~1543_combout\);

\ZF~810\ : flex10ke_lcell
-- Equation(s):
-- \ZF~810_combout\ = \Add2|adder|result_node|cs_buffer[2]~combout\ & !\C[1]~reg0_regout\ & !\C[2]~reg0_regout\ & !\C[3]~reg0_regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Add2|adder|result_node|cs_buffer[2]~combout\,
	datab => \C[1]~reg0_regout\,
	datac => \C[2]~reg0_regout\,
	datad => \C[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ZF~810_combout\);

\ZF~800\ : flex10ke_lcell
-- Equation(s):
-- \ZF~800_combout\ = \C~1543_combout\ & !\C[0]~reg0_regout\ & \ZF~810_combout\ # !\C~1543_combout\ & (\ZF~798_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "7340",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \C[0]~reg0_regout\,
	datab => \C~1543_combout\,
	datac => \ZF~810_combout\,
	datad => \ZF~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ZF~800_combout\);

\ZF~803\ : flex10ke_lcell
-- Equation(s):
-- \ZF~803_combout\ = \Equal0~13_combout\ & (\ZF~800_combout\) # !\Equal0~13_combout\ & \ZF~798_combout\ & \ZF~802_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ea40",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~13_combout\,
	datab => \ZF~798_combout\,
	datac => \ZF~802_combout\,
	datad => \ZF~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ZF~803_combout\);

\ZF~804\ : flex10ke_lcell
-- Equation(s):
-- \ZF~804_combout\ = \ZF~812_combout\ & \C~1537_combout\ & (\ZF~799_combout\ # \C~1582_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "e000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \ZF~799_combout\,
	datab => \C~1582_combout\,
	datac => \ZF~812_combout\,
	datad => \C~1537_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ZF~804_combout\);

\ZF~reg0\ : flex10ke_lcell
-- Equation(s):
-- \ZF~reg0_regout\ = DFFEA(\ZF~803_combout\ # \ZF~804_combout\ & \C~1583_combout\, GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , \ZF~811_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "fccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \ZF~811_combout\,
	datab => \ZF~803_combout\,
	datac => \ZF~804_combout\,
	datad => \C~1583_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ZF~reg0_regout\);

\CF~326\ : flex10ke_lcell
-- Equation(s):
-- \CF~326_combout\ = \Equal0~13_combout\ & (\Equal11~323_combout\) # !\Equal0~13_combout\ & \Equal10~25_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~13_combout\,
	datac => \Equal10~25_combout\,
	datad => \Equal11~323_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CF~326_combout\);

\CF~325\ : flex10ke_lcell
-- Equation(s):
-- \CF~325_combout\ = \Equal11~323_combout\ & (\LessThan0~310_combout\ & \y~regout\) # !\Equal11~323_combout\ & \CF~reg0_regout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "e444",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~323_combout\,
	datab => \CF~reg0_regout\,
	datac => \LessThan0~310_combout\,
	datad => \y~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CF~325_combout\);

\CF~reg0\ : flex10ke_lcell
-- Equation(s):
-- \CF~reg0_regout\ = DFFEA(\CF~324_combout\ # !\Equal0~13_combout\ & \CF~325_combout\, GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , \CF~326_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "f3f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \CF~326_combout\,
	datab => \Equal0~13_combout\,
	datac => \CF~324_combout\,
	datad => \CF~325_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CF~reg0_regout\);

\C~1544\ : flex10ke_lcell
-- Equation(s):
-- \C~1544_combout\ = !\opcode[1]~dataout\ & !\opcode[0]~dataout\ & \opcode[2]~dataout\ & \C~1543_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[1]~dataout\,
	datab => \opcode[0]~dataout\,
	datac => \opcode[2]~dataout\,
	datad => \C~1543_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C~1544_combout\);

\SF~500\ : flex10ke_lcell
-- Equation(s):
-- \SF~500_combout\ = \Mux4~3_combout\ & !\Mux6~3_combout\ # !\Mux4~3_combout\ & (\Mux6~3_combout\ # !\Equal4~13_combout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "3c3f",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datab => \Mux4~3_combout\,
	datac => \Mux6~3_combout\,
	datad => \Equal4~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SF~500_combout\);

\SF~498\ : flex10ke_lcell
-- Equation(s):
-- \SF~498_combout\ = \Equal11~312_combout\ & (\opcode[1]~dataout\ # \opcode[0]~dataout\ # !\opcode[2]~dataout\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fd00",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \opcode[2]~dataout\,
	datab => \opcode[1]~dataout\,
	datac => \opcode[0]~dataout\,
	datad => \Equal11~312_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SF~498_combout\);

\SF~489\ : flex10ke_lcell
-- Equation(s):
-- \SF~489_combout\ = \Mux4~3_combout\ $ !\Mux6~3_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \Mux4~3_combout\,
	datad => \Mux6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SF~489_combout\);

\SF~499\ : flex10ke_lcell
-- Equation(s):
-- \SF~512\ = \Equal7~12_combout\ # \SF~489_combout\ # !\SF~498_combout\ # !\Equal4~13_combout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fff7",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~13_combout\,
	datab => \SF~498_combout\,
	datac => \Equal7~12_combout\,
	datad => \SF~489_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SF~499_combout\,
	cascout => \SF~512\);

\SF~504\ : flex10ke_lcell
-- Equation(s):
-- \SF~515\ = (\Equal0~13_combout\ # !\SF~500_combout\ # !\Equal7~12_combout\ # !\Equal11~312_combout\) & CASCADE(\SF~512\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff7f",
	operation_mode => "normal",
	output_mode => "none",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~312_combout\,
	datab => \Equal7~12_combout\,
	datac => \SF~500_combout\,
	datad => \Equal0~13_combout\,
	cascin => \SF~512\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SF~504_combout\,
	cascout => \SF~515\);

\SF~503\ : flex10ke_lcell
-- Equation(s):
-- \SF~503_combout\ = (\Equal11~312_combout\ & !\C~1544_combout\ & (\C~1537_combout\ # !\C~1553_combout\) # !\Equal11~312_combout\ & (\C~1537_combout\ # !\C~1553_combout\)) & CASCADE(\SF~515\)

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "7707",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~312_combout\,
	datab => \C~1544_combout\,
	datac => \C~1553_combout\,
	datad => \C~1537_combout\,
	cascin => \SF~515\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SF~503_combout\);

\SF~reg0\ : flex10ke_lcell
-- Equation(s):
-- \SF~reg0_regout\ = DFFEA(!\C~1583_combout\ & \C~1537_combout\ # !\SF~503_combout\, GLOBAL(\clk~dataout\), !GLOBAL(\reset~dataout\), , \ZF~811_combout\, , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "true",
	lut_mask => "3f33",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \ZF~811_combout\,
	datab => \SF~503_combout\,
	datac => \C~1583_combout\,
	datad => \C~1537_combout\,
	aclr => \reset~dataout\,
	clk => \clk~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SF~reg0_regout\);

\C[0]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \C[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_C(0));

\C[1]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \C[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_C(1));

\C[2]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \C[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_C(2));

\C[3]~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \C[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_C(3));

\ZF~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \ZF~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_ZF);

\CF~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \CF~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_CF);

\SF~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \SF~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_SF);
END structure;


