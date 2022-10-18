-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "10/18/2022 00:51:45"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TopLevel IS
    PORT (
	CLOCK_50 : IN std_logic;
	FPGA_RESET_N : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	Hab_debug : OUT std_logic_vector(15 DOWNTO 0);
	REG_A_OUT : OUT std_logic_vector(7 DOWNTO 0)
	);
END TopLevel;

ARCHITECTURE structure OF TopLevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_FPGA_RESET_N : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_Hab_debug : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_REG_A_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \PC_OUT[0]~output_o\ : std_logic;
SIGNAL \PC_OUT[1]~output_o\ : std_logic;
SIGNAL \PC_OUT[2]~output_o\ : std_logic;
SIGNAL \PC_OUT[3]~output_o\ : std_logic;
SIGNAL \PC_OUT[4]~output_o\ : std_logic;
SIGNAL \PC_OUT[5]~output_o\ : std_logic;
SIGNAL \PC_OUT[6]~output_o\ : std_logic;
SIGNAL \PC_OUT[7]~output_o\ : std_logic;
SIGNAL \PC_OUT[8]~output_o\ : std_logic;
SIGNAL \Hab_debug[0]~output_o\ : std_logic;
SIGNAL \Hab_debug[1]~output_o\ : std_logic;
SIGNAL \Hab_debug[2]~output_o\ : std_logic;
SIGNAL \Hab_debug[3]~output_o\ : std_logic;
SIGNAL \Hab_debug[4]~output_o\ : std_logic;
SIGNAL \Hab_debug[5]~output_o\ : std_logic;
SIGNAL \Hab_debug[6]~output_o\ : std_logic;
SIGNAL \Hab_debug[7]~output_o\ : std_logic;
SIGNAL \Hab_debug[8]~output_o\ : std_logic;
SIGNAL \Hab_debug[9]~output_o\ : std_logic;
SIGNAL \Hab_debug[10]~output_o\ : std_logic;
SIGNAL \Hab_debug[11]~output_o\ : std_logic;
SIGNAL \Hab_debug[12]~output_o\ : std_logic;
SIGNAL \Hab_debug[13]~output_o\ : std_logic;
SIGNAL \Hab_debug[14]~output_o\ : std_logic;
SIGNAL \Hab_debug[15]~output_o\ : std_logic;
SIGNAL \REG_A_OUT[0]~output_o\ : std_logic;
SIGNAL \REG_A_OUT[1]~output_o\ : std_logic;
SIGNAL \REG_A_OUT[2]~output_o\ : std_logic;
SIGNAL \REG_A_OUT[3]~output_o\ : std_logic;
SIGNAL \REG_A_OUT[4]~output_o\ : std_logic;
SIGNAL \REG_A_OUT[5]~output_o\ : std_logic;
SIGNAL \REG_A_OUT[6]~output_o\ : std_logic;
SIGNAL \REG_A_OUT[7]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \gravar:detectorSub0|saida~combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~0_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~2_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~3_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~4_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~5_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~62_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~2\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~18\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \Mem_ROM|memROM~24_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~30_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~31_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~32_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~33_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~34_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~35_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~36_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~37_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~38_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~39_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida~6_combout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~45_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~46_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~47_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~48_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~49_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~50_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~25_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~26_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~27_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~28_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~29_combout\ : std_logic;
SIGNAL \CPU|logicaDeDesvio|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \Mem_ROM|memROM~63_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~64_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~65_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~66_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~67_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~68_combout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~51_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~52_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~53_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~54_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~55_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~75_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~56_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~57_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~58_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~59_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~60_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~61_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~1_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~6_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~7_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~8_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~9_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~10_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~11_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~12_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~19_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~20_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~21_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~22_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~23_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida~2_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida[0]~4_combout\ : std_logic;
SIGNAL \habSW7dt0~0_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida[1]~3_combout\ : std_logic;
SIGNAL \decoder3x8MS|saida[5]~0_combout\ : std_logic;
SIGNAL \habSW7dt0~1_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \CPU|ULA1|Equal3~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Equal2~0_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \Mem_ROM|memROM~69_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~70_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~71_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~72_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~73_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~74_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~695_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida[0]~0_combout\ : std_logic;
SIGNAL \Mem_RAM|process_0~0_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~696_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~15_q\ : std_logic;
SIGNAL \Mem_RAM|ram~697_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~698_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~271_q\ : std_logic;
SIGNAL \Mem_RAM|ram~699_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~700_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~23_q\ : std_logic;
SIGNAL \Mem_RAM|ram~701_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~702_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~279_q\ : std_logic;
SIGNAL \Mem_RAM|ram~527_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~703_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~704_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~143_q\ : std_logic;
SIGNAL \Mem_RAM|ram~705_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~706_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~399_q\ : std_logic;
SIGNAL \Mem_RAM|ram~707_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~708_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~151_q\ : std_logic;
SIGNAL \Mem_RAM|ram~709_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~710_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~407_q\ : std_logic;
SIGNAL \Mem_RAM|ram~528_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~711_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~712_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~79_q\ : std_logic;
SIGNAL \Mem_RAM|ram~713_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~714_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~335_q\ : std_logic;
SIGNAL \Mem_RAM|ram~715_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~716_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~87_q\ : std_logic;
SIGNAL \Mem_RAM|ram~717_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~718_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~343_q\ : std_logic;
SIGNAL \Mem_RAM|ram~529_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~719_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~720_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~207_q\ : std_logic;
SIGNAL \Mem_RAM|ram~721_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~722_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~463_q\ : std_logic;
SIGNAL \Mem_RAM|ram~723_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~724_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~215_q\ : std_logic;
SIGNAL \Mem_RAM|ram~725_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~726_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~471_q\ : std_logic;
SIGNAL \Mem_RAM|ram~530_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~531_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~727_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~728_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~47_q\ : std_logic;
SIGNAL \Mem_RAM|ram~729_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~730_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~303_q\ : std_logic;
SIGNAL \Mem_RAM|ram~731_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~732_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~55_q\ : std_logic;
SIGNAL \Mem_RAM|ram~733_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~734_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~311_q\ : std_logic;
SIGNAL \Mem_RAM|ram~532_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~735_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~736_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~175_q\ : std_logic;
SIGNAL \Mem_RAM|ram~737_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~738_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~431_q\ : std_logic;
SIGNAL \Mem_RAM|ram~739_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~740_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~183_q\ : std_logic;
SIGNAL \Mem_RAM|ram~741_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~742_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~439_q\ : std_logic;
SIGNAL \Mem_RAM|ram~533_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~743_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~744_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~111_q\ : std_logic;
SIGNAL \Mem_RAM|ram~745_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~746_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~367_q\ : std_logic;
SIGNAL \Mem_RAM|ram~747_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~748_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~119_q\ : std_logic;
SIGNAL \Mem_RAM|ram~749_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~750_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~375_q\ : std_logic;
SIGNAL \Mem_RAM|ram~534_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~751_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~752_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~239_q\ : std_logic;
SIGNAL \Mem_RAM|ram~753_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~754_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~495_q\ : std_logic;
SIGNAL \Mem_RAM|ram~755_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~756_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~247_q\ : std_logic;
SIGNAL \Mem_RAM|ram~757_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~758_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~503_q\ : std_logic;
SIGNAL \Mem_RAM|ram~535_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~536_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~759_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~760_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~31_q\ : std_logic;
SIGNAL \Mem_RAM|ram~761_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~762_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~287_q\ : std_logic;
SIGNAL \Mem_RAM|ram~763_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~764_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~39_q\ : std_logic;
SIGNAL \Mem_RAM|ram~765_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~766_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~295_q\ : std_logic;
SIGNAL \Mem_RAM|ram~537_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~767_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~768_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~159_q\ : std_logic;
SIGNAL \Mem_RAM|ram~769_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~770_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~415_q\ : std_logic;
SIGNAL \Mem_RAM|ram~771_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~772_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~167_q\ : std_logic;
SIGNAL \Mem_RAM|ram~773_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~774_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~423_q\ : std_logic;
SIGNAL \Mem_RAM|ram~538_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~775_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~776_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~95_q\ : std_logic;
SIGNAL \Mem_RAM|ram~777_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~778_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~351_q\ : std_logic;
SIGNAL \Mem_RAM|ram~779_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~780_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~103_q\ : std_logic;
SIGNAL \Mem_RAM|ram~781_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~782_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~359_q\ : std_logic;
SIGNAL \Mem_RAM|ram~539_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~783_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~784_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~223_q\ : std_logic;
SIGNAL \Mem_RAM|ram~785_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~786_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~479_q\ : std_logic;
SIGNAL \Mem_RAM|ram~787_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~788_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~231_q\ : std_logic;
SIGNAL \Mem_RAM|ram~789_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~790_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~487_q\ : std_logic;
SIGNAL \Mem_RAM|ram~540_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~541_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~791_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~792_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~63_q\ : std_logic;
SIGNAL \Mem_RAM|ram~793_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~794_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~319_q\ : std_logic;
SIGNAL \Mem_RAM|ram~795_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~796_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~191_q\ : std_logic;
SIGNAL \Mem_RAM|ram~797_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~798_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~447_q\ : std_logic;
SIGNAL \Mem_RAM|ram~542_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~799_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~800_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~71_q\ : std_logic;
SIGNAL \Mem_RAM|ram~801_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~802_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~327_q\ : std_logic;
SIGNAL \Mem_RAM|ram~803_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~804_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~199_q\ : std_logic;
SIGNAL \Mem_RAM|ram~805_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~806_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~455_q\ : std_logic;
SIGNAL \Mem_RAM|ram~543_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~807_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~808_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~127_q\ : std_logic;
SIGNAL \Mem_RAM|ram~809_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~810_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~383_q\ : std_logic;
SIGNAL \Mem_RAM|ram~811_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~812_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~255_q\ : std_logic;
SIGNAL \Mem_RAM|ram~813_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~814_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~511_q\ : std_logic;
SIGNAL \Mem_RAM|ram~544_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~815_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~816_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~135_q\ : std_logic;
SIGNAL \Mem_RAM|ram~817_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~818_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~391_q\ : std_logic;
SIGNAL \Mem_RAM|ram~819_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~820_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~263_q\ : std_logic;
SIGNAL \Mem_RAM|ram~821_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~822_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~519_q\ : std_logic;
SIGNAL \Mem_RAM|ram~545_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~546_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~547_combout\ : std_logic;
SIGNAL \Data_IN[0]~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \habSW7dt0~2_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \detectorSubKEY0|saidaQ~0_combout\ : std_logic;
SIGNAL \detectorSubKEY0|saidaQ~q\ : std_logic;
SIGNAL \detectorSubKEY0|saida~combout\ : std_logic;
SIGNAL \Reset_Reg_KEY0~0_combout\ : std_logic;
SIGNAL \Reset_Reg_KEY0~combout\ : std_logic;
SIGNAL \regKEY0|DOUT~q\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \detectorSubKEY1|saidaQ~0_combout\ : std_logic;
SIGNAL \detectorSubKEY1|saidaQ~q\ : std_logic;
SIGNAL \detectorSubKEY1|saida~combout\ : std_logic;
SIGNAL \Reset_Reg_KEY1~combout\ : std_logic;
SIGNAL \regKEY1|DOUT~q\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \Data_IN[0]~1_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \Data_IN[0]~2_combout\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \Data_IN[0]~3_combout\ : std_logic;
SIGNAL \Data_IN[0]~4_combout\ : std_logic;
SIGNAL \Data_IN[0]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~2\ : std_logic;
SIGNAL \CPU|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida[6]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~1_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida[5]~7_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~16_q\ : std_logic;
SIGNAL \Mem_RAM|ram~272_q\ : std_logic;
SIGNAL \Mem_RAM|ram~32_q\ : std_logic;
SIGNAL \Mem_RAM|ram~288_q\ : std_logic;
SIGNAL \Mem_RAM|ram~548_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~48_q\ : std_logic;
SIGNAL \Mem_RAM|ram~304_q\ : std_logic;
SIGNAL \Mem_RAM|ram~64_q\ : std_logic;
SIGNAL \Mem_RAM|ram~320_q\ : std_logic;
SIGNAL \Mem_RAM|ram~549_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~80_q\ : std_logic;
SIGNAL \Mem_RAM|ram~336_q\ : std_logic;
SIGNAL \Mem_RAM|ram~96_q\ : std_logic;
SIGNAL \Mem_RAM|ram~352_q\ : std_logic;
SIGNAL \Mem_RAM|ram~550_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~112_q\ : std_logic;
SIGNAL \Mem_RAM|ram~368_q\ : std_logic;
SIGNAL \Mem_RAM|ram~128_q\ : std_logic;
SIGNAL \Mem_RAM|ram~384_q\ : std_logic;
SIGNAL \Mem_RAM|ram~551_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~552_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~24_q\ : std_logic;
SIGNAL \Mem_RAM|ram~280_q\ : std_logic;
SIGNAL \Mem_RAM|ram~88_q\ : std_logic;
SIGNAL \Mem_RAM|ram~344_q\ : std_logic;
SIGNAL \Mem_RAM|ram~553_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~56_q\ : std_logic;
SIGNAL \Mem_RAM|ram~312_q\ : std_logic;
SIGNAL \Mem_RAM|ram~120_q\ : std_logic;
SIGNAL \Mem_RAM|ram~376_q\ : std_logic;
SIGNAL \Mem_RAM|ram~554_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~40_q\ : std_logic;
SIGNAL \Mem_RAM|ram~296_q\ : std_logic;
SIGNAL \Mem_RAM|ram~104_q\ : std_logic;
SIGNAL \Mem_RAM|ram~360_q\ : std_logic;
SIGNAL \Mem_RAM|ram~555_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~72_q\ : std_logic;
SIGNAL \Mem_RAM|ram~328_q\ : std_logic;
SIGNAL \Mem_RAM|ram~136_q\ : std_logic;
SIGNAL \Mem_RAM|ram~392_q\ : std_logic;
SIGNAL \Mem_RAM|ram~556_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~557_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~144_q\ : std_logic;
SIGNAL \Mem_RAM|ram~400_q\ : std_logic;
SIGNAL \Mem_RAM|ram~176_q\ : std_logic;
SIGNAL \Mem_RAM|ram~432_q\ : std_logic;
SIGNAL \Mem_RAM|ram~558_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~160_q\ : std_logic;
SIGNAL \Mem_RAM|ram~416_q\ : std_logic;
SIGNAL \Mem_RAM|ram~192_q\ : std_logic;
SIGNAL \Mem_RAM|ram~448_q\ : std_logic;
SIGNAL \Mem_RAM|ram~559_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~208_q\ : std_logic;
SIGNAL \Mem_RAM|ram~464_q\ : std_logic;
SIGNAL \Mem_RAM|ram~240_q\ : std_logic;
SIGNAL \Mem_RAM|ram~496_q\ : std_logic;
SIGNAL \Mem_RAM|ram~560_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~224_q\ : std_logic;
SIGNAL \Mem_RAM|ram~480_q\ : std_logic;
SIGNAL \Mem_RAM|ram~256_q\ : std_logic;
SIGNAL \Mem_RAM|ram~512_q\ : std_logic;
SIGNAL \Mem_RAM|ram~561_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~562_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~152_q\ : std_logic;
SIGNAL \Mem_RAM|ram~408_q\ : std_logic;
SIGNAL \Mem_RAM|ram~168_q\ : std_logic;
SIGNAL \Mem_RAM|ram~424_q\ : std_logic;
SIGNAL \Mem_RAM|ram~563_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~184_q\ : std_logic;
SIGNAL \Mem_RAM|ram~440_q\ : std_logic;
SIGNAL \Mem_RAM|ram~200_q\ : std_logic;
SIGNAL \Mem_RAM|ram~456_q\ : std_logic;
SIGNAL \Mem_RAM|ram~564_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~216_q\ : std_logic;
SIGNAL \Mem_RAM|ram~472_q\ : std_logic;
SIGNAL \Mem_RAM|ram~232_q\ : std_logic;
SIGNAL \Mem_RAM|ram~488_q\ : std_logic;
SIGNAL \Mem_RAM|ram~565_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~248_q\ : std_logic;
SIGNAL \Mem_RAM|ram~504_q\ : std_logic;
SIGNAL \Mem_RAM|ram~264_q\ : std_logic;
SIGNAL \Mem_RAM|ram~520_q\ : std_logic;
SIGNAL \Mem_RAM|ram~566_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~567_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~568_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~6\ : std_logic;
SIGNAL \CPU|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~4_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~5_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~17_q\ : std_logic;
SIGNAL \Mem_RAM|ram~49_q\ : std_logic;
SIGNAL \Mem_RAM|ram~81_q\ : std_logic;
SIGNAL \Mem_RAM|ram~113_q\ : std_logic;
SIGNAL \Mem_RAM|ram~569_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~145_q\ : std_logic;
SIGNAL \Mem_RAM|ram~177_q\ : std_logic;
SIGNAL \Mem_RAM|ram~209_q\ : std_logic;
SIGNAL \Mem_RAM|ram~241_q\ : std_logic;
SIGNAL \Mem_RAM|ram~570_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~33_q\ : std_logic;
SIGNAL \Mem_RAM|ram~65_q\ : std_logic;
SIGNAL \Mem_RAM|ram~97_q\ : std_logic;
SIGNAL \Mem_RAM|ram~129_q\ : std_logic;
SIGNAL \Mem_RAM|ram~571_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~161_q\ : std_logic;
SIGNAL \Mem_RAM|ram~193_q\ : std_logic;
SIGNAL \Mem_RAM|ram~225_q\ : std_logic;
SIGNAL \Mem_RAM|ram~257_q\ : std_logic;
SIGNAL \Mem_RAM|ram~572_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~573_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~273_q\ : std_logic;
SIGNAL \Mem_RAM|ram~305_q\ : std_logic;
SIGNAL \Mem_RAM|ram~401_q\ : std_logic;
SIGNAL \Mem_RAM|ram~433_q\ : std_logic;
SIGNAL \Mem_RAM|ram~574_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~289_q\ : std_logic;
SIGNAL \Mem_RAM|ram~321_q\ : std_logic;
SIGNAL \Mem_RAM|ram~417_q\ : std_logic;
SIGNAL \Mem_RAM|ram~449_q\ : std_logic;
SIGNAL \Mem_RAM|ram~575_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~337_q\ : std_logic;
SIGNAL \Mem_RAM|ram~369_q\ : std_logic;
SIGNAL \Mem_RAM|ram~465_q\ : std_logic;
SIGNAL \Mem_RAM|ram~497_q\ : std_logic;
SIGNAL \Mem_RAM|ram~576_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~353_q\ : std_logic;
SIGNAL \Mem_RAM|ram~385_q\ : std_logic;
SIGNAL \Mem_RAM|ram~481_q\ : std_logic;
SIGNAL \Mem_RAM|ram~513_q\ : std_logic;
SIGNAL \Mem_RAM|ram~577_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~578_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~25_q\ : std_logic;
SIGNAL \Mem_RAM|ram~57_q\ : std_logic;
SIGNAL \Mem_RAM|ram~41_q\ : std_logic;
SIGNAL \Mem_RAM|ram~73_q\ : std_logic;
SIGNAL \Mem_RAM|ram~579_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~153_q\ : std_logic;
SIGNAL \Mem_RAM|ram~185_q\ : std_logic;
SIGNAL \Mem_RAM|ram~169_q\ : std_logic;
SIGNAL \Mem_RAM|ram~201_q\ : std_logic;
SIGNAL \Mem_RAM|ram~580_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~89_q\ : std_logic;
SIGNAL \Mem_RAM|ram~121_q\ : std_logic;
SIGNAL \Mem_RAM|ram~105_q\ : std_logic;
SIGNAL \Mem_RAM|ram~137_q\ : std_logic;
SIGNAL \Mem_RAM|ram~581_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~217_q\ : std_logic;
SIGNAL \Mem_RAM|ram~249_q\ : std_logic;
SIGNAL \Mem_RAM|ram~233_q\ : std_logic;
SIGNAL \Mem_RAM|ram~265_q\ : std_logic;
SIGNAL \Mem_RAM|ram~582_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~583_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~281_q\ : std_logic;
SIGNAL \Mem_RAM|ram~409_q\ : std_logic;
SIGNAL \Mem_RAM|ram~345_q\ : std_logic;
SIGNAL \Mem_RAM|ram~473_q\ : std_logic;
SIGNAL \Mem_RAM|ram~584_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~313_q\ : std_logic;
SIGNAL \Mem_RAM|ram~441_q\ : std_logic;
SIGNAL \Mem_RAM|ram~377_q\ : std_logic;
SIGNAL \Mem_RAM|ram~505_q\ : std_logic;
SIGNAL \Mem_RAM|ram~585_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~297_q\ : std_logic;
SIGNAL \Mem_RAM|ram~425_q\ : std_logic;
SIGNAL \Mem_RAM|ram~361_q\ : std_logic;
SIGNAL \Mem_RAM|ram~489_q\ : std_logic;
SIGNAL \Mem_RAM|ram~586_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~329_q\ : std_logic;
SIGNAL \Mem_RAM|ram~457_q\ : std_logic;
SIGNAL \Mem_RAM|ram~393_q\ : std_logic;
SIGNAL \Mem_RAM|ram~521_q\ : std_logic;
SIGNAL \Mem_RAM|ram~587_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~588_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~589_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~6_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~7_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~18_q\ : std_logic;
SIGNAL \Mem_RAM|ram~26_q\ : std_logic;
SIGNAL \Mem_RAM|ram~34_q\ : std_logic;
SIGNAL \Mem_RAM|ram~42_q\ : std_logic;
SIGNAL \Mem_RAM|ram~590_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~146_q\ : std_logic;
SIGNAL \Mem_RAM|ram~154_q\ : std_logic;
SIGNAL \Mem_RAM|ram~162_q\ : std_logic;
SIGNAL \Mem_RAM|ram~170_q\ : std_logic;
SIGNAL \Mem_RAM|ram~591_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~82_q\ : std_logic;
SIGNAL \Mem_RAM|ram~90_q\ : std_logic;
SIGNAL \Mem_RAM|ram~98_q\ : std_logic;
SIGNAL \Mem_RAM|ram~106_q\ : std_logic;
SIGNAL \Mem_RAM|ram~592_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~210_q\ : std_logic;
SIGNAL \Mem_RAM|ram~218_q\ : std_logic;
SIGNAL \Mem_RAM|ram~226_q\ : std_logic;
SIGNAL \Mem_RAM|ram~234_q\ : std_logic;
SIGNAL \Mem_RAM|ram~593_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~594_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~274_q\ : std_logic;
SIGNAL \Mem_RAM|ram~402_q\ : std_logic;
SIGNAL \Mem_RAM|ram~290_q\ : std_logic;
SIGNAL \Mem_RAM|ram~418_q\ : std_logic;
SIGNAL \Mem_RAM|ram~595_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~282_q\ : std_logic;
SIGNAL \Mem_RAM|ram~410_q\ : std_logic;
SIGNAL \Mem_RAM|ram~298_q\ : std_logic;
SIGNAL \Mem_RAM|ram~426_q\ : std_logic;
SIGNAL \Mem_RAM|ram~596_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~338_q\ : std_logic;
SIGNAL \Mem_RAM|ram~466_q\ : std_logic;
SIGNAL \Mem_RAM|ram~354_q\ : std_logic;
SIGNAL \Mem_RAM|ram~482_q\ : std_logic;
SIGNAL \Mem_RAM|ram~597_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~346_q\ : std_logic;
SIGNAL \Mem_RAM|ram~474_q\ : std_logic;
SIGNAL \Mem_RAM|ram~362_q\ : std_logic;
SIGNAL \Mem_RAM|ram~490_q\ : std_logic;
SIGNAL \Mem_RAM|ram~598_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~599_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~50_q\ : std_logic;
SIGNAL \Mem_RAM|ram~66_q\ : std_logic;
SIGNAL \Mem_RAM|ram~114_q\ : std_logic;
SIGNAL \Mem_RAM|ram~130_q\ : std_logic;
SIGNAL \Mem_RAM|ram~600_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~58_q\ : std_logic;
SIGNAL \Mem_RAM|ram~74_q\ : std_logic;
SIGNAL \Mem_RAM|ram~122_q\ : std_logic;
SIGNAL \Mem_RAM|ram~138_q\ : std_logic;
SIGNAL \Mem_RAM|ram~601_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~178_q\ : std_logic;
SIGNAL \Mem_RAM|ram~194_q\ : std_logic;
SIGNAL \Mem_RAM|ram~242_q\ : std_logic;
SIGNAL \Mem_RAM|ram~258_q\ : std_logic;
SIGNAL \Mem_RAM|ram~602_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~186_q\ : std_logic;
SIGNAL \Mem_RAM|ram~202_q\ : std_logic;
SIGNAL \Mem_RAM|ram~250_q\ : std_logic;
SIGNAL \Mem_RAM|ram~266_q\ : std_logic;
SIGNAL \Mem_RAM|ram~603_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~604_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~306_q\ : std_logic;
SIGNAL \Mem_RAM|ram~314_q\ : std_logic;
SIGNAL \Mem_RAM|ram~322_q\ : std_logic;
SIGNAL \Mem_RAM|ram~330_q\ : std_logic;
SIGNAL \Mem_RAM|ram~605_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~434_q\ : std_logic;
SIGNAL \Mem_RAM|ram~442_q\ : std_logic;
SIGNAL \Mem_RAM|ram~450_q\ : std_logic;
SIGNAL \Mem_RAM|ram~458_q\ : std_logic;
SIGNAL \Mem_RAM|ram~606_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~370_q\ : std_logic;
SIGNAL \Mem_RAM|ram~378_q\ : std_logic;
SIGNAL \Mem_RAM|ram~386_q\ : std_logic;
SIGNAL \Mem_RAM|ram~394_q\ : std_logic;
SIGNAL \Mem_RAM|ram~607_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~498_q\ : std_logic;
SIGNAL \Mem_RAM|ram~506_q\ : std_logic;
SIGNAL \Mem_RAM|ram~514_q\ : std_logic;
SIGNAL \Mem_RAM|ram~522_q\ : std_logic;
SIGNAL \Mem_RAM|ram~608_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~609_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~610_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[3]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~10\ : std_logic;
SIGNAL \CPU|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~8_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~9_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~19_q\ : std_logic;
SIGNAL \Mem_RAM|ram~27_q\ : std_logic;
SIGNAL \Mem_RAM|ram~51_q\ : std_logic;
SIGNAL \Mem_RAM|ram~59_q\ : std_logic;
SIGNAL \Mem_RAM|ram~611_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~147_q\ : std_logic;
SIGNAL \Mem_RAM|ram~155_q\ : std_logic;
SIGNAL \Mem_RAM|ram~179_q\ : std_logic;
SIGNAL \Mem_RAM|ram~187_q\ : std_logic;
SIGNAL \Mem_RAM|ram~612_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~83_q\ : std_logic;
SIGNAL \Mem_RAM|ram~91_q\ : std_logic;
SIGNAL \Mem_RAM|ram~115_q\ : std_logic;
SIGNAL \Mem_RAM|ram~123_q\ : std_logic;
SIGNAL \Mem_RAM|ram~613_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~211_q\ : std_logic;
SIGNAL \Mem_RAM|ram~219_q\ : std_logic;
SIGNAL \Mem_RAM|ram~243_q\ : std_logic;
SIGNAL \Mem_RAM|ram~251_q\ : std_logic;
SIGNAL \Mem_RAM|ram~614_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~615_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~275_q\ : std_logic;
SIGNAL \Mem_RAM|ram~283_q\ : std_logic;
SIGNAL \Mem_RAM|ram~339_q\ : std_logic;
SIGNAL \Mem_RAM|ram~347_q\ : std_logic;
SIGNAL \Mem_RAM|ram~616_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~307_q\ : std_logic;
SIGNAL \Mem_RAM|ram~315_q\ : std_logic;
SIGNAL \Mem_RAM|ram~371_q\ : std_logic;
SIGNAL \Mem_RAM|ram~379_q\ : std_logic;
SIGNAL \Mem_RAM|ram~617_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~403_q\ : std_logic;
SIGNAL \Mem_RAM|ram~411_q\ : std_logic;
SIGNAL \Mem_RAM|ram~467_q\ : std_logic;
SIGNAL \Mem_RAM|ram~475_q\ : std_logic;
SIGNAL \Mem_RAM|ram~618_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~435_q\ : std_logic;
SIGNAL \Mem_RAM|ram~443_q\ : std_logic;
SIGNAL \Mem_RAM|ram~499_q\ : std_logic;
SIGNAL \Mem_RAM|ram~507_q\ : std_logic;
SIGNAL \Mem_RAM|ram~619_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~620_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~35_q\ : std_logic;
SIGNAL \Mem_RAM|ram~43_q\ : std_logic;
SIGNAL \Mem_RAM|ram~163_q\ : std_logic;
SIGNAL \Mem_RAM|ram~171_q\ : std_logic;
SIGNAL \Mem_RAM|ram~621_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~67_q\ : std_logic;
SIGNAL \Mem_RAM|ram~75_q\ : std_logic;
SIGNAL \Mem_RAM|ram~195_q\ : std_logic;
SIGNAL \Mem_RAM|ram~203_q\ : std_logic;
SIGNAL \Mem_RAM|ram~622_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~99_q\ : std_logic;
SIGNAL \Mem_RAM|ram~107_q\ : std_logic;
SIGNAL \Mem_RAM|ram~227_q\ : std_logic;
SIGNAL \Mem_RAM|ram~235_q\ : std_logic;
SIGNAL \Mem_RAM|ram~623_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~131_q\ : std_logic;
SIGNAL \Mem_RAM|ram~139_q\ : std_logic;
SIGNAL \Mem_RAM|ram~259_q\ : std_logic;
SIGNAL \Mem_RAM|ram~267_q\ : std_logic;
SIGNAL \Mem_RAM|ram~624_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~625_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~291_q\ : std_logic;
SIGNAL \Mem_RAM|ram~299_q\ : std_logic;
SIGNAL \Mem_RAM|ram~323_q\ : std_logic;
SIGNAL \Mem_RAM|ram~331_q\ : std_logic;
SIGNAL \Mem_RAM|ram~626_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~419_q\ : std_logic;
SIGNAL \Mem_RAM|ram~427_q\ : std_logic;
SIGNAL \Mem_RAM|ram~451_q\ : std_logic;
SIGNAL \Mem_RAM|ram~459_q\ : std_logic;
SIGNAL \Mem_RAM|ram~627_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~355_q\ : std_logic;
SIGNAL \Mem_RAM|ram~363_q\ : std_logic;
SIGNAL \Mem_RAM|ram~387_q\ : std_logic;
SIGNAL \Mem_RAM|ram~395_q\ : std_logic;
SIGNAL \Mem_RAM|ram~628_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~483_q\ : std_logic;
SIGNAL \Mem_RAM|ram~491_q\ : std_logic;
SIGNAL \Mem_RAM|ram~515_q\ : std_logic;
SIGNAL \Mem_RAM|ram~523_q\ : std_logic;
SIGNAL \Mem_RAM|ram~629_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~630_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~631_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[4]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~14\ : std_logic;
SIGNAL \CPU|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~10_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~11_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~20_q\ : std_logic;
SIGNAL \Mem_RAM|ram~52_q\ : std_logic;
SIGNAL \Mem_RAM|ram~36_q\ : std_logic;
SIGNAL \Mem_RAM|ram~68_q\ : std_logic;
SIGNAL \Mem_RAM|ram~632_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~148_q\ : std_logic;
SIGNAL \Mem_RAM|ram~180_q\ : std_logic;
SIGNAL \Mem_RAM|ram~164_q\ : std_logic;
SIGNAL \Mem_RAM|ram~196_q\ : std_logic;
SIGNAL \Mem_RAM|ram~633_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~84_q\ : std_logic;
SIGNAL \Mem_RAM|ram~116_q\ : std_logic;
SIGNAL \Mem_RAM|ram~100_q\ : std_logic;
SIGNAL \Mem_RAM|ram~132_q\ : std_logic;
SIGNAL \Mem_RAM|ram~634_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~212_q\ : std_logic;
SIGNAL \Mem_RAM|ram~244_q\ : std_logic;
SIGNAL \Mem_RAM|ram~228_q\ : std_logic;
SIGNAL \Mem_RAM|ram~260_q\ : std_logic;
SIGNAL \Mem_RAM|ram~635_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~636_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~276_q\ : std_logic;
SIGNAL \Mem_RAM|ram~308_q\ : std_logic;
SIGNAL \Mem_RAM|ram~404_q\ : std_logic;
SIGNAL \Mem_RAM|ram~436_q\ : std_logic;
SIGNAL \Mem_RAM|ram~637_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~292_q\ : std_logic;
SIGNAL \Mem_RAM|ram~324_q\ : std_logic;
SIGNAL \Mem_RAM|ram~420_q\ : std_logic;
SIGNAL \Mem_RAM|ram~452_q\ : std_logic;
SIGNAL \Mem_RAM|ram~638_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~340_q\ : std_logic;
SIGNAL \Mem_RAM|ram~372_q\ : std_logic;
SIGNAL \Mem_RAM|ram~468_q\ : std_logic;
SIGNAL \Mem_RAM|ram~500_q\ : std_logic;
SIGNAL \Mem_RAM|ram~639_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~356_q\ : std_logic;
SIGNAL \Mem_RAM|ram~388_q\ : std_logic;
SIGNAL \Mem_RAM|ram~484_q\ : std_logic;
SIGNAL \Mem_RAM|ram~516_q\ : std_logic;
SIGNAL \Mem_RAM|ram~640_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~641_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~28_q\ : std_logic;
SIGNAL \Mem_RAM|ram~60_q\ : std_logic;
SIGNAL \Mem_RAM|ram~44_q\ : std_logic;
SIGNAL \Mem_RAM|ram~76_q\ : std_logic;
SIGNAL \Mem_RAM|ram~642_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~156_q\ : std_logic;
SIGNAL \Mem_RAM|ram~188_q\ : std_logic;
SIGNAL \Mem_RAM|ram~172_q\ : std_logic;
SIGNAL \Mem_RAM|ram~204_q\ : std_logic;
SIGNAL \Mem_RAM|ram~643_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~92_q\ : std_logic;
SIGNAL \Mem_RAM|ram~124_q\ : std_logic;
SIGNAL \Mem_RAM|ram~108_q\ : std_logic;
SIGNAL \Mem_RAM|ram~140_q\ : std_logic;
SIGNAL \Mem_RAM|ram~644_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~220_q\ : std_logic;
SIGNAL \Mem_RAM|ram~252_q\ : std_logic;
SIGNAL \Mem_RAM|ram~236_q\ : std_logic;
SIGNAL \Mem_RAM|ram~268_q\ : std_logic;
SIGNAL \Mem_RAM|ram~645_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~646_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~284_q\ : std_logic;
SIGNAL \Mem_RAM|ram~316_q\ : std_logic;
SIGNAL \Mem_RAM|ram~348_q\ : std_logic;
SIGNAL \Mem_RAM|ram~380_q\ : std_logic;
SIGNAL \Mem_RAM|ram~647_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~412_q\ : std_logic;
SIGNAL \Mem_RAM|ram~444_q\ : std_logic;
SIGNAL \Mem_RAM|ram~476_q\ : std_logic;
SIGNAL \Mem_RAM|ram~508_q\ : std_logic;
SIGNAL \Mem_RAM|ram~648_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~300_q\ : std_logic;
SIGNAL \Mem_RAM|ram~332_q\ : std_logic;
SIGNAL \Mem_RAM|ram~364_q\ : std_logic;
SIGNAL \Mem_RAM|ram~396_q\ : std_logic;
SIGNAL \Mem_RAM|ram~649_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~428_q\ : std_logic;
SIGNAL \Mem_RAM|ram~460_q\ : std_logic;
SIGNAL \Mem_RAM|ram~492_q\ : std_logic;
SIGNAL \Mem_RAM|ram~524_q\ : std_logic;
SIGNAL \Mem_RAM|ram~650_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~651_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~652_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[5]~4_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~18\ : std_logic;
SIGNAL \CPU|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~12_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~13_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~21_q\ : std_logic;
SIGNAL \Mem_RAM|ram~37_q\ : std_logic;
SIGNAL \Mem_RAM|ram~85_q\ : std_logic;
SIGNAL \Mem_RAM|ram~101_q\ : std_logic;
SIGNAL \Mem_RAM|ram~653_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~29_q\ : std_logic;
SIGNAL \Mem_RAM|ram~45_q\ : std_logic;
SIGNAL \Mem_RAM|ram~93_q\ : std_logic;
SIGNAL \Mem_RAM|ram~109_q\ : std_logic;
SIGNAL \Mem_RAM|ram~654_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~149_q\ : std_logic;
SIGNAL \Mem_RAM|ram~165_q\ : std_logic;
SIGNAL \Mem_RAM|ram~213_q\ : std_logic;
SIGNAL \Mem_RAM|ram~229_q\ : std_logic;
SIGNAL \Mem_RAM|ram~655_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~157_q\ : std_logic;
SIGNAL \Mem_RAM|ram~173_q\ : std_logic;
SIGNAL \Mem_RAM|ram~221_q\ : std_logic;
SIGNAL \Mem_RAM|ram~237_q\ : std_logic;
SIGNAL \Mem_RAM|ram~656_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~657_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~277_q\ : std_logic;
SIGNAL \Mem_RAM|ram~405_q\ : std_logic;
SIGNAL \Mem_RAM|ram~293_q\ : std_logic;
SIGNAL \Mem_RAM|ram~421_q\ : std_logic;
SIGNAL \Mem_RAM|ram~658_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~285_q\ : std_logic;
SIGNAL \Mem_RAM|ram~413_q\ : std_logic;
SIGNAL \Mem_RAM|ram~301_q\ : std_logic;
SIGNAL \Mem_RAM|ram~429_q\ : std_logic;
SIGNAL \Mem_RAM|ram~659_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~341_q\ : std_logic;
SIGNAL \Mem_RAM|ram~469_q\ : std_logic;
SIGNAL \Mem_RAM|ram~357_q\ : std_logic;
SIGNAL \Mem_RAM|ram~485_q\ : std_logic;
SIGNAL \Mem_RAM|ram~660_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~349_q\ : std_logic;
SIGNAL \Mem_RAM|ram~477_q\ : std_logic;
SIGNAL \Mem_RAM|ram~365_q\ : std_logic;
SIGNAL \Mem_RAM|ram~493_q\ : std_logic;
SIGNAL \Mem_RAM|ram~661_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~662_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~53_q\ : std_logic;
SIGNAL \Mem_RAM|ram~61_q\ : std_logic;
SIGNAL \Mem_RAM|ram~69_q\ : std_logic;
SIGNAL \Mem_RAM|ram~77_q\ : std_logic;
SIGNAL \Mem_RAM|ram~663_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~181_q\ : std_logic;
SIGNAL \Mem_RAM|ram~189_q\ : std_logic;
SIGNAL \Mem_RAM|ram~197_q\ : std_logic;
SIGNAL \Mem_RAM|ram~205_q\ : std_logic;
SIGNAL \Mem_RAM|ram~664_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~117_q\ : std_logic;
SIGNAL \Mem_RAM|ram~125_q\ : std_logic;
SIGNAL \Mem_RAM|ram~133_q\ : std_logic;
SIGNAL \Mem_RAM|ram~141_q\ : std_logic;
SIGNAL \Mem_RAM|ram~665_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~245_q\ : std_logic;
SIGNAL \Mem_RAM|ram~253_q\ : std_logic;
SIGNAL \Mem_RAM|ram~261_q\ : std_logic;
SIGNAL \Mem_RAM|ram~269_q\ : std_logic;
SIGNAL \Mem_RAM|ram~666_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~667_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~309_q\ : std_logic;
SIGNAL \Mem_RAM|ram~325_q\ : std_logic;
SIGNAL \Mem_RAM|ram~373_q\ : std_logic;
SIGNAL \Mem_RAM|ram~389_q\ : std_logic;
SIGNAL \Mem_RAM|ram~668_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~317_q\ : std_logic;
SIGNAL \Mem_RAM|ram~333_q\ : std_logic;
SIGNAL \Mem_RAM|ram~381_q\ : std_logic;
SIGNAL \Mem_RAM|ram~397_q\ : std_logic;
SIGNAL \Mem_RAM|ram~669_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~437_q\ : std_logic;
SIGNAL \Mem_RAM|ram~453_q\ : std_logic;
SIGNAL \Mem_RAM|ram~501_q\ : std_logic;
SIGNAL \Mem_RAM|ram~517_q\ : std_logic;
SIGNAL \Mem_RAM|ram~670_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~445_q\ : std_logic;
SIGNAL \Mem_RAM|ram~461_q\ : std_logic;
SIGNAL \Mem_RAM|ram~509_q\ : std_logic;
SIGNAL \Mem_RAM|ram~525_q\ : std_logic;
SIGNAL \Mem_RAM|ram~671_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~672_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~673_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[6]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~22\ : std_logic;
SIGNAL \CPU|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~14_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~15_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~22_q\ : std_logic;
SIGNAL \Mem_RAM|ram~54_q\ : std_logic;
SIGNAL \Mem_RAM|ram~150_q\ : std_logic;
SIGNAL \Mem_RAM|ram~182_q\ : std_logic;
SIGNAL \Mem_RAM|ram~674_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~30_q\ : std_logic;
SIGNAL \Mem_RAM|ram~62_q\ : std_logic;
SIGNAL \Mem_RAM|ram~158_q\ : std_logic;
SIGNAL \Mem_RAM|ram~190_q\ : std_logic;
SIGNAL \Mem_RAM|ram~675_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~86_q\ : std_logic;
SIGNAL \Mem_RAM|ram~118_q\ : std_logic;
SIGNAL \Mem_RAM|ram~214_q\ : std_logic;
SIGNAL \Mem_RAM|ram~246_q\ : std_logic;
SIGNAL \Mem_RAM|ram~676_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~94_q\ : std_logic;
SIGNAL \Mem_RAM|ram~126_q\ : std_logic;
SIGNAL \Mem_RAM|ram~222_q\ : std_logic;
SIGNAL \Mem_RAM|ram~254_q\ : std_logic;
SIGNAL \Mem_RAM|ram~677_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~678_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~38_q\ : std_logic;
SIGNAL \Mem_RAM|ram~46_q\ : std_logic;
SIGNAL \Mem_RAM|ram~166_q\ : std_logic;
SIGNAL \Mem_RAM|ram~174_q\ : std_logic;
SIGNAL \Mem_RAM|ram~679_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~70_q\ : std_logic;
SIGNAL \Mem_RAM|ram~78_q\ : std_logic;
SIGNAL \Mem_RAM|ram~198_q\ : std_logic;
SIGNAL \Mem_RAM|ram~206_q\ : std_logic;
SIGNAL \Mem_RAM|ram~680_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~102_q\ : std_logic;
SIGNAL \Mem_RAM|ram~110_q\ : std_logic;
SIGNAL \Mem_RAM|ram~230_q\ : std_logic;
SIGNAL \Mem_RAM|ram~238_q\ : std_logic;
SIGNAL \Mem_RAM|ram~681_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~134_q\ : std_logic;
SIGNAL \Mem_RAM|ram~142_q\ : std_logic;
SIGNAL \Mem_RAM|ram~262_q\ : std_logic;
SIGNAL \Mem_RAM|ram~270_q\ : std_logic;
SIGNAL \Mem_RAM|ram~682_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~683_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~278_q\ : std_logic;
SIGNAL \Mem_RAM|ram~310_q\ : std_logic;
SIGNAL \Mem_RAM|ram~342_q\ : std_logic;
SIGNAL \Mem_RAM|ram~374_q\ : std_logic;
SIGNAL \Mem_RAM|ram~684_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~286_q\ : std_logic;
SIGNAL \Mem_RAM|ram~318_q\ : std_logic;
SIGNAL \Mem_RAM|ram~350_q\ : std_logic;
SIGNAL \Mem_RAM|ram~382_q\ : std_logic;
SIGNAL \Mem_RAM|ram~685_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~406_q\ : std_logic;
SIGNAL \Mem_RAM|ram~438_q\ : std_logic;
SIGNAL \Mem_RAM|ram~470_q\ : std_logic;
SIGNAL \Mem_RAM|ram~502_q\ : std_logic;
SIGNAL \Mem_RAM|ram~686_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~414_q\ : std_logic;
SIGNAL \Mem_RAM|ram~446_q\ : std_logic;
SIGNAL \Mem_RAM|ram~478_q\ : std_logic;
SIGNAL \Mem_RAM|ram~510_q\ : std_logic;
SIGNAL \Mem_RAM|ram~687_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~688_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~294_q\ : std_logic;
SIGNAL \Mem_RAM|ram~302_q\ : std_logic;
SIGNAL \Mem_RAM|ram~422_q\ : std_logic;
SIGNAL \Mem_RAM|ram~430_q\ : std_logic;
SIGNAL \Mem_RAM|ram~689_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~326_q\ : std_logic;
SIGNAL \Mem_RAM|ram~334_q\ : std_logic;
SIGNAL \Mem_RAM|ram~454_q\ : std_logic;
SIGNAL \Mem_RAM|ram~462_q\ : std_logic;
SIGNAL \Mem_RAM|ram~690_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~358_q\ : std_logic;
SIGNAL \Mem_RAM|ram~366_q\ : std_logic;
SIGNAL \Mem_RAM|ram~486_q\ : std_logic;
SIGNAL \Mem_RAM|ram~494_q\ : std_logic;
SIGNAL \Mem_RAM|ram~691_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~390_q\ : std_logic;
SIGNAL \Mem_RAM|ram~398_q\ : std_logic;
SIGNAL \Mem_RAM|ram~518_q\ : std_logic;
SIGNAL \Mem_RAM|ram~526_q\ : std_logic;
SIGNAL \Mem_RAM|ram~692_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~693_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~694_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[7]~6_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~26\ : std_logic;
SIGNAL \CPU|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Equal0~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Equal0~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida_cmp~combout\ : std_logic;
SIGNAL \CPU|flagIgual|DOUT~0_combout\ : std_logic;
SIGNAL \CPU|flagIgual|DOUT~q\ : std_logic;
SIGNAL \CPU|logicaDeDesvio|saida[0]~1_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~40_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~41_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~42_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~43_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~44_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~76_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida~1_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|MUX2|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~13_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~14_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~15_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~16_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~17_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~18_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~16_combout\ : std_logic;
SIGNAL \hab_HEX0~0_combout\ : std_logic;
SIGNAL \HabilitaRegLEDR7to0~0_combout\ : std_logic;
SIGNAL \hab_HEX1~0_combout\ : std_logic;
SIGNAL \regLEDR8|DOUT~0_combout\ : std_logic;
SIGNAL \regLEDR8|DOUT~q\ : std_logic;
SIGNAL \hab_HEX2~0_combout\ : std_logic;
SIGNAL \regLEDR9|DOUT~0_combout\ : std_logic;
SIGNAL \regLEDR9|DOUT~q\ : std_logic;
SIGNAL \hab_HEX0~1_combout\ : std_logic;
SIGNAL \Hex0value|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \Hex0value|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \Hex0value|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \Hex0value|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \Hex0value|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \Hex0value|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \Hex0value|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \hab_HEX1~1_combout\ : std_logic;
SIGNAL \Hex1value|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \Hex1value|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \Hex1value|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \Hex1value|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \Hex1value|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \Hex1value|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \Hex1value|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \hab_HEX2~1_combout\ : std_logic;
SIGNAL \Hex2value|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \Hex2value|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \Hex2value|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \Hex2value|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \Hex2value|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \Hex2value|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \Hex2value|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \hab_HEX3~0_combout\ : std_logic;
SIGNAL \Hex3value|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \Hex3value|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \Hex3value|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \Hex3value|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \Hex3value|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \Hex3value|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \Hex3value|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \hab_HEX5~0_combout\ : std_logic;
SIGNAL \hab_HEX4~0_combout\ : std_logic;
SIGNAL \Hex4value|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \Hex4value|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \Hex4value|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \Hex4value|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \Hex4value|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \Hex4value|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \Hex4value|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \hab_HEX5~combout\ : std_logic;
SIGNAL \Hex5value|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \Hex5value|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \Hex5value|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \Hex5value|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \Hex5value|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \Hex5value|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \Hex5value|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \regLEDR8bits|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg7seg4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg7seg0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg7seg1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg7seg2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg7seg3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg7seg5|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|enderecoDeRetorno|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|ULA1|saida\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mem_RAM|ALT_INV_ram~775_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~773_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~771_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~769_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~767_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~765_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~763_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~761_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~759_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~757_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~755_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~753_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~751_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~749_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~747_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~745_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~743_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~741_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~739_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~737_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~735_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~733_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~731_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~729_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~727_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~725_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~723_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~721_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~719_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~717_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~715_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~713_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~711_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~709_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~707_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~705_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~703_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~701_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~699_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~697_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~695_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[7]~15_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[7]~14_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~694_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~693_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~692_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~526_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~518_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~398_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~390_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~691_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~494_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~486_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~366_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~358_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~690_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~462_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~454_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~334_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~326_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~689_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~430_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~422_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~302_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~294_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~688_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~687_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~510_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~478_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~446_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~414_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~686_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~502_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~470_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~438_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~406_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~685_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~382_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~350_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[0]~16_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~24_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~23_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~22_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \ALT_INV_habSW7dt0~0_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \CPU|REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|flagIgual|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg7seg5|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg7seg4|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg7seg3|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg7seg2|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg7seg1|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg7seg0|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regLEDR9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \regLEDR8|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~375_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~119_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~367_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~111_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~439_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~183_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~431_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~175_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~311_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~303_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~471_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~215_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~463_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~207_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~343_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~87_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~335_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~407_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~151_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~399_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~143_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~279_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~271_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \CPU|enderecoDeRetorno|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mem_ROM|ALT_INV_memROM~76_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~75_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~74_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~73_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~72_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~71_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~70_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~69_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~68_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~67_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~66_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~65_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~64_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~63_combout\ : std_logic;
SIGNAL \CPU|logicaDeDesvio|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ALT_INV_hab_HEX5~0_combout\ : std_logic;
SIGNAL \ALT_INV_hab_HEX2~0_combout\ : std_logic;
SIGNAL \ALT_INV_hab_HEX1~0_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~62_combout\ : std_logic;
SIGNAL \ALT_INV_hab_HEX0~0_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~61_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~60_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~59_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~58_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~57_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~56_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~55_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~54_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~53_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~52_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~51_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~50_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~49_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~48_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~47_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~46_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~45_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~44_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~43_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~42_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~41_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~40_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~39_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~38_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~37_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~36_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~35_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~34_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~33_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~32_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~31_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~30_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~29_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~28_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~27_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~26_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~25_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~562_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~561_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~512_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~256_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~480_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~224_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~560_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~496_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~240_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~464_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~208_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~448_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~192_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~416_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~160_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~558_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~432_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~176_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~400_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~144_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~392_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~136_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~328_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~360_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~104_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~296_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~376_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~120_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~312_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~344_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~88_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~280_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~384_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~128_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~368_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~112_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~352_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~96_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~336_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~320_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~304_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~288_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~272_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[7]~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_saida[6]~5_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_saida[0]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~3_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~1_combout\ : std_logic;
SIGNAL \regKEY1|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \regKEY0|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ALT_INV_habSW7dt0~2_combout\ : std_logic;
SIGNAL \ALT_INV_habSW7dt0~1_combout\ : std_logic;
SIGNAL \decoder3x8MS|ALT_INV_saida[5]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~0_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_saida[1]~3_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~519_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~263_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~391_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~135_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~511_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~255_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~383_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~127_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~455_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~199_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~327_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~447_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~191_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~319_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~487_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~231_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~479_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~223_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~359_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~103_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~351_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~95_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~423_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~167_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~415_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~159_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~295_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~287_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~503_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~247_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~495_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~239_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~210_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~592_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~106_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~98_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~90_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~82_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~591_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~170_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~162_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~154_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~146_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~590_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[2]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[2]~4_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~589_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~588_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~587_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~521_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~393_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~457_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~329_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~586_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~489_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~361_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~425_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~297_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~585_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~505_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~377_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~441_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~313_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~584_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~473_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~345_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~409_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~281_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~583_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~582_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~265_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~233_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~249_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~217_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~581_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~137_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~105_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~121_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~89_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~580_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~201_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~169_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~185_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~153_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~579_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~578_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~577_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~513_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~481_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~385_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~353_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~576_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~497_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~465_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~369_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~337_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~575_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~449_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~417_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~321_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~289_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~574_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~433_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~401_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~305_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~273_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~573_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~572_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~257_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~225_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~193_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~161_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~571_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~129_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~97_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~570_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~241_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~209_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~177_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~145_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~569_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~113_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~81_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[1]~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[1]~2_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~568_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~567_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~566_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~520_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~264_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~504_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~248_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~565_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~488_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~232_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~472_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~216_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~564_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~456_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~200_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~440_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~184_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~563_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~424_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~168_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~408_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~152_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~235_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~227_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~107_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~99_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~622_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~203_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~195_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~621_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~171_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~163_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~620_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~619_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~507_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~499_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~443_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~435_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~618_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~475_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~467_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~411_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~403_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~617_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~379_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~371_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~315_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~307_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~616_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~347_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~339_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~283_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~275_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~615_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~614_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~251_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~243_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~219_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~211_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~613_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~123_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~115_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~91_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~83_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~612_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~187_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~179_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~155_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~147_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~611_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[3]~7_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[3]~6_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~610_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~609_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~608_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~522_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~514_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~506_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~498_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~607_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~394_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~386_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~378_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~370_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~606_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~458_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~450_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~442_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~434_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~605_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~330_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~322_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~314_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~306_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~604_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~603_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~266_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~250_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~202_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~186_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~602_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~258_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~242_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~194_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~178_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~601_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~138_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~122_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~600_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~130_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~114_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~599_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~598_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~490_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~362_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~474_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~346_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~597_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~482_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~354_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~466_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~338_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~596_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~426_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~298_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~410_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~282_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~595_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~418_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~290_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~402_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~274_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~594_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~593_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~234_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~226_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~218_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~109_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~93_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~653_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~101_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~85_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[5]~11_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[5]~10_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~652_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~651_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~650_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~524_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~492_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~460_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~428_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~649_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~396_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~364_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~332_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~300_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~648_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~508_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~476_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~444_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~412_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~647_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~380_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~348_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~316_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~284_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~646_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~645_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~268_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~236_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~252_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~220_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~644_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~140_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~108_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~124_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~92_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~643_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~204_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~172_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~188_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~156_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~642_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~641_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~640_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~516_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~484_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~388_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~356_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~639_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~500_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~468_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~372_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~340_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~638_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~452_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~420_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~324_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~292_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~637_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~436_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~404_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~308_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~276_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~636_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~635_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~260_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~228_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~244_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~212_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~634_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~132_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~100_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~116_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~84_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~633_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~196_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~164_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~180_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~148_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~632_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[4]~9_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[4]~8_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~631_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~630_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~629_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~523_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~515_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~491_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~483_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~628_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~395_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~387_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~363_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~355_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~627_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~459_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~451_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~427_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~419_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~626_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~331_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~323_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~299_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~291_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~625_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~624_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~267_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~259_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~139_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~131_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~623_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~318_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~286_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~684_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~374_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~342_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~310_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~278_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~683_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~682_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~270_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~262_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~142_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~134_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~681_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~238_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~230_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~110_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~102_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~680_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~206_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~198_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~679_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~174_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~166_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~678_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~677_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~254_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~222_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~126_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~94_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~676_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~246_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~214_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~118_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~86_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~675_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~190_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~158_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~674_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~182_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~150_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[6]~13_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida[6]~12_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~673_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~672_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~671_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~525_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~509_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~461_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~445_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~670_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~517_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~501_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~453_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~437_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~669_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~397_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~381_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~333_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~317_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~668_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~389_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~373_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~325_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~309_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~667_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~666_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~269_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~261_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~253_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~245_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~665_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~141_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~133_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~125_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~117_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~664_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~205_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~197_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~189_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~181_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~663_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~662_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~661_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~493_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~365_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~477_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~349_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~660_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~485_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~357_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~469_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~341_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~659_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~429_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~301_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~413_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~285_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~658_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~421_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~293_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~405_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~277_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~657_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~656_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~237_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~221_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~173_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~157_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~655_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~229_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~213_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~165_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~149_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~654_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida_cmp~combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_saida\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|logicaDeDesvio|ALT_INV_saida[0]~1_combout\ : std_logic;
SIGNAL \detectorSubKEY1|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \detectorSubKEY0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[7]~6_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[6]~5_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[5]~4_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[4]~3_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[3]~2_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Reset_Reg_KEY1~combout\ : std_logic;
SIGNAL \ALT_INV_Reset_Reg_KEY0~combout\ : std_logic;
SIGNAL \ALT_INV_Reset_Reg_KEY0~0_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~821_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~819_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~817_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~815_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~813_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~811_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~809_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~807_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~805_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~803_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~801_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~799_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~797_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~795_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~793_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~791_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~789_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~787_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~785_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~783_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~781_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~779_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~777_combout\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_CLOCK_50~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_FPGA_RESET_N <= FPGA_RESET_N;
ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
PC_OUT <= ww_PC_OUT;
Hab_debug <= ww_Hab_debug;
REG_A_OUT <= ww_REG_A_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Mem_RAM|ALT_INV_ram~775_combout\ <= NOT \Mem_RAM|ram~775_combout\;
\Mem_RAM|ALT_INV_ram~773_combout\ <= NOT \Mem_RAM|ram~773_combout\;
\Mem_RAM|ALT_INV_ram~771_combout\ <= NOT \Mem_RAM|ram~771_combout\;
\Mem_RAM|ALT_INV_ram~769_combout\ <= NOT \Mem_RAM|ram~769_combout\;
\Mem_RAM|ALT_INV_ram~767_combout\ <= NOT \Mem_RAM|ram~767_combout\;
\Mem_RAM|ALT_INV_ram~765_combout\ <= NOT \Mem_RAM|ram~765_combout\;
\Mem_RAM|ALT_INV_ram~763_combout\ <= NOT \Mem_RAM|ram~763_combout\;
\Mem_RAM|ALT_INV_ram~761_combout\ <= NOT \Mem_RAM|ram~761_combout\;
\Mem_RAM|ALT_INV_ram~759_combout\ <= NOT \Mem_RAM|ram~759_combout\;
\Mem_RAM|ALT_INV_ram~757_combout\ <= NOT \Mem_RAM|ram~757_combout\;
\Mem_RAM|ALT_INV_ram~755_combout\ <= NOT \Mem_RAM|ram~755_combout\;
\Mem_RAM|ALT_INV_ram~753_combout\ <= NOT \Mem_RAM|ram~753_combout\;
\Mem_RAM|ALT_INV_ram~751_combout\ <= NOT \Mem_RAM|ram~751_combout\;
\Mem_RAM|ALT_INV_ram~749_combout\ <= NOT \Mem_RAM|ram~749_combout\;
\Mem_RAM|ALT_INV_ram~747_combout\ <= NOT \Mem_RAM|ram~747_combout\;
\Mem_RAM|ALT_INV_ram~745_combout\ <= NOT \Mem_RAM|ram~745_combout\;
\Mem_RAM|ALT_INV_ram~743_combout\ <= NOT \Mem_RAM|ram~743_combout\;
\Mem_RAM|ALT_INV_ram~741_combout\ <= NOT \Mem_RAM|ram~741_combout\;
\Mem_RAM|ALT_INV_ram~739_combout\ <= NOT \Mem_RAM|ram~739_combout\;
\Mem_RAM|ALT_INV_ram~737_combout\ <= NOT \Mem_RAM|ram~737_combout\;
\Mem_RAM|ALT_INV_ram~735_combout\ <= NOT \Mem_RAM|ram~735_combout\;
\Mem_RAM|ALT_INV_ram~733_combout\ <= NOT \Mem_RAM|ram~733_combout\;
\Mem_RAM|ALT_INV_ram~731_combout\ <= NOT \Mem_RAM|ram~731_combout\;
\Mem_RAM|ALT_INV_ram~729_combout\ <= NOT \Mem_RAM|ram~729_combout\;
\Mem_RAM|ALT_INV_ram~727_combout\ <= NOT \Mem_RAM|ram~727_combout\;
\Mem_RAM|ALT_INV_ram~725_combout\ <= NOT \Mem_RAM|ram~725_combout\;
\Mem_RAM|ALT_INV_ram~723_combout\ <= NOT \Mem_RAM|ram~723_combout\;
\Mem_RAM|ALT_INV_ram~721_combout\ <= NOT \Mem_RAM|ram~721_combout\;
\Mem_RAM|ALT_INV_ram~719_combout\ <= NOT \Mem_RAM|ram~719_combout\;
\Mem_RAM|ALT_INV_ram~717_combout\ <= NOT \Mem_RAM|ram~717_combout\;
\Mem_RAM|ALT_INV_ram~715_combout\ <= NOT \Mem_RAM|ram~715_combout\;
\Mem_RAM|ALT_INV_ram~713_combout\ <= NOT \Mem_RAM|ram~713_combout\;
\Mem_RAM|ALT_INV_ram~711_combout\ <= NOT \Mem_RAM|ram~711_combout\;
\Mem_RAM|ALT_INV_ram~709_combout\ <= NOT \Mem_RAM|ram~709_combout\;
\Mem_RAM|ALT_INV_ram~707_combout\ <= NOT \Mem_RAM|ram~707_combout\;
\Mem_RAM|ALT_INV_ram~705_combout\ <= NOT \Mem_RAM|ram~705_combout\;
\Mem_RAM|ALT_INV_ram~703_combout\ <= NOT \Mem_RAM|ram~703_combout\;
\Mem_RAM|ALT_INV_ram~701_combout\ <= NOT \Mem_RAM|ram~701_combout\;
\Mem_RAM|ALT_INV_ram~699_combout\ <= NOT \Mem_RAM|ram~699_combout\;
\Mem_RAM|ALT_INV_ram~697_combout\ <= NOT \Mem_RAM|ram~697_combout\;
\Mem_RAM|ALT_INV_process_0~0_combout\ <= NOT \Mem_RAM|process_0~0_combout\;
\Mem_RAM|ALT_INV_ram~695_combout\ <= NOT \Mem_RAM|ram~695_combout\;
\ALT_INV_Data_IN[0]~5_combout\ <= NOT \Data_IN[0]~5_combout\;
\CPU|ULA1|ALT_INV_Equal0~1_combout\ <= NOT \CPU|ULA1|Equal0~1_combout\;
\CPU|ULA1|ALT_INV_Equal0~0_combout\ <= NOT \CPU|ULA1|Equal0~0_combout\;
\gravar:detectorSub0|ALT_INV_saidaQ~q\ <= NOT \gravar:detectorSub0|saidaQ~q\;
\CPU|ULA1|ALT_INV_saida[7]~15_combout\ <= NOT \CPU|ULA1|saida[7]~15_combout\;
\CPU|ULA1|ALT_INV_saida[7]~14_combout\ <= NOT \CPU|ULA1|saida[7]~14_combout\;
\Mem_RAM|ALT_INV_ram~694_combout\ <= NOT \Mem_RAM|ram~694_combout\;
\Mem_RAM|ALT_INV_ram~693_combout\ <= NOT \Mem_RAM|ram~693_combout\;
\Mem_RAM|ALT_INV_ram~692_combout\ <= NOT \Mem_RAM|ram~692_combout\;
\Mem_RAM|ALT_INV_ram~526_q\ <= NOT \Mem_RAM|ram~526_q\;
\Mem_RAM|ALT_INV_ram~518_q\ <= NOT \Mem_RAM|ram~518_q\;
\Mem_RAM|ALT_INV_ram~398_q\ <= NOT \Mem_RAM|ram~398_q\;
\Mem_RAM|ALT_INV_ram~390_q\ <= NOT \Mem_RAM|ram~390_q\;
\Mem_RAM|ALT_INV_ram~691_combout\ <= NOT \Mem_RAM|ram~691_combout\;
\Mem_RAM|ALT_INV_ram~494_q\ <= NOT \Mem_RAM|ram~494_q\;
\Mem_RAM|ALT_INV_ram~486_q\ <= NOT \Mem_RAM|ram~486_q\;
\Mem_RAM|ALT_INV_ram~366_q\ <= NOT \Mem_RAM|ram~366_q\;
\Mem_RAM|ALT_INV_ram~358_q\ <= NOT \Mem_RAM|ram~358_q\;
\Mem_RAM|ALT_INV_ram~690_combout\ <= NOT \Mem_RAM|ram~690_combout\;
\Mem_RAM|ALT_INV_ram~462_q\ <= NOT \Mem_RAM|ram~462_q\;
\Mem_RAM|ALT_INV_ram~454_q\ <= NOT \Mem_RAM|ram~454_q\;
\Mem_RAM|ALT_INV_ram~334_q\ <= NOT \Mem_RAM|ram~334_q\;
\Mem_RAM|ALT_INV_ram~326_q\ <= NOT \Mem_RAM|ram~326_q\;
\Mem_RAM|ALT_INV_ram~689_combout\ <= NOT \Mem_RAM|ram~689_combout\;
\Mem_RAM|ALT_INV_ram~430_q\ <= NOT \Mem_RAM|ram~430_q\;
\Mem_RAM|ALT_INV_ram~422_q\ <= NOT \Mem_RAM|ram~422_q\;
\Mem_RAM|ALT_INV_ram~302_q\ <= NOT \Mem_RAM|ram~302_q\;
\Mem_RAM|ALT_INV_ram~294_q\ <= NOT \Mem_RAM|ram~294_q\;
\Mem_RAM|ALT_INV_ram~688_combout\ <= NOT \Mem_RAM|ram~688_combout\;
\Mem_RAM|ALT_INV_ram~687_combout\ <= NOT \Mem_RAM|ram~687_combout\;
\Mem_RAM|ALT_INV_ram~510_q\ <= NOT \Mem_RAM|ram~510_q\;
\Mem_RAM|ALT_INV_ram~478_q\ <= NOT \Mem_RAM|ram~478_q\;
\Mem_RAM|ALT_INV_ram~446_q\ <= NOT \Mem_RAM|ram~446_q\;
\Mem_RAM|ALT_INV_ram~414_q\ <= NOT \Mem_RAM|ram~414_q\;
\Mem_RAM|ALT_INV_ram~686_combout\ <= NOT \Mem_RAM|ram~686_combout\;
\Mem_RAM|ALT_INV_ram~502_q\ <= NOT \Mem_RAM|ram~502_q\;
\Mem_RAM|ALT_INV_ram~470_q\ <= NOT \Mem_RAM|ram~470_q\;
\Mem_RAM|ALT_INV_ram~438_q\ <= NOT \Mem_RAM|ram~438_q\;
\Mem_RAM|ALT_INV_ram~406_q\ <= NOT \Mem_RAM|ram~406_q\;
\Mem_RAM|ALT_INV_ram~685_combout\ <= NOT \Mem_RAM|ram~685_combout\;
\Mem_RAM|ALT_INV_ram~382_q\ <= NOT \Mem_RAM|ram~382_q\;
\Mem_RAM|ALT_INV_ram~350_q\ <= NOT \Mem_RAM|ram~350_q\;
\CPU|ULA1|ALT_INV_saida[0]~16_combout\ <= NOT \CPU|ULA1|saida[0]~16_combout\;
\CPU|ULA1|ALT_INV_Add1~29_sumout\ <= NOT \CPU|ULA1|Add1~29_sumout\;
\CPU|ULA1|ALT_INV_Add0~29_sumout\ <= NOT \CPU|ULA1|Add0~29_sumout\;
\CPU|ULA1|ALT_INV_Add1~25_sumout\ <= NOT \CPU|ULA1|Add1~25_sumout\;
\CPU|ULA1|ALT_INV_Add0~25_sumout\ <= NOT \CPU|ULA1|Add0~25_sumout\;
\CPU|ULA1|ALT_INV_Add1~21_sumout\ <= NOT \CPU|ULA1|Add1~21_sumout\;
\CPU|ULA1|ALT_INV_Add0~21_sumout\ <= NOT \CPU|ULA1|Add0~21_sumout\;
\CPU|ULA1|ALT_INV_Add1~17_sumout\ <= NOT \CPU|ULA1|Add1~17_sumout\;
\CPU|ULA1|ALT_INV_Add0~17_sumout\ <= NOT \CPU|ULA1|Add0~17_sumout\;
\CPU|ULA1|ALT_INV_Add1~13_sumout\ <= NOT \CPU|ULA1|Add1~13_sumout\;
\CPU|ULA1|ALT_INV_Add0~13_sumout\ <= NOT \CPU|ULA1|Add0~13_sumout\;
\CPU|ULA1|ALT_INV_Add1~9_sumout\ <= NOT \CPU|ULA1|Add1~9_sumout\;
\CPU|ULA1|ALT_INV_Add0~9_sumout\ <= NOT \CPU|ULA1|Add0~9_sumout\;
\CPU|ULA1|ALT_INV_Add1~5_sumout\ <= NOT \CPU|ULA1|Add1~5_sumout\;
\CPU|ULA1|ALT_INV_Add0~5_sumout\ <= NOT \CPU|ULA1|Add0~5_sumout\;
\CPU|ULA1|ALT_INV_Add1~1_sumout\ <= NOT \CPU|ULA1|Add1~1_sumout\;
\CPU|ULA1|ALT_INV_Add0~1_sumout\ <= NOT \CPU|ULA1|Add0~1_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \CPU|incrementaPC|Add0~33_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \CPU|incrementaPC|Add0~29_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \CPU|incrementaPC|Add0~25_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \CPU|incrementaPC|Add0~21_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \CPU|incrementaPC|Add0~17_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \CPU|incrementaPC|Add0~13_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \CPU|incrementaPC|Add0~9_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \CPU|incrementaPC|Add0~5_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \CPU|incrementaPC|Add0~1_sumout\;
\Mem_ROM|ALT_INV_memROM~24_combout\ <= NOT \Mem_ROM|memROM~24_combout\;
\Mem_ROM|ALT_INV_memROM~23_combout\ <= NOT \Mem_ROM|memROM~23_combout\;
\Mem_ROM|ALT_INV_memROM~22_combout\ <= NOT \Mem_ROM|memROM~22_combout\;
\Mem_ROM|ALT_INV_memROM~21_combout\ <= NOT \Mem_ROM|memROM~21_combout\;
\Mem_ROM|ALT_INV_memROM~20_combout\ <= NOT \Mem_ROM|memROM~20_combout\;
\Mem_ROM|ALT_INV_memROM~19_combout\ <= NOT \Mem_ROM|memROM~19_combout\;
\ALT_INV_habSW7dt0~0_combout\ <= NOT \habSW7dt0~0_combout\;
\Mem_ROM|ALT_INV_memROM~18_combout\ <= NOT \Mem_ROM|memROM~18_combout\;
\Mem_ROM|ALT_INV_memROM~17_combout\ <= NOT \Mem_ROM|memROM~17_combout\;
\Mem_ROM|ALT_INV_memROM~16_combout\ <= NOT \Mem_ROM|memROM~16_combout\;
\Mem_ROM|ALT_INV_memROM~15_combout\ <= NOT \Mem_ROM|memROM~15_combout\;
\Mem_ROM|ALT_INV_memROM~14_combout\ <= NOT \Mem_ROM|memROM~14_combout\;
\Mem_ROM|ALT_INV_memROM~13_combout\ <= NOT \Mem_ROM|memROM~13_combout\;
\Mem_ROM|ALT_INV_memROM~12_combout\ <= NOT \Mem_ROM|memROM~12_combout\;
\Mem_ROM|ALT_INV_memROM~11_combout\ <= NOT \Mem_ROM|memROM~11_combout\;
\Mem_ROM|ALT_INV_memROM~10_combout\ <= NOT \Mem_ROM|memROM~10_combout\;
\Mem_ROM|ALT_INV_memROM~9_combout\ <= NOT \Mem_ROM|memROM~9_combout\;
\Mem_ROM|ALT_INV_memROM~8_combout\ <= NOT \Mem_ROM|memROM~8_combout\;
\Mem_ROM|ALT_INV_memROM~7_combout\ <= NOT \Mem_ROM|memROM~7_combout\;
\Mem_ROM|ALT_INV_memROM~6_combout\ <= NOT \Mem_ROM|memROM~6_combout\;
\Mem_ROM|ALT_INV_memROM~5_combout\ <= NOT \Mem_ROM|memROM~5_combout\;
\Mem_ROM|ALT_INV_memROM~4_combout\ <= NOT \Mem_ROM|memROM~4_combout\;
\Mem_ROM|ALT_INV_memROM~3_combout\ <= NOT \Mem_ROM|memROM~3_combout\;
\Mem_ROM|ALT_INV_memROM~2_combout\ <= NOT \Mem_ROM|memROM~2_combout\;
\Mem_ROM|ALT_INV_memROM~1_combout\ <= NOT \Mem_ROM|memROM~1_combout\;
\Mem_ROM|ALT_INV_memROM~0_combout\ <= NOT \Mem_ROM|memROM~0_combout\;
\CPU|REGA|ALT_INV_DOUT\(7) <= NOT \CPU|REGA|DOUT\(7);
\CPU|REGA|ALT_INV_DOUT\(6) <= NOT \CPU|REGA|DOUT\(6);
\CPU|REGA|ALT_INV_DOUT\(5) <= NOT \CPU|REGA|DOUT\(5);
\CPU|REGA|ALT_INV_DOUT\(4) <= NOT \CPU|REGA|DOUT\(4);
\CPU|REGA|ALT_INV_DOUT\(3) <= NOT \CPU|REGA|DOUT\(3);
\CPU|REGA|ALT_INV_DOUT\(2) <= NOT \CPU|REGA|DOUT\(2);
\CPU|REGA|ALT_INV_DOUT\(1) <= NOT \CPU|REGA|DOUT\(1);
\CPU|REGA|ALT_INV_DOUT\(0) <= NOT \CPU|REGA|DOUT\(0);
\CPU|flagIgual|ALT_INV_DOUT~q\ <= NOT \CPU|flagIgual|DOUT~q\;
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\reg7seg5|ALT_INV_DOUT\(2) <= NOT \reg7seg5|DOUT\(2);
\reg7seg5|ALT_INV_DOUT\(1) <= NOT \reg7seg5|DOUT\(1);
\reg7seg5|ALT_INV_DOUT\(3) <= NOT \reg7seg5|DOUT\(3);
\reg7seg5|ALT_INV_DOUT\(0) <= NOT \reg7seg5|DOUT\(0);
\reg7seg4|ALT_INV_DOUT\(2) <= NOT \reg7seg4|DOUT\(2);
\reg7seg4|ALT_INV_DOUT\(1) <= NOT \reg7seg4|DOUT\(1);
\reg7seg4|ALT_INV_DOUT\(3) <= NOT \reg7seg4|DOUT\(3);
\reg7seg4|ALT_INV_DOUT\(0) <= NOT \reg7seg4|DOUT\(0);
\reg7seg3|ALT_INV_DOUT\(2) <= NOT \reg7seg3|DOUT\(2);
\reg7seg3|ALT_INV_DOUT\(1) <= NOT \reg7seg3|DOUT\(1);
\reg7seg3|ALT_INV_DOUT\(3) <= NOT \reg7seg3|DOUT\(3);
\reg7seg3|ALT_INV_DOUT\(0) <= NOT \reg7seg3|DOUT\(0);
\reg7seg2|ALT_INV_DOUT\(2) <= NOT \reg7seg2|DOUT\(2);
\reg7seg2|ALT_INV_DOUT\(1) <= NOT \reg7seg2|DOUT\(1);
\reg7seg2|ALT_INV_DOUT\(3) <= NOT \reg7seg2|DOUT\(3);
\reg7seg2|ALT_INV_DOUT\(0) <= NOT \reg7seg2|DOUT\(0);
\reg7seg1|ALT_INV_DOUT\(2) <= NOT \reg7seg1|DOUT\(2);
\reg7seg1|ALT_INV_DOUT\(1) <= NOT \reg7seg1|DOUT\(1);
\reg7seg1|ALT_INV_DOUT\(3) <= NOT \reg7seg1|DOUT\(3);
\reg7seg1|ALT_INV_DOUT\(0) <= NOT \reg7seg1|DOUT\(0);
\reg7seg0|ALT_INV_DOUT\(2) <= NOT \reg7seg0|DOUT\(2);
\reg7seg0|ALT_INV_DOUT\(1) <= NOT \reg7seg0|DOUT\(1);
\reg7seg0|ALT_INV_DOUT\(3) <= NOT \reg7seg0|DOUT\(3);
\reg7seg0|ALT_INV_DOUT\(0) <= NOT \reg7seg0|DOUT\(0);
\regLEDR9|ALT_INV_DOUT~q\ <= NOT \regLEDR9|DOUT~q\;
\regLEDR8|ALT_INV_DOUT~q\ <= NOT \regLEDR8|DOUT~q\;
\Mem_RAM|ALT_INV_ram~534_combout\ <= NOT \Mem_RAM|ram~534_combout\;
\Mem_RAM|ALT_INV_ram~375_q\ <= NOT \Mem_RAM|ram~375_q\;
\Mem_RAM|ALT_INV_ram~119_q\ <= NOT \Mem_RAM|ram~119_q\;
\Mem_RAM|ALT_INV_ram~367_q\ <= NOT \Mem_RAM|ram~367_q\;
\Mem_RAM|ALT_INV_ram~111_q\ <= NOT \Mem_RAM|ram~111_q\;
\Mem_RAM|ALT_INV_ram~533_combout\ <= NOT \Mem_RAM|ram~533_combout\;
\Mem_RAM|ALT_INV_ram~439_q\ <= NOT \Mem_RAM|ram~439_q\;
\Mem_RAM|ALT_INV_ram~183_q\ <= NOT \Mem_RAM|ram~183_q\;
\Mem_RAM|ALT_INV_ram~431_q\ <= NOT \Mem_RAM|ram~431_q\;
\Mem_RAM|ALT_INV_ram~175_q\ <= NOT \Mem_RAM|ram~175_q\;
\Mem_RAM|ALT_INV_ram~532_combout\ <= NOT \Mem_RAM|ram~532_combout\;
\Mem_RAM|ALT_INV_ram~311_q\ <= NOT \Mem_RAM|ram~311_q\;
\Mem_RAM|ALT_INV_ram~55_q\ <= NOT \Mem_RAM|ram~55_q\;
\Mem_RAM|ALT_INV_ram~303_q\ <= NOT \Mem_RAM|ram~303_q\;
\Mem_RAM|ALT_INV_ram~47_q\ <= NOT \Mem_RAM|ram~47_q\;
\Mem_RAM|ALT_INV_ram~531_combout\ <= NOT \Mem_RAM|ram~531_combout\;
\Mem_RAM|ALT_INV_ram~530_combout\ <= NOT \Mem_RAM|ram~530_combout\;
\Mem_RAM|ALT_INV_ram~471_q\ <= NOT \Mem_RAM|ram~471_q\;
\Mem_RAM|ALT_INV_ram~215_q\ <= NOT \Mem_RAM|ram~215_q\;
\Mem_RAM|ALT_INV_ram~463_q\ <= NOT \Mem_RAM|ram~463_q\;
\Mem_RAM|ALT_INV_ram~207_q\ <= NOT \Mem_RAM|ram~207_q\;
\Mem_RAM|ALT_INV_ram~529_combout\ <= NOT \Mem_RAM|ram~529_combout\;
\Mem_RAM|ALT_INV_ram~343_q\ <= NOT \Mem_RAM|ram~343_q\;
\Mem_RAM|ALT_INV_ram~87_q\ <= NOT \Mem_RAM|ram~87_q\;
\Mem_RAM|ALT_INV_ram~335_q\ <= NOT \Mem_RAM|ram~335_q\;
\Mem_RAM|ALT_INV_ram~79_q\ <= NOT \Mem_RAM|ram~79_q\;
\Mem_RAM|ALT_INV_ram~528_combout\ <= NOT \Mem_RAM|ram~528_combout\;
\Mem_RAM|ALT_INV_ram~407_q\ <= NOT \Mem_RAM|ram~407_q\;
\Mem_RAM|ALT_INV_ram~151_q\ <= NOT \Mem_RAM|ram~151_q\;
\Mem_RAM|ALT_INV_ram~399_q\ <= NOT \Mem_RAM|ram~399_q\;
\Mem_RAM|ALT_INV_ram~143_q\ <= NOT \Mem_RAM|ram~143_q\;
\Mem_RAM|ALT_INV_ram~527_combout\ <= NOT \Mem_RAM|ram~527_combout\;
\Mem_RAM|ALT_INV_ram~279_q\ <= NOT \Mem_RAM|ram~279_q\;
\Mem_RAM|ALT_INV_ram~23_q\ <= NOT \Mem_RAM|ram~23_q\;
\Mem_RAM|ALT_INV_ram~271_q\ <= NOT \Mem_RAM|ram~271_q\;
\Mem_RAM|ALT_INV_ram~15_q\ <= NOT \Mem_RAM|ram~15_q\;
\CPU|ULA1|ALT_INV_Equal2~0_combout\ <= NOT \CPU|ULA1|Equal2~0_combout\;
\CPU|ULA1|ALT_INV_Equal3~0_combout\ <= NOT \CPU|ULA1|Equal3~0_combout\;
\CPU|decoderInstru|ALT_INV_saida~2_combout\ <= NOT \CPU|decoderInstru|saida~2_combout\;
\CPU|enderecoDeRetorno|ALT_INV_DOUT\(8) <= NOT \CPU|enderecoDeRetorno|DOUT\(8);
\Mem_ROM|ALT_INV_memROM~76_combout\ <= NOT \Mem_ROM|memROM~76_combout\;
\CPU|enderecoDeRetorno|ALT_INV_DOUT\(7) <= NOT \CPU|enderecoDeRetorno|DOUT\(7);
\Mem_ROM|ALT_INV_memROM~75_combout\ <= NOT \Mem_ROM|memROM~75_combout\;
\CPU|enderecoDeRetorno|ALT_INV_DOUT\(6) <= NOT \CPU|enderecoDeRetorno|DOUT\(6);
\CPU|enderecoDeRetorno|ALT_INV_DOUT\(5) <= NOT \CPU|enderecoDeRetorno|DOUT\(5);
\CPU|enderecoDeRetorno|ALT_INV_DOUT\(4) <= NOT \CPU|enderecoDeRetorno|DOUT\(4);
\Mem_ROM|ALT_INV_memROM~74_combout\ <= NOT \Mem_ROM|memROM~74_combout\;
\Mem_ROM|ALT_INV_memROM~73_combout\ <= NOT \Mem_ROM|memROM~73_combout\;
\Mem_ROM|ALT_INV_memROM~72_combout\ <= NOT \Mem_ROM|memROM~72_combout\;
\Mem_ROM|ALT_INV_memROM~71_combout\ <= NOT \Mem_ROM|memROM~71_combout\;
\Mem_ROM|ALT_INV_memROM~70_combout\ <= NOT \Mem_ROM|memROM~70_combout\;
\Mem_ROM|ALT_INV_memROM~69_combout\ <= NOT \Mem_ROM|memROM~69_combout\;
\CPU|enderecoDeRetorno|ALT_INV_DOUT\(3) <= NOT \CPU|enderecoDeRetorno|DOUT\(3);
\Mem_ROM|ALT_INV_memROM~68_combout\ <= NOT \Mem_ROM|memROM~68_combout\;
\Mem_ROM|ALT_INV_memROM~67_combout\ <= NOT \Mem_ROM|memROM~67_combout\;
\Mem_ROM|ALT_INV_memROM~66_combout\ <= NOT \Mem_ROM|memROM~66_combout\;
\Mem_ROM|ALT_INV_memROM~65_combout\ <= NOT \Mem_ROM|memROM~65_combout\;
\Mem_ROM|ALT_INV_memROM~64_combout\ <= NOT \Mem_ROM|memROM~64_combout\;
\Mem_ROM|ALT_INV_memROM~63_combout\ <= NOT \Mem_ROM|memROM~63_combout\;
\CPU|enderecoDeRetorno|ALT_INV_DOUT\(2) <= NOT \CPU|enderecoDeRetorno|DOUT\(2);
\CPU|enderecoDeRetorno|ALT_INV_DOUT\(1) <= NOT \CPU|enderecoDeRetorno|DOUT\(1);
\CPU|enderecoDeRetorno|ALT_INV_DOUT\(0) <= NOT \CPU|enderecoDeRetorno|DOUT\(0);
\CPU|logicaDeDesvio|ALT_INV_saida[0]~0_combout\ <= NOT \CPU|logicaDeDesvio|saida[0]~0_combout\;
\CPU|decoderInstru|ALT_INV_saida~1_combout\ <= NOT \CPU|decoderInstru|saida~1_combout\;
\ALT_INV_hab_HEX5~0_combout\ <= NOT \hab_HEX5~0_combout\;
\ALT_INV_hab_HEX2~0_combout\ <= NOT \hab_HEX2~0_combout\;
\ALT_INV_hab_HEX1~0_combout\ <= NOT \hab_HEX1~0_combout\;
\Mem_ROM|ALT_INV_memROM~62_combout\ <= NOT \Mem_ROM|memROM~62_combout\;
\ALT_INV_hab_HEX0~0_combout\ <= NOT \hab_HEX0~0_combout\;
\Mem_ROM|ALT_INV_memROM~61_combout\ <= NOT \Mem_ROM|memROM~61_combout\;
\Mem_ROM|ALT_INV_memROM~60_combout\ <= NOT \Mem_ROM|memROM~60_combout\;
\Mem_ROM|ALT_INV_memROM~59_combout\ <= NOT \Mem_ROM|memROM~59_combout\;
\Mem_ROM|ALT_INV_memROM~58_combout\ <= NOT \Mem_ROM|memROM~58_combout\;
\Mem_ROM|ALT_INV_memROM~57_combout\ <= NOT \Mem_ROM|memROM~57_combout\;
\Mem_ROM|ALT_INV_memROM~56_combout\ <= NOT \Mem_ROM|memROM~56_combout\;
\Mem_ROM|ALT_INV_memROM~55_combout\ <= NOT \Mem_ROM|memROM~55_combout\;
\Mem_ROM|ALT_INV_memROM~54_combout\ <= NOT \Mem_ROM|memROM~54_combout\;
\Mem_ROM|ALT_INV_memROM~53_combout\ <= NOT \Mem_ROM|memROM~53_combout\;
\Mem_ROM|ALT_INV_memROM~52_combout\ <= NOT \Mem_ROM|memROM~52_combout\;
\Mem_ROM|ALT_INV_memROM~51_combout\ <= NOT \Mem_ROM|memROM~51_combout\;
\Mem_ROM|ALT_INV_memROM~50_combout\ <= NOT \Mem_ROM|memROM~50_combout\;
\Mem_ROM|ALT_INV_memROM~49_combout\ <= NOT \Mem_ROM|memROM~49_combout\;
\Mem_ROM|ALT_INV_memROM~48_combout\ <= NOT \Mem_ROM|memROM~48_combout\;
\Mem_ROM|ALT_INV_memROM~47_combout\ <= NOT \Mem_ROM|memROM~47_combout\;
\Mem_ROM|ALT_INV_memROM~46_combout\ <= NOT \Mem_ROM|memROM~46_combout\;
\Mem_ROM|ALT_INV_memROM~45_combout\ <= NOT \Mem_ROM|memROM~45_combout\;
\Mem_ROM|ALT_INV_memROM~44_combout\ <= NOT \Mem_ROM|memROM~44_combout\;
\Mem_ROM|ALT_INV_memROM~43_combout\ <= NOT \Mem_ROM|memROM~43_combout\;
\Mem_ROM|ALT_INV_memROM~42_combout\ <= NOT \Mem_ROM|memROM~42_combout\;
\Mem_ROM|ALT_INV_memROM~41_combout\ <= NOT \Mem_ROM|memROM~41_combout\;
\Mem_ROM|ALT_INV_memROM~40_combout\ <= NOT \Mem_ROM|memROM~40_combout\;
\CPU|decoderInstru|ALT_INV_saida[0]~0_combout\ <= NOT \CPU|decoderInstru|saida[0]~0_combout\;
\Mem_ROM|ALT_INV_memROM~39_combout\ <= NOT \Mem_ROM|memROM~39_combout\;
\Mem_ROM|ALT_INV_memROM~38_combout\ <= NOT \Mem_ROM|memROM~38_combout\;
\Mem_ROM|ALT_INV_memROM~37_combout\ <= NOT \Mem_ROM|memROM~37_combout\;
\Mem_ROM|ALT_INV_memROM~36_combout\ <= NOT \Mem_ROM|memROM~36_combout\;
\Mem_ROM|ALT_INV_memROM~35_combout\ <= NOT \Mem_ROM|memROM~35_combout\;
\Mem_ROM|ALT_INV_memROM~34_combout\ <= NOT \Mem_ROM|memROM~34_combout\;
\Mem_ROM|ALT_INV_memROM~33_combout\ <= NOT \Mem_ROM|memROM~33_combout\;
\Mem_ROM|ALT_INV_memROM~32_combout\ <= NOT \Mem_ROM|memROM~32_combout\;
\Mem_ROM|ALT_INV_memROM~31_combout\ <= NOT \Mem_ROM|memROM~31_combout\;
\Mem_ROM|ALT_INV_memROM~30_combout\ <= NOT \Mem_ROM|memROM~30_combout\;
\Mem_ROM|ALT_INV_memROM~29_combout\ <= NOT \Mem_ROM|memROM~29_combout\;
\Mem_ROM|ALT_INV_memROM~28_combout\ <= NOT \Mem_ROM|memROM~28_combout\;
\Mem_ROM|ALT_INV_memROM~27_combout\ <= NOT \Mem_ROM|memROM~27_combout\;
\Mem_ROM|ALT_INV_memROM~26_combout\ <= NOT \Mem_ROM|memROM~26_combout\;
\Mem_ROM|ALT_INV_memROM~25_combout\ <= NOT \Mem_ROM|memROM~25_combout\;
\Mem_RAM|ALT_INV_ram~562_combout\ <= NOT \Mem_RAM|ram~562_combout\;
\Mem_RAM|ALT_INV_ram~561_combout\ <= NOT \Mem_RAM|ram~561_combout\;
\Mem_RAM|ALT_INV_ram~512_q\ <= NOT \Mem_RAM|ram~512_q\;
\Mem_RAM|ALT_INV_ram~256_q\ <= NOT \Mem_RAM|ram~256_q\;
\Mem_RAM|ALT_INV_ram~480_q\ <= NOT \Mem_RAM|ram~480_q\;
\Mem_RAM|ALT_INV_ram~224_q\ <= NOT \Mem_RAM|ram~224_q\;
\Mem_RAM|ALT_INV_ram~560_combout\ <= NOT \Mem_RAM|ram~560_combout\;
\Mem_RAM|ALT_INV_ram~496_q\ <= NOT \Mem_RAM|ram~496_q\;
\Mem_RAM|ALT_INV_ram~240_q\ <= NOT \Mem_RAM|ram~240_q\;
\Mem_RAM|ALT_INV_ram~464_q\ <= NOT \Mem_RAM|ram~464_q\;
\Mem_RAM|ALT_INV_ram~208_q\ <= NOT \Mem_RAM|ram~208_q\;
\Mem_RAM|ALT_INV_ram~559_combout\ <= NOT \Mem_RAM|ram~559_combout\;
\Mem_RAM|ALT_INV_ram~448_q\ <= NOT \Mem_RAM|ram~448_q\;
\Mem_RAM|ALT_INV_ram~192_q\ <= NOT \Mem_RAM|ram~192_q\;
\Mem_RAM|ALT_INV_ram~416_q\ <= NOT \Mem_RAM|ram~416_q\;
\Mem_RAM|ALT_INV_ram~160_q\ <= NOT \Mem_RAM|ram~160_q\;
\Mem_RAM|ALT_INV_ram~558_combout\ <= NOT \Mem_RAM|ram~558_combout\;
\Mem_RAM|ALT_INV_ram~432_q\ <= NOT \Mem_RAM|ram~432_q\;
\Mem_RAM|ALT_INV_ram~176_q\ <= NOT \Mem_RAM|ram~176_q\;
\Mem_RAM|ALT_INV_ram~400_q\ <= NOT \Mem_RAM|ram~400_q\;
\Mem_RAM|ALT_INV_ram~144_q\ <= NOT \Mem_RAM|ram~144_q\;
\Mem_RAM|ALT_INV_ram~557_combout\ <= NOT \Mem_RAM|ram~557_combout\;
\Mem_RAM|ALT_INV_ram~556_combout\ <= NOT \Mem_RAM|ram~556_combout\;
\Mem_RAM|ALT_INV_ram~392_q\ <= NOT \Mem_RAM|ram~392_q\;
\Mem_RAM|ALT_INV_ram~136_q\ <= NOT \Mem_RAM|ram~136_q\;
\Mem_RAM|ALT_INV_ram~328_q\ <= NOT \Mem_RAM|ram~328_q\;
\Mem_RAM|ALT_INV_ram~72_q\ <= NOT \Mem_RAM|ram~72_q\;
\Mem_RAM|ALT_INV_ram~555_combout\ <= NOT \Mem_RAM|ram~555_combout\;
\Mem_RAM|ALT_INV_ram~360_q\ <= NOT \Mem_RAM|ram~360_q\;
\Mem_RAM|ALT_INV_ram~104_q\ <= NOT \Mem_RAM|ram~104_q\;
\Mem_RAM|ALT_INV_ram~296_q\ <= NOT \Mem_RAM|ram~296_q\;
\Mem_RAM|ALT_INV_ram~40_q\ <= NOT \Mem_RAM|ram~40_q\;
\Mem_RAM|ALT_INV_ram~554_combout\ <= NOT \Mem_RAM|ram~554_combout\;
\Mem_RAM|ALT_INV_ram~376_q\ <= NOT \Mem_RAM|ram~376_q\;
\Mem_RAM|ALT_INV_ram~120_q\ <= NOT \Mem_RAM|ram~120_q\;
\Mem_RAM|ALT_INV_ram~312_q\ <= NOT \Mem_RAM|ram~312_q\;
\Mem_RAM|ALT_INV_ram~56_q\ <= NOT \Mem_RAM|ram~56_q\;
\Mem_RAM|ALT_INV_ram~553_combout\ <= NOT \Mem_RAM|ram~553_combout\;
\Mem_RAM|ALT_INV_ram~344_q\ <= NOT \Mem_RAM|ram~344_q\;
\Mem_RAM|ALT_INV_ram~88_q\ <= NOT \Mem_RAM|ram~88_q\;
\Mem_RAM|ALT_INV_ram~280_q\ <= NOT \Mem_RAM|ram~280_q\;
\Mem_RAM|ALT_INV_ram~24_q\ <= NOT \Mem_RAM|ram~24_q\;
\Mem_RAM|ALT_INV_ram~552_combout\ <= NOT \Mem_RAM|ram~552_combout\;
\Mem_RAM|ALT_INV_ram~551_combout\ <= NOT \Mem_RAM|ram~551_combout\;
\Mem_RAM|ALT_INV_ram~384_q\ <= NOT \Mem_RAM|ram~384_q\;
\Mem_RAM|ALT_INV_ram~128_q\ <= NOT \Mem_RAM|ram~128_q\;
\Mem_RAM|ALT_INV_ram~368_q\ <= NOT \Mem_RAM|ram~368_q\;
\Mem_RAM|ALT_INV_ram~112_q\ <= NOT \Mem_RAM|ram~112_q\;
\Mem_RAM|ALT_INV_ram~550_combout\ <= NOT \Mem_RAM|ram~550_combout\;
\Mem_RAM|ALT_INV_ram~352_q\ <= NOT \Mem_RAM|ram~352_q\;
\Mem_RAM|ALT_INV_ram~96_q\ <= NOT \Mem_RAM|ram~96_q\;
\Mem_RAM|ALT_INV_ram~336_q\ <= NOT \Mem_RAM|ram~336_q\;
\Mem_RAM|ALT_INV_ram~80_q\ <= NOT \Mem_RAM|ram~80_q\;
\Mem_RAM|ALT_INV_ram~549_combout\ <= NOT \Mem_RAM|ram~549_combout\;
\Mem_RAM|ALT_INV_ram~320_q\ <= NOT \Mem_RAM|ram~320_q\;
\Mem_RAM|ALT_INV_ram~64_q\ <= NOT \Mem_RAM|ram~64_q\;
\Mem_RAM|ALT_INV_ram~304_q\ <= NOT \Mem_RAM|ram~304_q\;
\Mem_RAM|ALT_INV_ram~48_q\ <= NOT \Mem_RAM|ram~48_q\;
\Mem_RAM|ALT_INV_ram~548_combout\ <= NOT \Mem_RAM|ram~548_combout\;
\Mem_RAM|ALT_INV_ram~288_q\ <= NOT \Mem_RAM|ram~288_q\;
\Mem_RAM|ALT_INV_ram~32_q\ <= NOT \Mem_RAM|ram~32_q\;
\Mem_RAM|ALT_INV_ram~272_q\ <= NOT \Mem_RAM|ram~272_q\;
\Mem_RAM|ALT_INV_ram~16_q\ <= NOT \Mem_RAM|ram~16_q\;
\CPU|ULA1|ALT_INV_saida[7]~1_combout\ <= NOT \CPU|ULA1|saida[7]~1_combout\;
\CPU|ULA1|ALT_INV_saida[0]~0_combout\ <= NOT \CPU|ULA1|saida[0]~0_combout\;
\CPU|decoderInstru|ALT_INV_saida[6]~5_combout\ <= NOT \CPU|decoderInstru|saida[6]~5_combout\;
\CPU|decoderInstru|ALT_INV_saida[0]~4_combout\ <= NOT \CPU|decoderInstru|saida[0]~4_combout\;
\ALT_INV_Data_IN[0]~4_combout\ <= NOT \Data_IN[0]~4_combout\;
\ALT_INV_Data_IN[0]~3_combout\ <= NOT \Data_IN[0]~3_combout\;
\ALT_INV_Data_IN[0]~2_combout\ <= NOT \Data_IN[0]~2_combout\;
\ALT_INV_Data_IN[0]~1_combout\ <= NOT \Data_IN[0]~1_combout\;
\regKEY1|ALT_INV_DOUT~q\ <= NOT \regKEY1|DOUT~q\;
\regKEY0|ALT_INV_DOUT~q\ <= NOT \regKEY0|DOUT~q\;
\ALT_INV_habSW7dt0~2_combout\ <= NOT \habSW7dt0~2_combout\;
\ALT_INV_habSW7dt0~1_combout\ <= NOT \habSW7dt0~1_combout\;
\decoder3x8MS|ALT_INV_saida[5]~0_combout\ <= NOT \decoder3x8MS|saida[5]~0_combout\;
\ALT_INV_Data_IN[0]~0_combout\ <= NOT \Data_IN[0]~0_combout\;
\CPU|decoderInstru|ALT_INV_saida[1]~3_combout\ <= NOT \CPU|decoderInstru|saida[1]~3_combout\;
\Mem_RAM|ALT_INV_ram~547_combout\ <= NOT \Mem_RAM|ram~547_combout\;
\Mem_RAM|ALT_INV_ram~546_combout\ <= NOT \Mem_RAM|ram~546_combout\;
\Mem_RAM|ALT_INV_ram~545_combout\ <= NOT \Mem_RAM|ram~545_combout\;
\Mem_RAM|ALT_INV_ram~519_q\ <= NOT \Mem_RAM|ram~519_q\;
\Mem_RAM|ALT_INV_ram~263_q\ <= NOT \Mem_RAM|ram~263_q\;
\Mem_RAM|ALT_INV_ram~391_q\ <= NOT \Mem_RAM|ram~391_q\;
\Mem_RAM|ALT_INV_ram~135_q\ <= NOT \Mem_RAM|ram~135_q\;
\Mem_RAM|ALT_INV_ram~544_combout\ <= NOT \Mem_RAM|ram~544_combout\;
\Mem_RAM|ALT_INV_ram~511_q\ <= NOT \Mem_RAM|ram~511_q\;
\Mem_RAM|ALT_INV_ram~255_q\ <= NOT \Mem_RAM|ram~255_q\;
\Mem_RAM|ALT_INV_ram~383_q\ <= NOT \Mem_RAM|ram~383_q\;
\Mem_RAM|ALT_INV_ram~127_q\ <= NOT \Mem_RAM|ram~127_q\;
\Mem_RAM|ALT_INV_ram~543_combout\ <= NOT \Mem_RAM|ram~543_combout\;
\Mem_RAM|ALT_INV_ram~455_q\ <= NOT \Mem_RAM|ram~455_q\;
\Mem_RAM|ALT_INV_ram~199_q\ <= NOT \Mem_RAM|ram~199_q\;
\Mem_RAM|ALT_INV_ram~327_q\ <= NOT \Mem_RAM|ram~327_q\;
\Mem_RAM|ALT_INV_ram~71_q\ <= NOT \Mem_RAM|ram~71_q\;
\Mem_RAM|ALT_INV_ram~542_combout\ <= NOT \Mem_RAM|ram~542_combout\;
\Mem_RAM|ALT_INV_ram~447_q\ <= NOT \Mem_RAM|ram~447_q\;
\Mem_RAM|ALT_INV_ram~191_q\ <= NOT \Mem_RAM|ram~191_q\;
\Mem_RAM|ALT_INV_ram~319_q\ <= NOT \Mem_RAM|ram~319_q\;
\Mem_RAM|ALT_INV_ram~63_q\ <= NOT \Mem_RAM|ram~63_q\;
\Mem_RAM|ALT_INV_ram~541_combout\ <= NOT \Mem_RAM|ram~541_combout\;
\Mem_RAM|ALT_INV_ram~540_combout\ <= NOT \Mem_RAM|ram~540_combout\;
\Mem_RAM|ALT_INV_ram~487_q\ <= NOT \Mem_RAM|ram~487_q\;
\Mem_RAM|ALT_INV_ram~231_q\ <= NOT \Mem_RAM|ram~231_q\;
\Mem_RAM|ALT_INV_ram~479_q\ <= NOT \Mem_RAM|ram~479_q\;
\Mem_RAM|ALT_INV_ram~223_q\ <= NOT \Mem_RAM|ram~223_q\;
\Mem_RAM|ALT_INV_ram~539_combout\ <= NOT \Mem_RAM|ram~539_combout\;
\Mem_RAM|ALT_INV_ram~359_q\ <= NOT \Mem_RAM|ram~359_q\;
\Mem_RAM|ALT_INV_ram~103_q\ <= NOT \Mem_RAM|ram~103_q\;
\Mem_RAM|ALT_INV_ram~351_q\ <= NOT \Mem_RAM|ram~351_q\;
\Mem_RAM|ALT_INV_ram~95_q\ <= NOT \Mem_RAM|ram~95_q\;
\Mem_RAM|ALT_INV_ram~538_combout\ <= NOT \Mem_RAM|ram~538_combout\;
\Mem_RAM|ALT_INV_ram~423_q\ <= NOT \Mem_RAM|ram~423_q\;
\Mem_RAM|ALT_INV_ram~167_q\ <= NOT \Mem_RAM|ram~167_q\;
\Mem_RAM|ALT_INV_ram~415_q\ <= NOT \Mem_RAM|ram~415_q\;
\Mem_RAM|ALT_INV_ram~159_q\ <= NOT \Mem_RAM|ram~159_q\;
\Mem_RAM|ALT_INV_ram~537_combout\ <= NOT \Mem_RAM|ram~537_combout\;
\Mem_RAM|ALT_INV_ram~295_q\ <= NOT \Mem_RAM|ram~295_q\;
\Mem_RAM|ALT_INV_ram~39_q\ <= NOT \Mem_RAM|ram~39_q\;
\Mem_RAM|ALT_INV_ram~287_q\ <= NOT \Mem_RAM|ram~287_q\;
\Mem_RAM|ALT_INV_ram~31_q\ <= NOT \Mem_RAM|ram~31_q\;
\Mem_RAM|ALT_INV_ram~536_combout\ <= NOT \Mem_RAM|ram~536_combout\;
\Mem_RAM|ALT_INV_ram~535_combout\ <= NOT \Mem_RAM|ram~535_combout\;
\Mem_RAM|ALT_INV_ram~503_q\ <= NOT \Mem_RAM|ram~503_q\;
\Mem_RAM|ALT_INV_ram~247_q\ <= NOT \Mem_RAM|ram~247_q\;
\Mem_RAM|ALT_INV_ram~495_q\ <= NOT \Mem_RAM|ram~495_q\;
\Mem_RAM|ALT_INV_ram~239_q\ <= NOT \Mem_RAM|ram~239_q\;
\Mem_RAM|ALT_INV_ram~210_q\ <= NOT \Mem_RAM|ram~210_q\;
\Mem_RAM|ALT_INV_ram~592_combout\ <= NOT \Mem_RAM|ram~592_combout\;
\Mem_RAM|ALT_INV_ram~106_q\ <= NOT \Mem_RAM|ram~106_q\;
\Mem_RAM|ALT_INV_ram~98_q\ <= NOT \Mem_RAM|ram~98_q\;
\Mem_RAM|ALT_INV_ram~90_q\ <= NOT \Mem_RAM|ram~90_q\;
\Mem_RAM|ALT_INV_ram~82_q\ <= NOT \Mem_RAM|ram~82_q\;
\Mem_RAM|ALT_INV_ram~591_combout\ <= NOT \Mem_RAM|ram~591_combout\;
\Mem_RAM|ALT_INV_ram~170_q\ <= NOT \Mem_RAM|ram~170_q\;
\Mem_RAM|ALT_INV_ram~162_q\ <= NOT \Mem_RAM|ram~162_q\;
\Mem_RAM|ALT_INV_ram~154_q\ <= NOT \Mem_RAM|ram~154_q\;
\Mem_RAM|ALT_INV_ram~146_q\ <= NOT \Mem_RAM|ram~146_q\;
\Mem_RAM|ALT_INV_ram~590_combout\ <= NOT \Mem_RAM|ram~590_combout\;
\Mem_RAM|ALT_INV_ram~42_q\ <= NOT \Mem_RAM|ram~42_q\;
\Mem_RAM|ALT_INV_ram~34_q\ <= NOT \Mem_RAM|ram~34_q\;
\Mem_RAM|ALT_INV_ram~26_q\ <= NOT \Mem_RAM|ram~26_q\;
\Mem_RAM|ALT_INV_ram~18_q\ <= NOT \Mem_RAM|ram~18_q\;
\CPU|ULA1|ALT_INV_saida[2]~5_combout\ <= NOT \CPU|ULA1|saida[2]~5_combout\;
\CPU|ULA1|ALT_INV_saida[2]~4_combout\ <= NOT \CPU|ULA1|saida[2]~4_combout\;
\Mem_RAM|ALT_INV_ram~589_combout\ <= NOT \Mem_RAM|ram~589_combout\;
\Mem_RAM|ALT_INV_ram~588_combout\ <= NOT \Mem_RAM|ram~588_combout\;
\Mem_RAM|ALT_INV_ram~587_combout\ <= NOT \Mem_RAM|ram~587_combout\;
\Mem_RAM|ALT_INV_ram~521_q\ <= NOT \Mem_RAM|ram~521_q\;
\Mem_RAM|ALT_INV_ram~393_q\ <= NOT \Mem_RAM|ram~393_q\;
\Mem_RAM|ALT_INV_ram~457_q\ <= NOT \Mem_RAM|ram~457_q\;
\Mem_RAM|ALT_INV_ram~329_q\ <= NOT \Mem_RAM|ram~329_q\;
\Mem_RAM|ALT_INV_ram~586_combout\ <= NOT \Mem_RAM|ram~586_combout\;
\Mem_RAM|ALT_INV_ram~489_q\ <= NOT \Mem_RAM|ram~489_q\;
\Mem_RAM|ALT_INV_ram~361_q\ <= NOT \Mem_RAM|ram~361_q\;
\Mem_RAM|ALT_INV_ram~425_q\ <= NOT \Mem_RAM|ram~425_q\;
\Mem_RAM|ALT_INV_ram~297_q\ <= NOT \Mem_RAM|ram~297_q\;
\Mem_RAM|ALT_INV_ram~585_combout\ <= NOT \Mem_RAM|ram~585_combout\;
\Mem_RAM|ALT_INV_ram~505_q\ <= NOT \Mem_RAM|ram~505_q\;
\Mem_RAM|ALT_INV_ram~377_q\ <= NOT \Mem_RAM|ram~377_q\;
\Mem_RAM|ALT_INV_ram~441_q\ <= NOT \Mem_RAM|ram~441_q\;
\Mem_RAM|ALT_INV_ram~313_q\ <= NOT \Mem_RAM|ram~313_q\;
\Mem_RAM|ALT_INV_ram~584_combout\ <= NOT \Mem_RAM|ram~584_combout\;
\Mem_RAM|ALT_INV_ram~473_q\ <= NOT \Mem_RAM|ram~473_q\;
\Mem_RAM|ALT_INV_ram~345_q\ <= NOT \Mem_RAM|ram~345_q\;
\Mem_RAM|ALT_INV_ram~409_q\ <= NOT \Mem_RAM|ram~409_q\;
\Mem_RAM|ALT_INV_ram~281_q\ <= NOT \Mem_RAM|ram~281_q\;
\Mem_RAM|ALT_INV_ram~583_combout\ <= NOT \Mem_RAM|ram~583_combout\;
\Mem_RAM|ALT_INV_ram~582_combout\ <= NOT \Mem_RAM|ram~582_combout\;
\Mem_RAM|ALT_INV_ram~265_q\ <= NOT \Mem_RAM|ram~265_q\;
\Mem_RAM|ALT_INV_ram~233_q\ <= NOT \Mem_RAM|ram~233_q\;
\Mem_RAM|ALT_INV_ram~249_q\ <= NOT \Mem_RAM|ram~249_q\;
\Mem_RAM|ALT_INV_ram~217_q\ <= NOT \Mem_RAM|ram~217_q\;
\Mem_RAM|ALT_INV_ram~581_combout\ <= NOT \Mem_RAM|ram~581_combout\;
\Mem_RAM|ALT_INV_ram~137_q\ <= NOT \Mem_RAM|ram~137_q\;
\Mem_RAM|ALT_INV_ram~105_q\ <= NOT \Mem_RAM|ram~105_q\;
\Mem_RAM|ALT_INV_ram~121_q\ <= NOT \Mem_RAM|ram~121_q\;
\Mem_RAM|ALT_INV_ram~89_q\ <= NOT \Mem_RAM|ram~89_q\;
\Mem_RAM|ALT_INV_ram~580_combout\ <= NOT \Mem_RAM|ram~580_combout\;
\Mem_RAM|ALT_INV_ram~201_q\ <= NOT \Mem_RAM|ram~201_q\;
\Mem_RAM|ALT_INV_ram~169_q\ <= NOT \Mem_RAM|ram~169_q\;
\Mem_RAM|ALT_INV_ram~185_q\ <= NOT \Mem_RAM|ram~185_q\;
\Mem_RAM|ALT_INV_ram~153_q\ <= NOT \Mem_RAM|ram~153_q\;
\Mem_RAM|ALT_INV_ram~579_combout\ <= NOT \Mem_RAM|ram~579_combout\;
\Mem_RAM|ALT_INV_ram~73_q\ <= NOT \Mem_RAM|ram~73_q\;
\Mem_RAM|ALT_INV_ram~41_q\ <= NOT \Mem_RAM|ram~41_q\;
\Mem_RAM|ALT_INV_ram~57_q\ <= NOT \Mem_RAM|ram~57_q\;
\Mem_RAM|ALT_INV_ram~25_q\ <= NOT \Mem_RAM|ram~25_q\;
\Mem_RAM|ALT_INV_ram~578_combout\ <= NOT \Mem_RAM|ram~578_combout\;
\Mem_RAM|ALT_INV_ram~577_combout\ <= NOT \Mem_RAM|ram~577_combout\;
\Mem_RAM|ALT_INV_ram~513_q\ <= NOT \Mem_RAM|ram~513_q\;
\Mem_RAM|ALT_INV_ram~481_q\ <= NOT \Mem_RAM|ram~481_q\;
\Mem_RAM|ALT_INV_ram~385_q\ <= NOT \Mem_RAM|ram~385_q\;
\Mem_RAM|ALT_INV_ram~353_q\ <= NOT \Mem_RAM|ram~353_q\;
\Mem_RAM|ALT_INV_ram~576_combout\ <= NOT \Mem_RAM|ram~576_combout\;
\Mem_RAM|ALT_INV_ram~497_q\ <= NOT \Mem_RAM|ram~497_q\;
\Mem_RAM|ALT_INV_ram~465_q\ <= NOT \Mem_RAM|ram~465_q\;
\Mem_RAM|ALT_INV_ram~369_q\ <= NOT \Mem_RAM|ram~369_q\;
\Mem_RAM|ALT_INV_ram~337_q\ <= NOT \Mem_RAM|ram~337_q\;
\Mem_RAM|ALT_INV_ram~575_combout\ <= NOT \Mem_RAM|ram~575_combout\;
\Mem_RAM|ALT_INV_ram~449_q\ <= NOT \Mem_RAM|ram~449_q\;
\Mem_RAM|ALT_INV_ram~417_q\ <= NOT \Mem_RAM|ram~417_q\;
\Mem_RAM|ALT_INV_ram~321_q\ <= NOT \Mem_RAM|ram~321_q\;
\Mem_RAM|ALT_INV_ram~289_q\ <= NOT \Mem_RAM|ram~289_q\;
\Mem_RAM|ALT_INV_ram~574_combout\ <= NOT \Mem_RAM|ram~574_combout\;
\Mem_RAM|ALT_INV_ram~433_q\ <= NOT \Mem_RAM|ram~433_q\;
\Mem_RAM|ALT_INV_ram~401_q\ <= NOT \Mem_RAM|ram~401_q\;
\Mem_RAM|ALT_INV_ram~305_q\ <= NOT \Mem_RAM|ram~305_q\;
\Mem_RAM|ALT_INV_ram~273_q\ <= NOT \Mem_RAM|ram~273_q\;
\Mem_RAM|ALT_INV_ram~573_combout\ <= NOT \Mem_RAM|ram~573_combout\;
\Mem_RAM|ALT_INV_ram~572_combout\ <= NOT \Mem_RAM|ram~572_combout\;
\Mem_RAM|ALT_INV_ram~257_q\ <= NOT \Mem_RAM|ram~257_q\;
\Mem_RAM|ALT_INV_ram~225_q\ <= NOT \Mem_RAM|ram~225_q\;
\Mem_RAM|ALT_INV_ram~193_q\ <= NOT \Mem_RAM|ram~193_q\;
\Mem_RAM|ALT_INV_ram~161_q\ <= NOT \Mem_RAM|ram~161_q\;
\Mem_RAM|ALT_INV_ram~571_combout\ <= NOT \Mem_RAM|ram~571_combout\;
\Mem_RAM|ALT_INV_ram~129_q\ <= NOT \Mem_RAM|ram~129_q\;
\Mem_RAM|ALT_INV_ram~97_q\ <= NOT \Mem_RAM|ram~97_q\;
\Mem_RAM|ALT_INV_ram~65_q\ <= NOT \Mem_RAM|ram~65_q\;
\Mem_RAM|ALT_INV_ram~33_q\ <= NOT \Mem_RAM|ram~33_q\;
\Mem_RAM|ALT_INV_ram~570_combout\ <= NOT \Mem_RAM|ram~570_combout\;
\Mem_RAM|ALT_INV_ram~241_q\ <= NOT \Mem_RAM|ram~241_q\;
\Mem_RAM|ALT_INV_ram~209_q\ <= NOT \Mem_RAM|ram~209_q\;
\Mem_RAM|ALT_INV_ram~177_q\ <= NOT \Mem_RAM|ram~177_q\;
\Mem_RAM|ALT_INV_ram~145_q\ <= NOT \Mem_RAM|ram~145_q\;
\Mem_RAM|ALT_INV_ram~569_combout\ <= NOT \Mem_RAM|ram~569_combout\;
\Mem_RAM|ALT_INV_ram~113_q\ <= NOT \Mem_RAM|ram~113_q\;
\Mem_RAM|ALT_INV_ram~81_q\ <= NOT \Mem_RAM|ram~81_q\;
\Mem_RAM|ALT_INV_ram~49_q\ <= NOT \Mem_RAM|ram~49_q\;
\Mem_RAM|ALT_INV_ram~17_q\ <= NOT \Mem_RAM|ram~17_q\;
\CPU|ULA1|ALT_INV_saida[1]~3_combout\ <= NOT \CPU|ULA1|saida[1]~3_combout\;
\CPU|ULA1|ALT_INV_saida[1]~2_combout\ <= NOT \CPU|ULA1|saida[1]~2_combout\;
\Mem_RAM|ALT_INV_ram~568_combout\ <= NOT \Mem_RAM|ram~568_combout\;
\Mem_RAM|ALT_INV_ram~567_combout\ <= NOT \Mem_RAM|ram~567_combout\;
\Mem_RAM|ALT_INV_ram~566_combout\ <= NOT \Mem_RAM|ram~566_combout\;
\Mem_RAM|ALT_INV_ram~520_q\ <= NOT \Mem_RAM|ram~520_q\;
\Mem_RAM|ALT_INV_ram~264_q\ <= NOT \Mem_RAM|ram~264_q\;
\Mem_RAM|ALT_INV_ram~504_q\ <= NOT \Mem_RAM|ram~504_q\;
\Mem_RAM|ALT_INV_ram~248_q\ <= NOT \Mem_RAM|ram~248_q\;
\Mem_RAM|ALT_INV_ram~565_combout\ <= NOT \Mem_RAM|ram~565_combout\;
\Mem_RAM|ALT_INV_ram~488_q\ <= NOT \Mem_RAM|ram~488_q\;
\Mem_RAM|ALT_INV_ram~232_q\ <= NOT \Mem_RAM|ram~232_q\;
\Mem_RAM|ALT_INV_ram~472_q\ <= NOT \Mem_RAM|ram~472_q\;
\Mem_RAM|ALT_INV_ram~216_q\ <= NOT \Mem_RAM|ram~216_q\;
\Mem_RAM|ALT_INV_ram~564_combout\ <= NOT \Mem_RAM|ram~564_combout\;
\Mem_RAM|ALT_INV_ram~456_q\ <= NOT \Mem_RAM|ram~456_q\;
\Mem_RAM|ALT_INV_ram~200_q\ <= NOT \Mem_RAM|ram~200_q\;
\Mem_RAM|ALT_INV_ram~440_q\ <= NOT \Mem_RAM|ram~440_q\;
\Mem_RAM|ALT_INV_ram~184_q\ <= NOT \Mem_RAM|ram~184_q\;
\Mem_RAM|ALT_INV_ram~563_combout\ <= NOT \Mem_RAM|ram~563_combout\;
\Mem_RAM|ALT_INV_ram~424_q\ <= NOT \Mem_RAM|ram~424_q\;
\Mem_RAM|ALT_INV_ram~168_q\ <= NOT \Mem_RAM|ram~168_q\;
\Mem_RAM|ALT_INV_ram~408_q\ <= NOT \Mem_RAM|ram~408_q\;
\Mem_RAM|ALT_INV_ram~152_q\ <= NOT \Mem_RAM|ram~152_q\;
\Mem_RAM|ALT_INV_ram~235_q\ <= NOT \Mem_RAM|ram~235_q\;
\Mem_RAM|ALT_INV_ram~227_q\ <= NOT \Mem_RAM|ram~227_q\;
\Mem_RAM|ALT_INV_ram~107_q\ <= NOT \Mem_RAM|ram~107_q\;
\Mem_RAM|ALT_INV_ram~99_q\ <= NOT \Mem_RAM|ram~99_q\;
\Mem_RAM|ALT_INV_ram~622_combout\ <= NOT \Mem_RAM|ram~622_combout\;
\Mem_RAM|ALT_INV_ram~203_q\ <= NOT \Mem_RAM|ram~203_q\;
\Mem_RAM|ALT_INV_ram~195_q\ <= NOT \Mem_RAM|ram~195_q\;
\Mem_RAM|ALT_INV_ram~75_q\ <= NOT \Mem_RAM|ram~75_q\;
\Mem_RAM|ALT_INV_ram~67_q\ <= NOT \Mem_RAM|ram~67_q\;
\Mem_RAM|ALT_INV_ram~621_combout\ <= NOT \Mem_RAM|ram~621_combout\;
\Mem_RAM|ALT_INV_ram~171_q\ <= NOT \Mem_RAM|ram~171_q\;
\Mem_RAM|ALT_INV_ram~163_q\ <= NOT \Mem_RAM|ram~163_q\;
\Mem_RAM|ALT_INV_ram~43_q\ <= NOT \Mem_RAM|ram~43_q\;
\Mem_RAM|ALT_INV_ram~35_q\ <= NOT \Mem_RAM|ram~35_q\;
\Mem_RAM|ALT_INV_ram~620_combout\ <= NOT \Mem_RAM|ram~620_combout\;
\Mem_RAM|ALT_INV_ram~619_combout\ <= NOT \Mem_RAM|ram~619_combout\;
\Mem_RAM|ALT_INV_ram~507_q\ <= NOT \Mem_RAM|ram~507_q\;
\Mem_RAM|ALT_INV_ram~499_q\ <= NOT \Mem_RAM|ram~499_q\;
\Mem_RAM|ALT_INV_ram~443_q\ <= NOT \Mem_RAM|ram~443_q\;
\Mem_RAM|ALT_INV_ram~435_q\ <= NOT \Mem_RAM|ram~435_q\;
\Mem_RAM|ALT_INV_ram~618_combout\ <= NOT \Mem_RAM|ram~618_combout\;
\Mem_RAM|ALT_INV_ram~475_q\ <= NOT \Mem_RAM|ram~475_q\;
\Mem_RAM|ALT_INV_ram~467_q\ <= NOT \Mem_RAM|ram~467_q\;
\Mem_RAM|ALT_INV_ram~411_q\ <= NOT \Mem_RAM|ram~411_q\;
\Mem_RAM|ALT_INV_ram~403_q\ <= NOT \Mem_RAM|ram~403_q\;
\Mem_RAM|ALT_INV_ram~617_combout\ <= NOT \Mem_RAM|ram~617_combout\;
\Mem_RAM|ALT_INV_ram~379_q\ <= NOT \Mem_RAM|ram~379_q\;
\Mem_RAM|ALT_INV_ram~371_q\ <= NOT \Mem_RAM|ram~371_q\;
\Mem_RAM|ALT_INV_ram~315_q\ <= NOT \Mem_RAM|ram~315_q\;
\Mem_RAM|ALT_INV_ram~307_q\ <= NOT \Mem_RAM|ram~307_q\;
\Mem_RAM|ALT_INV_ram~616_combout\ <= NOT \Mem_RAM|ram~616_combout\;
\Mem_RAM|ALT_INV_ram~347_q\ <= NOT \Mem_RAM|ram~347_q\;
\Mem_RAM|ALT_INV_ram~339_q\ <= NOT \Mem_RAM|ram~339_q\;
\Mem_RAM|ALT_INV_ram~283_q\ <= NOT \Mem_RAM|ram~283_q\;
\Mem_RAM|ALT_INV_ram~275_q\ <= NOT \Mem_RAM|ram~275_q\;
\Mem_RAM|ALT_INV_ram~615_combout\ <= NOT \Mem_RAM|ram~615_combout\;
\Mem_RAM|ALT_INV_ram~614_combout\ <= NOT \Mem_RAM|ram~614_combout\;
\Mem_RAM|ALT_INV_ram~251_q\ <= NOT \Mem_RAM|ram~251_q\;
\Mem_RAM|ALT_INV_ram~243_q\ <= NOT \Mem_RAM|ram~243_q\;
\Mem_RAM|ALT_INV_ram~219_q\ <= NOT \Mem_RAM|ram~219_q\;
\Mem_RAM|ALT_INV_ram~211_q\ <= NOT \Mem_RAM|ram~211_q\;
\Mem_RAM|ALT_INV_ram~613_combout\ <= NOT \Mem_RAM|ram~613_combout\;
\Mem_RAM|ALT_INV_ram~123_q\ <= NOT \Mem_RAM|ram~123_q\;
\Mem_RAM|ALT_INV_ram~115_q\ <= NOT \Mem_RAM|ram~115_q\;
\Mem_RAM|ALT_INV_ram~91_q\ <= NOT \Mem_RAM|ram~91_q\;
\Mem_RAM|ALT_INV_ram~83_q\ <= NOT \Mem_RAM|ram~83_q\;
\Mem_RAM|ALT_INV_ram~612_combout\ <= NOT \Mem_RAM|ram~612_combout\;
\Mem_RAM|ALT_INV_ram~187_q\ <= NOT \Mem_RAM|ram~187_q\;
\Mem_RAM|ALT_INV_ram~179_q\ <= NOT \Mem_RAM|ram~179_q\;
\Mem_RAM|ALT_INV_ram~155_q\ <= NOT \Mem_RAM|ram~155_q\;
\Mem_RAM|ALT_INV_ram~147_q\ <= NOT \Mem_RAM|ram~147_q\;
\Mem_RAM|ALT_INV_ram~611_combout\ <= NOT \Mem_RAM|ram~611_combout\;
\Mem_RAM|ALT_INV_ram~59_q\ <= NOT \Mem_RAM|ram~59_q\;
\Mem_RAM|ALT_INV_ram~51_q\ <= NOT \Mem_RAM|ram~51_q\;
\Mem_RAM|ALT_INV_ram~27_q\ <= NOT \Mem_RAM|ram~27_q\;
\Mem_RAM|ALT_INV_ram~19_q\ <= NOT \Mem_RAM|ram~19_q\;
\CPU|ULA1|ALT_INV_saida[3]~7_combout\ <= NOT \CPU|ULA1|saida[3]~7_combout\;
\CPU|ULA1|ALT_INV_saida[3]~6_combout\ <= NOT \CPU|ULA1|saida[3]~6_combout\;
\Mem_RAM|ALT_INV_ram~610_combout\ <= NOT \Mem_RAM|ram~610_combout\;
\Mem_RAM|ALT_INV_ram~609_combout\ <= NOT \Mem_RAM|ram~609_combout\;
\Mem_RAM|ALT_INV_ram~608_combout\ <= NOT \Mem_RAM|ram~608_combout\;
\Mem_RAM|ALT_INV_ram~522_q\ <= NOT \Mem_RAM|ram~522_q\;
\Mem_RAM|ALT_INV_ram~514_q\ <= NOT \Mem_RAM|ram~514_q\;
\Mem_RAM|ALT_INV_ram~506_q\ <= NOT \Mem_RAM|ram~506_q\;
\Mem_RAM|ALT_INV_ram~498_q\ <= NOT \Mem_RAM|ram~498_q\;
\Mem_RAM|ALT_INV_ram~607_combout\ <= NOT \Mem_RAM|ram~607_combout\;
\Mem_RAM|ALT_INV_ram~394_q\ <= NOT \Mem_RAM|ram~394_q\;
\Mem_RAM|ALT_INV_ram~386_q\ <= NOT \Mem_RAM|ram~386_q\;
\Mem_RAM|ALT_INV_ram~378_q\ <= NOT \Mem_RAM|ram~378_q\;
\Mem_RAM|ALT_INV_ram~370_q\ <= NOT \Mem_RAM|ram~370_q\;
\Mem_RAM|ALT_INV_ram~606_combout\ <= NOT \Mem_RAM|ram~606_combout\;
\Mem_RAM|ALT_INV_ram~458_q\ <= NOT \Mem_RAM|ram~458_q\;
\Mem_RAM|ALT_INV_ram~450_q\ <= NOT \Mem_RAM|ram~450_q\;
\Mem_RAM|ALT_INV_ram~442_q\ <= NOT \Mem_RAM|ram~442_q\;
\Mem_RAM|ALT_INV_ram~434_q\ <= NOT \Mem_RAM|ram~434_q\;
\Mem_RAM|ALT_INV_ram~605_combout\ <= NOT \Mem_RAM|ram~605_combout\;
\Mem_RAM|ALT_INV_ram~330_q\ <= NOT \Mem_RAM|ram~330_q\;
\Mem_RAM|ALT_INV_ram~322_q\ <= NOT \Mem_RAM|ram~322_q\;
\Mem_RAM|ALT_INV_ram~314_q\ <= NOT \Mem_RAM|ram~314_q\;
\Mem_RAM|ALT_INV_ram~306_q\ <= NOT \Mem_RAM|ram~306_q\;
\Mem_RAM|ALT_INV_ram~604_combout\ <= NOT \Mem_RAM|ram~604_combout\;
\Mem_RAM|ALT_INV_ram~603_combout\ <= NOT \Mem_RAM|ram~603_combout\;
\Mem_RAM|ALT_INV_ram~266_q\ <= NOT \Mem_RAM|ram~266_q\;
\Mem_RAM|ALT_INV_ram~250_q\ <= NOT \Mem_RAM|ram~250_q\;
\Mem_RAM|ALT_INV_ram~202_q\ <= NOT \Mem_RAM|ram~202_q\;
\Mem_RAM|ALT_INV_ram~186_q\ <= NOT \Mem_RAM|ram~186_q\;
\Mem_RAM|ALT_INV_ram~602_combout\ <= NOT \Mem_RAM|ram~602_combout\;
\Mem_RAM|ALT_INV_ram~258_q\ <= NOT \Mem_RAM|ram~258_q\;
\Mem_RAM|ALT_INV_ram~242_q\ <= NOT \Mem_RAM|ram~242_q\;
\Mem_RAM|ALT_INV_ram~194_q\ <= NOT \Mem_RAM|ram~194_q\;
\Mem_RAM|ALT_INV_ram~178_q\ <= NOT \Mem_RAM|ram~178_q\;
\Mem_RAM|ALT_INV_ram~601_combout\ <= NOT \Mem_RAM|ram~601_combout\;
\Mem_RAM|ALT_INV_ram~138_q\ <= NOT \Mem_RAM|ram~138_q\;
\Mem_RAM|ALT_INV_ram~122_q\ <= NOT \Mem_RAM|ram~122_q\;
\Mem_RAM|ALT_INV_ram~74_q\ <= NOT \Mem_RAM|ram~74_q\;
\Mem_RAM|ALT_INV_ram~58_q\ <= NOT \Mem_RAM|ram~58_q\;
\Mem_RAM|ALT_INV_ram~600_combout\ <= NOT \Mem_RAM|ram~600_combout\;
\Mem_RAM|ALT_INV_ram~130_q\ <= NOT \Mem_RAM|ram~130_q\;
\Mem_RAM|ALT_INV_ram~114_q\ <= NOT \Mem_RAM|ram~114_q\;
\Mem_RAM|ALT_INV_ram~66_q\ <= NOT \Mem_RAM|ram~66_q\;
\Mem_RAM|ALT_INV_ram~50_q\ <= NOT \Mem_RAM|ram~50_q\;
\Mem_RAM|ALT_INV_ram~599_combout\ <= NOT \Mem_RAM|ram~599_combout\;
\Mem_RAM|ALT_INV_ram~598_combout\ <= NOT \Mem_RAM|ram~598_combout\;
\Mem_RAM|ALT_INV_ram~490_q\ <= NOT \Mem_RAM|ram~490_q\;
\Mem_RAM|ALT_INV_ram~362_q\ <= NOT \Mem_RAM|ram~362_q\;
\Mem_RAM|ALT_INV_ram~474_q\ <= NOT \Mem_RAM|ram~474_q\;
\Mem_RAM|ALT_INV_ram~346_q\ <= NOT \Mem_RAM|ram~346_q\;
\Mem_RAM|ALT_INV_ram~597_combout\ <= NOT \Mem_RAM|ram~597_combout\;
\Mem_RAM|ALT_INV_ram~482_q\ <= NOT \Mem_RAM|ram~482_q\;
\Mem_RAM|ALT_INV_ram~354_q\ <= NOT \Mem_RAM|ram~354_q\;
\Mem_RAM|ALT_INV_ram~466_q\ <= NOT \Mem_RAM|ram~466_q\;
\Mem_RAM|ALT_INV_ram~338_q\ <= NOT \Mem_RAM|ram~338_q\;
\Mem_RAM|ALT_INV_ram~596_combout\ <= NOT \Mem_RAM|ram~596_combout\;
\Mem_RAM|ALT_INV_ram~426_q\ <= NOT \Mem_RAM|ram~426_q\;
\Mem_RAM|ALT_INV_ram~298_q\ <= NOT \Mem_RAM|ram~298_q\;
\Mem_RAM|ALT_INV_ram~410_q\ <= NOT \Mem_RAM|ram~410_q\;
\Mem_RAM|ALT_INV_ram~282_q\ <= NOT \Mem_RAM|ram~282_q\;
\Mem_RAM|ALT_INV_ram~595_combout\ <= NOT \Mem_RAM|ram~595_combout\;
\Mem_RAM|ALT_INV_ram~418_q\ <= NOT \Mem_RAM|ram~418_q\;
\Mem_RAM|ALT_INV_ram~290_q\ <= NOT \Mem_RAM|ram~290_q\;
\Mem_RAM|ALT_INV_ram~402_q\ <= NOT \Mem_RAM|ram~402_q\;
\Mem_RAM|ALT_INV_ram~274_q\ <= NOT \Mem_RAM|ram~274_q\;
\Mem_RAM|ALT_INV_ram~594_combout\ <= NOT \Mem_RAM|ram~594_combout\;
\Mem_RAM|ALT_INV_ram~593_combout\ <= NOT \Mem_RAM|ram~593_combout\;
\Mem_RAM|ALT_INV_ram~234_q\ <= NOT \Mem_RAM|ram~234_q\;
\Mem_RAM|ALT_INV_ram~226_q\ <= NOT \Mem_RAM|ram~226_q\;
\Mem_RAM|ALT_INV_ram~218_q\ <= NOT \Mem_RAM|ram~218_q\;
\Mem_RAM|ALT_INV_ram~109_q\ <= NOT \Mem_RAM|ram~109_q\;
\Mem_RAM|ALT_INV_ram~93_q\ <= NOT \Mem_RAM|ram~93_q\;
\Mem_RAM|ALT_INV_ram~45_q\ <= NOT \Mem_RAM|ram~45_q\;
\Mem_RAM|ALT_INV_ram~29_q\ <= NOT \Mem_RAM|ram~29_q\;
\Mem_RAM|ALT_INV_ram~653_combout\ <= NOT \Mem_RAM|ram~653_combout\;
\Mem_RAM|ALT_INV_ram~101_q\ <= NOT \Mem_RAM|ram~101_q\;
\Mem_RAM|ALT_INV_ram~85_q\ <= NOT \Mem_RAM|ram~85_q\;
\Mem_RAM|ALT_INV_ram~37_q\ <= NOT \Mem_RAM|ram~37_q\;
\Mem_RAM|ALT_INV_ram~21_q\ <= NOT \Mem_RAM|ram~21_q\;
\CPU|ULA1|ALT_INV_saida[5]~11_combout\ <= NOT \CPU|ULA1|saida[5]~11_combout\;
\CPU|ULA1|ALT_INV_saida[5]~10_combout\ <= NOT \CPU|ULA1|saida[5]~10_combout\;
\Mem_RAM|ALT_INV_ram~652_combout\ <= NOT \Mem_RAM|ram~652_combout\;
\Mem_RAM|ALT_INV_ram~651_combout\ <= NOT \Mem_RAM|ram~651_combout\;
\Mem_RAM|ALT_INV_ram~650_combout\ <= NOT \Mem_RAM|ram~650_combout\;
\Mem_RAM|ALT_INV_ram~524_q\ <= NOT \Mem_RAM|ram~524_q\;
\Mem_RAM|ALT_INV_ram~492_q\ <= NOT \Mem_RAM|ram~492_q\;
\Mem_RAM|ALT_INV_ram~460_q\ <= NOT \Mem_RAM|ram~460_q\;
\Mem_RAM|ALT_INV_ram~428_q\ <= NOT \Mem_RAM|ram~428_q\;
\Mem_RAM|ALT_INV_ram~649_combout\ <= NOT \Mem_RAM|ram~649_combout\;
\Mem_RAM|ALT_INV_ram~396_q\ <= NOT \Mem_RAM|ram~396_q\;
\Mem_RAM|ALT_INV_ram~364_q\ <= NOT \Mem_RAM|ram~364_q\;
\Mem_RAM|ALT_INV_ram~332_q\ <= NOT \Mem_RAM|ram~332_q\;
\Mem_RAM|ALT_INV_ram~300_q\ <= NOT \Mem_RAM|ram~300_q\;
\Mem_RAM|ALT_INV_ram~648_combout\ <= NOT \Mem_RAM|ram~648_combout\;
\Mem_RAM|ALT_INV_ram~508_q\ <= NOT \Mem_RAM|ram~508_q\;
\Mem_RAM|ALT_INV_ram~476_q\ <= NOT \Mem_RAM|ram~476_q\;
\Mem_RAM|ALT_INV_ram~444_q\ <= NOT \Mem_RAM|ram~444_q\;
\Mem_RAM|ALT_INV_ram~412_q\ <= NOT \Mem_RAM|ram~412_q\;
\Mem_RAM|ALT_INV_ram~647_combout\ <= NOT \Mem_RAM|ram~647_combout\;
\Mem_RAM|ALT_INV_ram~380_q\ <= NOT \Mem_RAM|ram~380_q\;
\Mem_RAM|ALT_INV_ram~348_q\ <= NOT \Mem_RAM|ram~348_q\;
\Mem_RAM|ALT_INV_ram~316_q\ <= NOT \Mem_RAM|ram~316_q\;
\Mem_RAM|ALT_INV_ram~284_q\ <= NOT \Mem_RAM|ram~284_q\;
\Mem_RAM|ALT_INV_ram~646_combout\ <= NOT \Mem_RAM|ram~646_combout\;
\Mem_RAM|ALT_INV_ram~645_combout\ <= NOT \Mem_RAM|ram~645_combout\;
\Mem_RAM|ALT_INV_ram~268_q\ <= NOT \Mem_RAM|ram~268_q\;
\Mem_RAM|ALT_INV_ram~236_q\ <= NOT \Mem_RAM|ram~236_q\;
\Mem_RAM|ALT_INV_ram~252_q\ <= NOT \Mem_RAM|ram~252_q\;
\Mem_RAM|ALT_INV_ram~220_q\ <= NOT \Mem_RAM|ram~220_q\;
\Mem_RAM|ALT_INV_ram~644_combout\ <= NOT \Mem_RAM|ram~644_combout\;
\Mem_RAM|ALT_INV_ram~140_q\ <= NOT \Mem_RAM|ram~140_q\;
\Mem_RAM|ALT_INV_ram~108_q\ <= NOT \Mem_RAM|ram~108_q\;
\Mem_RAM|ALT_INV_ram~124_q\ <= NOT \Mem_RAM|ram~124_q\;
\Mem_RAM|ALT_INV_ram~92_q\ <= NOT \Mem_RAM|ram~92_q\;
\Mem_RAM|ALT_INV_ram~643_combout\ <= NOT \Mem_RAM|ram~643_combout\;
\Mem_RAM|ALT_INV_ram~204_q\ <= NOT \Mem_RAM|ram~204_q\;
\Mem_RAM|ALT_INV_ram~172_q\ <= NOT \Mem_RAM|ram~172_q\;
\Mem_RAM|ALT_INV_ram~188_q\ <= NOT \Mem_RAM|ram~188_q\;
\Mem_RAM|ALT_INV_ram~156_q\ <= NOT \Mem_RAM|ram~156_q\;
\Mem_RAM|ALT_INV_ram~642_combout\ <= NOT \Mem_RAM|ram~642_combout\;
\Mem_RAM|ALT_INV_ram~76_q\ <= NOT \Mem_RAM|ram~76_q\;
\Mem_RAM|ALT_INV_ram~44_q\ <= NOT \Mem_RAM|ram~44_q\;
\Mem_RAM|ALT_INV_ram~60_q\ <= NOT \Mem_RAM|ram~60_q\;
\Mem_RAM|ALT_INV_ram~28_q\ <= NOT \Mem_RAM|ram~28_q\;
\Mem_RAM|ALT_INV_ram~641_combout\ <= NOT \Mem_RAM|ram~641_combout\;
\Mem_RAM|ALT_INV_ram~640_combout\ <= NOT \Mem_RAM|ram~640_combout\;
\Mem_RAM|ALT_INV_ram~516_q\ <= NOT \Mem_RAM|ram~516_q\;
\Mem_RAM|ALT_INV_ram~484_q\ <= NOT \Mem_RAM|ram~484_q\;
\Mem_RAM|ALT_INV_ram~388_q\ <= NOT \Mem_RAM|ram~388_q\;
\Mem_RAM|ALT_INV_ram~356_q\ <= NOT \Mem_RAM|ram~356_q\;
\Mem_RAM|ALT_INV_ram~639_combout\ <= NOT \Mem_RAM|ram~639_combout\;
\Mem_RAM|ALT_INV_ram~500_q\ <= NOT \Mem_RAM|ram~500_q\;
\Mem_RAM|ALT_INV_ram~468_q\ <= NOT \Mem_RAM|ram~468_q\;
\Mem_RAM|ALT_INV_ram~372_q\ <= NOT \Mem_RAM|ram~372_q\;
\Mem_RAM|ALT_INV_ram~340_q\ <= NOT \Mem_RAM|ram~340_q\;
\Mem_RAM|ALT_INV_ram~638_combout\ <= NOT \Mem_RAM|ram~638_combout\;
\Mem_RAM|ALT_INV_ram~452_q\ <= NOT \Mem_RAM|ram~452_q\;
\Mem_RAM|ALT_INV_ram~420_q\ <= NOT \Mem_RAM|ram~420_q\;
\Mem_RAM|ALT_INV_ram~324_q\ <= NOT \Mem_RAM|ram~324_q\;
\Mem_RAM|ALT_INV_ram~292_q\ <= NOT \Mem_RAM|ram~292_q\;
\Mem_RAM|ALT_INV_ram~637_combout\ <= NOT \Mem_RAM|ram~637_combout\;
\Mem_RAM|ALT_INV_ram~436_q\ <= NOT \Mem_RAM|ram~436_q\;
\Mem_RAM|ALT_INV_ram~404_q\ <= NOT \Mem_RAM|ram~404_q\;
\Mem_RAM|ALT_INV_ram~308_q\ <= NOT \Mem_RAM|ram~308_q\;
\Mem_RAM|ALT_INV_ram~276_q\ <= NOT \Mem_RAM|ram~276_q\;
\Mem_RAM|ALT_INV_ram~636_combout\ <= NOT \Mem_RAM|ram~636_combout\;
\Mem_RAM|ALT_INV_ram~635_combout\ <= NOT \Mem_RAM|ram~635_combout\;
\Mem_RAM|ALT_INV_ram~260_q\ <= NOT \Mem_RAM|ram~260_q\;
\Mem_RAM|ALT_INV_ram~228_q\ <= NOT \Mem_RAM|ram~228_q\;
\Mem_RAM|ALT_INV_ram~244_q\ <= NOT \Mem_RAM|ram~244_q\;
\Mem_RAM|ALT_INV_ram~212_q\ <= NOT \Mem_RAM|ram~212_q\;
\Mem_RAM|ALT_INV_ram~634_combout\ <= NOT \Mem_RAM|ram~634_combout\;
\Mem_RAM|ALT_INV_ram~132_q\ <= NOT \Mem_RAM|ram~132_q\;
\Mem_RAM|ALT_INV_ram~100_q\ <= NOT \Mem_RAM|ram~100_q\;
\Mem_RAM|ALT_INV_ram~116_q\ <= NOT \Mem_RAM|ram~116_q\;
\Mem_RAM|ALT_INV_ram~84_q\ <= NOT \Mem_RAM|ram~84_q\;
\Mem_RAM|ALT_INV_ram~633_combout\ <= NOT \Mem_RAM|ram~633_combout\;
\Mem_RAM|ALT_INV_ram~196_q\ <= NOT \Mem_RAM|ram~196_q\;
\Mem_RAM|ALT_INV_ram~164_q\ <= NOT \Mem_RAM|ram~164_q\;
\Mem_RAM|ALT_INV_ram~180_q\ <= NOT \Mem_RAM|ram~180_q\;
\Mem_RAM|ALT_INV_ram~148_q\ <= NOT \Mem_RAM|ram~148_q\;
\Mem_RAM|ALT_INV_ram~632_combout\ <= NOT \Mem_RAM|ram~632_combout\;
\Mem_RAM|ALT_INV_ram~68_q\ <= NOT \Mem_RAM|ram~68_q\;
\Mem_RAM|ALT_INV_ram~36_q\ <= NOT \Mem_RAM|ram~36_q\;
\Mem_RAM|ALT_INV_ram~52_q\ <= NOT \Mem_RAM|ram~52_q\;
\Mem_RAM|ALT_INV_ram~20_q\ <= NOT \Mem_RAM|ram~20_q\;
\CPU|ULA1|ALT_INV_saida[4]~9_combout\ <= NOT \CPU|ULA1|saida[4]~9_combout\;
\CPU|ULA1|ALT_INV_saida[4]~8_combout\ <= NOT \CPU|ULA1|saida[4]~8_combout\;
\Mem_RAM|ALT_INV_ram~631_combout\ <= NOT \Mem_RAM|ram~631_combout\;
\Mem_RAM|ALT_INV_ram~630_combout\ <= NOT \Mem_RAM|ram~630_combout\;
\Mem_RAM|ALT_INV_ram~629_combout\ <= NOT \Mem_RAM|ram~629_combout\;
\Mem_RAM|ALT_INV_ram~523_q\ <= NOT \Mem_RAM|ram~523_q\;
\Mem_RAM|ALT_INV_ram~515_q\ <= NOT \Mem_RAM|ram~515_q\;
\Mem_RAM|ALT_INV_ram~491_q\ <= NOT \Mem_RAM|ram~491_q\;
\Mem_RAM|ALT_INV_ram~483_q\ <= NOT \Mem_RAM|ram~483_q\;
\Mem_RAM|ALT_INV_ram~628_combout\ <= NOT \Mem_RAM|ram~628_combout\;
\Mem_RAM|ALT_INV_ram~395_q\ <= NOT \Mem_RAM|ram~395_q\;
\Mem_RAM|ALT_INV_ram~387_q\ <= NOT \Mem_RAM|ram~387_q\;
\Mem_RAM|ALT_INV_ram~363_q\ <= NOT \Mem_RAM|ram~363_q\;
\Mem_RAM|ALT_INV_ram~355_q\ <= NOT \Mem_RAM|ram~355_q\;
\Mem_RAM|ALT_INV_ram~627_combout\ <= NOT \Mem_RAM|ram~627_combout\;
\Mem_RAM|ALT_INV_ram~459_q\ <= NOT \Mem_RAM|ram~459_q\;
\Mem_RAM|ALT_INV_ram~451_q\ <= NOT \Mem_RAM|ram~451_q\;
\Mem_RAM|ALT_INV_ram~427_q\ <= NOT \Mem_RAM|ram~427_q\;
\Mem_RAM|ALT_INV_ram~419_q\ <= NOT \Mem_RAM|ram~419_q\;
\Mem_RAM|ALT_INV_ram~626_combout\ <= NOT \Mem_RAM|ram~626_combout\;
\Mem_RAM|ALT_INV_ram~331_q\ <= NOT \Mem_RAM|ram~331_q\;
\Mem_RAM|ALT_INV_ram~323_q\ <= NOT \Mem_RAM|ram~323_q\;
\Mem_RAM|ALT_INV_ram~299_q\ <= NOT \Mem_RAM|ram~299_q\;
\Mem_RAM|ALT_INV_ram~291_q\ <= NOT \Mem_RAM|ram~291_q\;
\Mem_RAM|ALT_INV_ram~625_combout\ <= NOT \Mem_RAM|ram~625_combout\;
\Mem_RAM|ALT_INV_ram~624_combout\ <= NOT \Mem_RAM|ram~624_combout\;
\Mem_RAM|ALT_INV_ram~267_q\ <= NOT \Mem_RAM|ram~267_q\;
\Mem_RAM|ALT_INV_ram~259_q\ <= NOT \Mem_RAM|ram~259_q\;
\Mem_RAM|ALT_INV_ram~139_q\ <= NOT \Mem_RAM|ram~139_q\;
\Mem_RAM|ALT_INV_ram~131_q\ <= NOT \Mem_RAM|ram~131_q\;
\Mem_RAM|ALT_INV_ram~623_combout\ <= NOT \Mem_RAM|ram~623_combout\;
\Mem_RAM|ALT_INV_ram~318_q\ <= NOT \Mem_RAM|ram~318_q\;
\Mem_RAM|ALT_INV_ram~286_q\ <= NOT \Mem_RAM|ram~286_q\;
\Mem_RAM|ALT_INV_ram~684_combout\ <= NOT \Mem_RAM|ram~684_combout\;
\Mem_RAM|ALT_INV_ram~374_q\ <= NOT \Mem_RAM|ram~374_q\;
\Mem_RAM|ALT_INV_ram~342_q\ <= NOT \Mem_RAM|ram~342_q\;
\Mem_RAM|ALT_INV_ram~310_q\ <= NOT \Mem_RAM|ram~310_q\;
\Mem_RAM|ALT_INV_ram~278_q\ <= NOT \Mem_RAM|ram~278_q\;
\Mem_RAM|ALT_INV_ram~683_combout\ <= NOT \Mem_RAM|ram~683_combout\;
\Mem_RAM|ALT_INV_ram~682_combout\ <= NOT \Mem_RAM|ram~682_combout\;
\Mem_RAM|ALT_INV_ram~270_q\ <= NOT \Mem_RAM|ram~270_q\;
\Mem_RAM|ALT_INV_ram~262_q\ <= NOT \Mem_RAM|ram~262_q\;
\Mem_RAM|ALT_INV_ram~142_q\ <= NOT \Mem_RAM|ram~142_q\;
\Mem_RAM|ALT_INV_ram~134_q\ <= NOT \Mem_RAM|ram~134_q\;
\Mem_RAM|ALT_INV_ram~681_combout\ <= NOT \Mem_RAM|ram~681_combout\;
\Mem_RAM|ALT_INV_ram~238_q\ <= NOT \Mem_RAM|ram~238_q\;
\Mem_RAM|ALT_INV_ram~230_q\ <= NOT \Mem_RAM|ram~230_q\;
\Mem_RAM|ALT_INV_ram~110_q\ <= NOT \Mem_RAM|ram~110_q\;
\Mem_RAM|ALT_INV_ram~102_q\ <= NOT \Mem_RAM|ram~102_q\;
\Mem_RAM|ALT_INV_ram~680_combout\ <= NOT \Mem_RAM|ram~680_combout\;
\Mem_RAM|ALT_INV_ram~206_q\ <= NOT \Mem_RAM|ram~206_q\;
\Mem_RAM|ALT_INV_ram~198_q\ <= NOT \Mem_RAM|ram~198_q\;
\Mem_RAM|ALT_INV_ram~78_q\ <= NOT \Mem_RAM|ram~78_q\;
\Mem_RAM|ALT_INV_ram~70_q\ <= NOT \Mem_RAM|ram~70_q\;
\Mem_RAM|ALT_INV_ram~679_combout\ <= NOT \Mem_RAM|ram~679_combout\;
\Mem_RAM|ALT_INV_ram~174_q\ <= NOT \Mem_RAM|ram~174_q\;
\Mem_RAM|ALT_INV_ram~166_q\ <= NOT \Mem_RAM|ram~166_q\;
\Mem_RAM|ALT_INV_ram~46_q\ <= NOT \Mem_RAM|ram~46_q\;
\Mem_RAM|ALT_INV_ram~38_q\ <= NOT \Mem_RAM|ram~38_q\;
\Mem_RAM|ALT_INV_ram~678_combout\ <= NOT \Mem_RAM|ram~678_combout\;
\Mem_RAM|ALT_INV_ram~677_combout\ <= NOT \Mem_RAM|ram~677_combout\;
\Mem_RAM|ALT_INV_ram~254_q\ <= NOT \Mem_RAM|ram~254_q\;
\Mem_RAM|ALT_INV_ram~222_q\ <= NOT \Mem_RAM|ram~222_q\;
\Mem_RAM|ALT_INV_ram~126_q\ <= NOT \Mem_RAM|ram~126_q\;
\Mem_RAM|ALT_INV_ram~94_q\ <= NOT \Mem_RAM|ram~94_q\;
\Mem_RAM|ALT_INV_ram~676_combout\ <= NOT \Mem_RAM|ram~676_combout\;
\Mem_RAM|ALT_INV_ram~246_q\ <= NOT \Mem_RAM|ram~246_q\;
\Mem_RAM|ALT_INV_ram~214_q\ <= NOT \Mem_RAM|ram~214_q\;
\Mem_RAM|ALT_INV_ram~118_q\ <= NOT \Mem_RAM|ram~118_q\;
\Mem_RAM|ALT_INV_ram~86_q\ <= NOT \Mem_RAM|ram~86_q\;
\Mem_RAM|ALT_INV_ram~675_combout\ <= NOT \Mem_RAM|ram~675_combout\;
\Mem_RAM|ALT_INV_ram~190_q\ <= NOT \Mem_RAM|ram~190_q\;
\Mem_RAM|ALT_INV_ram~158_q\ <= NOT \Mem_RAM|ram~158_q\;
\Mem_RAM|ALT_INV_ram~62_q\ <= NOT \Mem_RAM|ram~62_q\;
\Mem_RAM|ALT_INV_ram~30_q\ <= NOT \Mem_RAM|ram~30_q\;
\Mem_RAM|ALT_INV_ram~674_combout\ <= NOT \Mem_RAM|ram~674_combout\;
\Mem_RAM|ALT_INV_ram~182_q\ <= NOT \Mem_RAM|ram~182_q\;
\Mem_RAM|ALT_INV_ram~150_q\ <= NOT \Mem_RAM|ram~150_q\;
\Mem_RAM|ALT_INV_ram~54_q\ <= NOT \Mem_RAM|ram~54_q\;
\Mem_RAM|ALT_INV_ram~22_q\ <= NOT \Mem_RAM|ram~22_q\;
\CPU|ULA1|ALT_INV_saida[6]~13_combout\ <= NOT \CPU|ULA1|saida[6]~13_combout\;
\CPU|ULA1|ALT_INV_saida[6]~12_combout\ <= NOT \CPU|ULA1|saida[6]~12_combout\;
\Mem_RAM|ALT_INV_ram~673_combout\ <= NOT \Mem_RAM|ram~673_combout\;
\Mem_RAM|ALT_INV_ram~672_combout\ <= NOT \Mem_RAM|ram~672_combout\;
\Mem_RAM|ALT_INV_ram~671_combout\ <= NOT \Mem_RAM|ram~671_combout\;
\Mem_RAM|ALT_INV_ram~525_q\ <= NOT \Mem_RAM|ram~525_q\;
\Mem_RAM|ALT_INV_ram~509_q\ <= NOT \Mem_RAM|ram~509_q\;
\Mem_RAM|ALT_INV_ram~461_q\ <= NOT \Mem_RAM|ram~461_q\;
\Mem_RAM|ALT_INV_ram~445_q\ <= NOT \Mem_RAM|ram~445_q\;
\Mem_RAM|ALT_INV_ram~670_combout\ <= NOT \Mem_RAM|ram~670_combout\;
\Mem_RAM|ALT_INV_ram~517_q\ <= NOT \Mem_RAM|ram~517_q\;
\Mem_RAM|ALT_INV_ram~501_q\ <= NOT \Mem_RAM|ram~501_q\;
\Mem_RAM|ALT_INV_ram~453_q\ <= NOT \Mem_RAM|ram~453_q\;
\Mem_RAM|ALT_INV_ram~437_q\ <= NOT \Mem_RAM|ram~437_q\;
\Mem_RAM|ALT_INV_ram~669_combout\ <= NOT \Mem_RAM|ram~669_combout\;
\Mem_RAM|ALT_INV_ram~397_q\ <= NOT \Mem_RAM|ram~397_q\;
\Mem_RAM|ALT_INV_ram~381_q\ <= NOT \Mem_RAM|ram~381_q\;
\Mem_RAM|ALT_INV_ram~333_q\ <= NOT \Mem_RAM|ram~333_q\;
\Mem_RAM|ALT_INV_ram~317_q\ <= NOT \Mem_RAM|ram~317_q\;
\Mem_RAM|ALT_INV_ram~668_combout\ <= NOT \Mem_RAM|ram~668_combout\;
\Mem_RAM|ALT_INV_ram~389_q\ <= NOT \Mem_RAM|ram~389_q\;
\Mem_RAM|ALT_INV_ram~373_q\ <= NOT \Mem_RAM|ram~373_q\;
\Mem_RAM|ALT_INV_ram~325_q\ <= NOT \Mem_RAM|ram~325_q\;
\Mem_RAM|ALT_INV_ram~309_q\ <= NOT \Mem_RAM|ram~309_q\;
\Mem_RAM|ALT_INV_ram~667_combout\ <= NOT \Mem_RAM|ram~667_combout\;
\Mem_RAM|ALT_INV_ram~666_combout\ <= NOT \Mem_RAM|ram~666_combout\;
\Mem_RAM|ALT_INV_ram~269_q\ <= NOT \Mem_RAM|ram~269_q\;
\Mem_RAM|ALT_INV_ram~261_q\ <= NOT \Mem_RAM|ram~261_q\;
\Mem_RAM|ALT_INV_ram~253_q\ <= NOT \Mem_RAM|ram~253_q\;
\Mem_RAM|ALT_INV_ram~245_q\ <= NOT \Mem_RAM|ram~245_q\;
\Mem_RAM|ALT_INV_ram~665_combout\ <= NOT \Mem_RAM|ram~665_combout\;
\Mem_RAM|ALT_INV_ram~141_q\ <= NOT \Mem_RAM|ram~141_q\;
\Mem_RAM|ALT_INV_ram~133_q\ <= NOT \Mem_RAM|ram~133_q\;
\Mem_RAM|ALT_INV_ram~125_q\ <= NOT \Mem_RAM|ram~125_q\;
\Mem_RAM|ALT_INV_ram~117_q\ <= NOT \Mem_RAM|ram~117_q\;
\Mem_RAM|ALT_INV_ram~664_combout\ <= NOT \Mem_RAM|ram~664_combout\;
\Mem_RAM|ALT_INV_ram~205_q\ <= NOT \Mem_RAM|ram~205_q\;
\Mem_RAM|ALT_INV_ram~197_q\ <= NOT \Mem_RAM|ram~197_q\;
\Mem_RAM|ALT_INV_ram~189_q\ <= NOT \Mem_RAM|ram~189_q\;
\Mem_RAM|ALT_INV_ram~181_q\ <= NOT \Mem_RAM|ram~181_q\;
\Mem_RAM|ALT_INV_ram~663_combout\ <= NOT \Mem_RAM|ram~663_combout\;
\Mem_RAM|ALT_INV_ram~77_q\ <= NOT \Mem_RAM|ram~77_q\;
\Mem_RAM|ALT_INV_ram~69_q\ <= NOT \Mem_RAM|ram~69_q\;
\Mem_RAM|ALT_INV_ram~61_q\ <= NOT \Mem_RAM|ram~61_q\;
\Mem_RAM|ALT_INV_ram~53_q\ <= NOT \Mem_RAM|ram~53_q\;
\Mem_RAM|ALT_INV_ram~662_combout\ <= NOT \Mem_RAM|ram~662_combout\;
\Mem_RAM|ALT_INV_ram~661_combout\ <= NOT \Mem_RAM|ram~661_combout\;
\Mem_RAM|ALT_INV_ram~493_q\ <= NOT \Mem_RAM|ram~493_q\;
\Mem_RAM|ALT_INV_ram~365_q\ <= NOT \Mem_RAM|ram~365_q\;
\Mem_RAM|ALT_INV_ram~477_q\ <= NOT \Mem_RAM|ram~477_q\;
\Mem_RAM|ALT_INV_ram~349_q\ <= NOT \Mem_RAM|ram~349_q\;
\Mem_RAM|ALT_INV_ram~660_combout\ <= NOT \Mem_RAM|ram~660_combout\;
\Mem_RAM|ALT_INV_ram~485_q\ <= NOT \Mem_RAM|ram~485_q\;
\Mem_RAM|ALT_INV_ram~357_q\ <= NOT \Mem_RAM|ram~357_q\;
\Mem_RAM|ALT_INV_ram~469_q\ <= NOT \Mem_RAM|ram~469_q\;
\Mem_RAM|ALT_INV_ram~341_q\ <= NOT \Mem_RAM|ram~341_q\;
\Mem_RAM|ALT_INV_ram~659_combout\ <= NOT \Mem_RAM|ram~659_combout\;
\Mem_RAM|ALT_INV_ram~429_q\ <= NOT \Mem_RAM|ram~429_q\;
\Mem_RAM|ALT_INV_ram~301_q\ <= NOT \Mem_RAM|ram~301_q\;
\Mem_RAM|ALT_INV_ram~413_q\ <= NOT \Mem_RAM|ram~413_q\;
\Mem_RAM|ALT_INV_ram~285_q\ <= NOT \Mem_RAM|ram~285_q\;
\Mem_RAM|ALT_INV_ram~658_combout\ <= NOT \Mem_RAM|ram~658_combout\;
\Mem_RAM|ALT_INV_ram~421_q\ <= NOT \Mem_RAM|ram~421_q\;
\Mem_RAM|ALT_INV_ram~293_q\ <= NOT \Mem_RAM|ram~293_q\;
\Mem_RAM|ALT_INV_ram~405_q\ <= NOT \Mem_RAM|ram~405_q\;
\Mem_RAM|ALT_INV_ram~277_q\ <= NOT \Mem_RAM|ram~277_q\;
\Mem_RAM|ALT_INV_ram~657_combout\ <= NOT \Mem_RAM|ram~657_combout\;
\Mem_RAM|ALT_INV_ram~656_combout\ <= NOT \Mem_RAM|ram~656_combout\;
\Mem_RAM|ALT_INV_ram~237_q\ <= NOT \Mem_RAM|ram~237_q\;
\Mem_RAM|ALT_INV_ram~221_q\ <= NOT \Mem_RAM|ram~221_q\;
\Mem_RAM|ALT_INV_ram~173_q\ <= NOT \Mem_RAM|ram~173_q\;
\Mem_RAM|ALT_INV_ram~157_q\ <= NOT \Mem_RAM|ram~157_q\;
\Mem_RAM|ALT_INV_ram~655_combout\ <= NOT \Mem_RAM|ram~655_combout\;
\Mem_RAM|ALT_INV_ram~229_q\ <= NOT \Mem_RAM|ram~229_q\;
\Mem_RAM|ALT_INV_ram~213_q\ <= NOT \Mem_RAM|ram~213_q\;
\Mem_RAM|ALT_INV_ram~165_q\ <= NOT \Mem_RAM|ram~165_q\;
\Mem_RAM|ALT_INV_ram~149_q\ <= NOT \Mem_RAM|ram~149_q\;
\Mem_RAM|ALT_INV_ram~654_combout\ <= NOT \Mem_RAM|ram~654_combout\;
\CPU|ULA1|ALT_INV_saida_cmp~combout\ <= NOT \CPU|ULA1|saida_cmp~combout\;
\CPU|ULA1|ALT_INV_saida\(7) <= NOT \CPU|ULA1|saida\(7);
\CPU|ULA1|ALT_INV_saida\(6) <= NOT \CPU|ULA1|saida\(6);
\CPU|ULA1|ALT_INV_saida\(5) <= NOT \CPU|ULA1|saida\(5);
\CPU|ULA1|ALT_INV_saida\(4) <= NOT \CPU|ULA1|saida\(4);
\CPU|ULA1|ALT_INV_saida\(3) <= NOT \CPU|ULA1|saida\(3);
\CPU|ULA1|ALT_INV_saida\(2) <= NOT \CPU|ULA1|saida\(2);
\CPU|ULA1|ALT_INV_saida\(1) <= NOT \CPU|ULA1|saida\(1);
\CPU|ULA1|ALT_INV_saida\(0) <= NOT \CPU|ULA1|saida\(0);
\CPU|logicaDeDesvio|ALT_INV_saida[0]~1_combout\ <= NOT \CPU|logicaDeDesvio|saida[0]~1_combout\;
\detectorSubKEY1|ALT_INV_saidaQ~q\ <= NOT \detectorSubKEY1|saidaQ~q\;
\detectorSubKEY0|ALT_INV_saidaQ~q\ <= NOT \detectorSubKEY0|saidaQ~q\;
\CPU|MUX1|ALT_INV_saida_MUX[7]~6_combout\ <= NOT \CPU|MUX1|saida_MUX[7]~6_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[6]~5_combout\ <= NOT \CPU|MUX1|saida_MUX[6]~5_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[5]~4_combout\ <= NOT \CPU|MUX1|saida_MUX[5]~4_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[4]~3_combout\ <= NOT \CPU|MUX1|saida_MUX[4]~3_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[3]~2_combout\ <= NOT \CPU|MUX1|saida_MUX[3]~2_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[2]~1_combout\ <= NOT \CPU|MUX1|saida_MUX[2]~1_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[1]~0_combout\ <= NOT \CPU|MUX1|saida_MUX[1]~0_combout\;
\ALT_INV_Reset_Reg_KEY1~combout\ <= NOT \Reset_Reg_KEY1~combout\;
\ALT_INV_Reset_Reg_KEY0~combout\ <= NOT \Reset_Reg_KEY0~combout\;
\ALT_INV_Reset_Reg_KEY0~0_combout\ <= NOT \Reset_Reg_KEY0~0_combout\;
\Mem_RAM|ALT_INV_ram~821_combout\ <= NOT \Mem_RAM|ram~821_combout\;
\Mem_RAM|ALT_INV_ram~819_combout\ <= NOT \Mem_RAM|ram~819_combout\;
\Mem_RAM|ALT_INV_ram~817_combout\ <= NOT \Mem_RAM|ram~817_combout\;
\Mem_RAM|ALT_INV_ram~815_combout\ <= NOT \Mem_RAM|ram~815_combout\;
\Mem_RAM|ALT_INV_ram~813_combout\ <= NOT \Mem_RAM|ram~813_combout\;
\Mem_RAM|ALT_INV_ram~811_combout\ <= NOT \Mem_RAM|ram~811_combout\;
\Mem_RAM|ALT_INV_ram~809_combout\ <= NOT \Mem_RAM|ram~809_combout\;
\Mem_RAM|ALT_INV_ram~807_combout\ <= NOT \Mem_RAM|ram~807_combout\;
\Mem_RAM|ALT_INV_ram~805_combout\ <= NOT \Mem_RAM|ram~805_combout\;
\Mem_RAM|ALT_INV_ram~803_combout\ <= NOT \Mem_RAM|ram~803_combout\;
\Mem_RAM|ALT_INV_ram~801_combout\ <= NOT \Mem_RAM|ram~801_combout\;
\Mem_RAM|ALT_INV_ram~799_combout\ <= NOT \Mem_RAM|ram~799_combout\;
\Mem_RAM|ALT_INV_ram~797_combout\ <= NOT \Mem_RAM|ram~797_combout\;
\Mem_RAM|ALT_INV_ram~795_combout\ <= NOT \Mem_RAM|ram~795_combout\;
\Mem_RAM|ALT_INV_ram~793_combout\ <= NOT \Mem_RAM|ram~793_combout\;
\Mem_RAM|ALT_INV_ram~791_combout\ <= NOT \Mem_RAM|ram~791_combout\;
\Mem_RAM|ALT_INV_ram~789_combout\ <= NOT \Mem_RAM|ram~789_combout\;
\Mem_RAM|ALT_INV_ram~787_combout\ <= NOT \Mem_RAM|ram~787_combout\;
\Mem_RAM|ALT_INV_ram~785_combout\ <= NOT \Mem_RAM|ram~785_combout\;
\Mem_RAM|ALT_INV_ram~783_combout\ <= NOT \Mem_RAM|ram~783_combout\;
\Mem_RAM|ALT_INV_ram~781_combout\ <= NOT \Mem_RAM|ram~781_combout\;
\Mem_RAM|ALT_INV_ram~779_combout\ <= NOT \Mem_RAM|ram~779_combout\;
\Mem_RAM|ALT_INV_ram~777_combout\ <= NOT \Mem_RAM|ram~777_combout\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_CLOCK_50~input_o\ <= NOT \CLOCK_50~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_FPGA_RESET_N~input_o\ <= NOT \FPGA_RESET_N~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;

\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regLEDR8bits|DOUT\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regLEDR8bits|DOUT\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regLEDR8bits|DOUT\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regLEDR8bits|DOUT\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regLEDR8bits|DOUT\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regLEDR8bits|DOUT\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regLEDR8bits|DOUT\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regLEDR8bits|DOUT\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regLEDR8|DOUT~q\,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regLEDR9|DOUT~q\,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex0value|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex0value|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex0value|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex0value|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex0value|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex0value|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex0value|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex1value|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex1value|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex1value|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex1value|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex1value|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex1value|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex1value|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex2value|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex2value|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex2value|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex2value|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex2value|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex2value|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex2value|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex3value|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex3value|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex3value|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex3value|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex3value|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex3value|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex3value|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex4value|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex4value|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex4value|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex4value|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex4value|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex4value|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex4value|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex5value|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex5value|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex5value|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex5value|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex5value|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex5value|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Hex5value|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(0),
	devoe => ww_devoe,
	o => \PC_OUT[0]~output_o\);

\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(1),
	devoe => ww_devoe,
	o => \PC_OUT[1]~output_o\);

\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(2),
	devoe => ww_devoe,
	o => \PC_OUT[2]~output_o\);

\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(3),
	devoe => ww_devoe,
	o => \PC_OUT[3]~output_o\);

\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(4),
	devoe => ww_devoe,
	o => \PC_OUT[4]~output_o\);

\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(5),
	devoe => ww_devoe,
	o => \PC_OUT[5]~output_o\);

\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(6),
	devoe => ww_devoe,
	o => \PC_OUT[6]~output_o\);

\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(7),
	devoe => ww_devoe,
	o => \PC_OUT[7]~output_o\);

\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(8),
	devoe => ww_devoe,
	o => \PC_OUT[8]~output_o\);

\Hab_debug[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|flagIgual|DOUT~q\,
	devoe => ww_devoe,
	o => \Hab_debug[0]~output_o\);

\Hab_debug[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ULA1|saida\(0),
	devoe => ww_devoe,
	o => \Hab_debug[1]~output_o\);

\Hab_debug[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ULA1|saida\(1),
	devoe => ww_devoe,
	o => \Hab_debug[2]~output_o\);

\Hab_debug[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ULA1|saida\(2),
	devoe => ww_devoe,
	o => \Hab_debug[3]~output_o\);

\Hab_debug[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ULA1|saida\(3),
	devoe => ww_devoe,
	o => \Hab_debug[4]~output_o\);

\Hab_debug[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ULA1|saida\(4),
	devoe => ww_devoe,
	o => \Hab_debug[5]~output_o\);

\Hab_debug[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ULA1|saida\(5),
	devoe => ww_devoe,
	o => \Hab_debug[6]~output_o\);

\Hab_debug[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ULA1|saida\(6),
	devoe => ww_devoe,
	o => \Hab_debug[7]~output_o\);

\Hab_debug[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ULA1|saida\(7),
	devoe => ww_devoe,
	o => \Hab_debug[8]~output_o\);

\Hab_debug[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Hab_debug[9]~output_o\);

\Hab_debug[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Hab_debug[10]~output_o\);

\Hab_debug[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Hab_debug[11]~output_o\);

\Hab_debug[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Hab_debug[12]~output_o\);

\Hab_debug[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Hab_debug[13]~output_o\);

\Hab_debug[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Hab_debug[14]~output_o\);

\Hab_debug[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Hab_debug[15]~output_o\);

\REG_A_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA|DOUT\(0),
	devoe => ww_devoe,
	o => \REG_A_OUT[0]~output_o\);

\REG_A_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA|DOUT\(1),
	devoe => ww_devoe,
	o => \REG_A_OUT[1]~output_o\);

\REG_A_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA|DOUT\(2),
	devoe => ww_devoe,
	o => \REG_A_OUT[2]~output_o\);

\REG_A_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA|DOUT\(3),
	devoe => ww_devoe,
	o => \REG_A_OUT[3]~output_o\);

\REG_A_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA|DOUT\(4),
	devoe => ww_devoe,
	o => \REG_A_OUT[4]~output_o\);

\REG_A_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA|DOUT\(5),
	devoe => ww_devoe,
	o => \REG_A_OUT[5]~output_o\);

\REG_A_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA|DOUT\(6),
	devoe => ww_devoe,
	o => \REG_A_OUT[6]~output_o\);

\REG_A_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA|DOUT\(7),
	devoe => ww_devoe,
	o => \REG_A_OUT[7]~output_o\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\gravar:detectorSub0|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CLOCK_50~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gravar:detectorSub0|saidaQ~q\);

\gravar:detectorSub0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \gravar:detectorSub0|saida~combout\ = LCELL((\CLOCK_50~input_o\ & !\gravar:detectorSub0|saidaQ~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CLOCK_50~input_o\,
	datab => \gravar:detectorSub0|ALT_INV_saidaQ~q\,
	combout => \gravar:detectorSub0|saida~combout\);

\Mem_ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~0_combout\ = ( \CPU|PC|DOUT\(7) & ( \CPU|PC|DOUT\(0) & ( (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(4)))) ) ) ) # ( !\CPU|PC|DOUT\(7) & ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & 
-- (!\CPU|PC|DOUT\(3) $ (\CPU|PC|DOUT\(4))))) # (\CPU|PC|DOUT\(1) & (((!\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(4))))) ) ) ) # ( \CPU|PC|DOUT\(7) & ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(4)))) ) ) ) # ( 
-- !\CPU|PC|DOUT\(7) & ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) $ (\CPU|PC|DOUT\(4))))) # (\CPU|PC|DOUT\(1) & (((!\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000010000000000000001001110000000000100000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	datae => \CPU|PC|ALT_INV_DOUT\(7),
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \Mem_ROM|memROM~0_combout\);

\Mem_ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~2_combout\ = ( \CPU|PC|DOUT\(3) & ( \CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(4) & \CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(4) & !\CPU|PC|DOUT\(1)))) ) ) ) # ( 
-- !\CPU|PC|DOUT\(3) & ( \CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(1))))) ) ) ) # ( \CPU|PC|DOUT\(3) & ( !\CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(4) & 
-- !\CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(4) & \CPU|PC|DOUT\(1)))) ) ) ) # ( !\CPU|PC|DOUT\(3) & ( !\CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000000000100000000000000110000000010000000100000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \Mem_ROM|memROM~2_combout\);

\Mem_ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~3_combout\ = ( \CPU|PC|DOUT\(0) & ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(2)) # (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(7))))) ) ) ) # ( !\CPU|PC|DOUT\(0) & ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(2) & 
-- (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(7)))) # (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(7)))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(7))))) ) ) ) # ( \CPU|PC|DOUT\(0) & ( !\CPU|PC|DOUT\(4) & ( 
-- (!\CPU|PC|DOUT\(2) & (((\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(7))))) # (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(7)))))) ) ) ) # ( !\CPU|PC|DOUT\(0) & ( !\CPU|PC|DOUT\(4) & ( (\CPU|PC|DOUT\(3) & 
-- (\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000101001111010010000001000010000101001010100010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \Mem_ROM|memROM~3_combout\);

\Mem_ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~4_combout\ = ( \CPU|PC|DOUT\(3) & ( \CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(4)))) ) ) ) # ( !\CPU|PC|DOUT\(3) & ( \CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(4) & 
-- ((\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(4)))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2))))) ) ) ) # ( \CPU|PC|DOUT\(3) & ( !\CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & 
-- (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(4)))) ) ) ) # ( !\CPU|PC|DOUT\(3) & ( !\CPU|PC|DOUT\(7) & ( (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100001000000000000000010000011111101000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \Mem_ROM|memROM~4_combout\);

\Mem_ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~5_combout\ = ( \CPU|PC|DOUT\(6) & ( \CPU|PC|DOUT\(5) & ( \Mem_ROM|memROM~4_combout\ ) ) ) # ( !\CPU|PC|DOUT\(6) & ( \CPU|PC|DOUT\(5) & ( \Mem_ROM|memROM~3_combout\ ) ) ) # ( \CPU|PC|DOUT\(6) & ( !\CPU|PC|DOUT\(5) & ( 
-- \Mem_ROM|memROM~2_combout\ ) ) ) # ( !\CPU|PC|DOUT\(6) & ( !\CPU|PC|DOUT\(5) & ( \Mem_ROM|memROM~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~0_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~2_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~3_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~4_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \Mem_ROM|memROM~5_combout\);

\Mem_ROM|memROM~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~62_combout\ = (!\CPU|PC|DOUT\(8) & \Mem_ROM|memROM~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \Mem_ROM|ALT_INV_memROM~5_combout\,
	combout => \Mem_ROM|memROM~62_combout\);

\CPU|incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~1_sumout\ = SUM(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU|incrementaPC|Add0~2\ = CARRY(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|incrementaPC|Add0~1_sumout\,
	cout => \CPU|incrementaPC|Add0~2\);

\CPU|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))
-- \CPU|incrementaPC|Add0~6\ = CARRY(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	cin => \CPU|incrementaPC|Add0~2\,
	sumout => \CPU|incrementaPC|Add0~5_sumout\,
	cout => \CPU|incrementaPC|Add0~6\);

\CPU|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~9_sumout\ = SUM(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))
-- \CPU|incrementaPC|Add0~10\ = CARRY(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	cin => \CPU|incrementaPC|Add0~6\,
	sumout => \CPU|incrementaPC|Add0~9_sumout\,
	cout => \CPU|incrementaPC|Add0~10\);

\CPU|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~13_sumout\ = SUM(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))
-- \CPU|incrementaPC|Add0~14\ = CARRY(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	cin => \CPU|incrementaPC|Add0~10\,
	sumout => \CPU|incrementaPC|Add0~13_sumout\,
	cout => \CPU|incrementaPC|Add0~14\);

\CPU|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))
-- \CPU|incrementaPC|Add0~18\ = CARRY(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	cin => \CPU|incrementaPC|Add0~14\,
	sumout => \CPU|incrementaPC|Add0~17_sumout\,
	cout => \CPU|incrementaPC|Add0~18\);

\CPU|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~21_sumout\ = SUM(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))
-- \CPU|incrementaPC|Add0~22\ = CARRY(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	cin => \CPU|incrementaPC|Add0~18\,
	sumout => \CPU|incrementaPC|Add0~21_sumout\,
	cout => \CPU|incrementaPC|Add0~22\);

\Mem_ROM|memROM~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~24_combout\ = (!\CPU|PC|DOUT\(8) & (\Mem_ROM|memROM~23_combout\)) # (\CPU|PC|DOUT\(8) & ((\Mem_ROM|memROM~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \Mem_ROM|ALT_INV_memROM~23_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~6_combout\,
	combout => \Mem_ROM|memROM~24_combout\);

\Mem_ROM|memROM~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~30_combout\ = ( \CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(3) & ( (\CPU|PC|DOUT\(5) & ((!\CPU|PC|DOUT\(0)) # ((\CPU|PC|DOUT\(4) & !\CPU|PC|DOUT\(1))))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(3) & ( (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(0) $ 
-- (!\CPU|PC|DOUT\(1)))) ) ) ) # ( \CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(3) & ( (\CPU|PC|DOUT\(5) & ((!\CPU|PC|DOUT\(0)) # (\CPU|PC|DOUT\(1)))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT\(1) & 
-- (!\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(5)))))) # (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001000110010001000100011001100010001001000100010001100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \Mem_ROM|memROM~30_combout\);

\Mem_ROM|memROM~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~31_combout\ = ( \CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(3)) # (!\CPU|PC|DOUT\(0))))) # (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(3) $ (((!\CPU|PC|DOUT\(0)))))) ) ) ) # ( 
-- !\CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(4) & ( (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(5) & ((!\CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(0))))) ) ) ) # ( \CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(5) & 
-- ((!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(0))))) # (\CPU|PC|DOUT\(5) & ((!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0)))))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(3) & 
-- ((!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(5) & ((\CPU|PC|DOUT\(0)))))) # (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(5) $ (!\CPU|PC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000110100110110100010010110000001100000000101101000110100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \Mem_ROM|memROM~31_combout\);

\Mem_ROM|memROM~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~32_combout\ = ( \CPU|PC|DOUT\(1) & ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT\(3) & (((!\CPU|PC|DOUT\(5) & \CPU|PC|DOUT\(0))))) ) ) ) # ( !\CPU|PC|DOUT\(1) & ( 
-- \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(5) & ((\CPU|PC|DOUT\(0)))))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) $ (((\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(0)))))) ) ) ) # ( 
-- \CPU|PC|DOUT\(1) & ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) $ (((!\CPU|PC|DOUT\(0)))))) # (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0)) # (!\CPU|PC|DOUT\(2) $ (!\CPU|PC|DOUT\(5))))) ) ) ) # ( !\CPU|PC|DOUT\(1) & ( !\CPU|PC|DOUT\(4) & ( 
-- (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) $ (!\CPU|PC|DOUT\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100000000000011101111001110001100001001011100000001001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \Mem_ROM|memROM~32_combout\);

\Mem_ROM|memROM~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~33_combout\ = ( \CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(4) $ (!\CPU|PC|DOUT\(0))))) # (\CPU|PC|DOUT\(5) & (((!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(4)))) ) ) ) # 
-- ( !\CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(5) & (((\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(5) & (((!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(4)))) ) ) ) # ( \CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(3) & ( 
-- (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT\(4) & (((!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(5)))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT\(5) & 
-- (!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000100010011010110010001100100111101000100010011000101011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \Mem_ROM|memROM~33_combout\);

\Mem_ROM|memROM~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~34_combout\ = ( \CPU|PC|DOUT\(7) & ( \CPU|PC|DOUT\(6) & ( !\Mem_ROM|memROM~33_combout\ ) ) ) # ( !\CPU|PC|DOUT\(7) & ( \CPU|PC|DOUT\(6) & ( !\Mem_ROM|memROM~32_combout\ ) ) ) # ( \CPU|PC|DOUT\(7) & ( !\CPU|PC|DOUT\(6) & ( 
-- !\Mem_ROM|memROM~31_combout\ ) ) ) # ( !\CPU|PC|DOUT\(7) & ( !\CPU|PC|DOUT\(6) & ( \Mem_ROM|memROM~30_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~30_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~31_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~32_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~33_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(7),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \Mem_ROM|memROM~34_combout\);

\Mem_ROM|memROM~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~35_combout\ = ( !\CPU|PC|DOUT\(1) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \Mem_ROM|memROM~35_combout\);

\Mem_ROM|memROM~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~36_combout\ = ( \CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0)))) ) ) ) # ( 
-- !\CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0)))) ) ) ) # ( \CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(4) & ( (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(1) & 
-- \CPU|PC|DOUT\(0)))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(3) $ (((\CPU|PC|DOUT\(0)))))) # (\CPU|PC|DOUT\(5) & ((!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(3) & 
-- (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100101100100000000000100000000000000000000100001000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \Mem_ROM|memROM~36_combout\);

\Mem_ROM|memROM~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~37_combout\ = ( \CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(5) $ (((\CPU|PC|DOUT\(0)))))) # (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(5) & ((\CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(1) & 
-- !\CPU|PC|DOUT\(0))))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(5) $ (\CPU|PC|DOUT\(0))))) ) ) ) # ( \CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(4) & ( (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) & 
-- (!\CPU|PC|DOUT\(5) $ (!\CPU|PC|DOUT\(1))))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(5) $ (!\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1)) # 
-- (\CPU|PC|DOUT\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000100101000000101000000000000001000000000101000100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \Mem_ROM|memROM~37_combout\);

\Mem_ROM|memROM~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~38_combout\ = ( \CPU|PC|DOUT\(3) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0))))) ) ) ) # ( !\CPU|PC|DOUT\(3) & ( \CPU|PC|DOUT\(5) & ( 
-- (!\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0))))) ) ) ) # ( \CPU|PC|DOUT\(3) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(4) & (((\CPU|PC|DOUT\(1) & 
-- \CPU|PC|DOUT\(0))))) # (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(1) $ (((!\CPU|PC|DOUT\(0)) # (\CPU|PC|DOUT\(2)))))) ) ) ) # ( !\CPU|PC|DOUT\(3) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(4))) # (\CPU|PC|DOUT\(0) & 
-- ((\CPU|PC|DOUT\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000000001010100101100100000000010001000001010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \Mem_ROM|memROM~38_combout\);

\Mem_ROM|memROM~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~39_combout\ = ( \CPU|PC|DOUT\(7) & ( \CPU|PC|DOUT\(6) & ( \Mem_ROM|memROM~38_combout\ ) ) ) # ( !\CPU|PC|DOUT\(7) & ( \CPU|PC|DOUT\(6) & ( \Mem_ROM|memROM~37_combout\ ) ) ) # ( \CPU|PC|DOUT\(7) & ( !\CPU|PC|DOUT\(6) & ( 
-- \Mem_ROM|memROM~36_combout\ ) ) ) # ( !\CPU|PC|DOUT\(7) & ( !\CPU|PC|DOUT\(6) & ( \Mem_ROM|memROM~35_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~35_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~36_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~37_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~38_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(7),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \Mem_ROM|memROM~39_combout\);

\CPU|decoderInstru|saida~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida~6_combout\ = ( \Mem_ROM|memROM~34_combout\ & ( !\Mem_ROM|memROM~39_combout\ & ( (!\CPU|PC|DOUT\(8) & (\Mem_ROM|memROM~24_combout\ & \Mem_ROM|memROM~29_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \Mem_ROM|ALT_INV_memROM~24_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~29_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~34_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~39_combout\,
	combout => \CPU|decoderInstru|saida~6_combout\);

\CPU|enderecoDeRetorno|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \CPU|decoderInstru|saida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|enderecoDeRetorno|DOUT\(5));

\CPU|MUX2|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[5]~5_combout\ = ( \CPU|incrementaPC|Add0~21_sumout\ & ( \CPU|enderecoDeRetorno|DOUT\(5) & ( (((!\CPU|logicaDeDesvio|saida[0]~1_combout\ & !\CPU|logicaDeDesvio|saida[0]~0_combout\)) # (\CPU|decoderInstru|saida~1_combout\)) # 
-- (\Mem_ROM|memROM~62_combout\) ) ) ) # ( !\CPU|incrementaPC|Add0~21_sumout\ & ( \CPU|enderecoDeRetorno|DOUT\(5) & ( ((\Mem_ROM|memROM~62_combout\ & ((\CPU|logicaDeDesvio|saida[0]~0_combout\) # (\CPU|logicaDeDesvio|saida[0]~1_combout\)))) # 
-- (\CPU|decoderInstru|saida~1_combout\) ) ) ) # ( \CPU|incrementaPC|Add0~21_sumout\ & ( !\CPU|enderecoDeRetorno|DOUT\(5) & ( (!\CPU|decoderInstru|saida~1_combout\ & (((!\CPU|logicaDeDesvio|saida[0]~1_combout\ & !\CPU|logicaDeDesvio|saida[0]~0_combout\)) # 
-- (\Mem_ROM|memROM~62_combout\))) ) ) ) # ( !\CPU|incrementaPC|Add0~21_sumout\ & ( !\CPU|enderecoDeRetorno|DOUT\(5) & ( (\Mem_ROM|memROM~62_combout\ & (!\CPU|decoderInstru|saida~1_combout\ & ((\CPU|logicaDeDesvio|saida[0]~0_combout\) # 
-- (\CPU|logicaDeDesvio|saida[0]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000100110001000100010000110111011101111111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~62_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~1_combout\,
	datac => \CPU|logicaDeDesvio|ALT_INV_saida[0]~1_combout\,
	datad => \CPU|logicaDeDesvio|ALT_INV_saida[0]~0_combout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~21_sumout\,
	dataf => \CPU|enderecoDeRetorno|ALT_INV_DOUT\(5),
	combout => \CPU|MUX2|saida_MUX[5]~5_combout\);

\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|MUX2|saida_MUX[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

\Mem_ROM|memROM~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~45_combout\ = ( \CPU|PC|DOUT\(5) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(4)))) ) ) ) # ( !\CPU|PC|DOUT\(5) & ( \CPU|PC|DOUT\(6) & ( (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & 
-- !\CPU|PC|DOUT\(4))) ) ) ) # ( \CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT\(6) & ( (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000001010000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \Mem_ROM|memROM~45_combout\);

\Mem_ROM|memROM~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~46_combout\ = ( \CPU|PC|DOUT\(5) & ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0))))) ) ) ) # ( !\CPU|PC|DOUT\(5) & ( 
-- \CPU|PC|DOUT\(4) & ( (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0))) ) ) ) # ( \CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(6) $ (\CPU|PC|DOUT\(0))))) # (\CPU|PC|DOUT\(3) & 
-- ((!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(6) & \CPU|PC|DOUT\(0))))) ) ) ) # ( !\CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT\(4) & ( (\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(0)))) # 
-- (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000010010010110000000011000000000010100000000010010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \Mem_ROM|memROM~46_combout\);

\Mem_ROM|memROM~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~47_combout\ = ( \CPU|PC|DOUT\(1) & ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(6)))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(5) & \CPU|PC|DOUT\(6)))) ) ) ) # ( 
-- !\CPU|PC|DOUT\(1) & ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(5))))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(5)) # (\CPU|PC|DOUT\(0))))) ) ) ) # ( \CPU|PC|DOUT\(1) & ( 
-- !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(6)))) ) ) ) # ( !\CPU|PC|DOUT\(1) & ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(5) & \CPU|PC|DOUT\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000010000000000000110001100001000000100000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	datae => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \Mem_ROM|memROM~47_combout\);

\Mem_ROM|memROM~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~48_combout\ = ( \CPU|PC|DOUT\(5) & ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0))))) ) ) ) # ( !\CPU|PC|DOUT\(5) & ( 
-- \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(0))))) # (\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) $ (\CPU|PC|DOUT\(1))))) ) ) ) # ( \CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT\(4) & ( 
-- (!\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0))))) ) ) ) # ( !\CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT\(4) & ( (\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(3) & 
-- (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100001000001001000000001100001000001001000000001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \Mem_ROM|memROM~48_combout\);

\Mem_ROM|memROM~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~49_combout\ = ( \CPU|PC|DOUT\(7) & ( \CPU|PC|DOUT\(2) & ( \Mem_ROM|memROM~48_combout\ ) ) ) # ( !\CPU|PC|DOUT\(7) & ( \CPU|PC|DOUT\(2) & ( \Mem_ROM|memROM~47_combout\ ) ) ) # ( \CPU|PC|DOUT\(7) & ( !\CPU|PC|DOUT\(2) & ( 
-- \Mem_ROM|memROM~46_combout\ ) ) ) # ( !\CPU|PC|DOUT\(7) & ( !\CPU|PC|DOUT\(2) & ( \Mem_ROM|memROM~45_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~45_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~46_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~47_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~48_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(7),
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \Mem_ROM|memROM~49_combout\);

\Mem_ROM|memROM~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~50_combout\ = (!\CPU|PC|DOUT\(8) & \Mem_ROM|memROM~49_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \Mem_ROM|ALT_INV_memROM~49_combout\,
	combout => \Mem_ROM|memROM~50_combout\);

\CPU|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))
-- \CPU|incrementaPC|Add0~26\ = CARRY(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	cin => \CPU|incrementaPC|Add0~22\,
	sumout => \CPU|incrementaPC|Add0~25_sumout\,
	cout => \CPU|incrementaPC|Add0~26\);

\CPU|enderecoDeRetorno|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \CPU|decoderInstru|saida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|enderecoDeRetorno|DOUT\(6));

\CPU|MUX2|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[6]~6_combout\ = ( \CPU|incrementaPC|Add0~25_sumout\ & ( \CPU|enderecoDeRetorno|DOUT\(6) & ( (((!\CPU|logicaDeDesvio|saida[0]~1_combout\ & !\CPU|logicaDeDesvio|saida[0]~0_combout\)) # (\CPU|decoderInstru|saida~1_combout\)) # 
-- (\Mem_ROM|memROM~50_combout\) ) ) ) # ( !\CPU|incrementaPC|Add0~25_sumout\ & ( \CPU|enderecoDeRetorno|DOUT\(6) & ( ((\Mem_ROM|memROM~50_combout\ & ((\CPU|logicaDeDesvio|saida[0]~0_combout\) # (\CPU|logicaDeDesvio|saida[0]~1_combout\)))) # 
-- (\CPU|decoderInstru|saida~1_combout\) ) ) ) # ( \CPU|incrementaPC|Add0~25_sumout\ & ( !\CPU|enderecoDeRetorno|DOUT\(6) & ( (!\CPU|decoderInstru|saida~1_combout\ & (((!\CPU|logicaDeDesvio|saida[0]~1_combout\ & !\CPU|logicaDeDesvio|saida[0]~0_combout\)) # 
-- (\Mem_ROM|memROM~50_combout\))) ) ) ) # ( !\CPU|incrementaPC|Add0~25_sumout\ & ( !\CPU|enderecoDeRetorno|DOUT\(6) & ( (\Mem_ROM|memROM~50_combout\ & (!\CPU|decoderInstru|saida~1_combout\ & ((\CPU|logicaDeDesvio|saida[0]~0_combout\) # 
-- (\CPU|logicaDeDesvio|saida[0]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000100110001000100010000110111011101111111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~50_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~1_combout\,
	datac => \CPU|logicaDeDesvio|ALT_INV_saida[0]~1_combout\,
	datad => \CPU|logicaDeDesvio|ALT_INV_saida[0]~0_combout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~25_sumout\,
	dataf => \CPU|enderecoDeRetorno|ALT_INV_DOUT\(6),
	combout => \CPU|MUX2|saida_MUX[6]~6_combout\);

\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|MUX2|saida_MUX[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

\Mem_ROM|memROM~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~25_combout\ = ( \CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT\(7) & \CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(6) $ (!\CPU|PC|DOUT\(7))))) ) ) ) # ( 
-- !\CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(3) & ( (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(7)))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(6))))) ) ) ) # ( \CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(7) & (\CPU|PC|DOUT\(6) & 
-- (!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(6) $ (!\CPU|PC|DOUT\(0))))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) $ 
-- (\CPU|PC|DOUT\(0))))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(6) $ (!\CPU|PC|DOUT\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000101100000010100100000010000000000001101010000011000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(6),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \Mem_ROM|memROM~25_combout\);

\Mem_ROM|memROM~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~26_combout\ = ( \CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(1) & (((\CPU|PC|DOUT\(7) & \CPU|PC|DOUT\(0))))) # (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) $ (\CPU|PC|DOUT\(0))))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( 
-- \CPU|PC|DOUT\(3) & ( (\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(7) & (\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(0))))) ) ) ) # ( \CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(7) & (\CPU|PC|DOUT\(6) & 
-- (!\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT\(7) & (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(6) $ (!\CPU|PC|DOUT\(1))))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(0) & 
-- !\CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000101000000010100001000010100000100000000001101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(6),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \Mem_ROM|memROM~26_combout\);

\Mem_ROM|memROM~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~27_combout\ = ( \CPU|PC|DOUT\(6) & ( \CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(0)))))) # (\CPU|PC|DOUT\(3) & 
-- ((!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0))))) ) ) ) # ( !\CPU|PC|DOUT\(6) & ( \CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) $ 
-- (\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) $ (\CPU|PC|DOUT\(1))))) ) ) ) # ( \CPU|PC|DOUT\(6) & ( !\CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2) $ (!\CPU|PC|DOUT\(0))))) # (\CPU|PC|DOUT\(1) & 
-- (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(0)))) ) ) ) # ( !\CPU|PC|DOUT\(6) & ( !\CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) & 
-- (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101001000000001100001100000110000010010000010010100101000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \Mem_ROM|memROM~27_combout\);

\Mem_ROM|memROM~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~28_combout\ = ( \CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(1))))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(3) & ( 
-- (!\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(7) & (\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(1)))))) # (\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(1)))) ) ) ) # ( 
-- \CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(1)))))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(6) & 
-- (\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000010000000000110000101000010000101000100000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(6),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \Mem_ROM|memROM~28_combout\);

\Mem_ROM|memROM~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~29_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( \Mem_ROM|memROM~28_combout\ ) ) ) # ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( \Mem_ROM|memROM~27_combout\ ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( 
-- \Mem_ROM|memROM~26_combout\ ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( \Mem_ROM|memROM~25_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~25_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~26_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~27_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~28_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \Mem_ROM|memROM~29_combout\);

\CPU|logicaDeDesvio|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|logicaDeDesvio|saida[0]~0_combout\ = ( !\Mem_ROM|memROM~39_combout\ & ( (!\CPU|PC|DOUT\(8) & (\Mem_ROM|memROM~23_combout\ & (\Mem_ROM|memROM~29_combout\ & \Mem_ROM|memROM~34_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \Mem_ROM|ALT_INV_memROM~23_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~29_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~34_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~39_combout\,
	combout => \CPU|logicaDeDesvio|saida[0]~0_combout\);

\Mem_ROM|memROM~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~63_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(6) $ (((\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(3)))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(6) & 
-- (!\CPU|PC|DOUT\(7) $ (\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (((\CPU|PC|DOUT\(7) & !\CPU|PC|DOUT\(3))))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7)))) # (\CPU|PC|DOUT\(0) & 
-- ((!\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(7) & (\CPU|PC|DOUT\(6) & \CPU|PC|DOUT\(3))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(6) $ (\CPU|PC|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000001001110100001000000100100101000000101001000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \Mem_ROM|memROM~63_combout\);

\Mem_ROM|memROM~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~64_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(6))))) # (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(7))) # (\CPU|PC|DOUT\(6)))) ) ) ) # 
-- ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(6) $ (\CPU|PC|DOUT\(7))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT\(7) & !\CPU|PC|DOUT\(3)))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( 
-- !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(3) $ (((!\CPU|PC|DOUT\(0)) # (!\CPU|PC|DOUT\(6)))))) # (\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(6)))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( 
-- !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(6) & ((\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7))))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(6) $ (\CPU|PC|DOUT\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011101001000111001110101000000100100000101001000001111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \Mem_ROM|memROM~64_combout\);

\Mem_ROM|memROM~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~65_combout\ = ( \CPU|PC|DOUT\(0) & ( \CPU|PC|DOUT\(4) & ( (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) $ (\CPU|PC|DOUT\(5))))) ) ) ) # ( !\CPU|PC|DOUT\(0) & ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(7) & 
-- ((!\CPU|PC|DOUT\(6)) # (\CPU|PC|DOUT\(5)))) # (\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(5)))))) # (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(7) & (\CPU|PC|DOUT\(6) & \CPU|PC|DOUT\(5)))) ) ) ) # ( \CPU|PC|DOUT\(0) & ( !\CPU|PC|DOUT\(4) & ( (\CPU|PC|DOUT\(3) & 
-- ((!\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(5)))) # (\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) & \CPU|PC|DOUT\(5))))) ) ) ) # ( !\CPU|PC|DOUT\(0) & ( !\CPU|PC|DOUT\(4) & ( (\CPU|PC|DOUT\(5) & ((!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(7) & \CPU|PC|DOUT\(6))) # 
-- (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000110010100000000010010100010100010010000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	datae => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \Mem_ROM|memROM~65_combout\);

\Mem_ROM|memROM~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~66_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(3) $ (((!\CPU|PC|DOUT\(0)) # (\CPU|PC|DOUT\(6)))))) ) ) ) # 
-- ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(7)) # (\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(6) & (((!\CPU|PC|DOUT\(3))))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & 
-- (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) & \CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(6) $ (\CPU|PC|DOUT\(7))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(7) & (((!\CPU|PC|DOUT\(6) & 
-- \CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(7) & (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111000000010000011000000010110011100010000010010000001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \Mem_ROM|memROM~66_combout\);

\Mem_ROM|memROM~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~67_combout\ = ( \CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(1) & ( \Mem_ROM|memROM~66_combout\ ) ) ) # ( !\CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(1) & ( \Mem_ROM|memROM~65_combout\ ) ) ) # ( \CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(1) & ( 
-- \Mem_ROM|memROM~64_combout\ ) ) ) # ( !\CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(1) & ( \Mem_ROM|memROM~63_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~63_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~64_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~65_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~66_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \Mem_ROM|memROM~67_combout\);

\Mem_ROM|memROM~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~68_combout\ = (!\CPU|PC|DOUT\(8) & ((\Mem_ROM|memROM~67_combout\))) # (\CPU|PC|DOUT\(8) & (\Mem_ROM|memROM~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \Mem_ROM|ALT_INV_memROM~6_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~67_combout\,
	combout => \Mem_ROM|memROM~68_combout\);

\CPU|enderecoDeRetorno|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \CPU|decoderInstru|saida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|enderecoDeRetorno|DOUT\(3));

\CPU|MUX2|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[3]~3_combout\ = ( \Mem_ROM|memROM~68_combout\ & ( \CPU|enderecoDeRetorno|DOUT\(3) & ( (((\CPU|incrementaPC|Add0~13_sumout\) # (\CPU|logicaDeDesvio|saida[0]~0_combout\)) # (\CPU|logicaDeDesvio|saida[0]~1_combout\)) # 
-- (\CPU|decoderInstru|saida~1_combout\) ) ) ) # ( !\Mem_ROM|memROM~68_combout\ & ( \CPU|enderecoDeRetorno|DOUT\(3) & ( ((!\CPU|logicaDeDesvio|saida[0]~1_combout\ & (!\CPU|logicaDeDesvio|saida[0]~0_combout\ & \CPU|incrementaPC|Add0~13_sumout\))) # 
-- (\CPU|decoderInstru|saida~1_combout\) ) ) ) # ( \Mem_ROM|memROM~68_combout\ & ( !\CPU|enderecoDeRetorno|DOUT\(3) & ( (!\CPU|decoderInstru|saida~1_combout\ & (((\CPU|incrementaPC|Add0~13_sumout\) # (\CPU|logicaDeDesvio|saida[0]~0_combout\)) # 
-- (\CPU|logicaDeDesvio|saida[0]~1_combout\))) ) ) ) # ( !\Mem_ROM|memROM~68_combout\ & ( !\CPU|enderecoDeRetorno|DOUT\(3) & ( (!\CPU|decoderInstru|saida~1_combout\ & (!\CPU|logicaDeDesvio|saida[0]~1_combout\ & (!\CPU|logicaDeDesvio|saida[0]~0_combout\ & 
-- \CPU|incrementaPC|Add0~13_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000001010101010101001010101110101010111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~1_combout\,
	datab => \CPU|logicaDeDesvio|ALT_INV_saida[0]~1_combout\,
	datac => \CPU|logicaDeDesvio|ALT_INV_saida[0]~0_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~13_sumout\,
	datae => \Mem_ROM|ALT_INV_memROM~68_combout\,
	dataf => \CPU|enderecoDeRetorno|ALT_INV_DOUT\(3),
	combout => \CPU|MUX2|saida_MUX[3]~3_combout\);

\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|MUX2|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

\Mem_ROM|memROM~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~51_combout\ = ( !\CPU|PC|DOUT\(5) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(2)))) ) ) ) # ( \CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT\(6) & ( (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(4) & 
-- \CPU|PC|DOUT\(0))) ) ) ) # ( !\CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT\(6) & ( (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(4) & \CPU|PC|DOUT\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000010000000100000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \Mem_ROM|memROM~51_combout\);

\Mem_ROM|memROM~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~52_combout\ = ( \CPU|PC|DOUT\(5) & ( \CPU|PC|DOUT\(4) & ( (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(0)))) ) ) ) # ( !\CPU|PC|DOUT\(5) & ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(3) & 
-- (\CPU|PC|DOUT\(6) & \CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) $ (!\CPU|PC|DOUT\(6))))) ) ) ) # ( \CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(3) & (((!\CPU|PC|DOUT\(6) & \CPU|PC|DOUT\(0))))) # 
-- (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(0)))) ) ) ) # ( !\CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(6) & 
-- (!\CPU|PC|DOUT\(3) $ (!\CPU|PC|DOUT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000110000001001010000000010010000001000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \Mem_ROM|memROM~52_combout\);

\Mem_ROM|memROM~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~53_combout\ = ( !\CPU|PC|DOUT\(5) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \Mem_ROM|memROM~53_combout\);

\Mem_ROM|memROM~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~54_combout\ = ( \CPU|PC|DOUT\(5) & ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(6) & \CPU|PC|DOUT\(0))) ) ) ) # ( !\CPU|PC|DOUT\(5) & ( \CPU|PC|DOUT\(4) & ( (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(6) & 
-- !\CPU|PC|DOUT\(0)))) ) ) ) # ( \CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(6) & \CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT\(3) & (((!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(0))))) ) ) ) # ( !\CPU|PC|DOUT\(5) & ( 
-- !\CPU|PC|DOUT\(4) & ( (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) $ (\CPU|PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000001010100000000100000000001000000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \Mem_ROM|memROM~54_combout\);

\Mem_ROM|memROM~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~55_combout\ = ( \CPU|PC|DOUT\(7) & ( \CPU|PC|DOUT\(1) & ( \Mem_ROM|memROM~54_combout\ ) ) ) # ( !\CPU|PC|DOUT\(7) & ( \CPU|PC|DOUT\(1) & ( \Mem_ROM|memROM~53_combout\ ) ) ) # ( \CPU|PC|DOUT\(7) & ( !\CPU|PC|DOUT\(1) & ( 
-- \Mem_ROM|memROM~52_combout\ ) ) ) # ( !\CPU|PC|DOUT\(7) & ( !\CPU|PC|DOUT\(1) & ( \Mem_ROM|memROM~51_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~51_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~52_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~53_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~54_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(7),
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \Mem_ROM|memROM~55_combout\);

\Mem_ROM|memROM~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~75_combout\ = (!\CPU|PC|DOUT\(8) & \Mem_ROM|memROM~55_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \Mem_ROM|ALT_INV_memROM~55_combout\,
	combout => \Mem_ROM|memROM~75_combout\);

\CPU|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))
-- \CPU|incrementaPC|Add0~30\ = CARRY(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	cin => \CPU|incrementaPC|Add0~26\,
	sumout => \CPU|incrementaPC|Add0~29_sumout\,
	cout => \CPU|incrementaPC|Add0~30\);

\CPU|enderecoDeRetorno|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \CPU|decoderInstru|saida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|enderecoDeRetorno|DOUT\(7));

\CPU|MUX2|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[7]~7_combout\ = ( \CPU|incrementaPC|Add0~29_sumout\ & ( \CPU|enderecoDeRetorno|DOUT\(7) & ( (((!\CPU|logicaDeDesvio|saida[0]~1_combout\ & !\CPU|logicaDeDesvio|saida[0]~0_combout\)) # (\CPU|decoderInstru|saida~1_combout\)) # 
-- (\Mem_ROM|memROM~75_combout\) ) ) ) # ( !\CPU|incrementaPC|Add0~29_sumout\ & ( \CPU|enderecoDeRetorno|DOUT\(7) & ( ((\Mem_ROM|memROM~75_combout\ & ((\CPU|logicaDeDesvio|saida[0]~0_combout\) # (\CPU|logicaDeDesvio|saida[0]~1_combout\)))) # 
-- (\CPU|decoderInstru|saida~1_combout\) ) ) ) # ( \CPU|incrementaPC|Add0~29_sumout\ & ( !\CPU|enderecoDeRetorno|DOUT\(7) & ( (!\CPU|decoderInstru|saida~1_combout\ & (((!\CPU|logicaDeDesvio|saida[0]~1_combout\ & !\CPU|logicaDeDesvio|saida[0]~0_combout\)) # 
-- (\Mem_ROM|memROM~75_combout\))) ) ) ) # ( !\CPU|incrementaPC|Add0~29_sumout\ & ( !\CPU|enderecoDeRetorno|DOUT\(7) & ( (\Mem_ROM|memROM~75_combout\ & (!\CPU|decoderInstru|saida~1_combout\ & ((\CPU|logicaDeDesvio|saida[0]~0_combout\) # 
-- (\CPU|logicaDeDesvio|saida[0]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000100110001000100010000110111011101111111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~75_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~1_combout\,
	datac => \CPU|logicaDeDesvio|ALT_INV_saida[0]~1_combout\,
	datad => \CPU|logicaDeDesvio|ALT_INV_saida[0]~0_combout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	dataf => \CPU|enderecoDeRetorno|ALT_INV_DOUT\(7),
	combout => \CPU|MUX2|saida_MUX[7]~7_combout\);

\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|MUX2|saida_MUX[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

\Mem_ROM|memROM~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~56_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(1)) # (!\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) $ (((!\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(7)))))) ) ) 
-- ) # ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2) & ((\CPU|PC|DOUT\(7)))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1))))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(7)) # 
-- ((\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(1)) # (!\CPU|PC|DOUT\(2))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(7) & (((\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(2))))) # 
-- (\CPU|PC|DOUT\(7) & (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000001111111100010000000000100010101001011110000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \Mem_ROM|memROM~56_combout\);

\Mem_ROM|memROM~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~57_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(7)) # (\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) $ (\CPU|PC|DOUT\(7))))) ) ) ) # ( 
-- !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(7))))) # (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(7))))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( 
-- (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(7))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) $ 
-- (!\CPU|PC|DOUT\(7))))) # (\CPU|PC|DOUT\(0) & (((!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100010000000000010000001100100000001010100100110001000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \Mem_ROM|memROM~57_combout\);

\Mem_ROM|memROM~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~58_combout\ = ( \CPU|PC|DOUT\(0) & ( \CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(4)))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(4))))) ) ) ) # ( !\CPU|PC|DOUT\(0) & ( \CPU|PC|DOUT\(2) & 
-- ( (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(7))) # (\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT\(5)))))) # (\CPU|PC|DOUT\(1) & (((\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(4))))) ) ) ) # ( \CPU|PC|DOUT\(0) & ( !\CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT\(7) & 
-- (!\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(4)))) ) ) ) # ( !\CPU|PC|DOUT\(0) & ( !\CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(4)))) # (\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(1) & 
-- !\CPU|PC|DOUT\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100000100000001000000000001010011110000000000100010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	datae => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \Mem_ROM|memROM~58_combout\);

\Mem_ROM|memROM~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~59_combout\ = ( \CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(7) & (\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(5) $ (\CPU|PC|DOUT\(1)))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(4) & ( 
-- (\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0)))) ) ) ) # ( \CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(4) & ( 
-- (!\CPU|PC|DOUT\(7) & (\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000010000011000000000001000000000000000110000101100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \Mem_ROM|memROM~59_combout\);

\Mem_ROM|memROM~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~60_combout\ = ( \CPU|PC|DOUT\(6) & ( \CPU|PC|DOUT\(3) & ( \Mem_ROM|memROM~59_combout\ ) ) ) # ( !\CPU|PC|DOUT\(6) & ( \CPU|PC|DOUT\(3) & ( \Mem_ROM|memROM~58_combout\ ) ) ) # ( \CPU|PC|DOUT\(6) & ( !\CPU|PC|DOUT\(3) & ( 
-- \Mem_ROM|memROM~57_combout\ ) ) ) # ( !\CPU|PC|DOUT\(6) & ( !\CPU|PC|DOUT\(3) & ( \Mem_ROM|memROM~56_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~56_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~57_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~58_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~59_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \Mem_ROM|memROM~60_combout\);

\Mem_ROM|memROM~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~61_combout\ = (!\CPU|PC|DOUT\(8) & ((\Mem_ROM|memROM~60_combout\))) # (\CPU|PC|DOUT\(8) & (\Mem_ROM|memROM~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \Mem_ROM|ALT_INV_memROM~6_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~60_combout\,
	combout => \Mem_ROM|memROM~61_combout\);

\CPU|enderecoDeRetorno|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \CPU|decoderInstru|saida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|enderecoDeRetorno|DOUT\(2));

\CPU|MUX2|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[2]~2_combout\ = ( \CPU|incrementaPC|Add0~9_sumout\ & ( \CPU|enderecoDeRetorno|DOUT\(2) & ( (((!\CPU|logicaDeDesvio|saida[0]~1_combout\ & !\CPU|logicaDeDesvio|saida[0]~0_combout\)) # (\CPU|decoderInstru|saida~1_combout\)) # 
-- (\Mem_ROM|memROM~61_combout\) ) ) ) # ( !\CPU|incrementaPC|Add0~9_sumout\ & ( \CPU|enderecoDeRetorno|DOUT\(2) & ( ((\Mem_ROM|memROM~61_combout\ & ((\CPU|logicaDeDesvio|saida[0]~0_combout\) # (\CPU|logicaDeDesvio|saida[0]~1_combout\)))) # 
-- (\CPU|decoderInstru|saida~1_combout\) ) ) ) # ( \CPU|incrementaPC|Add0~9_sumout\ & ( !\CPU|enderecoDeRetorno|DOUT\(2) & ( (!\CPU|decoderInstru|saida~1_combout\ & (((!\CPU|logicaDeDesvio|saida[0]~1_combout\ & !\CPU|logicaDeDesvio|saida[0]~0_combout\)) # 
-- (\Mem_ROM|memROM~61_combout\))) ) ) ) # ( !\CPU|incrementaPC|Add0~9_sumout\ & ( !\CPU|enderecoDeRetorno|DOUT\(2) & ( (\Mem_ROM|memROM~61_combout\ & (!\CPU|decoderInstru|saida~1_combout\ & ((\CPU|logicaDeDesvio|saida[0]~0_combout\) # 
-- (\CPU|logicaDeDesvio|saida[0]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000100110001000100010000110111011101111111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~1_combout\,
	datac => \CPU|logicaDeDesvio|ALT_INV_saida[0]~1_combout\,
	datad => \CPU|logicaDeDesvio|ALT_INV_saida[0]~0_combout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~9_sumout\,
	dataf => \CPU|enderecoDeRetorno|ALT_INV_DOUT\(2),
	combout => \CPU|MUX2|saida_MUX[2]~2_combout\);

\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|MUX2|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

\Mem_ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~1_combout\ = (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(4) & !\CPU|PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \Mem_ROM|memROM~1_combout\);

\Mem_ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~6_combout\ = (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & \Mem_ROM|memROM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \Mem_ROM|ALT_INV_memROM~1_combout\,
	combout => \Mem_ROM|memROM~6_combout\);

\Mem_ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~7_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) $ (((!\CPU|PC|DOUT\(7)) # (!\CPU|PC|DOUT\(3)))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(7) $ (((\CPU|PC|DOUT\(3)))))) ) ) ) # ( 
-- !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(7) $ (!\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(7) & ((\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2))))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( 
-- !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(0) & (((\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(7) & 
-- (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(0))))) # (\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000100110010001000000111000101001000100010100111000111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \Mem_ROM|memROM~7_combout\);

\Mem_ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~8_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(7))))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(3) & ((\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(7))))) ) ) ) # ( 
-- !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(7) $ (!\CPU|PC|DOUT\(3))))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(2) $ 
-- (!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(7) $ (\CPU|PC|DOUT\(2))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(0) & (((\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & 
-- (!\CPU|PC|DOUT\(3) & ((\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100001010010010011000000010010000011000000000101000010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \Mem_ROM|memROM~8_combout\);

\Mem_ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~9_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(2) & ((\CPU|PC|DOUT\(3)))))) # (\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & 
-- !\CPU|PC|DOUT\(3)))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(7) & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) & 
-- ((!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(0)) # (\CPU|PC|DOUT\(3))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(7)) # (!\CPU|PC|DOUT\(2))))) # 
-- (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(2) $ (!\CPU|PC|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110111000101010000000110000000000000010000110000001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \Mem_ROM|memROM~9_combout\);

\Mem_ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~10_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(6) & ( (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(7))) # (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(7))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( 
-- \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(0))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(7) & !\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(2) & 
-- (\CPU|PC|DOUT\(7) & \CPU|PC|DOUT\(0))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(6) & ( (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) $ (((\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(7)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010100010000100000000000001000100010000000000000000000011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \Mem_ROM|memROM~10_combout\);

\Mem_ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~11_combout\ = ( \CPU|PC|DOUT\(5) & ( \CPU|PC|DOUT\(1) & ( \Mem_ROM|memROM~10_combout\ ) ) ) # ( !\CPU|PC|DOUT\(5) & ( \CPU|PC|DOUT\(1) & ( \Mem_ROM|memROM~9_combout\ ) ) ) # ( \CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT\(1) & ( 
-- \Mem_ROM|memROM~8_combout\ ) ) ) # ( !\CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT\(1) & ( \Mem_ROM|memROM~7_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~7_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~8_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~9_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~10_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \Mem_ROM|memROM~11_combout\);

\Mem_ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~12_combout\ = (!\CPU|PC|DOUT\(8) & ((\Mem_ROM|memROM~11_combout\))) # (\CPU|PC|DOUT\(8) & (\Mem_ROM|memROM~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \Mem_ROM|ALT_INV_memROM~6_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~11_combout\,
	combout => \Mem_ROM|memROM~12_combout\);

\CPU|enderecoDeRetorno|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \CPU|decoderInstru|saida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|enderecoDeRetorno|DOUT\(1));

\CPU|MUX2|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[1]~1_combout\ = ( \CPU|incrementaPC|Add0~5_sumout\ & ( \CPU|enderecoDeRetorno|DOUT\(1) & ( (((!\CPU|logicaDeDesvio|saida[0]~1_combout\ & !\CPU|logicaDeDesvio|saida[0]~0_combout\)) # (\CPU|decoderInstru|saida~1_combout\)) # 
-- (\Mem_ROM|memROM~12_combout\) ) ) ) # ( !\CPU|incrementaPC|Add0~5_sumout\ & ( \CPU|enderecoDeRetorno|DOUT\(1) & ( ((\Mem_ROM|memROM~12_combout\ & ((\CPU|logicaDeDesvio|saida[0]~0_combout\) # (\CPU|logicaDeDesvio|saida[0]~1_combout\)))) # 
-- (\CPU|decoderInstru|saida~1_combout\) ) ) ) # ( \CPU|incrementaPC|Add0~5_sumout\ & ( !\CPU|enderecoDeRetorno|DOUT\(1) & ( (!\CPU|decoderInstru|saida~1_combout\ & (((!\CPU|logicaDeDesvio|saida[0]~1_combout\ & !\CPU|logicaDeDesvio|saida[0]~0_combout\)) # 
-- (\Mem_ROM|memROM~12_combout\))) ) ) ) # ( !\CPU|incrementaPC|Add0~5_sumout\ & ( !\CPU|enderecoDeRetorno|DOUT\(1) & ( (\Mem_ROM|memROM~12_combout\ & (!\CPU|decoderInstru|saida~1_combout\ & ((\CPU|logicaDeDesvio|saida[0]~0_combout\) # 
-- (\CPU|logicaDeDesvio|saida[0]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000100110001000100010000110111011101111111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~1_combout\,
	datac => \CPU|logicaDeDesvio|ALT_INV_saida[0]~1_combout\,
	datad => \CPU|logicaDeDesvio|ALT_INV_saida[0]~0_combout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~5_sumout\,
	dataf => \CPU|enderecoDeRetorno|ALT_INV_DOUT\(1),
	combout => \CPU|MUX2|saida_MUX[1]~1_combout\);

\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|MUX2|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

\Mem_ROM|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~19_combout\ = ( \CPU|PC|DOUT\(7) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(0))))) ) ) ) # ( 
-- !\CPU|PC|DOUT\(7) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2)) # ((!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(2))))) ) ) ) # ( \CPU|PC|DOUT\(7) & ( 
-- !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(2)))))) ) ) ) # ( !\CPU|PC|DOUT\(7) & ( 
-- !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000001111000110011111101001110000001000001101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(7),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \Mem_ROM|memROM~19_combout\);

\Mem_ROM|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~20_combout\ = ( \CPU|PC|DOUT\(7) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) $ (((!\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(1)))))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(3))))) ) ) ) 
-- # ( !\CPU|PC|DOUT\(7) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2) $ (!\CPU|PC|DOUT\(3))))) ) ) ) # ( \CPU|PC|DOUT\(7) & ( !\CPU|PC|DOUT\(5) & ( 
-- (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) $ (((\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(3)))))) # (\CPU|PC|DOUT\(2) & (((\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(0)))) ) ) ) # ( !\CPU|PC|DOUT\(7) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & 
-- (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (((!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100000001010100101111100010110000111001100000101001010011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(7),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \Mem_ROM|memROM~20_combout\);

\Mem_ROM|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~21_combout\ = ( \CPU|PC|DOUT\(7) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1)) # (!\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(3)))))) ) ) ) # ( !\CPU|PC|DOUT\(7) & ( 
-- \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(2) & (((\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1))))) ) ) ) # ( \CPU|PC|DOUT\(7) & ( !\CPU|PC|DOUT\(5) & ( 
-- (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) $ ((\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(3))))) ) ) ) # ( !\CPU|PC|DOUT\(7) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & 
-- \CPU|PC|DOUT\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010100000111000011000000001001110111010000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(7),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \Mem_ROM|memROM~21_combout\);

\Mem_ROM|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~22_combout\ = ( \CPU|PC|DOUT\(7) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) ) ) ) # ( !\CPU|PC|DOUT\(7) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) $ 
-- (((!\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(1)))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) $ (((!\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2)))))) ) ) ) # ( \CPU|PC|DOUT\(7) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) $ (((\CPU|PC|DOUT\(1) & 
-- !\CPU|PC|DOUT\(3)))))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(3)))))) ) ) ) # ( !\CPU|PC|DOUT\(7) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & 
-- ((!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2)))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) $ (((!\CPU|PC|DOUT\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001111000110110101101011010100011001111000111000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(7),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \Mem_ROM|memROM~22_combout\);

\Mem_ROM|memROM~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~23_combout\ = ( \CPU|PC|DOUT\(6) & ( \CPU|PC|DOUT\(4) & ( !\Mem_ROM|memROM~22_combout\ ) ) ) # ( !\CPU|PC|DOUT\(6) & ( \CPU|PC|DOUT\(4) & ( !\Mem_ROM|memROM~21_combout\ ) ) ) # ( \CPU|PC|DOUT\(6) & ( !\CPU|PC|DOUT\(4) & ( 
-- \Mem_ROM|memROM~20_combout\ ) ) ) # ( !\CPU|PC|DOUT\(6) & ( !\CPU|PC|DOUT\(4) & ( !\Mem_ROM|memROM~19_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010001100110011001111110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~19_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~20_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~21_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~22_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \Mem_ROM|memROM~23_combout\);

\CPU|decoderInstru|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida~2_combout\ = ( \Mem_ROM|memROM~34_combout\ & ( (!\CPU|PC|DOUT\(8) & (!\Mem_ROM|memROM~24_combout\ & \Mem_ROM|memROM~29_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010000000000000000000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \Mem_ROM|ALT_INV_memROM~24_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~29_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~34_combout\,
	combout => \CPU|decoderInstru|saida~2_combout\);

\CPU|decoderInstru|saida[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida[0]~4_combout\ = ( \Mem_ROM|memROM~39_combout\ & ( (\CPU|PC|DOUT\(8) & \Mem_ROM|memROM~6_combout\) ) ) # ( !\Mem_ROM|memROM~39_combout\ & ( (!\CPU|PC|DOUT\(8) & (((!\Mem_ROM|memROM~29_combout\ & !\Mem_ROM|memROM~34_combout\)))) # 
-- (\CPU|PC|DOUT\(8) & (\Mem_ROM|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000100010001000100010001000110110001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \Mem_ROM|ALT_INV_memROM~6_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~29_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~34_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~39_combout\,
	combout => \CPU|decoderInstru|saida[0]~4_combout\);

\habSW7dt0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habSW7dt0~0_combout\ = (!\Mem_ROM|memROM~12_combout\ & (!\Mem_ROM|memROM~18_combout\ & ((!\Mem_ROM|memROM~5_combout\) # (\CPU|PC|DOUT\(8)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000000000000110100000000000011010000000000001101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \Mem_ROM|ALT_INV_memROM~5_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~18_combout\,
	combout => \habSW7dt0~0_combout\);

\CPU|decoderInstru|saida[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida[1]~3_combout\ = ( \Mem_ROM|memROM~23_combout\ & ( (!\CPU|PC|DOUT\(8) & (!\Mem_ROM|memROM~29_combout\ & \Mem_ROM|memROM~34_combout\)) ) ) # ( !\Mem_ROM|memROM~23_combout\ & ( (!\CPU|PC|DOUT\(8) & (\Mem_ROM|memROM~34_combout\ & 
-- (!\Mem_ROM|memROM~29_combout\ $ (!\Mem_ROM|memROM~39_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000001000000010000000100000000010000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \Mem_ROM|ALT_INV_memROM~29_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~34_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~39_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~23_combout\,
	combout => \CPU|decoderInstru|saida[1]~3_combout\);

\decoder3x8MS|saida[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder3x8MS|saida[5]~0_combout\ = (!\CPU|PC|DOUT\(8) & (\Mem_ROM|memROM~44_combout\ & \Mem_ROM|memROM~49_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \Mem_ROM|ALT_INV_memROM~44_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~49_combout\,
	combout => \decoder3x8MS|saida[5]~0_combout\);

\habSW7dt0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \habSW7dt0~1_combout\ = ( \decoder3x8MS|saida[5]~0_combout\ & ( (!\Mem_ROM|memROM~75_combout\ & (!\Mem_ROM|memROM~61_combout\ & (\habSW7dt0~0_combout\ & \CPU|decoderInstru|saida[1]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~75_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datac => \ALT_INV_habSW7dt0~0_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida[1]~3_combout\,
	datae => \decoder3x8MS|ALT_INV_saida[5]~0_combout\,
	combout => \habSW7dt0~1_combout\);

\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\CPU|ULA1|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal3~0_combout\ = ( \Mem_ROM|memROM~39_combout\ & ( (!\CPU|PC|DOUT\(8) & (!\Mem_ROM|memROM~23_combout\ & (!\Mem_ROM|memROM~29_combout\ & \Mem_ROM|memROM~34_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \Mem_ROM|ALT_INV_memROM~23_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~29_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~34_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~39_combout\,
	combout => \CPU|ULA1|Equal3~0_combout\);

\CPU|ULA1|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal2~0_combout\ = ( \Mem_ROM|memROM~39_combout\ & ( (!\CPU|PC|DOUT\(8) & (!\Mem_ROM|memROM~23_combout\ & (!\Mem_ROM|memROM~29_combout\ & \Mem_ROM|memROM~34_combout\))) ) ) # ( !\Mem_ROM|memROM~39_combout\ & ( (!\CPU|PC|DOUT\(8) & 
-- ((!\Mem_ROM|memROM~23_combout\ & (!\Mem_ROM|memROM~29_combout\ $ (\Mem_ROM|memROM~34_combout\))) # (\Mem_ROM|memROM~23_combout\ & (!\Mem_ROM|memROM~29_combout\ & \Mem_ROM|memROM~34_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000101000000000001000000010000000001010000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \Mem_ROM|ALT_INV_memROM~23_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~29_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~34_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~39_combout\,
	combout => \CPU|ULA1|Equal2~0_combout\);

\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\Mem_ROM|memROM~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~69_combout\ = ( !\CPU|PC|DOUT\(5) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \Mem_ROM|memROM~69_combout\);

\Mem_ROM|memROM~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~70_combout\ = ( \CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(6) & ((\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(0)))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(3) & ( 
-- (!\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(1)))) ) ) ) # ( \CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(3) & ( (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(6) & 
-- ((\CPU|PC|DOUT\(1)))))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(5) $ (\CPU|PC|DOUT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000010100000001000000001100000010000000000100000001100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \Mem_ROM|memROM~70_combout\);

\Mem_ROM|memROM~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~71_combout\ = ( \CPU|PC|DOUT\(5) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0)))) ) ) ) # ( !\CPU|PC|DOUT\(5) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(2) & 
-- (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0)))) ) ) ) # ( \CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT\(6) & ( (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(1))) ) ) ) # ( !\CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(3) & (((\CPU|PC|DOUT\(1) & 
-- \CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(0)) # (\CPU|PC|DOUT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001000111010010000000100000000100000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \Mem_ROM|memROM~71_combout\);

\Mem_ROM|memROM~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~72_combout\ = ( \CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(6) $ (\CPU|PC|DOUT\(0))))) # (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(0)))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( 
-- \CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(5) & ((!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(1)))))) ) ) ) # ( \CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(6) & 
-- (!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT\(0)))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(3) & ( (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(5) $ (!\CPU|PC|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110001001000000010000100010100000001100001001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \Mem_ROM|memROM~72_combout\);

\Mem_ROM|memROM~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~73_combout\ = ( \CPU|PC|DOUT\(7) & ( \CPU|PC|DOUT\(4) & ( \Mem_ROM|memROM~72_combout\ ) ) ) # ( !\CPU|PC|DOUT\(7) & ( \CPU|PC|DOUT\(4) & ( \Mem_ROM|memROM~71_combout\ ) ) ) # ( \CPU|PC|DOUT\(7) & ( !\CPU|PC|DOUT\(4) & ( 
-- \Mem_ROM|memROM~70_combout\ ) ) ) # ( !\CPU|PC|DOUT\(7) & ( !\CPU|PC|DOUT\(4) & ( \Mem_ROM|memROM~69_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~69_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~70_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~71_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~72_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(7),
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \Mem_ROM|memROM~73_combout\);

\Mem_ROM|memROM~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~74_combout\ = (!\CPU|PC|DOUT\(8) & \Mem_ROM|memROM~73_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \Mem_ROM|ALT_INV_memROM~73_combout\,
	combout => \Mem_ROM|memROM~74_combout\);

\Mem_RAM|ram~695\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~695_combout\ = ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~62_combout\ & ( (!\Mem_ROM|memROM~18_combout\ & (!\Mem_ROM|memROM~12_combout\ & (!\Mem_ROM|memROM~61_combout\ & !\Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~695_combout\);

\CPU|decoderInstru|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida[0]~0_combout\ = ( \Mem_ROM|memROM~34_combout\ & ( \Mem_ROM|memROM~39_combout\ & ( (\CPU|PC|DOUT\(8) & (\Mem_ROM|memROM~6_combout\ & \Mem_ROM|memROM~24_combout\)) ) ) ) # ( !\Mem_ROM|memROM~34_combout\ & ( 
-- \Mem_ROM|memROM~39_combout\ & ( (\CPU|PC|DOUT\(8) & (\Mem_ROM|memROM~6_combout\ & \Mem_ROM|memROM~24_combout\)) ) ) ) # ( \Mem_ROM|memROM~34_combout\ & ( !\Mem_ROM|memROM~39_combout\ & ( (\CPU|PC|DOUT\(8) & (\Mem_ROM|memROM~6_combout\ & 
-- \Mem_ROM|memROM~24_combout\)) ) ) ) # ( !\Mem_ROM|memROM~34_combout\ & ( !\Mem_ROM|memROM~39_combout\ & ( (\Mem_ROM|memROM~24_combout\ & ((!\CPU|PC|DOUT\(8) & ((!\Mem_ROM|memROM~29_combout\))) # (\CPU|PC|DOUT\(8) & (\Mem_ROM|memROM~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \Mem_ROM|ALT_INV_memROM~6_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~24_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~29_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~34_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~39_combout\,
	combout => \CPU|decoderInstru|saida[0]~0_combout\);

\Mem_RAM|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|process_0~0_combout\ = (!\Mem_ROM|memROM~76_combout\ & (!\Mem_ROM|memROM~50_combout\ & (!\Mem_ROM|memROM~75_combout\ & \CPU|decoderInstru|saida[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~76_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~50_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~75_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida[0]~0_combout\,
	combout => \Mem_RAM|process_0~0_combout\);

\Mem_RAM|ram~696\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~696_combout\ = (\Mem_RAM|ram~695_combout\ & \Mem_RAM|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~695_combout\,
	datab => \Mem_RAM|ALT_INV_process_0~0_combout\,
	combout => \Mem_RAM|ram~696_combout\);

\Mem_RAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~15_q\);

\Mem_RAM|ram~697\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~697_combout\ = ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~62_combout\ & ( (!\Mem_ROM|memROM~18_combout\ & (!\Mem_ROM|memROM~12_combout\ & (!\Mem_ROM|memROM~61_combout\ & !\Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~697_combout\);

\Mem_RAM|ram~698\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~698_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~697_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~697_combout\,
	combout => \Mem_RAM|ram~698_combout\);

\Mem_RAM|ram~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~271_q\);

\Mem_RAM|ram~699\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~699_combout\ = ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~62_combout\ & ( (\Mem_ROM|memROM~18_combout\ & (!\Mem_ROM|memROM~12_combout\ & (!\Mem_ROM|memROM~61_combout\ & !\Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~699_combout\);

\Mem_RAM|ram~700\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~700_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~699_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~699_combout\,
	combout => \Mem_RAM|ram~700_combout\);

\Mem_RAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~23_q\);

\Mem_RAM|ram~701\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~701_combout\ = ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~62_combout\ & ( (\Mem_ROM|memROM~18_combout\ & (!\Mem_ROM|memROM~12_combout\ & (!\Mem_ROM|memROM~61_combout\ & !\Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~701_combout\);

\Mem_RAM|ram~702\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~702_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~701_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~701_combout\,
	combout => \Mem_RAM|ram~702_combout\);

\Mem_RAM|ram~279\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~279_q\);

\Mem_RAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~527_combout\ = ( \Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~279_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~23_q\ ) ) ) # ( \Mem_ROM|memROM~62_combout\ & ( 
-- !\Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~271_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~15_q\,
	datab => \Mem_RAM|ALT_INV_ram~271_q\,
	datac => \Mem_RAM|ALT_INV_ram~23_q\,
	datad => \Mem_RAM|ALT_INV_ram~279_q\,
	datae => \Mem_ROM|ALT_INV_memROM~62_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~18_combout\,
	combout => \Mem_RAM|ram~527_combout\);

\Mem_RAM|ram~703\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~703_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~62_combout\ & ( (!\Mem_ROM|memROM~18_combout\ & (!\Mem_ROM|memROM~12_combout\ & (!\Mem_ROM|memROM~61_combout\ & !\Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~703_combout\);

\Mem_RAM|ram~704\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~704_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~703_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~703_combout\,
	combout => \Mem_RAM|ram~704_combout\);

\Mem_RAM|ram~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~143_q\);

\Mem_RAM|ram~705\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~705_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~62_combout\ & ( (!\Mem_ROM|memROM~18_combout\ & (!\Mem_ROM|memROM~12_combout\ & (!\Mem_ROM|memROM~61_combout\ & !\Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~705_combout\);

\Mem_RAM|ram~706\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~706_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~705_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~705_combout\,
	combout => \Mem_RAM|ram~706_combout\);

\Mem_RAM|ram~399\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~399_q\);

\Mem_RAM|ram~707\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~707_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~62_combout\ & ( (\Mem_ROM|memROM~18_combout\ & (!\Mem_ROM|memROM~12_combout\ & (!\Mem_ROM|memROM~61_combout\ & !\Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~707_combout\);

\Mem_RAM|ram~708\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~708_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~707_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~707_combout\,
	combout => \Mem_RAM|ram~708_combout\);

\Mem_RAM|ram~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~151_q\);

\Mem_RAM|ram~709\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~709_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~62_combout\ & ( (\Mem_ROM|memROM~18_combout\ & (!\Mem_ROM|memROM~12_combout\ & (!\Mem_ROM|memROM~61_combout\ & !\Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~709_combout\);

\Mem_RAM|ram~710\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~710_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~709_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~709_combout\,
	combout => \Mem_RAM|ram~710_combout\);

\Mem_RAM|ram~407\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~407_q\);

\Mem_RAM|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~528_combout\ = ( \Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~407_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~151_q\ ) ) ) # ( \Mem_ROM|memROM~62_combout\ & ( 
-- !\Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~399_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~143_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~143_q\,
	datab => \Mem_RAM|ALT_INV_ram~399_q\,
	datac => \Mem_RAM|ALT_INV_ram~151_q\,
	datad => \Mem_RAM|ALT_INV_ram~407_q\,
	datae => \Mem_ROM|ALT_INV_memROM~62_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~18_combout\,
	combout => \Mem_RAM|ram~528_combout\);

\Mem_RAM|ram~711\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~711_combout\ = ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~62_combout\ & ( (!\Mem_ROM|memROM~18_combout\ & (!\Mem_ROM|memROM~12_combout\ & (!\Mem_ROM|memROM~61_combout\ & \Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~711_combout\);

\Mem_RAM|ram~712\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~712_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~711_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~711_combout\,
	combout => \Mem_RAM|ram~712_combout\);

\Mem_RAM|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~79_q\);

\Mem_RAM|ram~713\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~713_combout\ = ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~62_combout\ & ( (!\Mem_ROM|memROM~18_combout\ & (!\Mem_ROM|memROM~12_combout\ & (!\Mem_ROM|memROM~61_combout\ & \Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~713_combout\);

\Mem_RAM|ram~714\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~714_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~713_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~713_combout\,
	combout => \Mem_RAM|ram~714_combout\);

\Mem_RAM|ram~335\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~335_q\);

\Mem_RAM|ram~715\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~715_combout\ = ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~62_combout\ & ( (\Mem_ROM|memROM~18_combout\ & (!\Mem_ROM|memROM~12_combout\ & (!\Mem_ROM|memROM~61_combout\ & \Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~715_combout\);

\Mem_RAM|ram~716\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~716_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~715_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~715_combout\,
	combout => \Mem_RAM|ram~716_combout\);

\Mem_RAM|ram~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~87_q\);

\Mem_RAM|ram~717\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~717_combout\ = ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~62_combout\ & ( (\Mem_ROM|memROM~18_combout\ & (!\Mem_ROM|memROM~12_combout\ & (!\Mem_ROM|memROM~61_combout\ & \Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~717_combout\);

\Mem_RAM|ram~718\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~718_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~717_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~717_combout\,
	combout => \Mem_RAM|ram~718_combout\);

\Mem_RAM|ram~343\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~343_q\);

\Mem_RAM|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~529_combout\ = ( \Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~343_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~87_q\ ) ) ) # ( \Mem_ROM|memROM~62_combout\ & ( 
-- !\Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~335_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~79_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~79_q\,
	datab => \Mem_RAM|ALT_INV_ram~335_q\,
	datac => \Mem_RAM|ALT_INV_ram~87_q\,
	datad => \Mem_RAM|ALT_INV_ram~343_q\,
	datae => \Mem_ROM|ALT_INV_memROM~62_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~18_combout\,
	combout => \Mem_RAM|ram~529_combout\);

\Mem_RAM|ram~719\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~719_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~62_combout\ & ( (!\Mem_ROM|memROM~18_combout\ & (!\Mem_ROM|memROM~12_combout\ & (!\Mem_ROM|memROM~61_combout\ & \Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~719_combout\);

\Mem_RAM|ram~720\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~720_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~719_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~719_combout\,
	combout => \Mem_RAM|ram~720_combout\);

\Mem_RAM|ram~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~207_q\);

\Mem_RAM|ram~721\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~721_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~62_combout\ & ( (!\Mem_ROM|memROM~18_combout\ & (!\Mem_ROM|memROM~12_combout\ & (!\Mem_ROM|memROM~61_combout\ & \Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~721_combout\);

\Mem_RAM|ram~722\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~722_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~721_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~721_combout\,
	combout => \Mem_RAM|ram~722_combout\);

\Mem_RAM|ram~463\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~463_q\);

\Mem_RAM|ram~723\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~723_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~62_combout\ & ( (\Mem_ROM|memROM~18_combout\ & (!\Mem_ROM|memROM~12_combout\ & (!\Mem_ROM|memROM~61_combout\ & \Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~723_combout\);

\Mem_RAM|ram~724\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~724_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~723_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~723_combout\,
	combout => \Mem_RAM|ram~724_combout\);

\Mem_RAM|ram~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~215_q\);

\Mem_RAM|ram~725\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~725_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~62_combout\ & ( (\Mem_ROM|memROM~18_combout\ & (!\Mem_ROM|memROM~12_combout\ & (!\Mem_ROM|memROM~61_combout\ & \Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~725_combout\);

\Mem_RAM|ram~726\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~726_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~725_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~725_combout\,
	combout => \Mem_RAM|ram~726_combout\);

\Mem_RAM|ram~471\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~471_q\);

\Mem_RAM|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~530_combout\ = ( \Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~471_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~215_q\ ) ) ) # ( \Mem_ROM|memROM~62_combout\ & ( 
-- !\Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~463_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~207_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~207_q\,
	datab => \Mem_RAM|ALT_INV_ram~463_q\,
	datac => \Mem_RAM|ALT_INV_ram~215_q\,
	datad => \Mem_RAM|ALT_INV_ram~471_q\,
	datae => \Mem_ROM|ALT_INV_memROM~62_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~18_combout\,
	combout => \Mem_RAM|ram~530_combout\);

\Mem_RAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~531_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~530_combout\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~529_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~528_combout\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~527_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~527_combout\,
	datab => \Mem_RAM|ALT_INV_ram~528_combout\,
	datac => \Mem_RAM|ALT_INV_ram~529_combout\,
	datad => \Mem_RAM|ALT_INV_ram~530_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~531_combout\);

\Mem_RAM|ram~727\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~727_combout\ = ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~62_combout\ & ( (!\Mem_ROM|memROM~18_combout\ & (!\Mem_ROM|memROM~12_combout\ & (\Mem_ROM|memROM~61_combout\ & !\Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~727_combout\);

\Mem_RAM|ram~728\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~728_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~727_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~727_combout\,
	combout => \Mem_RAM|ram~728_combout\);

\Mem_RAM|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~47_q\);

\Mem_RAM|ram~729\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~729_combout\ = ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~62_combout\ & ( (!\Mem_ROM|memROM~18_combout\ & (!\Mem_ROM|memROM~12_combout\ & (\Mem_ROM|memROM~61_combout\ & !\Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~729_combout\);

\Mem_RAM|ram~730\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~730_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~729_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~729_combout\,
	combout => \Mem_RAM|ram~730_combout\);

\Mem_RAM|ram~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~303_q\);

\Mem_RAM|ram~731\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~731_combout\ = ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~62_combout\ & ( (\Mem_ROM|memROM~18_combout\ & (!\Mem_ROM|memROM~12_combout\ & (\Mem_ROM|memROM~61_combout\ & !\Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~731_combout\);

\Mem_RAM|ram~732\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~732_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~731_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~731_combout\,
	combout => \Mem_RAM|ram~732_combout\);

\Mem_RAM|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~55_q\);

\Mem_RAM|ram~733\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~733_combout\ = ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~62_combout\ & ( (\Mem_ROM|memROM~18_combout\ & (!\Mem_ROM|memROM~12_combout\ & (\Mem_ROM|memROM~61_combout\ & !\Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~733_combout\);

\Mem_RAM|ram~734\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~734_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~733_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~733_combout\,
	combout => \Mem_RAM|ram~734_combout\);

\Mem_RAM|ram~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~311_q\);

\Mem_RAM|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~532_combout\ = ( \Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~311_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~55_q\ ) ) ) # ( \Mem_ROM|memROM~62_combout\ & ( 
-- !\Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~303_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~47_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~47_q\,
	datab => \Mem_RAM|ALT_INV_ram~303_q\,
	datac => \Mem_RAM|ALT_INV_ram~55_q\,
	datad => \Mem_RAM|ALT_INV_ram~311_q\,
	datae => \Mem_ROM|ALT_INV_memROM~62_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~18_combout\,
	combout => \Mem_RAM|ram~532_combout\);

\Mem_RAM|ram~735\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~735_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~62_combout\ & ( (!\Mem_ROM|memROM~18_combout\ & (!\Mem_ROM|memROM~12_combout\ & (\Mem_ROM|memROM~61_combout\ & !\Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~735_combout\);

\Mem_RAM|ram~736\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~736_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~735_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~735_combout\,
	combout => \Mem_RAM|ram~736_combout\);

\Mem_RAM|ram~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~175_q\);

\Mem_RAM|ram~737\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~737_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~62_combout\ & ( (!\Mem_ROM|memROM~18_combout\ & (!\Mem_ROM|memROM~12_combout\ & (\Mem_ROM|memROM~61_combout\ & !\Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~737_combout\);

\Mem_RAM|ram~738\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~738_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~737_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~737_combout\,
	combout => \Mem_RAM|ram~738_combout\);

\Mem_RAM|ram~431\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~431_q\);

\Mem_RAM|ram~739\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~739_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~62_combout\ & ( (\Mem_ROM|memROM~18_combout\ & (!\Mem_ROM|memROM~12_combout\ & (\Mem_ROM|memROM~61_combout\ & !\Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~739_combout\);

\Mem_RAM|ram~740\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~740_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~739_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~739_combout\,
	combout => \Mem_RAM|ram~740_combout\);

\Mem_RAM|ram~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~183_q\);

\Mem_RAM|ram~741\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~741_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~62_combout\ & ( (\Mem_ROM|memROM~18_combout\ & (!\Mem_ROM|memROM~12_combout\ & (\Mem_ROM|memROM~61_combout\ & !\Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~741_combout\);

\Mem_RAM|ram~742\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~742_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~741_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~741_combout\,
	combout => \Mem_RAM|ram~742_combout\);

\Mem_RAM|ram~439\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~439_q\);

\Mem_RAM|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~533_combout\ = ( \Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~439_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~183_q\ ) ) ) # ( \Mem_ROM|memROM~62_combout\ & ( 
-- !\Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~431_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~175_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~175_q\,
	datab => \Mem_RAM|ALT_INV_ram~431_q\,
	datac => \Mem_RAM|ALT_INV_ram~183_q\,
	datad => \Mem_RAM|ALT_INV_ram~439_q\,
	datae => \Mem_ROM|ALT_INV_memROM~62_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~18_combout\,
	combout => \Mem_RAM|ram~533_combout\);

\Mem_RAM|ram~743\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~743_combout\ = ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~62_combout\ & ( (!\Mem_ROM|memROM~18_combout\ & (!\Mem_ROM|memROM~12_combout\ & (\Mem_ROM|memROM~61_combout\ & \Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~743_combout\);

\Mem_RAM|ram~744\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~744_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~743_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~743_combout\,
	combout => \Mem_RAM|ram~744_combout\);

\Mem_RAM|ram~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~111_q\);

\Mem_RAM|ram~745\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~745_combout\ = ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~62_combout\ & ( (!\Mem_ROM|memROM~18_combout\ & (!\Mem_ROM|memROM~12_combout\ & (\Mem_ROM|memROM~61_combout\ & \Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~745_combout\);

\Mem_RAM|ram~746\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~746_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~745_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~745_combout\,
	combout => \Mem_RAM|ram~746_combout\);

\Mem_RAM|ram~367\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~367_q\);

\Mem_RAM|ram~747\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~747_combout\ = ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~62_combout\ & ( (\Mem_ROM|memROM~18_combout\ & (!\Mem_ROM|memROM~12_combout\ & (\Mem_ROM|memROM~61_combout\ & \Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~747_combout\);

\Mem_RAM|ram~748\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~748_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~747_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~747_combout\,
	combout => \Mem_RAM|ram~748_combout\);

\Mem_RAM|ram~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~119_q\);

\Mem_RAM|ram~749\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~749_combout\ = ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~62_combout\ & ( (\Mem_ROM|memROM~18_combout\ & (!\Mem_ROM|memROM~12_combout\ & (\Mem_ROM|memROM~61_combout\ & \Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~749_combout\);

\Mem_RAM|ram~750\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~750_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~749_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~749_combout\,
	combout => \Mem_RAM|ram~750_combout\);

\Mem_RAM|ram~375\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~375_q\);

\Mem_RAM|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~534_combout\ = ( \Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~375_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~119_q\ ) ) ) # ( \Mem_ROM|memROM~62_combout\ & ( 
-- !\Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~367_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~111_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~111_q\,
	datab => \Mem_RAM|ALT_INV_ram~367_q\,
	datac => \Mem_RAM|ALT_INV_ram~119_q\,
	datad => \Mem_RAM|ALT_INV_ram~375_q\,
	datae => \Mem_ROM|ALT_INV_memROM~62_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~18_combout\,
	combout => \Mem_RAM|ram~534_combout\);

\Mem_RAM|ram~751\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~751_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~62_combout\ & ( (!\Mem_ROM|memROM~18_combout\ & (!\Mem_ROM|memROM~12_combout\ & (\Mem_ROM|memROM~61_combout\ & \Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~751_combout\);

\Mem_RAM|ram~752\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~752_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~751_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~751_combout\,
	combout => \Mem_RAM|ram~752_combout\);

\Mem_RAM|ram~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~239_q\);

\Mem_RAM|ram~753\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~753_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~62_combout\ & ( (!\Mem_ROM|memROM~18_combout\ & (!\Mem_ROM|memROM~12_combout\ & (\Mem_ROM|memROM~61_combout\ & \Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~753_combout\);

\Mem_RAM|ram~754\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~754_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~753_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~753_combout\,
	combout => \Mem_RAM|ram~754_combout\);

\Mem_RAM|ram~495\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~495_q\);

\Mem_RAM|ram~755\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~755_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~62_combout\ & ( (\Mem_ROM|memROM~18_combout\ & (!\Mem_ROM|memROM~12_combout\ & (\Mem_ROM|memROM~61_combout\ & \Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~755_combout\);

\Mem_RAM|ram~756\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~756_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~755_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~755_combout\,
	combout => \Mem_RAM|ram~756_combout\);

\Mem_RAM|ram~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~247_q\);

\Mem_RAM|ram~757\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~757_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~62_combout\ & ( (\Mem_ROM|memROM~18_combout\ & (!\Mem_ROM|memROM~12_combout\ & (\Mem_ROM|memROM~61_combout\ & \Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~757_combout\);

\Mem_RAM|ram~758\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~758_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~757_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~757_combout\,
	combout => \Mem_RAM|ram~758_combout\);

\Mem_RAM|ram~503\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~503_q\);

\Mem_RAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~535_combout\ = ( \Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~503_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~247_q\ ) ) ) # ( \Mem_ROM|memROM~62_combout\ & ( 
-- !\Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~495_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~239_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~239_q\,
	datab => \Mem_RAM|ALT_INV_ram~495_q\,
	datac => \Mem_RAM|ALT_INV_ram~247_q\,
	datad => \Mem_RAM|ALT_INV_ram~503_q\,
	datae => \Mem_ROM|ALT_INV_memROM~62_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~18_combout\,
	combout => \Mem_RAM|ram~535_combout\);

\Mem_RAM|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~536_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~535_combout\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~534_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~533_combout\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~532_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~532_combout\,
	datab => \Mem_RAM|ALT_INV_ram~533_combout\,
	datac => \Mem_RAM|ALT_INV_ram~534_combout\,
	datad => \Mem_RAM|ALT_INV_ram~535_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~536_combout\);

\Mem_RAM|ram~759\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~759_combout\ = ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~62_combout\ & ( (!\Mem_ROM|memROM~18_combout\ & (\Mem_ROM|memROM~12_combout\ & (!\Mem_ROM|memROM~61_combout\ & !\Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~759_combout\);

\Mem_RAM|ram~760\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~760_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~759_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~759_combout\,
	combout => \Mem_RAM|ram~760_combout\);

\Mem_RAM|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~31_q\);

\Mem_RAM|ram~761\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~761_combout\ = ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~62_combout\ & ( (!\Mem_ROM|memROM~18_combout\ & (\Mem_ROM|memROM~12_combout\ & (!\Mem_ROM|memROM~61_combout\ & !\Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~761_combout\);

\Mem_RAM|ram~762\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~762_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~761_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~761_combout\,
	combout => \Mem_RAM|ram~762_combout\);

\Mem_RAM|ram~287\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~287_q\);

\Mem_RAM|ram~763\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~763_combout\ = ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~62_combout\ & ( (\Mem_ROM|memROM~18_combout\ & (\Mem_ROM|memROM~12_combout\ & (!\Mem_ROM|memROM~61_combout\ & !\Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~763_combout\);

\Mem_RAM|ram~764\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~764_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~763_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~763_combout\,
	combout => \Mem_RAM|ram~764_combout\);

\Mem_RAM|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~39_q\);

\Mem_RAM|ram~765\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~765_combout\ = ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~62_combout\ & ( (\Mem_ROM|memROM~18_combout\ & (\Mem_ROM|memROM~12_combout\ & (!\Mem_ROM|memROM~61_combout\ & !\Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~765_combout\);

\Mem_RAM|ram~766\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~766_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~765_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~765_combout\,
	combout => \Mem_RAM|ram~766_combout\);

\Mem_RAM|ram~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~295_q\);

\Mem_RAM|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~537_combout\ = ( \Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~295_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~39_q\ ) ) ) # ( \Mem_ROM|memROM~62_combout\ & ( 
-- !\Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~287_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~31_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~31_q\,
	datab => \Mem_RAM|ALT_INV_ram~287_q\,
	datac => \Mem_RAM|ALT_INV_ram~39_q\,
	datad => \Mem_RAM|ALT_INV_ram~295_q\,
	datae => \Mem_ROM|ALT_INV_memROM~62_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~18_combout\,
	combout => \Mem_RAM|ram~537_combout\);

\Mem_RAM|ram~767\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~767_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~62_combout\ & ( (!\Mem_ROM|memROM~18_combout\ & (\Mem_ROM|memROM~12_combout\ & (!\Mem_ROM|memROM~61_combout\ & !\Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~767_combout\);

\Mem_RAM|ram~768\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~768_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~767_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~767_combout\,
	combout => \Mem_RAM|ram~768_combout\);

\Mem_RAM|ram~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~159_q\);

\Mem_RAM|ram~769\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~769_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~62_combout\ & ( (!\Mem_ROM|memROM~18_combout\ & (\Mem_ROM|memROM~12_combout\ & (!\Mem_ROM|memROM~61_combout\ & !\Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~769_combout\);

\Mem_RAM|ram~770\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~770_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~769_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~769_combout\,
	combout => \Mem_RAM|ram~770_combout\);

\Mem_RAM|ram~415\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~415_q\);

\Mem_RAM|ram~771\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~771_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~62_combout\ & ( (\Mem_ROM|memROM~18_combout\ & (\Mem_ROM|memROM~12_combout\ & (!\Mem_ROM|memROM~61_combout\ & !\Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~771_combout\);

\Mem_RAM|ram~772\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~772_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~771_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~771_combout\,
	combout => \Mem_RAM|ram~772_combout\);

\Mem_RAM|ram~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~167_q\);

\Mem_RAM|ram~773\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~773_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~62_combout\ & ( (\Mem_ROM|memROM~18_combout\ & (\Mem_ROM|memROM~12_combout\ & (!\Mem_ROM|memROM~61_combout\ & !\Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~773_combout\);

\Mem_RAM|ram~774\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~774_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~773_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~773_combout\,
	combout => \Mem_RAM|ram~774_combout\);

\Mem_RAM|ram~423\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~423_q\);

\Mem_RAM|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~538_combout\ = ( \Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~423_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~167_q\ ) ) ) # ( \Mem_ROM|memROM~62_combout\ & ( 
-- !\Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~415_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~159_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~159_q\,
	datab => \Mem_RAM|ALT_INV_ram~415_q\,
	datac => \Mem_RAM|ALT_INV_ram~167_q\,
	datad => \Mem_RAM|ALT_INV_ram~423_q\,
	datae => \Mem_ROM|ALT_INV_memROM~62_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~18_combout\,
	combout => \Mem_RAM|ram~538_combout\);

\Mem_RAM|ram~775\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~775_combout\ = ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~62_combout\ & ( (!\Mem_ROM|memROM~18_combout\ & (\Mem_ROM|memROM~12_combout\ & (!\Mem_ROM|memROM~61_combout\ & \Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~775_combout\);

\Mem_RAM|ram~776\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~776_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~775_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~775_combout\,
	combout => \Mem_RAM|ram~776_combout\);

\Mem_RAM|ram~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~95_q\);

\Mem_RAM|ram~777\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~777_combout\ = ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~62_combout\ & ( (!\Mem_ROM|memROM~18_combout\ & (\Mem_ROM|memROM~12_combout\ & (!\Mem_ROM|memROM~61_combout\ & \Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~777_combout\);

\Mem_RAM|ram~778\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~778_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~777_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~777_combout\,
	combout => \Mem_RAM|ram~778_combout\);

\Mem_RAM|ram~351\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~351_q\);

\Mem_RAM|ram~779\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~779_combout\ = ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~62_combout\ & ( (\Mem_ROM|memROM~18_combout\ & (\Mem_ROM|memROM~12_combout\ & (!\Mem_ROM|memROM~61_combout\ & \Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~779_combout\);

\Mem_RAM|ram~780\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~780_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~779_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~779_combout\,
	combout => \Mem_RAM|ram~780_combout\);

\Mem_RAM|ram~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~103_q\);

\Mem_RAM|ram~781\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~781_combout\ = ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~62_combout\ & ( (\Mem_ROM|memROM~18_combout\ & (\Mem_ROM|memROM~12_combout\ & (!\Mem_ROM|memROM~61_combout\ & \Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~781_combout\);

\Mem_RAM|ram~782\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~782_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~781_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~781_combout\,
	combout => \Mem_RAM|ram~782_combout\);

\Mem_RAM|ram~359\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~359_q\);

\Mem_RAM|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~539_combout\ = ( \Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~359_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~103_q\ ) ) ) # ( \Mem_ROM|memROM~62_combout\ & ( 
-- !\Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~351_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~95_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~95_q\,
	datab => \Mem_RAM|ALT_INV_ram~351_q\,
	datac => \Mem_RAM|ALT_INV_ram~103_q\,
	datad => \Mem_RAM|ALT_INV_ram~359_q\,
	datae => \Mem_ROM|ALT_INV_memROM~62_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~18_combout\,
	combout => \Mem_RAM|ram~539_combout\);

\Mem_RAM|ram~783\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~783_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~62_combout\ & ( (!\Mem_ROM|memROM~18_combout\ & (\Mem_ROM|memROM~12_combout\ & (!\Mem_ROM|memROM~61_combout\ & \Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~783_combout\);

\Mem_RAM|ram~784\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~784_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~783_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~783_combout\,
	combout => \Mem_RAM|ram~784_combout\);

\Mem_RAM|ram~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~223_q\);

\Mem_RAM|ram~785\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~785_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~62_combout\ & ( (!\Mem_ROM|memROM~18_combout\ & (\Mem_ROM|memROM~12_combout\ & (!\Mem_ROM|memROM~61_combout\ & \Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~785_combout\);

\Mem_RAM|ram~786\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~786_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~785_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~785_combout\,
	combout => \Mem_RAM|ram~786_combout\);

\Mem_RAM|ram~479\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~479_q\);

\Mem_RAM|ram~787\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~787_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~62_combout\ & ( (\Mem_ROM|memROM~18_combout\ & (\Mem_ROM|memROM~12_combout\ & (!\Mem_ROM|memROM~61_combout\ & \Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~787_combout\);

\Mem_RAM|ram~788\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~788_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~787_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~787_combout\,
	combout => \Mem_RAM|ram~788_combout\);

\Mem_RAM|ram~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~231_q\);

\Mem_RAM|ram~789\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~789_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~62_combout\ & ( (\Mem_ROM|memROM~18_combout\ & (\Mem_ROM|memROM~12_combout\ & (!\Mem_ROM|memROM~61_combout\ & \Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~789_combout\);

\Mem_RAM|ram~790\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~790_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~789_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~789_combout\,
	combout => \Mem_RAM|ram~790_combout\);

\Mem_RAM|ram~487\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~487_q\);

\Mem_RAM|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~540_combout\ = ( \Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~487_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~231_q\ ) ) ) # ( \Mem_ROM|memROM~62_combout\ & ( 
-- !\Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~479_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~223_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~223_q\,
	datab => \Mem_RAM|ALT_INV_ram~479_q\,
	datac => \Mem_RAM|ALT_INV_ram~231_q\,
	datad => \Mem_RAM|ALT_INV_ram~487_q\,
	datae => \Mem_ROM|ALT_INV_memROM~62_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~18_combout\,
	combout => \Mem_RAM|ram~540_combout\);

\Mem_RAM|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~541_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~540_combout\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~539_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~538_combout\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~537_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~537_combout\,
	datab => \Mem_RAM|ALT_INV_ram~538_combout\,
	datac => \Mem_RAM|ALT_INV_ram~539_combout\,
	datad => \Mem_RAM|ALT_INV_ram~540_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~541_combout\);

\Mem_RAM|ram~791\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~791_combout\ = ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~62_combout\ & ( (!\Mem_ROM|memROM~18_combout\ & (\Mem_ROM|memROM~12_combout\ & (\Mem_ROM|memROM~61_combout\ & !\Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~791_combout\);

\Mem_RAM|ram~792\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~792_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~791_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~791_combout\,
	combout => \Mem_RAM|ram~792_combout\);

\Mem_RAM|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~63_q\);

\Mem_RAM|ram~793\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~793_combout\ = ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~62_combout\ & ( (!\Mem_ROM|memROM~18_combout\ & (\Mem_ROM|memROM~12_combout\ & (\Mem_ROM|memROM~61_combout\ & !\Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~793_combout\);

\Mem_RAM|ram~794\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~794_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~793_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~793_combout\,
	combout => \Mem_RAM|ram~794_combout\);

\Mem_RAM|ram~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~319_q\);

\Mem_RAM|ram~795\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~795_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~62_combout\ & ( (!\Mem_ROM|memROM~18_combout\ & (\Mem_ROM|memROM~12_combout\ & (\Mem_ROM|memROM~61_combout\ & !\Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~795_combout\);

\Mem_RAM|ram~796\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~796_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~795_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~795_combout\,
	combout => \Mem_RAM|ram~796_combout\);

\Mem_RAM|ram~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~191_q\);

\Mem_RAM|ram~797\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~797_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~62_combout\ & ( (!\Mem_ROM|memROM~18_combout\ & (\Mem_ROM|memROM~12_combout\ & (\Mem_ROM|memROM~61_combout\ & !\Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~797_combout\);

\Mem_RAM|ram~798\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~798_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~797_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~797_combout\,
	combout => \Mem_RAM|ram~798_combout\);

\Mem_RAM|ram~447\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~447_q\);

\Mem_RAM|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~542_combout\ = ( \Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~447_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~191_q\ ) ) ) # ( \Mem_ROM|memROM~62_combout\ & ( 
-- !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~319_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~63_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~63_q\,
	datab => \Mem_RAM|ALT_INV_ram~319_q\,
	datac => \Mem_RAM|ALT_INV_ram~191_q\,
	datad => \Mem_RAM|ALT_INV_ram~447_q\,
	datae => \Mem_ROM|ALT_INV_memROM~62_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~74_combout\,
	combout => \Mem_RAM|ram~542_combout\);

\Mem_RAM|ram~799\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~799_combout\ = ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~62_combout\ & ( (\Mem_ROM|memROM~18_combout\ & (\Mem_ROM|memROM~12_combout\ & (\Mem_ROM|memROM~61_combout\ & !\Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~799_combout\);

\Mem_RAM|ram~800\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~800_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~799_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~799_combout\,
	combout => \Mem_RAM|ram~800_combout\);

\Mem_RAM|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~71_q\);

\Mem_RAM|ram~801\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~801_combout\ = ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~62_combout\ & ( (\Mem_ROM|memROM~18_combout\ & (\Mem_ROM|memROM~12_combout\ & (\Mem_ROM|memROM~61_combout\ & !\Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~801_combout\);

\Mem_RAM|ram~802\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~802_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~801_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~801_combout\,
	combout => \Mem_RAM|ram~802_combout\);

\Mem_RAM|ram~327\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~327_q\);

\Mem_RAM|ram~803\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~803_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~62_combout\ & ( (\Mem_ROM|memROM~18_combout\ & (\Mem_ROM|memROM~12_combout\ & (\Mem_ROM|memROM~61_combout\ & !\Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~803_combout\);

\Mem_RAM|ram~804\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~804_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~803_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~803_combout\,
	combout => \Mem_RAM|ram~804_combout\);

\Mem_RAM|ram~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~199_q\);

\Mem_RAM|ram~805\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~805_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~62_combout\ & ( (\Mem_ROM|memROM~18_combout\ & (\Mem_ROM|memROM~12_combout\ & (\Mem_ROM|memROM~61_combout\ & !\Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~805_combout\);

\Mem_RAM|ram~806\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~806_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~805_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~805_combout\,
	combout => \Mem_RAM|ram~806_combout\);

\Mem_RAM|ram~455\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~455_q\);

\Mem_RAM|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~543_combout\ = ( \Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~455_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~199_q\ ) ) ) # ( \Mem_ROM|memROM~62_combout\ & ( 
-- !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~327_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~71_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~71_q\,
	datab => \Mem_RAM|ALT_INV_ram~327_q\,
	datac => \Mem_RAM|ALT_INV_ram~199_q\,
	datad => \Mem_RAM|ALT_INV_ram~455_q\,
	datae => \Mem_ROM|ALT_INV_memROM~62_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~74_combout\,
	combout => \Mem_RAM|ram~543_combout\);

\Mem_RAM|ram~807\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~807_combout\ = ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~62_combout\ & ( (!\Mem_ROM|memROM~18_combout\ & (\Mem_ROM|memROM~12_combout\ & (\Mem_ROM|memROM~61_combout\ & \Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~807_combout\);

\Mem_RAM|ram~808\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~808_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~807_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~807_combout\,
	combout => \Mem_RAM|ram~808_combout\);

\Mem_RAM|ram~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~127_q\);

\Mem_RAM|ram~809\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~809_combout\ = ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~62_combout\ & ( (!\Mem_ROM|memROM~18_combout\ & (\Mem_ROM|memROM~12_combout\ & (\Mem_ROM|memROM~61_combout\ & \Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~809_combout\);

\Mem_RAM|ram~810\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~810_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~809_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~809_combout\,
	combout => \Mem_RAM|ram~810_combout\);

\Mem_RAM|ram~383\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~383_q\);

\Mem_RAM|ram~811\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~811_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~62_combout\ & ( (!\Mem_ROM|memROM~18_combout\ & (\Mem_ROM|memROM~12_combout\ & (\Mem_ROM|memROM~61_combout\ & \Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~811_combout\);

\Mem_RAM|ram~812\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~812_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~811_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~811_combout\,
	combout => \Mem_RAM|ram~812_combout\);

\Mem_RAM|ram~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~255_q\);

\Mem_RAM|ram~813\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~813_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~62_combout\ & ( (!\Mem_ROM|memROM~18_combout\ & (\Mem_ROM|memROM~12_combout\ & (\Mem_ROM|memROM~61_combout\ & \Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~813_combout\);

\Mem_RAM|ram~814\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~814_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~813_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~813_combout\,
	combout => \Mem_RAM|ram~814_combout\);

\Mem_RAM|ram~511\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~511_q\);

\Mem_RAM|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~544_combout\ = ( \Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~511_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~255_q\ ) ) ) # ( \Mem_ROM|memROM~62_combout\ & ( 
-- !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~383_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~127_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~127_q\,
	datab => \Mem_RAM|ALT_INV_ram~383_q\,
	datac => \Mem_RAM|ALT_INV_ram~255_q\,
	datad => \Mem_RAM|ALT_INV_ram~511_q\,
	datae => \Mem_ROM|ALT_INV_memROM~62_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~74_combout\,
	combout => \Mem_RAM|ram~544_combout\);

\Mem_RAM|ram~815\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~815_combout\ = ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~62_combout\ & ( (\Mem_ROM|memROM~18_combout\ & (\Mem_ROM|memROM~12_combout\ & (\Mem_ROM|memROM~61_combout\ & \Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~815_combout\);

\Mem_RAM|ram~816\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~816_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~815_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~815_combout\,
	combout => \Mem_RAM|ram~816_combout\);

\Mem_RAM|ram~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~135_q\);

\Mem_RAM|ram~817\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~817_combout\ = ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~62_combout\ & ( (\Mem_ROM|memROM~18_combout\ & (\Mem_ROM|memROM~12_combout\ & (\Mem_ROM|memROM~61_combout\ & \Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~817_combout\);

\Mem_RAM|ram~818\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~818_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~817_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~817_combout\,
	combout => \Mem_RAM|ram~818_combout\);

\Mem_RAM|ram~391\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~391_q\);

\Mem_RAM|ram~819\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~819_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~62_combout\ & ( (\Mem_ROM|memROM~18_combout\ & (\Mem_ROM|memROM~12_combout\ & (\Mem_ROM|memROM~61_combout\ & \Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~819_combout\);

\Mem_RAM|ram~820\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~820_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~819_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~819_combout\,
	combout => \Mem_RAM|ram~820_combout\);

\Mem_RAM|ram~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~263_q\);

\Mem_RAM|ram~821\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~821_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~62_combout\ & ( (\Mem_ROM|memROM~18_combout\ & (\Mem_ROM|memROM~12_combout\ & (\Mem_ROM|memROM~61_combout\ & \Mem_ROM|memROM~68_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~821_combout\);

\Mem_RAM|ram~822\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~822_combout\ = (\Mem_RAM|process_0~0_combout\ & \Mem_RAM|ram~821_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~821_combout\,
	combout => \Mem_RAM|ram~822_combout\);

\Mem_RAM|ram~519\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \Mem_RAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~519_q\);

\Mem_RAM|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~545_combout\ = ( \Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~519_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~263_q\ ) ) ) # ( \Mem_ROM|memROM~62_combout\ & ( 
-- !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~391_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~135_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~135_q\,
	datab => \Mem_RAM|ALT_INV_ram~391_q\,
	datac => \Mem_RAM|ALT_INV_ram~263_q\,
	datad => \Mem_RAM|ALT_INV_ram~519_q\,
	datae => \Mem_ROM|ALT_INV_memROM~62_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~74_combout\,
	combout => \Mem_RAM|ram~545_combout\);

\Mem_RAM|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~546_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~545_combout\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~544_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~543_combout\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~542_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~542_combout\,
	datab => \Mem_RAM|ALT_INV_ram~543_combout\,
	datac => \Mem_RAM|ALT_INV_ram~544_combout\,
	datad => \Mem_RAM|ALT_INV_ram~545_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~546_combout\);

\Mem_RAM|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~547_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~546_combout\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~541_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~536_combout\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~531_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~531_combout\,
	datab => \Mem_RAM|ALT_INV_ram~536_combout\,
	datac => \Mem_RAM|ALT_INV_ram~541_combout\,
	datad => \Mem_RAM|ALT_INV_ram~546_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~547_combout\);

\Data_IN[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~0_combout\ = (!\Mem_ROM|memROM~76_combout\ & (!\Mem_ROM|memROM~50_combout\ & (!\Mem_ROM|memROM~75_combout\ & \CPU|decoderInstru|saida[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~76_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~50_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~75_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida[1]~3_combout\,
	combout => \Data_IN[0]~0_combout\);

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\habSW7dt0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \habSW7dt0~2_combout\ = (!\Mem_ROM|memROM~75_combout\ & (\CPU|decoderInstru|saida[1]~3_combout\ & \decoder3x8MS|saida[5]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~75_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida[1]~3_combout\,
	datac => \decoder3x8MS|ALT_INV_saida[5]~0_combout\,
	combout => \habSW7dt0~2_combout\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\detectorSubKEY0|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSubKEY0|saidaQ~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	combout => \detectorSubKEY0|saidaQ~0_combout\);

\detectorSubKEY0|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \detectorSubKEY0|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \detectorSubKEY0|saidaQ~q\);

\detectorSubKEY0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSubKEY0|saida~combout\ = LCELL((!\KEY[0]~input_o\ & !\detectorSubKEY0|saidaQ~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \detectorSubKEY0|ALT_INV_saidaQ~q\,
	combout => \detectorSubKEY0|saida~combout\);

\Reset_Reg_KEY0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reset_Reg_KEY0~0_combout\ = ( \Mem_ROM|memROM~73_combout\ & ( (!\CPU|PC|DOUT\(8) & (\Mem_ROM|memROM~55_combout\ & (\Mem_ROM|memROM~12_combout\ & \Mem_ROM|memROM~68_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \Mem_ROM|ALT_INV_memROM~55_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~73_combout\,
	combout => \Reset_Reg_KEY0~0_combout\);

Reset_Reg_KEY0 : cyclonev_lcell_comb
-- Equation(s):
-- \Reset_Reg_KEY0~combout\ = ( \decoder3x8MS|saida[5]~0_combout\ & ( \Reset_Reg_KEY0~0_combout\ & ( (\Mem_ROM|memROM~61_combout\ & (\Mem_ROM|memROM~62_combout\ & (\Mem_ROM|memROM~18_combout\ & \CPU|decoderInstru|saida[0]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~62_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida[0]~0_combout\,
	datae => \decoder3x8MS|ALT_INV_saida[5]~0_combout\,
	dataf => \ALT_INV_Reset_Reg_KEY0~0_combout\,
	combout => \Reset_Reg_KEY0~combout\);

\regKEY0|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSubKEY0|saida~combout\,
	d => VCC,
	clrn => \ALT_INV_Reset_Reg_KEY0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regKEY0|DOUT~q\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\detectorSubKEY1|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSubKEY1|saidaQ~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	combout => \detectorSubKEY1|saidaQ~0_combout\);

\detectorSubKEY1|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \detectorSubKEY1|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \detectorSubKEY1|saidaQ~q\);

\detectorSubKEY1|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSubKEY1|saida~combout\ = LCELL((!\KEY[1]~input_o\ & !\detectorSubKEY1|saidaQ~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \detectorSubKEY1|ALT_INV_saidaQ~q\,
	combout => \detectorSubKEY1|saida~combout\);

Reset_Reg_KEY1 : cyclonev_lcell_comb
-- Equation(s):
-- \Reset_Reg_KEY1~combout\ = ( \decoder3x8MS|saida[5]~0_combout\ & ( \Reset_Reg_KEY0~0_combout\ & ( (\Mem_ROM|memROM~61_combout\ & (\Mem_ROM|memROM~62_combout\ & (!\Mem_ROM|memROM~18_combout\ & \CPU|decoderInstru|saida[0]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~62_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida[0]~0_combout\,
	datae => \decoder3x8MS|ALT_INV_saida[5]~0_combout\,
	dataf => \ALT_INV_Reset_Reg_KEY0~0_combout\,
	combout => \Reset_Reg_KEY1~combout\);

\regKEY1|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSubKEY1|saida~combout\,
	d => VCC,
	clrn => \ALT_INV_Reset_Reg_KEY1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regKEY1|DOUT~q\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

\Data_IN[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~1_combout\ = ( \KEY[2]~input_o\ & ( \KEY[3]~input_o\ & ( (!\Mem_ROM|memROM~12_combout\ & ((!\Mem_ROM|memROM~18_combout\ & (\regKEY0|DOUT~q\)) # (\Mem_ROM|memROM~18_combout\ & ((\regKEY1|DOUT~q\))))) ) ) ) # ( !\KEY[2]~input_o\ & ( 
-- \KEY[3]~input_o\ & ( (!\Mem_ROM|memROM~12_combout\ & ((!\Mem_ROM|memROM~18_combout\ & (\regKEY0|DOUT~q\)) # (\Mem_ROM|memROM~18_combout\ & ((\regKEY1|DOUT~q\))))) # (\Mem_ROM|memROM~12_combout\ & (!\Mem_ROM|memROM~18_combout\)) ) ) ) # ( \KEY[2]~input_o\ 
-- & ( !\KEY[3]~input_o\ & ( (!\Mem_ROM|memROM~12_combout\ & ((!\Mem_ROM|memROM~18_combout\ & (\regKEY0|DOUT~q\)) # (\Mem_ROM|memROM~18_combout\ & ((\regKEY1|DOUT~q\))))) # (\Mem_ROM|memROM~12_combout\ & (\Mem_ROM|memROM~18_combout\)) ) ) ) # ( 
-- !\KEY[2]~input_o\ & ( !\KEY[3]~input_o\ & ( ((!\Mem_ROM|memROM~18_combout\ & (\regKEY0|DOUT~q\)) # (\Mem_ROM|memROM~18_combout\ & ((\regKEY1|DOUT~q\)))) # (\Mem_ROM|memROM~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101111111000110010011101101001100011011100000100000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datac => \regKEY0|ALT_INV_DOUT~q\,
	datad => \regKEY1|ALT_INV_DOUT~q\,
	datae => \ALT_INV_KEY[2]~input_o\,
	dataf => \ALT_INV_KEY[3]~input_o\,
	combout => \Data_IN[0]~1_combout\);

\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

\Data_IN[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~2_combout\ = (!\Mem_ROM|memROM~12_combout\ & (\Mem_ROM|memROM~18_combout\ & (\SW[8]~input_o\))) # (\Mem_ROM|memROM~12_combout\ & (!\Mem_ROM|memROM~18_combout\ & ((\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011000000010010001100000001001000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \ALT_INV_SW[9]~input_o\,
	combout => \Data_IN[0]~2_combout\);

\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

\Data_IN[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~3_combout\ = ( !\Mem_ROM|memROM~18_combout\ & ( !\FPGA_RESET_N~input_o\ & ( (!\CPU|PC|DOUT\(8) & (\Mem_ROM|memROM~61_combout\ & (\Mem_ROM|memROM~5_combout\ & !\Mem_ROM|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~5_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \ALT_INV_FPGA_RESET_N~input_o\,
	combout => \Data_IN[0]~3_combout\);

\Data_IN[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~4_combout\ = ( \Data_IN[0]~2_combout\ & ( \Data_IN[0]~3_combout\ & ( \habSW7dt0~2_combout\ ) ) ) # ( !\Data_IN[0]~2_combout\ & ( \Data_IN[0]~3_combout\ & ( \habSW7dt0~2_combout\ ) ) ) # ( \Data_IN[0]~2_combout\ & ( !\Data_IN[0]~3_combout\ & ( 
-- (!\Mem_ROM|memROM~61_combout\ & (\habSW7dt0~2_combout\ & ((!\Mem_ROM|memROM~62_combout\) # (\Data_IN[0]~1_combout\)))) ) ) ) # ( !\Data_IN[0]~2_combout\ & ( !\Data_IN[0]~3_combout\ & ( (!\Mem_ROM|memROM~61_combout\ & (\Mem_ROM|memROM~62_combout\ & 
-- (\habSW7dt0~2_combout\ & \Data_IN[0]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000010000000101000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~62_combout\,
	datac => \ALT_INV_habSW7dt0~2_combout\,
	datad => \ALT_INV_Data_IN[0]~1_combout\,
	datae => \ALT_INV_Data_IN[0]~2_combout\,
	dataf => \ALT_INV_Data_IN[0]~3_combout\,
	combout => \Data_IN[0]~4_combout\);

\Data_IN[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~5_combout\ = ( \Data_IN[0]~4_combout\ ) # ( !\Data_IN[0]~4_combout\ & ( (!\Mem_RAM|ram~547_combout\ & (((\SW[0]~input_o\ & \habSW7dt0~1_combout\)))) # (\Mem_RAM|ram~547_combout\ & (((\SW[0]~input_o\ & \habSW7dt0~1_combout\)) # 
-- (\Data_IN[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011111111111111111111100010001000111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~547_combout\,
	datab => \ALT_INV_Data_IN[0]~0_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_habSW7dt0~1_combout\,
	datae => \ALT_INV_Data_IN[0]~4_combout\,
	combout => \Data_IN[0]~5_combout\);

\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( (!\CPU|decoderInstru|saida[0]~4_combout\ & (((\Data_IN[0]~5_combout\)))) # (\CPU|decoderInstru|saida[0]~4_combout\ & ((!\Mem_ROM|memROM~24_combout\ & (\Mem_ROM|memROM~18_combout\)) # (\Mem_ROM|memROM~24_combout\ & 
-- ((\Data_IN[0]~5_combout\))))) ) + ( \CPU|REGA|DOUT\(0) ) + ( !VCC ))
-- \CPU|ULA1|Add0~2\ = CARRY(( (!\CPU|decoderInstru|saida[0]~4_combout\ & (((\Data_IN[0]~5_combout\)))) # (\CPU|decoderInstru|saida[0]~4_combout\ & ((!\Mem_ROM|memROM~24_combout\ & (\Mem_ROM|memROM~18_combout\)) # (\Mem_ROM|memROM~24_combout\ & 
-- ((\Data_IN[0]~5_combout\))))) ) + ( \CPU|REGA|DOUT\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[0]~4_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~24_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datad => \ALT_INV_Data_IN[0]~5_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( (!\CPU|decoderInstru|saida[0]~4_combout\ & (((\CPU|MUX1|saida_MUX[1]~0_combout\)))) # (\CPU|decoderInstru|saida[0]~4_combout\ & ((!\Mem_ROM|memROM~24_combout\ & (\Mem_ROM|memROM~12_combout\)) # (\Mem_ROM|memROM~24_combout\ 
-- & ((\CPU|MUX1|saida_MUX[1]~0_combout\))))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( (!\CPU|decoderInstru|saida[0]~4_combout\ & (((\CPU|MUX1|saida_MUX[1]~0_combout\)))) # (\CPU|decoderInstru|saida[0]~4_combout\ & ((!\Mem_ROM|memROM~24_combout\ & (\Mem_ROM|memROM~12_combout\)) # (\Mem_ROM|memROM~24_combout\ & 
-- ((\CPU|MUX1|saida_MUX[1]~0_combout\))))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[0]~4_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~24_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[1]~0_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

\CPU|ULA1|Add1~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \CPU|ULA1|Add1~34_cout\);

\CPU|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~1_sumout\ = SUM(( (!\Mem_ROM|memROM~24_combout\ & ((!\CPU|decoderInstru|saida[0]~4_combout\ & ((!\Data_IN[0]~5_combout\))) # (\CPU|decoderInstru|saida[0]~4_combout\ & (!\Mem_ROM|memROM~18_combout\)))) # (\Mem_ROM|memROM~24_combout\ & 
-- (((!\Data_IN[0]~5_combout\)))) ) + ( \CPU|REGA|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))
-- \CPU|ULA1|Add1~2\ = CARRY(( (!\Mem_ROM|memROM~24_combout\ & ((!\CPU|decoderInstru|saida[0]~4_combout\ & ((!\Data_IN[0]~5_combout\))) # (\CPU|decoderInstru|saida[0]~4_combout\ & (!\Mem_ROM|memROM~18_combout\)))) # (\Mem_ROM|memROM~24_combout\ & 
-- (((!\Data_IN[0]~5_combout\)))) ) + ( \CPU|REGA|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000011011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~24_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datac => \ALT_INV_Data_IN[0]~5_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida[0]~4_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add1~34_cout\,
	sumout => \CPU|ULA1|Add1~1_sumout\,
	cout => \CPU|ULA1|Add1~2\);

\CPU|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~5_sumout\ = SUM(( (!\CPU|decoderInstru|saida[0]~4_combout\ & (((!\CPU|MUX1|saida_MUX[1]~0_combout\)))) # (\CPU|decoderInstru|saida[0]~4_combout\ & ((!\Mem_ROM|memROM~24_combout\ & (!\Mem_ROM|memROM~12_combout\)) # 
-- (\Mem_ROM|memROM~24_combout\ & ((!\CPU|MUX1|saida_MUX[1]~0_combout\))))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))
-- \CPU|ULA1|Add1~6\ = CARRY(( (!\CPU|decoderInstru|saida[0]~4_combout\ & (((!\CPU|MUX1|saida_MUX[1]~0_combout\)))) # (\CPU|decoderInstru|saida[0]~4_combout\ & ((!\Mem_ROM|memROM~24_combout\ & (!\Mem_ROM|memROM~12_combout\)) # (\Mem_ROM|memROM~24_combout\ & 
-- ((!\CPU|MUX1|saida_MUX[1]~0_combout\))))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[0]~4_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~24_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[1]~0_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add1~2\,
	sumout => \CPU|ULA1|Add1~5_sumout\,
	cout => \CPU|ULA1|Add1~6\);

\CPU|decoderInstru|saida[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida[6]~5_combout\ = (!\CPU|decoderInstru|saida[0]~4_combout\) # (\Mem_ROM|memROM~24_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~24_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida[0]~4_combout\,
	combout => \CPU|decoderInstru|saida[6]~5_combout\);

\CPU|ULA1|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~2_combout\ = ( \Mem_RAM|ram~568_combout\ & ( (!\CPU|decoderInstru|saida[6]~5_combout\ & (\Mem_ROM|memROM~12_combout\)) # (\CPU|decoderInstru|saida[6]~5_combout\ & (((!\habSW7dt0~1_combout\) # (\SW[1]~input_o\)))) ) ) # ( 
-- !\Mem_RAM|ram~568_combout\ & ( (!\CPU|decoderInstru|saida[6]~5_combout\ & (\Mem_ROM|memROM~12_combout\)) # (\CPU|decoderInstru|saida[6]~5_combout\ & (((\habSW7dt0~1_combout\ & \SW[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010011010111000101111101010000010100110101110001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datab => \ALT_INV_habSW7dt0~1_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida[6]~5_combout\,
	datad => \ALT_INV_SW[1]~input_o\,
	datae => \Mem_RAM|ALT_INV_ram~568_combout\,
	combout => \CPU|ULA1|saida[1]~2_combout\);

\CPU|ULA1|saida[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~3_combout\ = ( \CPU|ULA1|saida[1]~2_combout\ & ( (!\CPU|ULA1|Equal3~0_combout\ & (((\CPU|ULA1|Add1~5_sumout\)) # (\CPU|ULA1|Equal2~0_combout\))) # (\CPU|ULA1|Equal3~0_combout\ & (((\CPU|ULA1|Add0~5_sumout\)))) ) ) # ( 
-- !\CPU|ULA1|saida[1]~2_combout\ & ( (!\CPU|ULA1|Equal3~0_combout\ & (!\CPU|ULA1|Equal2~0_combout\ & ((\CPU|ULA1|Add1~5_sumout\)))) # (\CPU|ULA1|Equal3~0_combout\ & (((\CPU|ULA1|Add0~5_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101001001111010111100000101100011010010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal3~0_combout\,
	datab => \CPU|ULA1|ALT_INV_Equal2~0_combout\,
	datac => \CPU|ULA1|ALT_INV_Add0~5_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	datae => \CPU|ULA1|ALT_INV_saida[1]~2_combout\,
	combout => \CPU|ULA1|saida[1]~3_combout\);

\CPU|ULA1|saida[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~1_combout\ = ( \Mem_ROM|memROM~39_combout\ ) # ( !\Mem_ROM|memROM~39_combout\ & ( (((!\Mem_ROM|memROM~29_combout\) # (!\Mem_ROM|memROM~34_combout\)) # (\Mem_ROM|memROM~23_combout\)) # (\CPU|PC|DOUT\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110111111111111111111111111111111101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \Mem_ROM|ALT_INV_memROM~23_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~29_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~34_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~39_combout\,
	combout => \CPU|ULA1|saida[7]~1_combout\);

\CPU|ULA1|saida[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida\(1) = ( \CPU|ULA1|saida\(1) & ( \CPU|ULA1|saida[7]~1_combout\ & ( \CPU|ULA1|saida[1]~3_combout\ ) ) ) # ( !\CPU|ULA1|saida\(1) & ( \CPU|ULA1|saida[7]~1_combout\ & ( \CPU|ULA1|saida[1]~3_combout\ ) ) ) # ( \CPU|ULA1|saida\(1) & ( 
-- !\CPU|ULA1|saida[7]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[1]~3_combout\,
	datae => \CPU|ULA1|ALT_INV_saida\(1),
	dataf => \CPU|ULA1|ALT_INV_saida[7]~1_combout\,
	combout => \CPU|ULA1|saida\(1));

\CPU|decoderInstru|saida[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida[5]~7_combout\ = ( !\CPU|PC|DOUT\(8) & ( (!\Mem_ROM|memROM~34_combout\ & (!\Mem_ROM|memROM~23_combout\ & (!\Mem_ROM|memROM~39_combout\ & !\Mem_ROM|memROM~29_combout\))) # (\Mem_ROM|memROM~34_combout\ & (!\Mem_ROM|memROM~29_combout\ 
-- $ (((!\Mem_ROM|memROM~23_combout\ & !\Mem_ROM|memROM~39_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000011100001000000000000000000010000111000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~23_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~39_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~34_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~29_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(8),
	combout => \CPU|decoderInstru|saida[5]~7_combout\);

\CPU|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|ULA1|saida\(1),
	ena => \CPU|decoderInstru|saida[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(1));

\Mem_RAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~16_q\);

\Mem_RAM|ram~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~272_q\);

\Mem_RAM|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~32_q\);

\Mem_RAM|ram~288\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~288_q\);

\Mem_RAM|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~548_combout\ = ( \Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~288_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~32_q\ ) ) ) # ( \Mem_ROM|memROM~62_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~272_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~16_q\,
	datab => \Mem_RAM|ALT_INV_ram~272_q\,
	datac => \Mem_RAM|ALT_INV_ram~32_q\,
	datad => \Mem_RAM|ALT_INV_ram~288_q\,
	datae => \Mem_ROM|ALT_INV_memROM~62_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~548_combout\);

\Mem_RAM|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~48_q\);

\Mem_RAM|ram~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~304_q\);

\Mem_RAM|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~64_q\);

\Mem_RAM|ram~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~320_q\);

\Mem_RAM|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~549_combout\ = ( \Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~320_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~64_q\ ) ) ) # ( \Mem_ROM|memROM~62_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~304_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~48_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~48_q\,
	datab => \Mem_RAM|ALT_INV_ram~304_q\,
	datac => \Mem_RAM|ALT_INV_ram~64_q\,
	datad => \Mem_RAM|ALT_INV_ram~320_q\,
	datae => \Mem_ROM|ALT_INV_memROM~62_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~549_combout\);

\Mem_RAM|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~80_q\);

\Mem_RAM|ram~336\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~336_q\);

\Mem_RAM|ram~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~96_q\);

\Mem_RAM|ram~352\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~352_q\);

\Mem_RAM|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~550_combout\ = ( \Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~352_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~96_q\ ) ) ) # ( \Mem_ROM|memROM~62_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~336_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~80_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~80_q\,
	datab => \Mem_RAM|ALT_INV_ram~336_q\,
	datac => \Mem_RAM|ALT_INV_ram~96_q\,
	datad => \Mem_RAM|ALT_INV_ram~352_q\,
	datae => \Mem_ROM|ALT_INV_memROM~62_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~550_combout\);

\Mem_RAM|ram~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~112_q\);

\Mem_RAM|ram~368\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~368_q\);

\Mem_RAM|ram~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~128_q\);

\Mem_RAM|ram~384\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~384_q\);

\Mem_RAM|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~551_combout\ = ( \Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~384_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~128_q\ ) ) ) # ( \Mem_ROM|memROM~62_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~368_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~112_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~112_q\,
	datab => \Mem_RAM|ALT_INV_ram~368_q\,
	datac => \Mem_RAM|ALT_INV_ram~128_q\,
	datad => \Mem_RAM|ALT_INV_ram~384_q\,
	datae => \Mem_ROM|ALT_INV_memROM~62_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~551_combout\);

\Mem_RAM|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~552_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~551_combout\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~550_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~549_combout\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~548_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~548_combout\,
	datab => \Mem_RAM|ALT_INV_ram~549_combout\,
	datac => \Mem_RAM|ALT_INV_ram~550_combout\,
	datad => \Mem_RAM|ALT_INV_ram~551_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~552_combout\);

\Mem_RAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~24_q\);

\Mem_RAM|ram~280\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~280_q\);

\Mem_RAM|ram~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~88_q\);

\Mem_RAM|ram~344\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~344_q\);

\Mem_RAM|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~553_combout\ = ( \Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~344_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~88_q\ ) ) ) # ( \Mem_ROM|memROM~62_combout\ & ( 
-- !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~280_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~24_q\,
	datab => \Mem_RAM|ALT_INV_ram~280_q\,
	datac => \Mem_RAM|ALT_INV_ram~88_q\,
	datad => \Mem_RAM|ALT_INV_ram~344_q\,
	datae => \Mem_ROM|ALT_INV_memROM~62_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~553_combout\);

\Mem_RAM|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~56_q\);

\Mem_RAM|ram~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~312_q\);

\Mem_RAM|ram~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~120_q\);

\Mem_RAM|ram~376\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~376_q\);

\Mem_RAM|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~554_combout\ = ( \Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~376_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~120_q\ ) ) ) # ( \Mem_ROM|memROM~62_combout\ & ( 
-- !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~312_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~56_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~56_q\,
	datab => \Mem_RAM|ALT_INV_ram~312_q\,
	datac => \Mem_RAM|ALT_INV_ram~120_q\,
	datad => \Mem_RAM|ALT_INV_ram~376_q\,
	datae => \Mem_ROM|ALT_INV_memROM~62_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~554_combout\);

\Mem_RAM|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~40_q\);

\Mem_RAM|ram~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~296_q\);

\Mem_RAM|ram~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~104_q\);

\Mem_RAM|ram~360\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~360_q\);

\Mem_RAM|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~555_combout\ = ( \Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~360_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~104_q\ ) ) ) # ( \Mem_ROM|memROM~62_combout\ & ( 
-- !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~296_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~40_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~40_q\,
	datab => \Mem_RAM|ALT_INV_ram~296_q\,
	datac => \Mem_RAM|ALT_INV_ram~104_q\,
	datad => \Mem_RAM|ALT_INV_ram~360_q\,
	datae => \Mem_ROM|ALT_INV_memROM~62_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~555_combout\);

\Mem_RAM|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~72_q\);

\Mem_RAM|ram~328\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~328_q\);

\Mem_RAM|ram~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~136_q\);

\Mem_RAM|ram~392\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~392_q\);

\Mem_RAM|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~556_combout\ = ( \Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~392_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~136_q\ ) ) ) # ( \Mem_ROM|memROM~62_combout\ & ( 
-- !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~328_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~72_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~72_q\,
	datab => \Mem_RAM|ALT_INV_ram~328_q\,
	datac => \Mem_RAM|ALT_INV_ram~136_q\,
	datad => \Mem_RAM|ALT_INV_ram~392_q\,
	datae => \Mem_ROM|ALT_INV_memROM~62_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~556_combout\);

\Mem_RAM|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~557_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~556_combout\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~555_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~554_combout\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~553_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~553_combout\,
	datab => \Mem_RAM|ALT_INV_ram~554_combout\,
	datac => \Mem_RAM|ALT_INV_ram~555_combout\,
	datad => \Mem_RAM|ALT_INV_ram~556_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~557_combout\);

\Mem_RAM|ram~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~144_q\);

\Mem_RAM|ram~400\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~400_q\);

\Mem_RAM|ram~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~176_q\);

\Mem_RAM|ram~432\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~432_q\);

\Mem_RAM|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~558_combout\ = ( \Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~432_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~176_q\ ) ) ) # ( \Mem_ROM|memROM~62_combout\ & ( 
-- !\Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~400_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~144_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~144_q\,
	datab => \Mem_RAM|ALT_INV_ram~400_q\,
	datac => \Mem_RAM|ALT_INV_ram~176_q\,
	datad => \Mem_RAM|ALT_INV_ram~432_q\,
	datae => \Mem_ROM|ALT_INV_memROM~62_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~61_combout\,
	combout => \Mem_RAM|ram~558_combout\);

\Mem_RAM|ram~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~160_q\);

\Mem_RAM|ram~416\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~416_q\);

\Mem_RAM|ram~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~192_q\);

\Mem_RAM|ram~448\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~448_q\);

\Mem_RAM|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~559_combout\ = ( \Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~448_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~192_q\ ) ) ) # ( \Mem_ROM|memROM~62_combout\ & ( 
-- !\Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~416_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~160_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~160_q\,
	datab => \Mem_RAM|ALT_INV_ram~416_q\,
	datac => \Mem_RAM|ALT_INV_ram~192_q\,
	datad => \Mem_RAM|ALT_INV_ram~448_q\,
	datae => \Mem_ROM|ALT_INV_memROM~62_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~61_combout\,
	combout => \Mem_RAM|ram~559_combout\);

\Mem_RAM|ram~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~208_q\);

\Mem_RAM|ram~464\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~464_q\);

\Mem_RAM|ram~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~240_q\);

\Mem_RAM|ram~496\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~496_q\);

\Mem_RAM|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~560_combout\ = ( \Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~496_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~240_q\ ) ) ) # ( \Mem_ROM|memROM~62_combout\ & ( 
-- !\Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~464_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~208_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~208_q\,
	datab => \Mem_RAM|ALT_INV_ram~464_q\,
	datac => \Mem_RAM|ALT_INV_ram~240_q\,
	datad => \Mem_RAM|ALT_INV_ram~496_q\,
	datae => \Mem_ROM|ALT_INV_memROM~62_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~61_combout\,
	combout => \Mem_RAM|ram~560_combout\);

\Mem_RAM|ram~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~224_q\);

\Mem_RAM|ram~480\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~480_q\);

\Mem_RAM|ram~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~256_q\);

\Mem_RAM|ram~512\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~512_q\);

\Mem_RAM|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~561_combout\ = ( \Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~512_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~256_q\ ) ) ) # ( \Mem_ROM|memROM~62_combout\ & ( 
-- !\Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~480_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~224_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~224_q\,
	datab => \Mem_RAM|ALT_INV_ram~480_q\,
	datac => \Mem_RAM|ALT_INV_ram~256_q\,
	datad => \Mem_RAM|ALT_INV_ram~512_q\,
	datae => \Mem_ROM|ALT_INV_memROM~62_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~61_combout\,
	combout => \Mem_RAM|ram~561_combout\);

\Mem_RAM|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~562_combout\ = ( \Mem_ROM|memROM~12_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~561_combout\ ) ) ) # ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~560_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~12_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~559_combout\ ) ) ) # ( !\Mem_ROM|memROM~12_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~558_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~558_combout\,
	datab => \Mem_RAM|ALT_INV_ram~559_combout\,
	datac => \Mem_RAM|ALT_INV_ram~560_combout\,
	datad => \Mem_RAM|ALT_INV_ram~561_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~12_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~562_combout\);

\Mem_RAM|ram~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~152_q\);

\Mem_RAM|ram~408\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~408_q\);

\Mem_RAM|ram~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~168_q\);

\Mem_RAM|ram~424\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~424_q\);

\Mem_RAM|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~563_combout\ = ( \Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~424_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~168_q\ ) ) ) # ( \Mem_ROM|memROM~62_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~408_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~152_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~152_q\,
	datab => \Mem_RAM|ALT_INV_ram~408_q\,
	datac => \Mem_RAM|ALT_INV_ram~168_q\,
	datad => \Mem_RAM|ALT_INV_ram~424_q\,
	datae => \Mem_ROM|ALT_INV_memROM~62_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~563_combout\);

\Mem_RAM|ram~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~184_q\);

\Mem_RAM|ram~440\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~440_q\);

\Mem_RAM|ram~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~200_q\);

\Mem_RAM|ram~456\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~456_q\);

\Mem_RAM|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~564_combout\ = ( \Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~456_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~200_q\ ) ) ) # ( \Mem_ROM|memROM~62_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~440_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~184_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~184_q\,
	datab => \Mem_RAM|ALT_INV_ram~440_q\,
	datac => \Mem_RAM|ALT_INV_ram~200_q\,
	datad => \Mem_RAM|ALT_INV_ram~456_q\,
	datae => \Mem_ROM|ALT_INV_memROM~62_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~564_combout\);

\Mem_RAM|ram~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~216_q\);

\Mem_RAM|ram~472\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~472_q\);

\Mem_RAM|ram~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~232_q\);

\Mem_RAM|ram~488\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~488_q\);

\Mem_RAM|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~565_combout\ = ( \Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~488_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~232_q\ ) ) ) # ( \Mem_ROM|memROM~62_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~472_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~216_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~216_q\,
	datab => \Mem_RAM|ALT_INV_ram~472_q\,
	datac => \Mem_RAM|ALT_INV_ram~232_q\,
	datad => \Mem_RAM|ALT_INV_ram~488_q\,
	datae => \Mem_ROM|ALT_INV_memROM~62_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~565_combout\);

\Mem_RAM|ram~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~248_q\);

\Mem_RAM|ram~504\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~504_q\);

\Mem_RAM|ram~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~264_q\);

\Mem_RAM|ram~520\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \Mem_RAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~520_q\);

\Mem_RAM|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~566_combout\ = ( \Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~520_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~264_q\ ) ) ) # ( \Mem_ROM|memROM~62_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~504_q\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~248_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~248_q\,
	datab => \Mem_RAM|ALT_INV_ram~504_q\,
	datac => \Mem_RAM|ALT_INV_ram~264_q\,
	datad => \Mem_RAM|ALT_INV_ram~520_q\,
	datae => \Mem_ROM|ALT_INV_memROM~62_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~566_combout\);

\Mem_RAM|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~567_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~566_combout\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~565_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~564_combout\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~563_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~563_combout\,
	datab => \Mem_RAM|ALT_INV_ram~564_combout\,
	datac => \Mem_RAM|ALT_INV_ram~565_combout\,
	datad => \Mem_RAM|ALT_INV_ram~566_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~567_combout\);

\Mem_RAM|ram~568\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~568_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~567_combout\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~562_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~557_combout\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~552_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~552_combout\,
	datab => \Mem_RAM|ALT_INV_ram~557_combout\,
	datac => \Mem_RAM|ALT_INV_ram~562_combout\,
	datad => \Mem_RAM|ALT_INV_ram~567_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~74_combout\,
	combout => \Mem_RAM|ram~568_combout\);

\CPU|MUX1|saida_MUX[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[1]~0_combout\ = (!\habSW7dt0~1_combout\ & ((\Mem_RAM|ram~568_combout\))) # (\habSW7dt0~1_combout\ & (\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_habSW7dt0~1_combout\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \Mem_RAM|ALT_INV_ram~568_combout\,
	combout => \CPU|MUX1|saida_MUX[1]~0_combout\);

\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( (!\CPU|decoderInstru|saida[0]~4_combout\ & (((\CPU|MUX1|saida_MUX[2]~1_combout\)))) # (\CPU|decoderInstru|saida[0]~4_combout\ & ((!\Mem_ROM|memROM~24_combout\ & (\Mem_ROM|memROM~61_combout\)) # (\Mem_ROM|memROM~24_combout\ 
-- & ((\CPU|MUX1|saida_MUX[2]~1_combout\))))) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( (!\CPU|decoderInstru|saida[0]~4_combout\ & (((\CPU|MUX1|saida_MUX[2]~1_combout\)))) # (\CPU|decoderInstru|saida[0]~4_combout\ & ((!\Mem_ROM|memROM~24_combout\ & (\Mem_ROM|memROM~61_combout\)) # (\Mem_ROM|memROM~24_combout\ & 
-- ((\CPU|MUX1|saida_MUX[2]~1_combout\))))) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[0]~4_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~24_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[2]~1_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

\CPU|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~9_sumout\ = SUM(( (!\CPU|decoderInstru|saida[0]~4_combout\ & (((!\CPU|MUX1|saida_MUX[2]~1_combout\)))) # (\CPU|decoderInstru|saida[0]~4_combout\ & ((!\Mem_ROM|memROM~24_combout\ & (!\Mem_ROM|memROM~61_combout\)) # 
-- (\Mem_ROM|memROM~24_combout\ & ((!\CPU|MUX1|saida_MUX[2]~1_combout\))))) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))
-- \CPU|ULA1|Add1~10\ = CARRY(( (!\CPU|decoderInstru|saida[0]~4_combout\ & (((!\CPU|MUX1|saida_MUX[2]~1_combout\)))) # (\CPU|decoderInstru|saida[0]~4_combout\ & ((!\Mem_ROM|memROM~24_combout\ & (!\Mem_ROM|memROM~61_combout\)) # (\Mem_ROM|memROM~24_combout\ & 
-- ((!\CPU|MUX1|saida_MUX[2]~1_combout\))))) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[0]~4_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~24_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[2]~1_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add1~6\,
	sumout => \CPU|ULA1|Add1~9_sumout\,
	cout => \CPU|ULA1|Add1~10\);

\CPU|ULA1|saida[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~4_combout\ = ( \Mem_RAM|ram~589_combout\ & ( (!\CPU|decoderInstru|saida[6]~5_combout\ & (\Mem_ROM|memROM~61_combout\)) # (\CPU|decoderInstru|saida[6]~5_combout\ & (((!\habSW7dt0~1_combout\) # (\SW[2]~input_o\)))) ) ) # ( 
-- !\Mem_RAM|ram~589_combout\ & ( (!\CPU|decoderInstru|saida[6]~5_combout\ & (\Mem_ROM|memROM~61_combout\)) # (\CPU|decoderInstru|saida[6]~5_combout\ & (((\habSW7dt0~1_combout\ & \SW[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010011010111000101111101010000010100110101110001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datab => \ALT_INV_habSW7dt0~1_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida[6]~5_combout\,
	datad => \ALT_INV_SW[2]~input_o\,
	datae => \Mem_RAM|ALT_INV_ram~589_combout\,
	combout => \CPU|ULA1|saida[2]~4_combout\);

\CPU|ULA1|saida[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~5_combout\ = ( \CPU|ULA1|saida[2]~4_combout\ & ( (!\CPU|ULA1|Equal3~0_combout\ & (((\CPU|ULA1|Add1~9_sumout\)) # (\CPU|ULA1|Equal2~0_combout\))) # (\CPU|ULA1|Equal3~0_combout\ & (((\CPU|ULA1|Add0~9_sumout\)))) ) ) # ( 
-- !\CPU|ULA1|saida[2]~4_combout\ & ( (!\CPU|ULA1|Equal3~0_combout\ & (!\CPU|ULA1|Equal2~0_combout\ & ((\CPU|ULA1|Add1~9_sumout\)))) # (\CPU|ULA1|Equal3~0_combout\ & (((\CPU|ULA1|Add0~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101001001111010111100000101100011010010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal3~0_combout\,
	datab => \CPU|ULA1|ALT_INV_Equal2~0_combout\,
	datac => \CPU|ULA1|ALT_INV_Add0~9_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	datae => \CPU|ULA1|ALT_INV_saida[2]~4_combout\,
	combout => \CPU|ULA1|saida[2]~5_combout\);

\CPU|ULA1|saida[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida\(2) = ( \CPU|ULA1|saida\(2) & ( \CPU|ULA1|saida[7]~1_combout\ & ( \CPU|ULA1|saida[2]~5_combout\ ) ) ) # ( !\CPU|ULA1|saida\(2) & ( \CPU|ULA1|saida[7]~1_combout\ & ( \CPU|ULA1|saida[2]~5_combout\ ) ) ) # ( \CPU|ULA1|saida\(2) & ( 
-- !\CPU|ULA1|saida[7]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[2]~5_combout\,
	datae => \CPU|ULA1|ALT_INV_saida\(2),
	dataf => \CPU|ULA1|ALT_INV_saida[7]~1_combout\,
	combout => \CPU|ULA1|saida\(2));

\CPU|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|ULA1|saida\(2),
	ena => \CPU|decoderInstru|saida[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(2));

\Mem_RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~17_q\);

\Mem_RAM|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~49_q\);

\Mem_RAM|ram~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~81_q\);

\Mem_RAM|ram~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~113_q\);

\Mem_RAM|ram~569\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~569_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~113_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~81_q\ ) ) ) # ( \Mem_ROM|memROM~61_combout\ & ( 
-- !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~49_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~17_q\,
	datab => \Mem_RAM|ALT_INV_ram~49_q\,
	datac => \Mem_RAM|ALT_INV_ram~81_q\,
	datad => \Mem_RAM|ALT_INV_ram~113_q\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~569_combout\);

\Mem_RAM|ram~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~145_q\);

\Mem_RAM|ram~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~177_q\);

\Mem_RAM|ram~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~209_q\);

\Mem_RAM|ram~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~241_q\);

\Mem_RAM|ram~570\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~570_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~241_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~209_q\ ) ) ) # ( \Mem_ROM|memROM~61_combout\ & ( 
-- !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~177_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~145_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~145_q\,
	datab => \Mem_RAM|ALT_INV_ram~177_q\,
	datac => \Mem_RAM|ALT_INV_ram~209_q\,
	datad => \Mem_RAM|ALT_INV_ram~241_q\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~570_combout\);

\Mem_RAM|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~33_q\);

\Mem_RAM|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~65_q\);

\Mem_RAM|ram~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~97_q\);

\Mem_RAM|ram~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~129_q\);

\Mem_RAM|ram~571\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~571_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~129_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~97_q\ ) ) ) # ( \Mem_ROM|memROM~61_combout\ & ( 
-- !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~65_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~33_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~33_q\,
	datab => \Mem_RAM|ALT_INV_ram~65_q\,
	datac => \Mem_RAM|ALT_INV_ram~97_q\,
	datad => \Mem_RAM|ALT_INV_ram~129_q\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~571_combout\);

\Mem_RAM|ram~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~161_q\);

\Mem_RAM|ram~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~193_q\);

\Mem_RAM|ram~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~225_q\);

\Mem_RAM|ram~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~257_q\);

\Mem_RAM|ram~572\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~572_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~257_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~225_q\ ) ) ) # ( \Mem_ROM|memROM~61_combout\ & ( 
-- !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~193_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~161_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~161_q\,
	datab => \Mem_RAM|ALT_INV_ram~193_q\,
	datac => \Mem_RAM|ALT_INV_ram~225_q\,
	datad => \Mem_RAM|ALT_INV_ram~257_q\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~572_combout\);

\Mem_RAM|ram~573\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~573_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~572_combout\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~571_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~570_combout\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~569_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~569_combout\,
	datab => \Mem_RAM|ALT_INV_ram~570_combout\,
	datac => \Mem_RAM|ALT_INV_ram~571_combout\,
	datad => \Mem_RAM|ALT_INV_ram~572_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~573_combout\);

\Mem_RAM|ram~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~273_q\);

\Mem_RAM|ram~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~305_q\);

\Mem_RAM|ram~401\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~401_q\);

\Mem_RAM|ram~433\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~433_q\);

\Mem_RAM|ram~574\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~574_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~433_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~401_q\ ) ) ) # ( \Mem_ROM|memROM~61_combout\ & ( 
-- !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~305_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~273_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~273_q\,
	datab => \Mem_RAM|ALT_INV_ram~305_q\,
	datac => \Mem_RAM|ALT_INV_ram~401_q\,
	datad => \Mem_RAM|ALT_INV_ram~433_q\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~74_combout\,
	combout => \Mem_RAM|ram~574_combout\);

\Mem_RAM|ram~289\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~289_q\);

\Mem_RAM|ram~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~321_q\);

\Mem_RAM|ram~417\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~417_q\);

\Mem_RAM|ram~449\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~449_q\);

\Mem_RAM|ram~575\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~575_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~449_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~417_q\ ) ) ) # ( \Mem_ROM|memROM~61_combout\ & ( 
-- !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~321_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~289_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~289_q\,
	datab => \Mem_RAM|ALT_INV_ram~321_q\,
	datac => \Mem_RAM|ALT_INV_ram~417_q\,
	datad => \Mem_RAM|ALT_INV_ram~449_q\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~74_combout\,
	combout => \Mem_RAM|ram~575_combout\);

\Mem_RAM|ram~337\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~337_q\);

\Mem_RAM|ram~369\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~369_q\);

\Mem_RAM|ram~465\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~465_q\);

\Mem_RAM|ram~497\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~497_q\);

\Mem_RAM|ram~576\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~576_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~497_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~465_q\ ) ) ) # ( \Mem_ROM|memROM~61_combout\ & ( 
-- !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~369_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~337_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~337_q\,
	datab => \Mem_RAM|ALT_INV_ram~369_q\,
	datac => \Mem_RAM|ALT_INV_ram~465_q\,
	datad => \Mem_RAM|ALT_INV_ram~497_q\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~74_combout\,
	combout => \Mem_RAM|ram~576_combout\);

\Mem_RAM|ram~353\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~353_q\);

\Mem_RAM|ram~385\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~385_q\);

\Mem_RAM|ram~481\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~481_q\);

\Mem_RAM|ram~513\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~513_q\);

\Mem_RAM|ram~577\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~577_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~513_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~481_q\ ) ) ) # ( \Mem_ROM|memROM~61_combout\ & ( 
-- !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~385_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~353_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~353_q\,
	datab => \Mem_RAM|ALT_INV_ram~385_q\,
	datac => \Mem_RAM|ALT_INV_ram~481_q\,
	datad => \Mem_RAM|ALT_INV_ram~513_q\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~74_combout\,
	combout => \Mem_RAM|ram~577_combout\);

\Mem_RAM|ram~578\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~578_combout\ = ( \Mem_ROM|memROM~12_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~577_combout\ ) ) ) # ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~576_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~12_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~575_combout\ ) ) ) # ( !\Mem_ROM|memROM~12_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~574_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~574_combout\,
	datab => \Mem_RAM|ALT_INV_ram~575_combout\,
	datac => \Mem_RAM|ALT_INV_ram~576_combout\,
	datad => \Mem_RAM|ALT_INV_ram~577_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~12_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~578_combout\);

\Mem_RAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~25_q\);

\Mem_RAM|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~57_q\);

\Mem_RAM|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~41_q\);

\Mem_RAM|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~73_q\);

\Mem_RAM|ram~579\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~579_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~73_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~41_q\ ) ) ) # ( \Mem_ROM|memROM~61_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~57_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~25_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~25_q\,
	datab => \Mem_RAM|ALT_INV_ram~57_q\,
	datac => \Mem_RAM|ALT_INV_ram~41_q\,
	datad => \Mem_RAM|ALT_INV_ram~73_q\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~579_combout\);

\Mem_RAM|ram~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~153_q\);

\Mem_RAM|ram~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~185_q\);

\Mem_RAM|ram~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~169_q\);

\Mem_RAM|ram~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~201_q\);

\Mem_RAM|ram~580\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~580_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~201_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~169_q\ ) ) ) # ( \Mem_ROM|memROM~61_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~185_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~153_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~153_q\,
	datab => \Mem_RAM|ALT_INV_ram~185_q\,
	datac => \Mem_RAM|ALT_INV_ram~169_q\,
	datad => \Mem_RAM|ALT_INV_ram~201_q\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~580_combout\);

\Mem_RAM|ram~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~89_q\);

\Mem_RAM|ram~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~121_q\);

\Mem_RAM|ram~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~105_q\);

\Mem_RAM|ram~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~137_q\);

\Mem_RAM|ram~581\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~581_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~137_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~105_q\ ) ) ) # ( \Mem_ROM|memROM~61_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~121_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~89_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~89_q\,
	datab => \Mem_RAM|ALT_INV_ram~121_q\,
	datac => \Mem_RAM|ALT_INV_ram~105_q\,
	datad => \Mem_RAM|ALT_INV_ram~137_q\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~581_combout\);

\Mem_RAM|ram~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~217_q\);

\Mem_RAM|ram~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~249_q\);

\Mem_RAM|ram~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~233_q\);

\Mem_RAM|ram~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~265_q\);

\Mem_RAM|ram~582\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~582_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~265_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~233_q\ ) ) ) # ( \Mem_ROM|memROM~61_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~249_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~217_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~217_q\,
	datab => \Mem_RAM|ALT_INV_ram~249_q\,
	datac => \Mem_RAM|ALT_INV_ram~233_q\,
	datad => \Mem_RAM|ALT_INV_ram~265_q\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~582_combout\);

\Mem_RAM|ram~583\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~583_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~582_combout\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~581_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~580_combout\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~579_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~579_combout\,
	datab => \Mem_RAM|ALT_INV_ram~580_combout\,
	datac => \Mem_RAM|ALT_INV_ram~581_combout\,
	datad => \Mem_RAM|ALT_INV_ram~582_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~583_combout\);

\Mem_RAM|ram~281\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~281_q\);

\Mem_RAM|ram~409\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~409_q\);

\Mem_RAM|ram~345\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~345_q\);

\Mem_RAM|ram~473\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~473_q\);

\Mem_RAM|ram~584\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~584_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~473_q\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~345_q\ ) ) ) # ( \Mem_ROM|memROM~74_combout\ & ( 
-- !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~409_q\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~281_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~281_q\,
	datab => \Mem_RAM|ALT_INV_ram~409_q\,
	datac => \Mem_RAM|ALT_INV_ram~345_q\,
	datad => \Mem_RAM|ALT_INV_ram~473_q\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~584_combout\);

\Mem_RAM|ram~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~313_q\);

\Mem_RAM|ram~441\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~441_q\);

\Mem_RAM|ram~377\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~377_q\);

\Mem_RAM|ram~505\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~505_q\);

\Mem_RAM|ram~585\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~585_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~505_q\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~377_q\ ) ) ) # ( \Mem_ROM|memROM~74_combout\ & ( 
-- !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~441_q\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~313_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~313_q\,
	datab => \Mem_RAM|ALT_INV_ram~441_q\,
	datac => \Mem_RAM|ALT_INV_ram~377_q\,
	datad => \Mem_RAM|ALT_INV_ram~505_q\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~585_combout\);

\Mem_RAM|ram~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~297_q\);

\Mem_RAM|ram~425\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~425_q\);

\Mem_RAM|ram~361\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~361_q\);

\Mem_RAM|ram~489\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~489_q\);

\Mem_RAM|ram~586\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~586_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~489_q\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~361_q\ ) ) ) # ( \Mem_ROM|memROM~74_combout\ & ( 
-- !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~425_q\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~297_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~297_q\,
	datab => \Mem_RAM|ALT_INV_ram~425_q\,
	datac => \Mem_RAM|ALT_INV_ram~361_q\,
	datad => \Mem_RAM|ALT_INV_ram~489_q\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~586_combout\);

\Mem_RAM|ram~329\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~329_q\);

\Mem_RAM|ram~457\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~457_q\);

\Mem_RAM|ram~393\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~393_q\);

\Mem_RAM|ram~521\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \Mem_RAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~521_q\);

\Mem_RAM|ram~587\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~587_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~521_q\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~393_q\ ) ) ) # ( \Mem_ROM|memROM~74_combout\ & ( 
-- !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~457_q\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~329_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~329_q\,
	datab => \Mem_RAM|ALT_INV_ram~457_q\,
	datac => \Mem_RAM|ALT_INV_ram~393_q\,
	datad => \Mem_RAM|ALT_INV_ram~521_q\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~587_combout\);

\Mem_RAM|ram~588\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~588_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~587_combout\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~586_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~585_combout\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~584_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~584_combout\,
	datab => \Mem_RAM|ALT_INV_ram~585_combout\,
	datac => \Mem_RAM|ALT_INV_ram~586_combout\,
	datad => \Mem_RAM|ALT_INV_ram~587_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~588_combout\);

\Mem_RAM|ram~589\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~589_combout\ = ( \Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~588_combout\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~583_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~578_combout\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~573_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~573_combout\,
	datab => \Mem_RAM|ALT_INV_ram~578_combout\,
	datac => \Mem_RAM|ALT_INV_ram~583_combout\,
	datad => \Mem_RAM|ALT_INV_ram~588_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~62_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~18_combout\,
	combout => \Mem_RAM|ram~589_combout\);

\CPU|MUX1|saida_MUX[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[2]~1_combout\ = (!\habSW7dt0~1_combout\ & ((\Mem_RAM|ram~589_combout\))) # (\habSW7dt0~1_combout\ & (\SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_habSW7dt0~1_combout\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \Mem_RAM|ALT_INV_ram~589_combout\,
	combout => \CPU|MUX1|saida_MUX[2]~1_combout\);

\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( (!\CPU|decoderInstru|saida[0]~4_combout\ & (((\CPU|MUX1|saida_MUX[3]~2_combout\)))) # (\CPU|decoderInstru|saida[0]~4_combout\ & ((!\Mem_ROM|memROM~24_combout\ & (\Mem_ROM|memROM~68_combout\)) # 
-- (\Mem_ROM|memROM~24_combout\ & ((\CPU|MUX1|saida_MUX[3]~2_combout\))))) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( (!\CPU|decoderInstru|saida[0]~4_combout\ & (((\CPU|MUX1|saida_MUX[3]~2_combout\)))) # (\CPU|decoderInstru|saida[0]~4_combout\ & ((!\Mem_ROM|memROM~24_combout\ & (\Mem_ROM|memROM~68_combout\)) # (\Mem_ROM|memROM~24_combout\ & 
-- ((\CPU|MUX1|saida_MUX[3]~2_combout\))))) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[0]~4_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~24_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[3]~2_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

\CPU|ULA1|saida[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~6_combout\ = ( \Mem_RAM|ram~610_combout\ & ( (!\CPU|decoderInstru|saida[6]~5_combout\ & (\Mem_ROM|memROM~68_combout\)) # (\CPU|decoderInstru|saida[6]~5_combout\ & (((!\habSW7dt0~1_combout\) # (\SW[3]~input_o\)))) ) ) # ( 
-- !\Mem_RAM|ram~610_combout\ & ( (!\CPU|decoderInstru|saida[6]~5_combout\ & (\Mem_ROM|memROM~68_combout\)) # (\CPU|decoderInstru|saida[6]~5_combout\ & (((\habSW7dt0~1_combout\ & \SW[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010011010111000101111101010000010100110101110001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datab => \ALT_INV_habSW7dt0~1_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida[6]~5_combout\,
	datad => \ALT_INV_SW[3]~input_o\,
	datae => \Mem_RAM|ALT_INV_ram~610_combout\,
	combout => \CPU|ULA1|saida[3]~6_combout\);

\CPU|ULA1|saida[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~7_combout\ = ( \CPU|ULA1|saida[3]~6_combout\ & ( (!\CPU|ULA1|Equal3~0_combout\ & (((\CPU|ULA1|Add1~13_sumout\)) # (\CPU|ULA1|Equal2~0_combout\))) # (\CPU|ULA1|Equal3~0_combout\ & (((\CPU|ULA1|Add0~13_sumout\)))) ) ) # ( 
-- !\CPU|ULA1|saida[3]~6_combout\ & ( (!\CPU|ULA1|Equal3~0_combout\ & (!\CPU|ULA1|Equal2~0_combout\ & ((\CPU|ULA1|Add1~13_sumout\)))) # (\CPU|ULA1|Equal3~0_combout\ & (((\CPU|ULA1|Add0~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101001001111010111100000101100011010010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal3~0_combout\,
	datab => \CPU|ULA1|ALT_INV_Equal2~0_combout\,
	datac => \CPU|ULA1|ALT_INV_Add0~13_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	datae => \CPU|ULA1|ALT_INV_saida[3]~6_combout\,
	combout => \CPU|ULA1|saida[3]~7_combout\);

\CPU|ULA1|saida[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida\(3) = ( \CPU|ULA1|saida\(3) & ( \CPU|ULA1|saida[7]~1_combout\ & ( \CPU|ULA1|saida[3]~7_combout\ ) ) ) # ( !\CPU|ULA1|saida\(3) & ( \CPU|ULA1|saida[7]~1_combout\ & ( \CPU|ULA1|saida[3]~7_combout\ ) ) ) # ( \CPU|ULA1|saida\(3) & ( 
-- !\CPU|ULA1|saida[7]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[3]~7_combout\,
	datae => \CPU|ULA1|ALT_INV_saida\(3),
	dataf => \CPU|ULA1|ALT_INV_saida[7]~1_combout\,
	combout => \CPU|ULA1|saida\(3));

\CPU|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|ULA1|saida\(3),
	ena => \CPU|decoderInstru|saida[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(3));

\Mem_RAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~18_q\);

\Mem_RAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~26_q\);

\Mem_RAM|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~34_q\);

\Mem_RAM|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~42_q\);

\Mem_RAM|ram~590\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~590_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~42_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~34_q\ ) ) ) # ( \Mem_ROM|memROM~18_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~26_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~18_q\,
	datab => \Mem_RAM|ALT_INV_ram~26_q\,
	datac => \Mem_RAM|ALT_INV_ram~34_q\,
	datad => \Mem_RAM|ALT_INV_ram~42_q\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~590_combout\);

\Mem_RAM|ram~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~146_q\);

\Mem_RAM|ram~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~154_q\);

\Mem_RAM|ram~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~162_q\);

\Mem_RAM|ram~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~170_q\);

\Mem_RAM|ram~591\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~591_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~170_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~162_q\ ) ) ) # ( \Mem_ROM|memROM~18_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~154_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~146_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~146_q\,
	datab => \Mem_RAM|ALT_INV_ram~154_q\,
	datac => \Mem_RAM|ALT_INV_ram~162_q\,
	datad => \Mem_RAM|ALT_INV_ram~170_q\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~591_combout\);

\Mem_RAM|ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~82_q\);

\Mem_RAM|ram~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~90_q\);

\Mem_RAM|ram~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~98_q\);

\Mem_RAM|ram~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~106_q\);

\Mem_RAM|ram~592\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~592_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~106_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~98_q\ ) ) ) # ( \Mem_ROM|memROM~18_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~90_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~82_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~82_q\,
	datab => \Mem_RAM|ALT_INV_ram~90_q\,
	datac => \Mem_RAM|ALT_INV_ram~98_q\,
	datad => \Mem_RAM|ALT_INV_ram~106_q\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~592_combout\);

\Mem_RAM|ram~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~210_q\);

\Mem_RAM|ram~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~218_q\);

\Mem_RAM|ram~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~226_q\);

\Mem_RAM|ram~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~234_q\);

\Mem_RAM|ram~593\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~593_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~234_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~226_q\ ) ) ) # ( \Mem_ROM|memROM~18_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~218_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~210_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~210_q\,
	datab => \Mem_RAM|ALT_INV_ram~218_q\,
	datac => \Mem_RAM|ALT_INV_ram~226_q\,
	datad => \Mem_RAM|ALT_INV_ram~234_q\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~593_combout\);

\Mem_RAM|ram~594\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~594_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~593_combout\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~592_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~591_combout\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~590_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~590_combout\,
	datab => \Mem_RAM|ALT_INV_ram~591_combout\,
	datac => \Mem_RAM|ALT_INV_ram~592_combout\,
	datad => \Mem_RAM|ALT_INV_ram~593_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~594_combout\);

\Mem_RAM|ram~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~274_q\);

\Mem_RAM|ram~402\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~402_q\);

\Mem_RAM|ram~290\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~290_q\);

\Mem_RAM|ram~418\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~418_q\);

\Mem_RAM|ram~595\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~595_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~418_q\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~290_q\ ) ) ) # ( \Mem_ROM|memROM~74_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~402_q\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~274_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~274_q\,
	datab => \Mem_RAM|ALT_INV_ram~402_q\,
	datac => \Mem_RAM|ALT_INV_ram~290_q\,
	datad => \Mem_RAM|ALT_INV_ram~418_q\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~595_combout\);

\Mem_RAM|ram~282\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~282_q\);

\Mem_RAM|ram~410\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~410_q\);

\Mem_RAM|ram~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~298_q\);

\Mem_RAM|ram~426\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~426_q\);

\Mem_RAM|ram~596\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~596_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~426_q\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~298_q\ ) ) ) # ( \Mem_ROM|memROM~74_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~410_q\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~282_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~282_q\,
	datab => \Mem_RAM|ALT_INV_ram~410_q\,
	datac => \Mem_RAM|ALT_INV_ram~298_q\,
	datad => \Mem_RAM|ALT_INV_ram~426_q\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~596_combout\);

\Mem_RAM|ram~338\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~338_q\);

\Mem_RAM|ram~466\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~466_q\);

\Mem_RAM|ram~354\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~354_q\);

\Mem_RAM|ram~482\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~482_q\);

\Mem_RAM|ram~597\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~597_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~482_q\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~354_q\ ) ) ) # ( \Mem_ROM|memROM~74_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~466_q\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~338_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~338_q\,
	datab => \Mem_RAM|ALT_INV_ram~466_q\,
	datac => \Mem_RAM|ALT_INV_ram~354_q\,
	datad => \Mem_RAM|ALT_INV_ram~482_q\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~597_combout\);

\Mem_RAM|ram~346\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~346_q\);

\Mem_RAM|ram~474\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~474_q\);

\Mem_RAM|ram~362\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~362_q\);

\Mem_RAM|ram~490\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~490_q\);

\Mem_RAM|ram~598\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~598_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~490_q\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~362_q\ ) ) ) # ( \Mem_ROM|memROM~74_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~474_q\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~346_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~346_q\,
	datab => \Mem_RAM|ALT_INV_ram~474_q\,
	datac => \Mem_RAM|ALT_INV_ram~362_q\,
	datad => \Mem_RAM|ALT_INV_ram~490_q\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~598_combout\);

\Mem_RAM|ram~599\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~599_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~598_combout\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~597_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~596_combout\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~595_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~595_combout\,
	datab => \Mem_RAM|ALT_INV_ram~596_combout\,
	datac => \Mem_RAM|ALT_INV_ram~597_combout\,
	datad => \Mem_RAM|ALT_INV_ram~598_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~599_combout\);

\Mem_RAM|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~50_q\);

\Mem_RAM|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~66_q\);

\Mem_RAM|ram~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~114_q\);

\Mem_RAM|ram~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~130_q\);

\Mem_RAM|ram~600\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~600_combout\ = ( \Mem_ROM|memROM~12_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~130_q\ ) ) ) # ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~114_q\ ) ) ) # ( \Mem_ROM|memROM~12_combout\ & ( 
-- !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~66_q\ ) ) ) # ( !\Mem_ROM|memROM~12_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~50_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~50_q\,
	datab => \Mem_RAM|ALT_INV_ram~66_q\,
	datac => \Mem_RAM|ALT_INV_ram~114_q\,
	datad => \Mem_RAM|ALT_INV_ram~130_q\,
	datae => \Mem_ROM|ALT_INV_memROM~12_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~600_combout\);

\Mem_RAM|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~58_q\);

\Mem_RAM|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~74_q\);

\Mem_RAM|ram~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~122_q\);

\Mem_RAM|ram~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~138_q\);

\Mem_RAM|ram~601\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~601_combout\ = ( \Mem_ROM|memROM~12_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~138_q\ ) ) ) # ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~122_q\ ) ) ) # ( \Mem_ROM|memROM~12_combout\ & ( 
-- !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~74_q\ ) ) ) # ( !\Mem_ROM|memROM~12_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~58_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~58_q\,
	datab => \Mem_RAM|ALT_INV_ram~74_q\,
	datac => \Mem_RAM|ALT_INV_ram~122_q\,
	datad => \Mem_RAM|ALT_INV_ram~138_q\,
	datae => \Mem_ROM|ALT_INV_memROM~12_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~601_combout\);

\Mem_RAM|ram~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~178_q\);

\Mem_RAM|ram~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~194_q\);

\Mem_RAM|ram~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~242_q\);

\Mem_RAM|ram~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~258_q\);

\Mem_RAM|ram~602\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~602_combout\ = ( \Mem_ROM|memROM~12_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~258_q\ ) ) ) # ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~242_q\ ) ) ) # ( \Mem_ROM|memROM~12_combout\ & ( 
-- !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~194_q\ ) ) ) # ( !\Mem_ROM|memROM~12_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~178_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~178_q\,
	datab => \Mem_RAM|ALT_INV_ram~194_q\,
	datac => \Mem_RAM|ALT_INV_ram~242_q\,
	datad => \Mem_RAM|ALT_INV_ram~258_q\,
	datae => \Mem_ROM|ALT_INV_memROM~12_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~602_combout\);

\Mem_RAM|ram~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~186_q\);

\Mem_RAM|ram~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~202_q\);

\Mem_RAM|ram~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~250_q\);

\Mem_RAM|ram~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~266_q\);

\Mem_RAM|ram~603\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~603_combout\ = ( \Mem_ROM|memROM~12_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~266_q\ ) ) ) # ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~250_q\ ) ) ) # ( \Mem_ROM|memROM~12_combout\ & ( 
-- !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~202_q\ ) ) ) # ( !\Mem_ROM|memROM~12_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~186_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~186_q\,
	datab => \Mem_RAM|ALT_INV_ram~202_q\,
	datac => \Mem_RAM|ALT_INV_ram~250_q\,
	datad => \Mem_RAM|ALT_INV_ram~266_q\,
	datae => \Mem_ROM|ALT_INV_memROM~12_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~603_combout\);

\Mem_RAM|ram~604\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~604_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~603_combout\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~602_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~601_combout\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~600_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~600_combout\,
	datab => \Mem_RAM|ALT_INV_ram~601_combout\,
	datac => \Mem_RAM|ALT_INV_ram~602_combout\,
	datad => \Mem_RAM|ALT_INV_ram~603_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~74_combout\,
	combout => \Mem_RAM|ram~604_combout\);

\Mem_RAM|ram~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~306_q\);

\Mem_RAM|ram~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~314_q\);

\Mem_RAM|ram~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~322_q\);

\Mem_RAM|ram~330\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~330_q\);

\Mem_RAM|ram~605\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~605_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~330_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~322_q\ ) ) ) # ( \Mem_ROM|memROM~18_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~314_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~306_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~306_q\,
	datab => \Mem_RAM|ALT_INV_ram~314_q\,
	datac => \Mem_RAM|ALT_INV_ram~322_q\,
	datad => \Mem_RAM|ALT_INV_ram~330_q\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~605_combout\);

\Mem_RAM|ram~434\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~434_q\);

\Mem_RAM|ram~442\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~442_q\);

\Mem_RAM|ram~450\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~450_q\);

\Mem_RAM|ram~458\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~458_q\);

\Mem_RAM|ram~606\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~606_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~458_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~450_q\ ) ) ) # ( \Mem_ROM|memROM~18_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~442_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~434_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~434_q\,
	datab => \Mem_RAM|ALT_INV_ram~442_q\,
	datac => \Mem_RAM|ALT_INV_ram~450_q\,
	datad => \Mem_RAM|ALT_INV_ram~458_q\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~606_combout\);

\Mem_RAM|ram~370\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~370_q\);

\Mem_RAM|ram~378\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~378_q\);

\Mem_RAM|ram~386\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~386_q\);

\Mem_RAM|ram~394\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~394_q\);

\Mem_RAM|ram~607\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~607_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~394_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~386_q\ ) ) ) # ( \Mem_ROM|memROM~18_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~378_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~370_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~370_q\,
	datab => \Mem_RAM|ALT_INV_ram~378_q\,
	datac => \Mem_RAM|ALT_INV_ram~386_q\,
	datad => \Mem_RAM|ALT_INV_ram~394_q\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~607_combout\);

\Mem_RAM|ram~498\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~498_q\);

\Mem_RAM|ram~506\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~506_q\);

\Mem_RAM|ram~514\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~514_q\);

\Mem_RAM|ram~522\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \Mem_RAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~522_q\);

\Mem_RAM|ram~608\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~608_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~522_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~514_q\ ) ) ) # ( \Mem_ROM|memROM~18_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~506_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~498_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~498_q\,
	datab => \Mem_RAM|ALT_INV_ram~506_q\,
	datac => \Mem_RAM|ALT_INV_ram~514_q\,
	datad => \Mem_RAM|ALT_INV_ram~522_q\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~608_combout\);

\Mem_RAM|ram~609\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~609_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~608_combout\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~607_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~606_combout\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~605_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~605_combout\,
	datab => \Mem_RAM|ALT_INV_ram~606_combout\,
	datac => \Mem_RAM|ALT_INV_ram~607_combout\,
	datad => \Mem_RAM|ALT_INV_ram~608_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~609_combout\);

\Mem_RAM|ram~610\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~610_combout\ = ( \Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~609_combout\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~604_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~599_combout\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~594_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~594_combout\,
	datab => \Mem_RAM|ALT_INV_ram~599_combout\,
	datac => \Mem_RAM|ALT_INV_ram~604_combout\,
	datad => \Mem_RAM|ALT_INV_ram~609_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~62_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~61_combout\,
	combout => \Mem_RAM|ram~610_combout\);

\CPU|MUX1|saida_MUX[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[3]~2_combout\ = (!\habSW7dt0~1_combout\ & ((\Mem_RAM|ram~610_combout\))) # (\habSW7dt0~1_combout\ & (\SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_habSW7dt0~1_combout\,
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \Mem_RAM|ALT_INV_ram~610_combout\,
	combout => \CPU|MUX1|saida_MUX[3]~2_combout\);

\CPU|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~13_sumout\ = SUM(( (!\CPU|decoderInstru|saida[0]~4_combout\ & (((!\CPU|MUX1|saida_MUX[3]~2_combout\)))) # (\CPU|decoderInstru|saida[0]~4_combout\ & ((!\Mem_ROM|memROM~24_combout\ & (!\Mem_ROM|memROM~68_combout\)) # 
-- (\Mem_ROM|memROM~24_combout\ & ((!\CPU|MUX1|saida_MUX[3]~2_combout\))))) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add1~10\ ))
-- \CPU|ULA1|Add1~14\ = CARRY(( (!\CPU|decoderInstru|saida[0]~4_combout\ & (((!\CPU|MUX1|saida_MUX[3]~2_combout\)))) # (\CPU|decoderInstru|saida[0]~4_combout\ & ((!\Mem_ROM|memROM~24_combout\ & (!\Mem_ROM|memROM~68_combout\)) # (\Mem_ROM|memROM~24_combout\ & 
-- ((!\CPU|MUX1|saida_MUX[3]~2_combout\))))) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[0]~4_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~24_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~68_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[3]~2_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add1~10\,
	sumout => \CPU|ULA1|Add1~13_sumout\,
	cout => \CPU|ULA1|Add1~14\);

\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( (!\CPU|decoderInstru|saida[6]~5_combout\ & (!\CPU|PC|DOUT\(8) & ((\Mem_ROM|memROM~73_combout\)))) # (\CPU|decoderInstru|saida[6]~5_combout\ & (((\CPU|MUX1|saida_MUX[4]~3_combout\)))) ) + ( \CPU|REGA|DOUT\(4) ) + ( 
-- \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( (!\CPU|decoderInstru|saida[6]~5_combout\ & (!\CPU|PC|DOUT\(8) & ((\Mem_ROM|memROM~73_combout\)))) # (\CPU|decoderInstru|saida[6]~5_combout\ & (((\CPU|MUX1|saida_MUX[4]~3_combout\)))) ) + ( \CPU|REGA|DOUT\(4) ) + ( 
-- \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[6]~5_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \CPU|MUX1|ALT_INV_saida_MUX[4]~3_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~73_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

\CPU|ULA1|saida[4]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~8_combout\ = ( \Mem_RAM|ram~631_combout\ & ( (!\CPU|decoderInstru|saida[6]~5_combout\ & (\Mem_ROM|memROM~74_combout\)) # (\CPU|decoderInstru|saida[6]~5_combout\ & (((!\habSW7dt0~1_combout\) # (\SW[4]~input_o\)))) ) ) # ( 
-- !\Mem_RAM|ram~631_combout\ & ( (!\CPU|decoderInstru|saida[6]~5_combout\ & (\Mem_ROM|memROM~74_combout\)) # (\CPU|decoderInstru|saida[6]~5_combout\ & (((\habSW7dt0~1_combout\ & \SW[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010011010111000101111101010000010100110101110001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~74_combout\,
	datab => \ALT_INV_habSW7dt0~1_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida[6]~5_combout\,
	datad => \ALT_INV_SW[4]~input_o\,
	datae => \Mem_RAM|ALT_INV_ram~631_combout\,
	combout => \CPU|ULA1|saida[4]~8_combout\);

\CPU|ULA1|saida[4]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~9_combout\ = ( \CPU|ULA1|saida[4]~8_combout\ & ( (!\CPU|ULA1|Equal3~0_combout\ & (((\CPU|ULA1|Add1~17_sumout\)) # (\CPU|ULA1|Equal2~0_combout\))) # (\CPU|ULA1|Equal3~0_combout\ & (((\CPU|ULA1|Add0~17_sumout\)))) ) ) # ( 
-- !\CPU|ULA1|saida[4]~8_combout\ & ( (!\CPU|ULA1|Equal3~0_combout\ & (!\CPU|ULA1|Equal2~0_combout\ & ((\CPU|ULA1|Add1~17_sumout\)))) # (\CPU|ULA1|Equal3~0_combout\ & (((\CPU|ULA1|Add0~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101001001111010111100000101100011010010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal3~0_combout\,
	datab => \CPU|ULA1|ALT_INV_Equal2~0_combout\,
	datac => \CPU|ULA1|ALT_INV_Add0~17_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	datae => \CPU|ULA1|ALT_INV_saida[4]~8_combout\,
	combout => \CPU|ULA1|saida[4]~9_combout\);

\CPU|ULA1|saida[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida\(4) = ( \CPU|ULA1|saida\(4) & ( \CPU|ULA1|saida[7]~1_combout\ & ( \CPU|ULA1|saida[4]~9_combout\ ) ) ) # ( !\CPU|ULA1|saida\(4) & ( \CPU|ULA1|saida[7]~1_combout\ & ( \CPU|ULA1|saida[4]~9_combout\ ) ) ) # ( \CPU|ULA1|saida\(4) & ( 
-- !\CPU|ULA1|saida[7]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[4]~9_combout\,
	datae => \CPU|ULA1|ALT_INV_saida\(4),
	dataf => \CPU|ULA1|ALT_INV_saida[7]~1_combout\,
	combout => \CPU|ULA1|saida\(4));

\CPU|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|ULA1|saida\(4),
	ena => \CPU|decoderInstru|saida[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(4));

\Mem_RAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~19_q\);

\Mem_RAM|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~27_q\);

\Mem_RAM|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~51_q\);

\Mem_RAM|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~59_q\);

\Mem_RAM|ram~611\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~611_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~59_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~51_q\ ) ) ) # ( \Mem_ROM|memROM~18_combout\ & ( 
-- !\Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~27_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~19_q\,
	datab => \Mem_RAM|ALT_INV_ram~27_q\,
	datac => \Mem_RAM|ALT_INV_ram~51_q\,
	datad => \Mem_RAM|ALT_INV_ram~59_q\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~61_combout\,
	combout => \Mem_RAM|ram~611_combout\);

\Mem_RAM|ram~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~147_q\);

\Mem_RAM|ram~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~155_q\);

\Mem_RAM|ram~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~179_q\);

\Mem_RAM|ram~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~187_q\);

\Mem_RAM|ram~612\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~612_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~187_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~179_q\ ) ) ) # ( \Mem_ROM|memROM~18_combout\ & ( 
-- !\Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~155_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~147_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~147_q\,
	datab => \Mem_RAM|ALT_INV_ram~155_q\,
	datac => \Mem_RAM|ALT_INV_ram~179_q\,
	datad => \Mem_RAM|ALT_INV_ram~187_q\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~61_combout\,
	combout => \Mem_RAM|ram~612_combout\);

\Mem_RAM|ram~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~83_q\);

\Mem_RAM|ram~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~91_q\);

\Mem_RAM|ram~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~115_q\);

\Mem_RAM|ram~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~123_q\);

\Mem_RAM|ram~613\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~613_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~123_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~115_q\ ) ) ) # ( \Mem_ROM|memROM~18_combout\ & ( 
-- !\Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~91_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~83_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~83_q\,
	datab => \Mem_RAM|ALT_INV_ram~91_q\,
	datac => \Mem_RAM|ALT_INV_ram~115_q\,
	datad => \Mem_RAM|ALT_INV_ram~123_q\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~61_combout\,
	combout => \Mem_RAM|ram~613_combout\);

\Mem_RAM|ram~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~211_q\);

\Mem_RAM|ram~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~219_q\);

\Mem_RAM|ram~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~243_q\);

\Mem_RAM|ram~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~251_q\);

\Mem_RAM|ram~614\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~614_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~251_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~243_q\ ) ) ) # ( \Mem_ROM|memROM~18_combout\ & ( 
-- !\Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~219_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~211_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~211_q\,
	datab => \Mem_RAM|ALT_INV_ram~219_q\,
	datac => \Mem_RAM|ALT_INV_ram~243_q\,
	datad => \Mem_RAM|ALT_INV_ram~251_q\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~61_combout\,
	combout => \Mem_RAM|ram~614_combout\);

\Mem_RAM|ram~615\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~615_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~614_combout\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~613_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~612_combout\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~611_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~611_combout\,
	datab => \Mem_RAM|ALT_INV_ram~612_combout\,
	datac => \Mem_RAM|ALT_INV_ram~613_combout\,
	datad => \Mem_RAM|ALT_INV_ram~614_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~615_combout\);

\Mem_RAM|ram~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~275_q\);

\Mem_RAM|ram~283\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~283_q\);

\Mem_RAM|ram~339\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~339_q\);

\Mem_RAM|ram~347\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~347_q\);

\Mem_RAM|ram~616\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~616_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~347_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~339_q\ ) ) ) # ( \Mem_ROM|memROM~18_combout\ & ( 
-- !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~283_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~275_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~275_q\,
	datab => \Mem_RAM|ALT_INV_ram~283_q\,
	datac => \Mem_RAM|ALT_INV_ram~339_q\,
	datad => \Mem_RAM|ALT_INV_ram~347_q\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~616_combout\);

\Mem_RAM|ram~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~307_q\);

\Mem_RAM|ram~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~315_q\);

\Mem_RAM|ram~371\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~371_q\);

\Mem_RAM|ram~379\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~379_q\);

\Mem_RAM|ram~617\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~617_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~379_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~371_q\ ) ) ) # ( \Mem_ROM|memROM~18_combout\ & ( 
-- !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~315_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~307_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~307_q\,
	datab => \Mem_RAM|ALT_INV_ram~315_q\,
	datac => \Mem_RAM|ALT_INV_ram~371_q\,
	datad => \Mem_RAM|ALT_INV_ram~379_q\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~617_combout\);

\Mem_RAM|ram~403\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~403_q\);

\Mem_RAM|ram~411\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~411_q\);

\Mem_RAM|ram~467\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~467_q\);

\Mem_RAM|ram~475\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~475_q\);

\Mem_RAM|ram~618\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~618_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~475_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~467_q\ ) ) ) # ( \Mem_ROM|memROM~18_combout\ & ( 
-- !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~411_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~403_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~403_q\,
	datab => \Mem_RAM|ALT_INV_ram~411_q\,
	datac => \Mem_RAM|ALT_INV_ram~467_q\,
	datad => \Mem_RAM|ALT_INV_ram~475_q\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~618_combout\);

\Mem_RAM|ram~435\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~435_q\);

\Mem_RAM|ram~443\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~443_q\);

\Mem_RAM|ram~499\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~499_q\);

\Mem_RAM|ram~507\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~507_q\);

\Mem_RAM|ram~619\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~619_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~507_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~499_q\ ) ) ) # ( \Mem_ROM|memROM~18_combout\ & ( 
-- !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~443_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~435_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~435_q\,
	datab => \Mem_RAM|ALT_INV_ram~443_q\,
	datac => \Mem_RAM|ALT_INV_ram~499_q\,
	datad => \Mem_RAM|ALT_INV_ram~507_q\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~619_combout\);

\Mem_RAM|ram~620\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~620_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~619_combout\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~618_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~617_combout\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~616_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~616_combout\,
	datab => \Mem_RAM|ALT_INV_ram~617_combout\,
	datac => \Mem_RAM|ALT_INV_ram~618_combout\,
	datad => \Mem_RAM|ALT_INV_ram~619_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~74_combout\,
	combout => \Mem_RAM|ram~620_combout\);

\Mem_RAM|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~35_q\);

\Mem_RAM|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~43_q\);

\Mem_RAM|ram~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~163_q\);

\Mem_RAM|ram~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~171_q\);

\Mem_RAM|ram~621\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~621_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~171_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~163_q\ ) ) ) # ( \Mem_ROM|memROM~18_combout\ & ( 
-- !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~43_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~35_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~35_q\,
	datab => \Mem_RAM|ALT_INV_ram~43_q\,
	datac => \Mem_RAM|ALT_INV_ram~163_q\,
	datad => \Mem_RAM|ALT_INV_ram~171_q\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~74_combout\,
	combout => \Mem_RAM|ram~621_combout\);

\Mem_RAM|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~67_q\);

\Mem_RAM|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~75_q\);

\Mem_RAM|ram~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~195_q\);

\Mem_RAM|ram~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~203_q\);

\Mem_RAM|ram~622\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~622_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~203_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~195_q\ ) ) ) # ( \Mem_ROM|memROM~18_combout\ & ( 
-- !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~75_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~67_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~67_q\,
	datab => \Mem_RAM|ALT_INV_ram~75_q\,
	datac => \Mem_RAM|ALT_INV_ram~195_q\,
	datad => \Mem_RAM|ALT_INV_ram~203_q\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~74_combout\,
	combout => \Mem_RAM|ram~622_combout\);

\Mem_RAM|ram~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~99_q\);

\Mem_RAM|ram~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~107_q\);

\Mem_RAM|ram~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~227_q\);

\Mem_RAM|ram~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~235_q\);

\Mem_RAM|ram~623\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~623_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~235_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~227_q\ ) ) ) # ( \Mem_ROM|memROM~18_combout\ & ( 
-- !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~107_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~99_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~99_q\,
	datab => \Mem_RAM|ALT_INV_ram~107_q\,
	datac => \Mem_RAM|ALT_INV_ram~227_q\,
	datad => \Mem_RAM|ALT_INV_ram~235_q\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~74_combout\,
	combout => \Mem_RAM|ram~623_combout\);

\Mem_RAM|ram~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~131_q\);

\Mem_RAM|ram~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~139_q\);

\Mem_RAM|ram~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~259_q\);

\Mem_RAM|ram~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~267_q\);

\Mem_RAM|ram~624\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~624_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~267_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~259_q\ ) ) ) # ( \Mem_ROM|memROM~18_combout\ & ( 
-- !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~139_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~131_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~131_q\,
	datab => \Mem_RAM|ALT_INV_ram~139_q\,
	datac => \Mem_RAM|ALT_INV_ram~259_q\,
	datad => \Mem_RAM|ALT_INV_ram~267_q\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~74_combout\,
	combout => \Mem_RAM|ram~624_combout\);

\Mem_RAM|ram~625\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~625_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~624_combout\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~623_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~622_combout\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~621_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~621_combout\,
	datab => \Mem_RAM|ALT_INV_ram~622_combout\,
	datac => \Mem_RAM|ALT_INV_ram~623_combout\,
	datad => \Mem_RAM|ALT_INV_ram~624_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~625_combout\);

\Mem_RAM|ram~291\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~291_q\);

\Mem_RAM|ram~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~299_q\);

\Mem_RAM|ram~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~323_q\);

\Mem_RAM|ram~331\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~331_q\);

\Mem_RAM|ram~626\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~626_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~331_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~323_q\ ) ) ) # ( \Mem_ROM|memROM~18_combout\ & ( 
-- !\Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~299_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~291_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~291_q\,
	datab => \Mem_RAM|ALT_INV_ram~299_q\,
	datac => \Mem_RAM|ALT_INV_ram~323_q\,
	datad => \Mem_RAM|ALT_INV_ram~331_q\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~61_combout\,
	combout => \Mem_RAM|ram~626_combout\);

\Mem_RAM|ram~419\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~419_q\);

\Mem_RAM|ram~427\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~427_q\);

\Mem_RAM|ram~451\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~451_q\);

\Mem_RAM|ram~459\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~459_q\);

\Mem_RAM|ram~627\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~627_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~459_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~451_q\ ) ) ) # ( \Mem_ROM|memROM~18_combout\ & ( 
-- !\Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~427_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~419_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~419_q\,
	datab => \Mem_RAM|ALT_INV_ram~427_q\,
	datac => \Mem_RAM|ALT_INV_ram~451_q\,
	datad => \Mem_RAM|ALT_INV_ram~459_q\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~61_combout\,
	combout => \Mem_RAM|ram~627_combout\);

\Mem_RAM|ram~355\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~355_q\);

\Mem_RAM|ram~363\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~363_q\);

\Mem_RAM|ram~387\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~387_q\);

\Mem_RAM|ram~395\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~395_q\);

\Mem_RAM|ram~628\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~628_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~395_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~387_q\ ) ) ) # ( \Mem_ROM|memROM~18_combout\ & ( 
-- !\Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~363_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~355_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~355_q\,
	datab => \Mem_RAM|ALT_INV_ram~363_q\,
	datac => \Mem_RAM|ALT_INV_ram~387_q\,
	datad => \Mem_RAM|ALT_INV_ram~395_q\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~61_combout\,
	combout => \Mem_RAM|ram~628_combout\);

\Mem_RAM|ram~483\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~483_q\);

\Mem_RAM|ram~491\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~491_q\);

\Mem_RAM|ram~515\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~515_q\);

\Mem_RAM|ram~523\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \Mem_RAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~523_q\);

\Mem_RAM|ram~629\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~629_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~523_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~515_q\ ) ) ) # ( \Mem_ROM|memROM~18_combout\ & ( 
-- !\Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~491_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~483_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~483_q\,
	datab => \Mem_RAM|ALT_INV_ram~491_q\,
	datac => \Mem_RAM|ALT_INV_ram~515_q\,
	datad => \Mem_RAM|ALT_INV_ram~523_q\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~61_combout\,
	combout => \Mem_RAM|ram~629_combout\);

\Mem_RAM|ram~630\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~630_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~629_combout\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~628_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~627_combout\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~626_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~626_combout\,
	datab => \Mem_RAM|ALT_INV_ram~627_combout\,
	datac => \Mem_RAM|ALT_INV_ram~628_combout\,
	datad => \Mem_RAM|ALT_INV_ram~629_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~630_combout\);

\Mem_RAM|ram~631\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~631_combout\ = ( \Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~630_combout\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~625_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~620_combout\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~615_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~615_combout\,
	datab => \Mem_RAM|ALT_INV_ram~620_combout\,
	datac => \Mem_RAM|ALT_INV_ram~625_combout\,
	datad => \Mem_RAM|ALT_INV_ram~630_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~62_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~631_combout\);

\CPU|MUX1|saida_MUX[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[4]~3_combout\ = (!\habSW7dt0~1_combout\ & ((\Mem_RAM|ram~631_combout\))) # (\habSW7dt0~1_combout\ & (\SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_habSW7dt0~1_combout\,
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \Mem_RAM|ALT_INV_ram~631_combout\,
	combout => \CPU|MUX1|saida_MUX[4]~3_combout\);

\CPU|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~17_sumout\ = SUM(( (!\CPU|decoderInstru|saida[0]~4_combout\ & (((!\CPU|MUX1|saida_MUX[4]~3_combout\)))) # (\CPU|decoderInstru|saida[0]~4_combout\ & ((!\Mem_ROM|memROM~24_combout\ & (!\Mem_ROM|memROM~74_combout\)) # 
-- (\Mem_ROM|memROM~24_combout\ & ((!\CPU|MUX1|saida_MUX[4]~3_combout\))))) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add1~14\ ))
-- \CPU|ULA1|Add1~18\ = CARRY(( (!\CPU|decoderInstru|saida[0]~4_combout\ & (((!\CPU|MUX1|saida_MUX[4]~3_combout\)))) # (\CPU|decoderInstru|saida[0]~4_combout\ & ((!\Mem_ROM|memROM~24_combout\ & (!\Mem_ROM|memROM~74_combout\)) # (\Mem_ROM|memROM~24_combout\ & 
-- ((!\CPU|MUX1|saida_MUX[4]~3_combout\))))) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[0]~4_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~24_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~74_combout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[4]~3_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add1~14\,
	sumout => \CPU|ULA1|Add1~17_sumout\,
	cout => \CPU|ULA1|Add1~18\);

\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( (!\CPU|decoderInstru|saida[6]~5_combout\ & (!\CPU|PC|DOUT\(8) & ((\Mem_ROM|memROM~5_combout\)))) # (\CPU|decoderInstru|saida[6]~5_combout\ & (((\CPU|MUX1|saida_MUX[5]~4_combout\)))) ) + ( \CPU|REGA|DOUT\(5) ) + ( 
-- \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( (!\CPU|decoderInstru|saida[6]~5_combout\ & (!\CPU|PC|DOUT\(8) & ((\Mem_ROM|memROM~5_combout\)))) # (\CPU|decoderInstru|saida[6]~5_combout\ & (((\CPU|MUX1|saida_MUX[5]~4_combout\)))) ) + ( \CPU|REGA|DOUT\(5) ) + ( 
-- \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[6]~5_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \CPU|MUX1|ALT_INV_saida_MUX[5]~4_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~5_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

\CPU|ULA1|saida[5]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~10_combout\ = ( \Mem_RAM|ram~652_combout\ & ( (!\CPU|decoderInstru|saida[6]~5_combout\ & (\Mem_ROM|memROM~62_combout\)) # (\CPU|decoderInstru|saida[6]~5_combout\ & (((!\habSW7dt0~1_combout\) # (\SW[5]~input_o\)))) ) ) # ( 
-- !\Mem_RAM|ram~652_combout\ & ( (!\CPU|decoderInstru|saida[6]~5_combout\ & (\Mem_ROM|memROM~62_combout\)) # (\CPU|decoderInstru|saida[6]~5_combout\ & (((\habSW7dt0~1_combout\ & \SW[5]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010011010111000101111101010000010100110101110001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~62_combout\,
	datab => \ALT_INV_habSW7dt0~1_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida[6]~5_combout\,
	datad => \ALT_INV_SW[5]~input_o\,
	datae => \Mem_RAM|ALT_INV_ram~652_combout\,
	combout => \CPU|ULA1|saida[5]~10_combout\);

\CPU|ULA1|saida[5]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~11_combout\ = ( \CPU|ULA1|saida[5]~10_combout\ & ( (!\CPU|ULA1|Equal3~0_combout\ & (((\CPU|ULA1|Add1~21_sumout\)) # (\CPU|ULA1|Equal2~0_combout\))) # (\CPU|ULA1|Equal3~0_combout\ & (((\CPU|ULA1|Add0~21_sumout\)))) ) ) # ( 
-- !\CPU|ULA1|saida[5]~10_combout\ & ( (!\CPU|ULA1|Equal3~0_combout\ & (!\CPU|ULA1|Equal2~0_combout\ & ((\CPU|ULA1|Add1~21_sumout\)))) # (\CPU|ULA1|Equal3~0_combout\ & (((\CPU|ULA1|Add0~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101001001111010111100000101100011010010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal3~0_combout\,
	datab => \CPU|ULA1|ALT_INV_Equal2~0_combout\,
	datac => \CPU|ULA1|ALT_INV_Add0~21_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	datae => \CPU|ULA1|ALT_INV_saida[5]~10_combout\,
	combout => \CPU|ULA1|saida[5]~11_combout\);

\CPU|ULA1|saida[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida\(5) = ( \CPU|ULA1|saida\(5) & ( \CPU|ULA1|saida[7]~1_combout\ & ( \CPU|ULA1|saida[5]~11_combout\ ) ) ) # ( !\CPU|ULA1|saida\(5) & ( \CPU|ULA1|saida[7]~1_combout\ & ( \CPU|ULA1|saida[5]~11_combout\ ) ) ) # ( \CPU|ULA1|saida\(5) & ( 
-- !\CPU|ULA1|saida[7]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[5]~11_combout\,
	datae => \CPU|ULA1|ALT_INV_saida\(5),
	dataf => \CPU|ULA1|ALT_INV_saida[7]~1_combout\,
	combout => \CPU|ULA1|saida\(5));

\CPU|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|ULA1|saida\(5),
	ena => \CPU|decoderInstru|saida[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(5));

\Mem_RAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~20_q\);

\Mem_RAM|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~52_q\);

\Mem_RAM|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~36_q\);

\Mem_RAM|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~68_q\);

\Mem_RAM|ram~632\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~632_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~68_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~36_q\ ) ) ) # ( \Mem_ROM|memROM~61_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~52_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~20_q\,
	datab => \Mem_RAM|ALT_INV_ram~52_q\,
	datac => \Mem_RAM|ALT_INV_ram~36_q\,
	datad => \Mem_RAM|ALT_INV_ram~68_q\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~632_combout\);

\Mem_RAM|ram~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~148_q\);

\Mem_RAM|ram~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~180_q\);

\Mem_RAM|ram~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~164_q\);

\Mem_RAM|ram~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~196_q\);

\Mem_RAM|ram~633\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~633_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~196_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~164_q\ ) ) ) # ( \Mem_ROM|memROM~61_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~180_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~148_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~148_q\,
	datab => \Mem_RAM|ALT_INV_ram~180_q\,
	datac => \Mem_RAM|ALT_INV_ram~164_q\,
	datad => \Mem_RAM|ALT_INV_ram~196_q\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~633_combout\);

\Mem_RAM|ram~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~84_q\);

\Mem_RAM|ram~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~116_q\);

\Mem_RAM|ram~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~100_q\);

\Mem_RAM|ram~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~132_q\);

\Mem_RAM|ram~634\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~634_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~132_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~100_q\ ) ) ) # ( \Mem_ROM|memROM~61_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~116_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~84_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~84_q\,
	datab => \Mem_RAM|ALT_INV_ram~116_q\,
	datac => \Mem_RAM|ALT_INV_ram~100_q\,
	datad => \Mem_RAM|ALT_INV_ram~132_q\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~634_combout\);

\Mem_RAM|ram~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~212_q\);

\Mem_RAM|ram~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~244_q\);

\Mem_RAM|ram~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~228_q\);

\Mem_RAM|ram~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~260_q\);

\Mem_RAM|ram~635\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~635_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~260_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~228_q\ ) ) ) # ( \Mem_ROM|memROM~61_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~244_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~212_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~212_q\,
	datab => \Mem_RAM|ALT_INV_ram~244_q\,
	datac => \Mem_RAM|ALT_INV_ram~228_q\,
	datad => \Mem_RAM|ALT_INV_ram~260_q\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~635_combout\);

\Mem_RAM|ram~636\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~636_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~635_combout\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~634_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~633_combout\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~632_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~632_combout\,
	datab => \Mem_RAM|ALT_INV_ram~633_combout\,
	datac => \Mem_RAM|ALT_INV_ram~634_combout\,
	datad => \Mem_RAM|ALT_INV_ram~635_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~636_combout\);

\Mem_RAM|ram~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~276_q\);

\Mem_RAM|ram~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~308_q\);

\Mem_RAM|ram~404\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~404_q\);

\Mem_RAM|ram~436\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~436_q\);

\Mem_RAM|ram~637\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~637_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~436_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~404_q\ ) ) ) # ( \Mem_ROM|memROM~61_combout\ & ( 
-- !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~308_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~276_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~276_q\,
	datab => \Mem_RAM|ALT_INV_ram~308_q\,
	datac => \Mem_RAM|ALT_INV_ram~404_q\,
	datad => \Mem_RAM|ALT_INV_ram~436_q\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~74_combout\,
	combout => \Mem_RAM|ram~637_combout\);

\Mem_RAM|ram~292\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~292_q\);

\Mem_RAM|ram~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~324_q\);

\Mem_RAM|ram~420\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~420_q\);

\Mem_RAM|ram~452\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~452_q\);

\Mem_RAM|ram~638\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~638_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~452_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~420_q\ ) ) ) # ( \Mem_ROM|memROM~61_combout\ & ( 
-- !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~324_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~292_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~292_q\,
	datab => \Mem_RAM|ALT_INV_ram~324_q\,
	datac => \Mem_RAM|ALT_INV_ram~420_q\,
	datad => \Mem_RAM|ALT_INV_ram~452_q\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~74_combout\,
	combout => \Mem_RAM|ram~638_combout\);

\Mem_RAM|ram~340\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~340_q\);

\Mem_RAM|ram~372\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~372_q\);

\Mem_RAM|ram~468\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~468_q\);

\Mem_RAM|ram~500\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~500_q\);

\Mem_RAM|ram~639\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~639_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~500_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~468_q\ ) ) ) # ( \Mem_ROM|memROM~61_combout\ & ( 
-- !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~372_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~340_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~340_q\,
	datab => \Mem_RAM|ALT_INV_ram~372_q\,
	datac => \Mem_RAM|ALT_INV_ram~468_q\,
	datad => \Mem_RAM|ALT_INV_ram~500_q\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~74_combout\,
	combout => \Mem_RAM|ram~639_combout\);

\Mem_RAM|ram~356\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~356_q\);

\Mem_RAM|ram~388\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~388_q\);

\Mem_RAM|ram~484\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~484_q\);

\Mem_RAM|ram~516\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~516_q\);

\Mem_RAM|ram~640\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~640_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~516_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~484_q\ ) ) ) # ( \Mem_ROM|memROM~61_combout\ & ( 
-- !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~388_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~356_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~356_q\,
	datab => \Mem_RAM|ALT_INV_ram~388_q\,
	datac => \Mem_RAM|ALT_INV_ram~484_q\,
	datad => \Mem_RAM|ALT_INV_ram~516_q\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~74_combout\,
	combout => \Mem_RAM|ram~640_combout\);

\Mem_RAM|ram~641\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~641_combout\ = ( \Mem_ROM|memROM~12_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~640_combout\ ) ) ) # ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~639_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~12_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~638_combout\ ) ) ) # ( !\Mem_ROM|memROM~12_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~637_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~637_combout\,
	datab => \Mem_RAM|ALT_INV_ram~638_combout\,
	datac => \Mem_RAM|ALT_INV_ram~639_combout\,
	datad => \Mem_RAM|ALT_INV_ram~640_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~12_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~641_combout\);

\Mem_RAM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~28_q\);

\Mem_RAM|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~60_q\);

\Mem_RAM|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~44_q\);

\Mem_RAM|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~76_q\);

\Mem_RAM|ram~642\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~642_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~76_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~44_q\ ) ) ) # ( \Mem_ROM|memROM~61_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~60_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~28_q\,
	datab => \Mem_RAM|ALT_INV_ram~60_q\,
	datac => \Mem_RAM|ALT_INV_ram~44_q\,
	datad => \Mem_RAM|ALT_INV_ram~76_q\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~642_combout\);

\Mem_RAM|ram~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~156_q\);

\Mem_RAM|ram~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~188_q\);

\Mem_RAM|ram~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~172_q\);

\Mem_RAM|ram~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~204_q\);

\Mem_RAM|ram~643\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~643_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~204_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~172_q\ ) ) ) # ( \Mem_ROM|memROM~61_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~188_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~156_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~156_q\,
	datab => \Mem_RAM|ALT_INV_ram~188_q\,
	datac => \Mem_RAM|ALT_INV_ram~172_q\,
	datad => \Mem_RAM|ALT_INV_ram~204_q\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~643_combout\);

\Mem_RAM|ram~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~92_q\);

\Mem_RAM|ram~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~124_q\);

\Mem_RAM|ram~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~108_q\);

\Mem_RAM|ram~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~140_q\);

\Mem_RAM|ram~644\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~644_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~140_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~108_q\ ) ) ) # ( \Mem_ROM|memROM~61_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~124_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~92_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~92_q\,
	datab => \Mem_RAM|ALT_INV_ram~124_q\,
	datac => \Mem_RAM|ALT_INV_ram~108_q\,
	datad => \Mem_RAM|ALT_INV_ram~140_q\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~644_combout\);

\Mem_RAM|ram~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~220_q\);

\Mem_RAM|ram~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~252_q\);

\Mem_RAM|ram~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~236_q\);

\Mem_RAM|ram~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~268_q\);

\Mem_RAM|ram~645\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~645_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~268_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~236_q\ ) ) ) # ( \Mem_ROM|memROM~61_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~252_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~220_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~220_q\,
	datab => \Mem_RAM|ALT_INV_ram~252_q\,
	datac => \Mem_RAM|ALT_INV_ram~236_q\,
	datad => \Mem_RAM|ALT_INV_ram~268_q\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~645_combout\);

\Mem_RAM|ram~646\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~646_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~645_combout\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~644_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~643_combout\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~642_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~642_combout\,
	datab => \Mem_RAM|ALT_INV_ram~643_combout\,
	datac => \Mem_RAM|ALT_INV_ram~644_combout\,
	datad => \Mem_RAM|ALT_INV_ram~645_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~646_combout\);

\Mem_RAM|ram~284\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~284_q\);

\Mem_RAM|ram~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~316_q\);

\Mem_RAM|ram~348\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~348_q\);

\Mem_RAM|ram~380\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~380_q\);

\Mem_RAM|ram~647\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~647_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~380_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~348_q\ ) ) ) # ( \Mem_ROM|memROM~61_combout\ & ( 
-- !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~316_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~284_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~284_q\,
	datab => \Mem_RAM|ALT_INV_ram~316_q\,
	datac => \Mem_RAM|ALT_INV_ram~348_q\,
	datad => \Mem_RAM|ALT_INV_ram~380_q\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~647_combout\);

\Mem_RAM|ram~412\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~412_q\);

\Mem_RAM|ram~444\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~444_q\);

\Mem_RAM|ram~476\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~476_q\);

\Mem_RAM|ram~508\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~508_q\);

\Mem_RAM|ram~648\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~648_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~508_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~476_q\ ) ) ) # ( \Mem_ROM|memROM~61_combout\ & ( 
-- !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~444_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~412_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~412_q\,
	datab => \Mem_RAM|ALT_INV_ram~444_q\,
	datac => \Mem_RAM|ALT_INV_ram~476_q\,
	datad => \Mem_RAM|ALT_INV_ram~508_q\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~648_combout\);

\Mem_RAM|ram~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~300_q\);

\Mem_RAM|ram~332\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~332_q\);

\Mem_RAM|ram~364\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~364_q\);

\Mem_RAM|ram~396\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~396_q\);

\Mem_RAM|ram~649\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~649_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~396_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~364_q\ ) ) ) # ( \Mem_ROM|memROM~61_combout\ & ( 
-- !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~332_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~300_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~300_q\,
	datab => \Mem_RAM|ALT_INV_ram~332_q\,
	datac => \Mem_RAM|ALT_INV_ram~364_q\,
	datad => \Mem_RAM|ALT_INV_ram~396_q\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~649_combout\);

\Mem_RAM|ram~428\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~428_q\);

\Mem_RAM|ram~460\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~460_q\);

\Mem_RAM|ram~492\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~492_q\);

\Mem_RAM|ram~524\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \Mem_RAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~524_q\);

\Mem_RAM|ram~650\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~650_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~524_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~492_q\ ) ) ) # ( \Mem_ROM|memROM~61_combout\ & ( 
-- !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~460_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~428_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~428_q\,
	datab => \Mem_RAM|ALT_INV_ram~460_q\,
	datac => \Mem_RAM|ALT_INV_ram~492_q\,
	datad => \Mem_RAM|ALT_INV_ram~524_q\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~650_combout\);

\Mem_RAM|ram~651\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~651_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~650_combout\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~649_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~648_combout\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~647_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~647_combout\,
	datab => \Mem_RAM|ALT_INV_ram~648_combout\,
	datac => \Mem_RAM|ALT_INV_ram~649_combout\,
	datad => \Mem_RAM|ALT_INV_ram~650_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~651_combout\);

\Mem_RAM|ram~652\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~652_combout\ = ( \Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~651_combout\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~646_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~641_combout\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_RAM|ram~636_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~636_combout\,
	datab => \Mem_RAM|ALT_INV_ram~641_combout\,
	datac => \Mem_RAM|ALT_INV_ram~646_combout\,
	datad => \Mem_RAM|ALT_INV_ram~651_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~62_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~18_combout\,
	combout => \Mem_RAM|ram~652_combout\);

\CPU|MUX1|saida_MUX[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[5]~4_combout\ = (!\habSW7dt0~1_combout\ & ((\Mem_RAM|ram~652_combout\))) # (\habSW7dt0~1_combout\ & (\SW[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_habSW7dt0~1_combout\,
	datab => \ALT_INV_SW[5]~input_o\,
	datac => \Mem_RAM|ALT_INV_ram~652_combout\,
	combout => \CPU|MUX1|saida_MUX[5]~4_combout\);

\CPU|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~21_sumout\ = SUM(( (!\CPU|decoderInstru|saida[6]~5_combout\ & (((!\Mem_ROM|memROM~5_combout\)) # (\CPU|PC|DOUT\(8)))) # (\CPU|decoderInstru|saida[6]~5_combout\ & (((!\CPU|MUX1|saida_MUX[5]~4_combout\)))) ) + ( \CPU|REGA|DOUT\(5) ) + ( 
-- \CPU|ULA1|Add1~18\ ))
-- \CPU|ULA1|Add1~22\ = CARRY(( (!\CPU|decoderInstru|saida[6]~5_combout\ & (((!\Mem_ROM|memROM~5_combout\)) # (\CPU|PC|DOUT\(8)))) # (\CPU|decoderInstru|saida[6]~5_combout\ & (((!\CPU|MUX1|saida_MUX[5]~4_combout\)))) ) + ( \CPU|REGA|DOUT\(5) ) + ( 
-- \CPU|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[6]~5_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \CPU|MUX1|ALT_INV_saida_MUX[5]~4_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~5_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add1~18\,
	sumout => \CPU|ULA1|Add1~21_sumout\,
	cout => \CPU|ULA1|Add1~22\);

\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( (!\CPU|decoderInstru|saida[6]~5_combout\ & (!\CPU|PC|DOUT\(8) & ((\Mem_ROM|memROM~49_combout\)))) # (\CPU|decoderInstru|saida[6]~5_combout\ & (((\CPU|MUX1|saida_MUX[6]~5_combout\)))) ) + ( \CPU|REGA|DOUT\(6) ) + ( 
-- \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( (!\CPU|decoderInstru|saida[6]~5_combout\ & (!\CPU|PC|DOUT\(8) & ((\Mem_ROM|memROM~49_combout\)))) # (\CPU|decoderInstru|saida[6]~5_combout\ & (((\CPU|MUX1|saida_MUX[6]~5_combout\)))) ) + ( \CPU|REGA|DOUT\(6) ) + ( 
-- \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[6]~5_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \CPU|MUX1|ALT_INV_saida_MUX[6]~5_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~49_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

\CPU|ULA1|saida[6]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~12_combout\ = ( \Mem_RAM|ram~673_combout\ & ( (!\CPU|decoderInstru|saida[6]~5_combout\ & (\Mem_ROM|memROM~50_combout\)) # (\CPU|decoderInstru|saida[6]~5_combout\ & (((!\habSW7dt0~1_combout\) # (\SW[6]~input_o\)))) ) ) # ( 
-- !\Mem_RAM|ram~673_combout\ & ( (!\CPU|decoderInstru|saida[6]~5_combout\ & (\Mem_ROM|memROM~50_combout\)) # (\CPU|decoderInstru|saida[6]~5_combout\ & (((\habSW7dt0~1_combout\ & \SW[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010011010111000101111101010000010100110101110001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~50_combout\,
	datab => \ALT_INV_habSW7dt0~1_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida[6]~5_combout\,
	datad => \ALT_INV_SW[6]~input_o\,
	datae => \Mem_RAM|ALT_INV_ram~673_combout\,
	combout => \CPU|ULA1|saida[6]~12_combout\);

\CPU|ULA1|saida[6]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~13_combout\ = ( \CPU|ULA1|saida[6]~12_combout\ & ( (!\CPU|ULA1|Equal3~0_combout\ & (((\CPU|ULA1|Add1~25_sumout\)) # (\CPU|ULA1|Equal2~0_combout\))) # (\CPU|ULA1|Equal3~0_combout\ & (((\CPU|ULA1|Add0~25_sumout\)))) ) ) # ( 
-- !\CPU|ULA1|saida[6]~12_combout\ & ( (!\CPU|ULA1|Equal3~0_combout\ & (!\CPU|ULA1|Equal2~0_combout\ & ((\CPU|ULA1|Add1~25_sumout\)))) # (\CPU|ULA1|Equal3~0_combout\ & (((\CPU|ULA1|Add0~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101001001111010111100000101100011010010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal3~0_combout\,
	datab => \CPU|ULA1|ALT_INV_Equal2~0_combout\,
	datac => \CPU|ULA1|ALT_INV_Add0~25_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	datae => \CPU|ULA1|ALT_INV_saida[6]~12_combout\,
	combout => \CPU|ULA1|saida[6]~13_combout\);

\CPU|ULA1|saida[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida\(6) = ( \CPU|ULA1|saida\(6) & ( \CPU|ULA1|saida[7]~1_combout\ & ( \CPU|ULA1|saida[6]~13_combout\ ) ) ) # ( !\CPU|ULA1|saida\(6) & ( \CPU|ULA1|saida[7]~1_combout\ & ( \CPU|ULA1|saida[6]~13_combout\ ) ) ) # ( \CPU|ULA1|saida\(6) & ( 
-- !\CPU|ULA1|saida[7]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[6]~13_combout\,
	datae => \CPU|ULA1|ALT_INV_saida\(6),
	dataf => \CPU|ULA1|ALT_INV_saida[7]~1_combout\,
	combout => \CPU|ULA1|saida\(6));

\CPU|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|ULA1|saida\(6),
	ena => \CPU|decoderInstru|saida[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(6));

\Mem_RAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~21_q\);

\Mem_RAM|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~37_q\);

\Mem_RAM|ram~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~85_q\);

\Mem_RAM|ram~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~101_q\);

\Mem_RAM|ram~653\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~653_combout\ = ( \Mem_ROM|memROM~12_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~101_q\ ) ) ) # ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~85_q\ ) ) ) # ( \Mem_ROM|memROM~12_combout\ & ( 
-- !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~37_q\ ) ) ) # ( !\Mem_ROM|memROM~12_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~21_q\,
	datab => \Mem_RAM|ALT_INV_ram~37_q\,
	datac => \Mem_RAM|ALT_INV_ram~85_q\,
	datad => \Mem_RAM|ALT_INV_ram~101_q\,
	datae => \Mem_ROM|ALT_INV_memROM~12_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~653_combout\);

\Mem_RAM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~29_q\);

\Mem_RAM|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~45_q\);

\Mem_RAM|ram~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~93_q\);

\Mem_RAM|ram~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~109_q\);

\Mem_RAM|ram~654\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~654_combout\ = ( \Mem_ROM|memROM~12_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~109_q\ ) ) ) # ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~93_q\ ) ) ) # ( \Mem_ROM|memROM~12_combout\ & ( 
-- !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~45_q\ ) ) ) # ( !\Mem_ROM|memROM~12_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~29_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~29_q\,
	datab => \Mem_RAM|ALT_INV_ram~45_q\,
	datac => \Mem_RAM|ALT_INV_ram~93_q\,
	datad => \Mem_RAM|ALT_INV_ram~109_q\,
	datae => \Mem_ROM|ALT_INV_memROM~12_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~654_combout\);

\Mem_RAM|ram~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~149_q\);

\Mem_RAM|ram~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~165_q\);

\Mem_RAM|ram~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~213_q\);

\Mem_RAM|ram~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~229_q\);

\Mem_RAM|ram~655\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~655_combout\ = ( \Mem_ROM|memROM~12_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~229_q\ ) ) ) # ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~213_q\ ) ) ) # ( \Mem_ROM|memROM~12_combout\ & ( 
-- !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~165_q\ ) ) ) # ( !\Mem_ROM|memROM~12_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~149_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~149_q\,
	datab => \Mem_RAM|ALT_INV_ram~165_q\,
	datac => \Mem_RAM|ALT_INV_ram~213_q\,
	datad => \Mem_RAM|ALT_INV_ram~229_q\,
	datae => \Mem_ROM|ALT_INV_memROM~12_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~655_combout\);

\Mem_RAM|ram~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~157_q\);

\Mem_RAM|ram~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~173_q\);

\Mem_RAM|ram~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~221_q\);

\Mem_RAM|ram~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~237_q\);

\Mem_RAM|ram~656\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~656_combout\ = ( \Mem_ROM|memROM~12_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~237_q\ ) ) ) # ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~221_q\ ) ) ) # ( \Mem_ROM|memROM~12_combout\ & ( 
-- !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~173_q\ ) ) ) # ( !\Mem_ROM|memROM~12_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~157_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~157_q\,
	datab => \Mem_RAM|ALT_INV_ram~173_q\,
	datac => \Mem_RAM|ALT_INV_ram~221_q\,
	datad => \Mem_RAM|ALT_INV_ram~237_q\,
	datae => \Mem_ROM|ALT_INV_memROM~12_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~656_combout\);

\Mem_RAM|ram~657\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~657_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~656_combout\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~655_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~654_combout\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~653_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~653_combout\,
	datab => \Mem_RAM|ALT_INV_ram~654_combout\,
	datac => \Mem_RAM|ALT_INV_ram~655_combout\,
	datad => \Mem_RAM|ALT_INV_ram~656_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~74_combout\,
	combout => \Mem_RAM|ram~657_combout\);

\Mem_RAM|ram~277\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~277_q\);

\Mem_RAM|ram~405\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~405_q\);

\Mem_RAM|ram~293\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~293_q\);

\Mem_RAM|ram~421\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~421_q\);

\Mem_RAM|ram~658\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~658_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~421_q\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~293_q\ ) ) ) # ( \Mem_ROM|memROM~74_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~405_q\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~277_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~277_q\,
	datab => \Mem_RAM|ALT_INV_ram~405_q\,
	datac => \Mem_RAM|ALT_INV_ram~293_q\,
	datad => \Mem_RAM|ALT_INV_ram~421_q\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~658_combout\);

\Mem_RAM|ram~285\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~285_q\);

\Mem_RAM|ram~413\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~413_q\);

\Mem_RAM|ram~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~301_q\);

\Mem_RAM|ram~429\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~429_q\);

\Mem_RAM|ram~659\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~659_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~429_q\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~301_q\ ) ) ) # ( \Mem_ROM|memROM~74_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~413_q\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~285_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~285_q\,
	datab => \Mem_RAM|ALT_INV_ram~413_q\,
	datac => \Mem_RAM|ALT_INV_ram~301_q\,
	datad => \Mem_RAM|ALT_INV_ram~429_q\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~659_combout\);

\Mem_RAM|ram~341\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~341_q\);

\Mem_RAM|ram~469\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~469_q\);

\Mem_RAM|ram~357\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~357_q\);

\Mem_RAM|ram~485\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~485_q\);

\Mem_RAM|ram~660\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~660_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~485_q\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~357_q\ ) ) ) # ( \Mem_ROM|memROM~74_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~469_q\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~341_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~341_q\,
	datab => \Mem_RAM|ALT_INV_ram~469_q\,
	datac => \Mem_RAM|ALT_INV_ram~357_q\,
	datad => \Mem_RAM|ALT_INV_ram~485_q\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~660_combout\);

\Mem_RAM|ram~349\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~349_q\);

\Mem_RAM|ram~477\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~477_q\);

\Mem_RAM|ram~365\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~365_q\);

\Mem_RAM|ram~493\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~493_q\);

\Mem_RAM|ram~661\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~661_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~493_q\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~365_q\ ) ) ) # ( \Mem_ROM|memROM~74_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~477_q\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~349_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~349_q\,
	datab => \Mem_RAM|ALT_INV_ram~477_q\,
	datac => \Mem_RAM|ALT_INV_ram~365_q\,
	datad => \Mem_RAM|ALT_INV_ram~493_q\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~661_combout\);

\Mem_RAM|ram~662\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~662_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~661_combout\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~660_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~659_combout\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~658_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~658_combout\,
	datab => \Mem_RAM|ALT_INV_ram~659_combout\,
	datac => \Mem_RAM|ALT_INV_ram~660_combout\,
	datad => \Mem_RAM|ALT_INV_ram~661_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~662_combout\);

\Mem_RAM|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~53_q\);

\Mem_RAM|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~61_q\);

\Mem_RAM|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~69_q\);

\Mem_RAM|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~77_q\);

\Mem_RAM|ram~663\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~663_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~77_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~69_q\ ) ) ) # ( \Mem_ROM|memROM~18_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~61_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~53_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~53_q\,
	datab => \Mem_RAM|ALT_INV_ram~61_q\,
	datac => \Mem_RAM|ALT_INV_ram~69_q\,
	datad => \Mem_RAM|ALT_INV_ram~77_q\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~663_combout\);

\Mem_RAM|ram~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~181_q\);

\Mem_RAM|ram~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~189_q\);

\Mem_RAM|ram~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~197_q\);

\Mem_RAM|ram~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~205_q\);

\Mem_RAM|ram~664\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~664_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~205_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~197_q\ ) ) ) # ( \Mem_ROM|memROM~18_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~189_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~181_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~181_q\,
	datab => \Mem_RAM|ALT_INV_ram~189_q\,
	datac => \Mem_RAM|ALT_INV_ram~197_q\,
	datad => \Mem_RAM|ALT_INV_ram~205_q\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~664_combout\);

\Mem_RAM|ram~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~117_q\);

\Mem_RAM|ram~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~125_q\);

\Mem_RAM|ram~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~133_q\);

\Mem_RAM|ram~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~141_q\);

\Mem_RAM|ram~665\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~665_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~141_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~133_q\ ) ) ) # ( \Mem_ROM|memROM~18_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~125_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~117_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~117_q\,
	datab => \Mem_RAM|ALT_INV_ram~125_q\,
	datac => \Mem_RAM|ALT_INV_ram~133_q\,
	datad => \Mem_RAM|ALT_INV_ram~141_q\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~665_combout\);

\Mem_RAM|ram~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~245_q\);

\Mem_RAM|ram~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~253_q\);

\Mem_RAM|ram~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~261_q\);

\Mem_RAM|ram~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~269_q\);

\Mem_RAM|ram~666\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~666_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~269_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~261_q\ ) ) ) # ( \Mem_ROM|memROM~18_combout\ & ( 
-- !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~253_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_RAM|ram~245_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~245_q\,
	datab => \Mem_RAM|ALT_INV_ram~253_q\,
	datac => \Mem_RAM|ALT_INV_ram~261_q\,
	datad => \Mem_RAM|ALT_INV_ram~269_q\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \Mem_RAM|ram~666_combout\);

\Mem_RAM|ram~667\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~667_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~666_combout\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~665_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~664_combout\ ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~663_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~663_combout\,
	datab => \Mem_RAM|ALT_INV_ram~664_combout\,
	datac => \Mem_RAM|ALT_INV_ram~665_combout\,
	datad => \Mem_RAM|ALT_INV_ram~666_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~667_combout\);

\Mem_RAM|ram~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~309_q\);

\Mem_RAM|ram~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~325_q\);

\Mem_RAM|ram~373\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~373_q\);

\Mem_RAM|ram~389\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~389_q\);

\Mem_RAM|ram~668\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~668_combout\ = ( \Mem_ROM|memROM~12_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~389_q\ ) ) ) # ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~373_q\ ) ) ) # ( \Mem_ROM|memROM~12_combout\ & ( 
-- !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~325_q\ ) ) ) # ( !\Mem_ROM|memROM~12_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~309_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~309_q\,
	datab => \Mem_RAM|ALT_INV_ram~325_q\,
	datac => \Mem_RAM|ALT_INV_ram~373_q\,
	datad => \Mem_RAM|ALT_INV_ram~389_q\,
	datae => \Mem_ROM|ALT_INV_memROM~12_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~668_combout\);

\Mem_RAM|ram~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~317_q\);

\Mem_RAM|ram~333\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~333_q\);

\Mem_RAM|ram~381\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~381_q\);

\Mem_RAM|ram~397\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~397_q\);

\Mem_RAM|ram~669\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~669_combout\ = ( \Mem_ROM|memROM~12_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~397_q\ ) ) ) # ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~381_q\ ) ) ) # ( \Mem_ROM|memROM~12_combout\ & ( 
-- !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~333_q\ ) ) ) # ( !\Mem_ROM|memROM~12_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~317_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~317_q\,
	datab => \Mem_RAM|ALT_INV_ram~333_q\,
	datac => \Mem_RAM|ALT_INV_ram~381_q\,
	datad => \Mem_RAM|ALT_INV_ram~397_q\,
	datae => \Mem_ROM|ALT_INV_memROM~12_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~669_combout\);

\Mem_RAM|ram~437\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~437_q\);

\Mem_RAM|ram~453\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~453_q\);

\Mem_RAM|ram~501\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~501_q\);

\Mem_RAM|ram~517\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~517_q\);

\Mem_RAM|ram~670\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~670_combout\ = ( \Mem_ROM|memROM~12_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~517_q\ ) ) ) # ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~501_q\ ) ) ) # ( \Mem_ROM|memROM~12_combout\ & ( 
-- !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~453_q\ ) ) ) # ( !\Mem_ROM|memROM~12_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~437_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~437_q\,
	datab => \Mem_RAM|ALT_INV_ram~453_q\,
	datac => \Mem_RAM|ALT_INV_ram~501_q\,
	datad => \Mem_RAM|ALT_INV_ram~517_q\,
	datae => \Mem_ROM|ALT_INV_memROM~12_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~670_combout\);

\Mem_RAM|ram~445\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~445_q\);

\Mem_RAM|ram~461\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~461_q\);

\Mem_RAM|ram~509\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~509_q\);

\Mem_RAM|ram~525\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \Mem_RAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~525_q\);

\Mem_RAM|ram~671\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~671_combout\ = ( \Mem_ROM|memROM~12_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~525_q\ ) ) ) # ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~509_q\ ) ) ) # ( \Mem_ROM|memROM~12_combout\ & ( 
-- !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~461_q\ ) ) ) # ( !\Mem_ROM|memROM~12_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~445_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~445_q\,
	datab => \Mem_RAM|ALT_INV_ram~461_q\,
	datac => \Mem_RAM|ALT_INV_ram~509_q\,
	datad => \Mem_RAM|ALT_INV_ram~525_q\,
	datae => \Mem_ROM|ALT_INV_memROM~12_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~671_combout\);

\Mem_RAM|ram~672\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~672_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~671_combout\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~670_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~669_combout\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~668_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~668_combout\,
	datab => \Mem_RAM|ALT_INV_ram~669_combout\,
	datac => \Mem_RAM|ALT_INV_ram~670_combout\,
	datad => \Mem_RAM|ALT_INV_ram~671_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~74_combout\,
	combout => \Mem_RAM|ram~672_combout\);

\Mem_RAM|ram~673\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~673_combout\ = ( \Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~672_combout\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( \Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~667_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~662_combout\ ) ) ) # ( !\Mem_ROM|memROM~62_combout\ & ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_RAM|ram~657_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~657_combout\,
	datab => \Mem_RAM|ALT_INV_ram~662_combout\,
	datac => \Mem_RAM|ALT_INV_ram~667_combout\,
	datad => \Mem_RAM|ALT_INV_ram~672_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~62_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~61_combout\,
	combout => \Mem_RAM|ram~673_combout\);

\CPU|MUX1|saida_MUX[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[6]~5_combout\ = (!\habSW7dt0~1_combout\ & ((\Mem_RAM|ram~673_combout\))) # (\habSW7dt0~1_combout\ & (\SW[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_habSW7dt0~1_combout\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \Mem_RAM|ALT_INV_ram~673_combout\,
	combout => \CPU|MUX1|saida_MUX[6]~5_combout\);

\CPU|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~25_sumout\ = SUM(( (!\CPU|decoderInstru|saida[6]~5_combout\ & (((!\Mem_ROM|memROM~49_combout\)) # (\CPU|PC|DOUT\(8)))) # (\CPU|decoderInstru|saida[6]~5_combout\ & (((!\CPU|MUX1|saida_MUX[6]~5_combout\)))) ) + ( \CPU|REGA|DOUT\(6) ) + ( 
-- \CPU|ULA1|Add1~22\ ))
-- \CPU|ULA1|Add1~26\ = CARRY(( (!\CPU|decoderInstru|saida[6]~5_combout\ & (((!\Mem_ROM|memROM~49_combout\)) # (\CPU|PC|DOUT\(8)))) # (\CPU|decoderInstru|saida[6]~5_combout\ & (((!\CPU|MUX1|saida_MUX[6]~5_combout\)))) ) + ( \CPU|REGA|DOUT\(6) ) + ( 
-- \CPU|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[6]~5_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \CPU|MUX1|ALT_INV_saida_MUX[6]~5_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~49_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add1~22\,
	sumout => \CPU|ULA1|Add1~25_sumout\,
	cout => \CPU|ULA1|Add1~26\);

\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( (!\CPU|decoderInstru|saida[6]~5_combout\ & (!\CPU|PC|DOUT\(8) & ((\Mem_ROM|memROM~55_combout\)))) # (\CPU|decoderInstru|saida[6]~5_combout\ & (((\CPU|MUX1|saida_MUX[7]~6_combout\)))) ) + ( \CPU|REGA|DOUT\(7) ) + ( 
-- \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[6]~5_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \CPU|MUX1|ALT_INV_saida_MUX[7]~6_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~55_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

\CPU|ULA1|saida[7]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~14_combout\ = ( \Mem_RAM|ram~694_combout\ & ( (!\CPU|decoderInstru|saida[6]~5_combout\ & (\Mem_ROM|memROM~75_combout\)) # (\CPU|decoderInstru|saida[6]~5_combout\ & (((!\habSW7dt0~1_combout\) # (\SW[7]~input_o\)))) ) ) # ( 
-- !\Mem_RAM|ram~694_combout\ & ( (!\CPU|decoderInstru|saida[6]~5_combout\ & (\Mem_ROM|memROM~75_combout\)) # (\CPU|decoderInstru|saida[6]~5_combout\ & (((\habSW7dt0~1_combout\ & \SW[7]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010011010111000101111101010000010100110101110001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~75_combout\,
	datab => \ALT_INV_habSW7dt0~1_combout\,
	datac => \CPU|decoderInstru|ALT_INV_saida[6]~5_combout\,
	datad => \ALT_INV_SW[7]~input_o\,
	datae => \Mem_RAM|ALT_INV_ram~694_combout\,
	combout => \CPU|ULA1|saida[7]~14_combout\);

\CPU|ULA1|saida[7]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~15_combout\ = ( \CPU|ULA1|saida[7]~14_combout\ & ( (!\CPU|ULA1|Equal3~0_combout\ & (((\CPU|ULA1|Add1~29_sumout\)) # (\CPU|ULA1|Equal2~0_combout\))) # (\CPU|ULA1|Equal3~0_combout\ & (((\CPU|ULA1|Add0~29_sumout\)))) ) ) # ( 
-- !\CPU|ULA1|saida[7]~14_combout\ & ( (!\CPU|ULA1|Equal3~0_combout\ & (!\CPU|ULA1|Equal2~0_combout\ & ((\CPU|ULA1|Add1~29_sumout\)))) # (\CPU|ULA1|Equal3~0_combout\ & (((\CPU|ULA1|Add0~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101001001111010111100000101100011010010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Equal3~0_combout\,
	datab => \CPU|ULA1|ALT_INV_Equal2~0_combout\,
	datac => \CPU|ULA1|ALT_INV_Add0~29_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	datae => \CPU|ULA1|ALT_INV_saida[7]~14_combout\,
	combout => \CPU|ULA1|saida[7]~15_combout\);

\CPU|ULA1|saida[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida\(7) = ( \CPU|ULA1|saida\(7) & ( \CPU|ULA1|saida[7]~1_combout\ & ( \CPU|ULA1|saida[7]~15_combout\ ) ) ) # ( !\CPU|ULA1|saida\(7) & ( \CPU|ULA1|saida[7]~1_combout\ & ( \CPU|ULA1|saida[7]~15_combout\ ) ) ) # ( \CPU|ULA1|saida\(7) & ( 
-- !\CPU|ULA1|saida[7]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[7]~15_combout\,
	datae => \CPU|ULA1|ALT_INV_saida\(7),
	dataf => \CPU|ULA1|ALT_INV_saida[7]~1_combout\,
	combout => \CPU|ULA1|saida\(7));

\CPU|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|ULA1|saida\(7),
	ena => \CPU|decoderInstru|saida[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(7));

\Mem_RAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~22_q\);

\Mem_RAM|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~54_q\);

\Mem_RAM|ram~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~150_q\);

\Mem_RAM|ram~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~182_q\);

\Mem_RAM|ram~674\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~674_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~182_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~150_q\ ) ) ) # ( \Mem_ROM|memROM~61_combout\ & ( 
-- !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~54_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~22_q\,
	datab => \Mem_RAM|ALT_INV_ram~54_q\,
	datac => \Mem_RAM|ALT_INV_ram~150_q\,
	datad => \Mem_RAM|ALT_INV_ram~182_q\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~74_combout\,
	combout => \Mem_RAM|ram~674_combout\);

\Mem_RAM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~30_q\);

\Mem_RAM|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~62_q\);

\Mem_RAM|ram~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~158_q\);

\Mem_RAM|ram~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~190_q\);

\Mem_RAM|ram~675\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~675_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~190_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~158_q\ ) ) ) # ( \Mem_ROM|memROM~61_combout\ & ( 
-- !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~62_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~30_q\,
	datab => \Mem_RAM|ALT_INV_ram~62_q\,
	datac => \Mem_RAM|ALT_INV_ram~158_q\,
	datad => \Mem_RAM|ALT_INV_ram~190_q\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~74_combout\,
	combout => \Mem_RAM|ram~675_combout\);

\Mem_RAM|ram~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~86_q\);

\Mem_RAM|ram~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~118_q\);

\Mem_RAM|ram~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~214_q\);

\Mem_RAM|ram~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~246_q\);

\Mem_RAM|ram~676\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~676_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~246_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~214_q\ ) ) ) # ( \Mem_ROM|memROM~61_combout\ & ( 
-- !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~118_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~86_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~86_q\,
	datab => \Mem_RAM|ALT_INV_ram~118_q\,
	datac => \Mem_RAM|ALT_INV_ram~214_q\,
	datad => \Mem_RAM|ALT_INV_ram~246_q\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~74_combout\,
	combout => \Mem_RAM|ram~676_combout\);

\Mem_RAM|ram~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~94_q\);

\Mem_RAM|ram~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~126_q\);

\Mem_RAM|ram~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~222_q\);

\Mem_RAM|ram~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~254_q\);

\Mem_RAM|ram~677\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~677_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~254_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~222_q\ ) ) ) # ( \Mem_ROM|memROM~61_combout\ & ( 
-- !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~126_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~94_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~94_q\,
	datab => \Mem_RAM|ALT_INV_ram~126_q\,
	datac => \Mem_RAM|ALT_INV_ram~222_q\,
	datad => \Mem_RAM|ALT_INV_ram~254_q\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~74_combout\,
	combout => \Mem_RAM|ram~677_combout\);

\Mem_RAM|ram~678\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~678_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~677_combout\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~676_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~675_combout\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~674_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~674_combout\,
	datab => \Mem_RAM|ALT_INV_ram~675_combout\,
	datac => \Mem_RAM|ALT_INV_ram~676_combout\,
	datad => \Mem_RAM|ALT_INV_ram~677_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~678_combout\);

\Mem_RAM|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~38_q\);

\Mem_RAM|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~46_q\);

\Mem_RAM|ram~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~166_q\);

\Mem_RAM|ram~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~174_q\);

\Mem_RAM|ram~679\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~679_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~174_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~166_q\ ) ) ) # ( \Mem_ROM|memROM~18_combout\ & ( 
-- !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~46_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~38_q\,
	datab => \Mem_RAM|ALT_INV_ram~46_q\,
	datac => \Mem_RAM|ALT_INV_ram~166_q\,
	datad => \Mem_RAM|ALT_INV_ram~174_q\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~74_combout\,
	combout => \Mem_RAM|ram~679_combout\);

\Mem_RAM|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~70_q\);

\Mem_RAM|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~78_q\);

\Mem_RAM|ram~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~198_q\);

\Mem_RAM|ram~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~206_q\);

\Mem_RAM|ram~680\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~680_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~206_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~198_q\ ) ) ) # ( \Mem_ROM|memROM~18_combout\ & ( 
-- !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~78_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~70_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~70_q\,
	datab => \Mem_RAM|ALT_INV_ram~78_q\,
	datac => \Mem_RAM|ALT_INV_ram~198_q\,
	datad => \Mem_RAM|ALT_INV_ram~206_q\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~74_combout\,
	combout => \Mem_RAM|ram~680_combout\);

\Mem_RAM|ram~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~102_q\);

\Mem_RAM|ram~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~110_q\);

\Mem_RAM|ram~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~230_q\);

\Mem_RAM|ram~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~238_q\);

\Mem_RAM|ram~681\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~681_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~238_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~230_q\ ) ) ) # ( \Mem_ROM|memROM~18_combout\ & ( 
-- !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~110_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~102_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~102_q\,
	datab => \Mem_RAM|ALT_INV_ram~110_q\,
	datac => \Mem_RAM|ALT_INV_ram~230_q\,
	datad => \Mem_RAM|ALT_INV_ram~238_q\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~74_combout\,
	combout => \Mem_RAM|ram~681_combout\);

\Mem_RAM|ram~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~134_q\);

\Mem_RAM|ram~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~142_q\);

\Mem_RAM|ram~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~262_q\);

\Mem_RAM|ram~270\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~270_q\);

\Mem_RAM|ram~682\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~682_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~270_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~262_q\ ) ) ) # ( \Mem_ROM|memROM~18_combout\ & ( 
-- !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~142_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~134_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~134_q\,
	datab => \Mem_RAM|ALT_INV_ram~142_q\,
	datac => \Mem_RAM|ALT_INV_ram~262_q\,
	datad => \Mem_RAM|ALT_INV_ram~270_q\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~74_combout\,
	combout => \Mem_RAM|ram~682_combout\);

\Mem_RAM|ram~683\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~683_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~682_combout\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~681_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~680_combout\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~679_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~679_combout\,
	datab => \Mem_RAM|ALT_INV_ram~680_combout\,
	datac => \Mem_RAM|ALT_INV_ram~681_combout\,
	datad => \Mem_RAM|ALT_INV_ram~682_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~683_combout\);

\Mem_RAM|ram~278\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~278_q\);

\Mem_RAM|ram~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~310_q\);

\Mem_RAM|ram~342\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~342_q\);

\Mem_RAM|ram~374\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~374_q\);

\Mem_RAM|ram~684\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~684_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~374_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~342_q\ ) ) ) # ( \Mem_ROM|memROM~61_combout\ & ( 
-- !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~310_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~278_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~278_q\,
	datab => \Mem_RAM|ALT_INV_ram~310_q\,
	datac => \Mem_RAM|ALT_INV_ram~342_q\,
	datad => \Mem_RAM|ALT_INV_ram~374_q\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~684_combout\);

\Mem_RAM|ram~286\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~286_q\);

\Mem_RAM|ram~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~318_q\);

\Mem_RAM|ram~350\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~350_q\);

\Mem_RAM|ram~382\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~382_q\);

\Mem_RAM|ram~685\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~685_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~382_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~350_q\ ) ) ) # ( \Mem_ROM|memROM~61_combout\ & ( 
-- !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~318_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~286_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~286_q\,
	datab => \Mem_RAM|ALT_INV_ram~318_q\,
	datac => \Mem_RAM|ALT_INV_ram~350_q\,
	datad => \Mem_RAM|ALT_INV_ram~382_q\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~685_combout\);

\Mem_RAM|ram~406\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~406_q\);

\Mem_RAM|ram~438\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~438_q\);

\Mem_RAM|ram~470\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~470_q\);

\Mem_RAM|ram~502\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~502_q\);

\Mem_RAM|ram~686\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~686_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~502_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~470_q\ ) ) ) # ( \Mem_ROM|memROM~61_combout\ & ( 
-- !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~438_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~406_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~406_q\,
	datab => \Mem_RAM|ALT_INV_ram~438_q\,
	datac => \Mem_RAM|ALT_INV_ram~470_q\,
	datad => \Mem_RAM|ALT_INV_ram~502_q\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~686_combout\);

\Mem_RAM|ram~414\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~414_q\);

\Mem_RAM|ram~446\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~446_q\);

\Mem_RAM|ram~478\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~478_q\);

\Mem_RAM|ram~510\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~510_q\);

\Mem_RAM|ram~687\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~687_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~510_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~478_q\ ) ) ) # ( \Mem_ROM|memROM~61_combout\ & ( 
-- !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~446_q\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~414_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~414_q\,
	datab => \Mem_RAM|ALT_INV_ram~446_q\,
	datac => \Mem_RAM|ALT_INV_ram~478_q\,
	datad => \Mem_RAM|ALT_INV_ram~510_q\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~687_combout\);

\Mem_RAM|ram~688\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~688_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~687_combout\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~686_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~685_combout\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~684_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~684_combout\,
	datab => \Mem_RAM|ALT_INV_ram~685_combout\,
	datac => \Mem_RAM|ALT_INV_ram~686_combout\,
	datad => \Mem_RAM|ALT_INV_ram~687_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~74_combout\,
	combout => \Mem_RAM|ram~688_combout\);

\Mem_RAM|ram~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~294_q\);

\Mem_RAM|ram~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~302_q\);

\Mem_RAM|ram~422\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~422_q\);

\Mem_RAM|ram~430\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~430_q\);

\Mem_RAM|ram~689\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~689_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~430_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~422_q\ ) ) ) # ( \Mem_ROM|memROM~18_combout\ & ( 
-- !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~302_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~294_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~294_q\,
	datab => \Mem_RAM|ALT_INV_ram~302_q\,
	datac => \Mem_RAM|ALT_INV_ram~422_q\,
	datad => \Mem_RAM|ALT_INV_ram~430_q\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~74_combout\,
	combout => \Mem_RAM|ram~689_combout\);

\Mem_RAM|ram~326\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~326_q\);

\Mem_RAM|ram~334\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~334_q\);

\Mem_RAM|ram~454\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~454_q\);

\Mem_RAM|ram~462\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~462_q\);

\Mem_RAM|ram~690\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~690_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~462_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~454_q\ ) ) ) # ( \Mem_ROM|memROM~18_combout\ & ( 
-- !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~334_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~326_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~326_q\,
	datab => \Mem_RAM|ALT_INV_ram~334_q\,
	datac => \Mem_RAM|ALT_INV_ram~454_q\,
	datad => \Mem_RAM|ALT_INV_ram~462_q\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~74_combout\,
	combout => \Mem_RAM|ram~690_combout\);

\Mem_RAM|ram~358\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~358_q\);

\Mem_RAM|ram~366\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~366_q\);

\Mem_RAM|ram~486\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~486_q\);

\Mem_RAM|ram~494\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~494_q\);

\Mem_RAM|ram~691\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~691_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~494_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~486_q\ ) ) ) # ( \Mem_ROM|memROM~18_combout\ & ( 
-- !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~366_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~358_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~358_q\,
	datab => \Mem_RAM|ALT_INV_ram~366_q\,
	datac => \Mem_RAM|ALT_INV_ram~486_q\,
	datad => \Mem_RAM|ALT_INV_ram~494_q\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~74_combout\,
	combout => \Mem_RAM|ram~691_combout\);

\Mem_RAM|ram~390\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~390_q\);

\Mem_RAM|ram~398\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~398_q\);

\Mem_RAM|ram~518\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~518_q\);

\Mem_RAM|ram~526\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \Mem_RAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~526_q\);

\Mem_RAM|ram~692\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~692_combout\ = ( \Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~526_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( \Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~518_q\ ) ) ) # ( \Mem_ROM|memROM~18_combout\ & ( 
-- !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~398_q\ ) ) ) # ( !\Mem_ROM|memROM~18_combout\ & ( !\Mem_ROM|memROM~74_combout\ & ( \Mem_RAM|ram~390_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~390_q\,
	datab => \Mem_RAM|ALT_INV_ram~398_q\,
	datac => \Mem_RAM|ALT_INV_ram~518_q\,
	datad => \Mem_RAM|ALT_INV_ram~526_q\,
	datae => \Mem_ROM|ALT_INV_memROM~18_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~74_combout\,
	combout => \Mem_RAM|ram~692_combout\);

\Mem_RAM|ram~693\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~693_combout\ = ( \Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~692_combout\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( \Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~691_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~690_combout\ ) ) ) # ( !\Mem_ROM|memROM~61_combout\ & ( !\Mem_ROM|memROM~68_combout\ & ( \Mem_RAM|ram~689_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~689_combout\,
	datab => \Mem_RAM|ALT_INV_ram~690_combout\,
	datac => \Mem_RAM|ALT_INV_ram~691_combout\,
	datad => \Mem_RAM|ALT_INV_ram~692_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~68_combout\,
	combout => \Mem_RAM|ram~693_combout\);

\Mem_RAM|ram~694\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~694_combout\ = ( \Mem_ROM|memROM~12_combout\ & ( \Mem_ROM|memROM~62_combout\ & ( \Mem_RAM|ram~693_combout\ ) ) ) # ( !\Mem_ROM|memROM~12_combout\ & ( \Mem_ROM|memROM~62_combout\ & ( \Mem_RAM|ram~688_combout\ ) ) ) # ( 
-- \Mem_ROM|memROM~12_combout\ & ( !\Mem_ROM|memROM~62_combout\ & ( \Mem_RAM|ram~683_combout\ ) ) ) # ( !\Mem_ROM|memROM~12_combout\ & ( !\Mem_ROM|memROM~62_combout\ & ( \Mem_RAM|ram~678_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~678_combout\,
	datab => \Mem_RAM|ALT_INV_ram~683_combout\,
	datac => \Mem_RAM|ALT_INV_ram~688_combout\,
	datad => \Mem_RAM|ALT_INV_ram~693_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~12_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~62_combout\,
	combout => \Mem_RAM|ram~694_combout\);

\CPU|MUX1|saida_MUX[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[7]~6_combout\ = (!\habSW7dt0~1_combout\ & ((\Mem_RAM|ram~694_combout\))) # (\habSW7dt0~1_combout\ & (\SW[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_habSW7dt0~1_combout\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \Mem_RAM|ALT_INV_ram~694_combout\,
	combout => \CPU|MUX1|saida_MUX[7]~6_combout\);

\CPU|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~29_sumout\ = SUM(( (!\CPU|decoderInstru|saida[6]~5_combout\ & (((!\Mem_ROM|memROM~55_combout\)) # (\CPU|PC|DOUT\(8)))) # (\CPU|decoderInstru|saida[6]~5_combout\ & (((!\CPU|MUX1|saida_MUX[7]~6_combout\)))) ) + ( \CPU|REGA|DOUT\(7) ) + ( 
-- \CPU|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida[6]~5_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \CPU|MUX1|ALT_INV_saida_MUX[7]~6_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~55_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add1~26\,
	sumout => \CPU|ULA1|Add1~29_sumout\);

\CPU|ULA1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal0~0_combout\ = (!\CPU|ULA1|Add1~1_sumout\ & (!\CPU|ULA1|Add1~5_sumout\ & !\CPU|ULA1|Add1~9_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	datab => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	datac => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \CPU|ULA1|Equal0~0_combout\);

\CPU|ULA1|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal0~1_combout\ = ( !\CPU|ULA1|Add1~29_sumout\ & ( \CPU|ULA1|Equal0~0_combout\ & ( (!\CPU|ULA1|Add1~13_sumout\ & (!\CPU|ULA1|Add1~17_sumout\ & (!\CPU|ULA1|Add1~21_sumout\ & !\CPU|ULA1|Add1~25_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	datab => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	datac => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	datae => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	dataf => \CPU|ULA1|ALT_INV_Equal0~0_combout\,
	combout => \CPU|ULA1|Equal0~1_combout\);

\CPU|ULA1|saida_cmp\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida_cmp~combout\ = ( \CPU|ULA1|saida_cmp~combout\ & ( \CPU|ULA1|saida[7]~1_combout\ ) ) # ( \CPU|ULA1|saida_cmp~combout\ & ( !\CPU|ULA1|saida[7]~1_combout\ & ( \CPU|ULA1|Equal0~1_combout\ ) ) ) # ( !\CPU|ULA1|saida_cmp~combout\ & ( 
-- !\CPU|ULA1|saida[7]~1_combout\ & ( \CPU|ULA1|Equal0~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_Equal0~1_combout\,
	datae => \CPU|ULA1|ALT_INV_saida_cmp~combout\,
	dataf => \CPU|ULA1|ALT_INV_saida[7]~1_combout\,
	combout => \CPU|ULA1|saida_cmp~combout\);

\CPU|flagIgual|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|flagIgual|DOUT~0_combout\ = ( \CPU|ULA1|saida_cmp~combout\ & ( ((\CPU|decoderInstru|saida~2_combout\ & ((!\Mem_ROM|memROM~39_combout\) # (\CPU|PC|DOUT\(8))))) # (\CPU|flagIgual|DOUT~q\) ) ) # ( !\CPU|ULA1|saida_cmp~combout\ & ( 
-- (\CPU|flagIgual|DOUT~q\ & ((!\CPU|decoderInstru|saida~2_combout\) # ((!\CPU|PC|DOUT\(8) & \Mem_ROM|memROM~39_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000010001100111111011100110011000000100011001111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|flagIgual|ALT_INV_DOUT~q\,
	datac => \Mem_ROM|ALT_INV_memROM~39_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida~2_combout\,
	datae => \CPU|ULA1|ALT_INV_saida_cmp~combout\,
	combout => \CPU|flagIgual|DOUT~0_combout\);

\CPU|flagIgual|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|flagIgual|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|flagIgual|DOUT~q\);

\CPU|logicaDeDesvio|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|logicaDeDesvio|saida[0]~1_combout\ = ( !\Mem_ROM|memROM~29_combout\ & ( !\CPU|PC|DOUT\(8) & ( (\Mem_ROM|memROM~39_combout\ & (!\Mem_ROM|memROM~34_combout\ & ((!\Mem_ROM|memROM~23_combout\) # (\CPU|flagIgual|DOUT~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~23_combout\,
	datab => \CPU|flagIgual|ALT_INV_DOUT~q\,
	datac => \Mem_ROM|ALT_INV_memROM~39_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~34_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~29_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT\(8),
	combout => \CPU|logicaDeDesvio|saida[0]~1_combout\);

\CPU|enderecoDeRetorno|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \CPU|decoderInstru|saida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|enderecoDeRetorno|DOUT\(4));

\CPU|MUX2|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[4]~4_combout\ = ( \Mem_ROM|memROM~74_combout\ & ( \CPU|enderecoDeRetorno|DOUT\(4) & ( (((\CPU|incrementaPC|Add0~17_sumout\) # (\CPU|logicaDeDesvio|saida[0]~0_combout\)) # (\CPU|logicaDeDesvio|saida[0]~1_combout\)) # 
-- (\CPU|decoderInstru|saida~1_combout\) ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( \CPU|enderecoDeRetorno|DOUT\(4) & ( ((!\CPU|logicaDeDesvio|saida[0]~1_combout\ & (!\CPU|logicaDeDesvio|saida[0]~0_combout\ & \CPU|incrementaPC|Add0~17_sumout\))) # 
-- (\CPU|decoderInstru|saida~1_combout\) ) ) ) # ( \Mem_ROM|memROM~74_combout\ & ( !\CPU|enderecoDeRetorno|DOUT\(4) & ( (!\CPU|decoderInstru|saida~1_combout\ & (((\CPU|incrementaPC|Add0~17_sumout\) # (\CPU|logicaDeDesvio|saida[0]~0_combout\)) # 
-- (\CPU|logicaDeDesvio|saida[0]~1_combout\))) ) ) ) # ( !\Mem_ROM|memROM~74_combout\ & ( !\CPU|enderecoDeRetorno|DOUT\(4) & ( (!\CPU|decoderInstru|saida~1_combout\ & (!\CPU|logicaDeDesvio|saida[0]~1_combout\ & (!\CPU|logicaDeDesvio|saida[0]~0_combout\ & 
-- \CPU|incrementaPC|Add0~17_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000001010101010101001010101110101010111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_saida~1_combout\,
	datab => \CPU|logicaDeDesvio|ALT_INV_saida[0]~1_combout\,
	datac => \CPU|logicaDeDesvio|ALT_INV_saida[0]~0_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~17_sumout\,
	datae => \Mem_ROM|ALT_INV_memROM~74_combout\,
	dataf => \CPU|enderecoDeRetorno|ALT_INV_DOUT\(4),
	combout => \CPU|MUX2|saida_MUX[4]~4_combout\);

\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|MUX2|saida_MUX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

\Mem_ROM|memROM~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~40_combout\ = ( \CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(3) & ( (\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(0)) # (!\CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(1)))))) ) ) ) # ( !\CPU|PC|DOUT\(2) 
-- & ( \CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(7)))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(4) $ (\CPU|PC|DOUT\(7))))) ) ) ) # ( \CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(4) & 
-- !\CPU|PC|DOUT\(7)) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(7) & \CPU|PC|DOUT\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000100010001000100010001001100000000101010001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \Mem_ROM|memROM~40_combout\);

\Mem_ROM|memROM~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~41_combout\ = ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(3))))) ) ) ) # 
-- ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(7) & ( (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000010010010010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \Mem_ROM|memROM~41_combout\);

\Mem_ROM|memROM~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~42_combout\ = ( \CPU|PC|DOUT\(3) & ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(7)))))) # (\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) & 
-- \CPU|PC|DOUT\(7)))) ) ) ) # ( !\CPU|PC|DOUT\(3) & ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(4) $ (((!\CPU|PC|DOUT\(2)) # (!\CPU|PC|DOUT\(7)))))) # (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(7)))) # (\CPU|PC|DOUT\(2) & 
-- (\CPU|PC|DOUT\(4) & \CPU|PC|DOUT\(7))))) ) ) ) # ( \CPU|PC|DOUT\(3) & ( !\CPU|PC|DOUT\(0) & ( (\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(2) $ (\CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(1))))) ) ) ) # ( 
-- !\CPU|PC|DOUT\(3) & ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(7)))) # (\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011000000000001000011001011100011000010010101000011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \Mem_ROM|memROM~42_combout\);

\Mem_ROM|memROM~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~43_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2) & ((\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(3)))))) # (\CPU|PC|DOUT\(1) & (((!\CPU|PC|DOUT\(3))))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000111111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \Mem_ROM|memROM~43_combout\);

\Mem_ROM|memROM~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~44_combout\ = ( \CPU|PC|DOUT\(6) & ( \CPU|PC|DOUT\(5) & ( \Mem_ROM|memROM~43_combout\ ) ) ) # ( !\CPU|PC|DOUT\(6) & ( \CPU|PC|DOUT\(5) & ( \Mem_ROM|memROM~42_combout\ ) ) ) # ( \CPU|PC|DOUT\(6) & ( !\CPU|PC|DOUT\(5) & ( 
-- \Mem_ROM|memROM~41_combout\ ) ) ) # ( !\CPU|PC|DOUT\(6) & ( !\CPU|PC|DOUT\(5) & ( \Mem_ROM|memROM~40_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~40_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~41_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~42_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~43_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \Mem_ROM|memROM~44_combout\);

\Mem_ROM|memROM~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~76_combout\ = (!\CPU|PC|DOUT\(8) & \Mem_ROM|memROM~44_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \Mem_ROM|ALT_INV_memROM~44_combout\,
	combout => \Mem_ROM|memROM~76_combout\);

\CPU|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT\(8) ) + ( GND ) + ( \CPU|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	cin => \CPU|incrementaPC|Add0~30\,
	sumout => \CPU|incrementaPC|Add0~33_sumout\);

\CPU|enderecoDeRetorno|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \CPU|decoderInstru|saida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|enderecoDeRetorno|DOUT\(8));

\CPU|MUX2|saida_MUX[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[8]~8_combout\ = ( \CPU|incrementaPC|Add0~33_sumout\ & ( \CPU|enderecoDeRetorno|DOUT\(8) & ( (((!\CPU|logicaDeDesvio|saida[0]~1_combout\ & !\CPU|logicaDeDesvio|saida[0]~0_combout\)) # (\CPU|decoderInstru|saida~1_combout\)) # 
-- (\Mem_ROM|memROM~76_combout\) ) ) ) # ( !\CPU|incrementaPC|Add0~33_sumout\ & ( \CPU|enderecoDeRetorno|DOUT\(8) & ( ((\Mem_ROM|memROM~76_combout\ & ((\CPU|logicaDeDesvio|saida[0]~0_combout\) # (\CPU|logicaDeDesvio|saida[0]~1_combout\)))) # 
-- (\CPU|decoderInstru|saida~1_combout\) ) ) ) # ( \CPU|incrementaPC|Add0~33_sumout\ & ( !\CPU|enderecoDeRetorno|DOUT\(8) & ( (!\CPU|decoderInstru|saida~1_combout\ & (((!\CPU|logicaDeDesvio|saida[0]~1_combout\ & !\CPU|logicaDeDesvio|saida[0]~0_combout\)) # 
-- (\Mem_ROM|memROM~76_combout\))) ) ) ) # ( !\CPU|incrementaPC|Add0~33_sumout\ & ( !\CPU|enderecoDeRetorno|DOUT\(8) & ( (\Mem_ROM|memROM~76_combout\ & (!\CPU|decoderInstru|saida~1_combout\ & ((\CPU|logicaDeDesvio|saida[0]~0_combout\) # 
-- (\CPU|logicaDeDesvio|saida[0]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000100110001000100010000110111011101111111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~76_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~1_combout\,
	datac => \CPU|logicaDeDesvio|ALT_INV_saida[0]~1_combout\,
	datad => \CPU|logicaDeDesvio|ALT_INV_saida[0]~0_combout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~33_sumout\,
	dataf => \CPU|enderecoDeRetorno|ALT_INV_DOUT\(8),
	combout => \CPU|MUX2|saida_MUX[8]~8_combout\);

\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|MUX2|saida_MUX[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

\CPU|decoderInstru|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida~1_combout\ = ( \Mem_ROM|memROM~34_combout\ & ( \Mem_ROM|memROM~39_combout\ & ( (!\CPU|PC|DOUT\(8) & (!\Mem_ROM|memROM~24_combout\ & \Mem_ROM|memROM~29_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \Mem_ROM|ALT_INV_memROM~24_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~29_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~34_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~39_combout\,
	combout => \CPU|decoderInstru|saida~1_combout\);

\CPU|enderecoDeRetorno|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \CPU|decoderInstru|saida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|enderecoDeRetorno|DOUT\(0));

\CPU|MUX2|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2|saida_MUX[0]~0_combout\ = ( \CPU|incrementaPC|Add0~1_sumout\ & ( \CPU|enderecoDeRetorno|DOUT\(0) & ( (((!\CPU|logicaDeDesvio|saida[0]~1_combout\ & !\CPU|logicaDeDesvio|saida[0]~0_combout\)) # (\CPU|decoderInstru|saida~1_combout\)) # 
-- (\Mem_ROM|memROM~18_combout\) ) ) ) # ( !\CPU|incrementaPC|Add0~1_sumout\ & ( \CPU|enderecoDeRetorno|DOUT\(0) & ( ((\Mem_ROM|memROM~18_combout\ & ((\CPU|logicaDeDesvio|saida[0]~0_combout\) # (\CPU|logicaDeDesvio|saida[0]~1_combout\)))) # 
-- (\CPU|decoderInstru|saida~1_combout\) ) ) ) # ( \CPU|incrementaPC|Add0~1_sumout\ & ( !\CPU|enderecoDeRetorno|DOUT\(0) & ( (!\CPU|decoderInstru|saida~1_combout\ & (((!\CPU|logicaDeDesvio|saida[0]~1_combout\ & !\CPU|logicaDeDesvio|saida[0]~0_combout\)) # 
-- (\Mem_ROM|memROM~18_combout\))) ) ) ) # ( !\CPU|incrementaPC|Add0~1_sumout\ & ( !\CPU|enderecoDeRetorno|DOUT\(0) & ( (\Mem_ROM|memROM~18_combout\ & (!\CPU|decoderInstru|saida~1_combout\ & ((\CPU|logicaDeDesvio|saida[0]~0_combout\) # 
-- (\CPU|logicaDeDesvio|saida[0]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000100110001000100010000110111011101111111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida~1_combout\,
	datac => \CPU|logicaDeDesvio|ALT_INV_saida[0]~1_combout\,
	datad => \CPU|logicaDeDesvio|ALT_INV_saida[0]~0_combout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~1_sumout\,
	dataf => \CPU|enderecoDeRetorno|ALT_INV_DOUT\(0),
	combout => \CPU|MUX2|saida_MUX[0]~0_combout\);

\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|MUX2|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

\Mem_ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~13_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(3) & 
-- ((\CPU|PC|DOUT\(2)))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(6) & ((\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(3) & ((\CPU|PC|DOUT\(2)))) # 
-- (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(6))))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(1)) # ((!\CPU|PC|DOUT\(2)) # (!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(1) $ (((!\CPU|PC|DOUT\(2) & 
-- !\CPU|PC|DOUT\(3)))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(6) & (((\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(3) & ((\CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(1))))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100011011101111101110110001000011110110011001101100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(6),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \Mem_ROM|memROM~13_combout\);

\Mem_ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~14_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) $ (!\CPU|PC|DOUT\(3)))))) # (\CPU|PC|DOUT\(6) & 
-- (!\CPU|PC|DOUT\(3) $ (((!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(2)))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(6) & ((\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(6) $ 
-- (\CPU|PC|DOUT\(1))))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(6) $ (\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(1) & (((!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & 
-- ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(6)) # ((!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100011001000001110000000010000001001101000000001011101101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(6),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \Mem_ROM|memROM~14_combout\);

\Mem_ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~15_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(1) $ (((\CPU|PC|DOUT\(3)))))) # (\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(3))))) ) ) ) # ( !\CPU|PC|DOUT\(4) 
-- & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(6) $ (\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(1)))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (\CPU|PC|DOUT\(3) & 
-- ((!\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(2))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(6) & 
-- \CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(3)))))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(6) $ (((\CPU|PC|DOUT\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101010000101000000000010010010011000000010001001100001100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(6),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \Mem_ROM|memROM~15_combout\);

\Mem_ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~16_combout\ = ( \CPU|PC|DOUT\(3) & ( \CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(5) & ((!\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT\(6)))))) # (\CPU|PC|DOUT\(5) & ((!\CPU|PC|DOUT\(2) & ((\CPU|PC|DOUT\(6)))) # 
-- (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(4))))) ) ) ) # ( !\CPU|PC|DOUT\(3) & ( \CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(4) & (((!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(5))) # (\CPU|PC|DOUT\(6)))) # (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(5)))) ) ) ) # ( 
-- \CPU|PC|DOUT\(3) & ( !\CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(2) $ (\CPU|PC|DOUT\(5))))) # (\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(5)) # (\CPU|PC|DOUT\(2))))) ) ) ) # ( !\CPU|PC|DOUT\(3) & ( 
-- !\CPU|PC|DOUT\(1) & ( (\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000100001000011000100101000111011000111000101001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \Mem_ROM|memROM~16_combout\);

\Mem_ROM|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~17_combout\ = ( \CPU|PC|DOUT\(7) & ( \CPU|PC|DOUT\(0) & ( \Mem_ROM|memROM~16_combout\ ) ) ) # ( !\CPU|PC|DOUT\(7) & ( \CPU|PC|DOUT\(0) & ( \Mem_ROM|memROM~15_combout\ ) ) ) # ( \CPU|PC|DOUT\(7) & ( !\CPU|PC|DOUT\(0) & ( 
-- \Mem_ROM|memROM~14_combout\ ) ) ) # ( !\CPU|PC|DOUT\(7) & ( !\CPU|PC|DOUT\(0) & ( \Mem_ROM|memROM~13_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~13_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~14_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~15_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~16_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(7),
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \Mem_ROM|memROM~17_combout\);

\Mem_ROM|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~18_combout\ = (!\CPU|PC|DOUT\(8) & (((\Mem_ROM|memROM~17_combout\)))) # (\CPU|PC|DOUT\(8) & (\CPU|PC|DOUT\(0) & (\Mem_ROM|memROM~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100000001110011010000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \Mem_ROM|ALT_INV_memROM~6_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~17_combout\,
	combout => \Mem_ROM|memROM~18_combout\);

\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = ( \Data_IN[0]~4_combout\ & ( \CPU|decoderInstru|saida[6]~5_combout\ ) ) # ( !\Data_IN[0]~4_combout\ & ( \CPU|decoderInstru|saida[6]~5_combout\ & ( (!\Mem_RAM|ram~547_combout\ & (((\SW[0]~input_o\ & \habSW7dt0~1_combout\)))) 
-- # (\Mem_RAM|ram~547_combout\ & (((\SW[0]~input_o\ & \habSW7dt0~1_combout\)) # (\Data_IN[0]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~547_combout\,
	datab => \ALT_INV_Data_IN[0]~0_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_habSW7dt0~1_combout\,
	datae => \ALT_INV_Data_IN[0]~4_combout\,
	dataf => \CPU|decoderInstru|ALT_INV_saida[6]~5_combout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

\CPU|ULA1|saida[0]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~16_combout\ = ( !\CPU|ULA1|Equal2~0_combout\ & ( (((!\CPU|ULA1|Equal3~0_combout\ & (\CPU|ULA1|Add1~1_sumout\)) # (\CPU|ULA1|Equal3~0_combout\ & ((\CPU|ULA1|Add0~1_sumout\))))) ) ) # ( \CPU|ULA1|Equal2~0_combout\ & ( 
-- (!\CPU|ULA1|Equal3~0_combout\ & (((\Mem_ROM|memROM~18_combout\ & (!\CPU|decoderInstru|saida[6]~5_combout\))) # (\CPU|ULA1|saida[0]~0_combout\))) # (\CPU|ULA1|Equal3~0_combout\ & ((((\CPU|ULA1|Add0~1_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111010011110100111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida[6]~5_combout\,
	datac => \CPU|ULA1|ALT_INV_saida[0]~0_combout\,
	datad => \CPU|ULA1|ALT_INV_Add0~1_sumout\,
	datae => \CPU|ULA1|ALT_INV_Equal2~0_combout\,
	dataf => \CPU|ULA1|ALT_INV_Equal3~0_combout\,
	datag => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	combout => \CPU|ULA1|saida[0]~16_combout\);

\CPU|ULA1|saida[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida\(0) = ( \CPU|ULA1|saida\(0) & ( \CPU|ULA1|saida[7]~1_combout\ & ( \CPU|ULA1|saida[0]~16_combout\ ) ) ) # ( !\CPU|ULA1|saida\(0) & ( \CPU|ULA1|saida[7]~1_combout\ & ( \CPU|ULA1|saida[0]~16_combout\ ) ) ) # ( \CPU|ULA1|saida\(0) & ( 
-- !\CPU|ULA1|saida[7]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_saida[0]~16_combout\,
	datae => \CPU|ULA1|ALT_INV_saida\(0),
	dataf => \CPU|ULA1|ALT_INV_saida[7]~1_combout\,
	combout => \CPU|ULA1|saida\(0));

\CPU|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|ULA1|saida\(0),
	ena => \CPU|decoderInstru|saida[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(0));

\hab_HEX0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hab_HEX0~0_combout\ = ( !\Mem_ROM|memROM~61_combout\ & ( (!\CPU|PC|DOUT\(8) & (\Mem_ROM|memROM~44_combout\ & (!\Mem_ROM|memROM~50_combout\ & !\Mem_ROM|memROM~55_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \Mem_ROM|ALT_INV_memROM~44_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~50_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~55_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~61_combout\,
	combout => \hab_HEX0~0_combout\);

\HabilitaRegLEDR7to0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HabilitaRegLEDR7to0~0_combout\ = (\habSW7dt0~0_combout\ & (\CPU|decoderInstru|saida[0]~0_combout\ & \hab_HEX0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_habSW7dt0~0_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida[0]~0_combout\,
	datac => \ALT_INV_hab_HEX0~0_combout\,
	combout => \HabilitaRegLEDR7to0~0_combout\);

\regLEDR8bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \HabilitaRegLEDR7to0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regLEDR8bits|DOUT\(0));

\regLEDR8bits|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \HabilitaRegLEDR7to0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regLEDR8bits|DOUT\(1));

\regLEDR8bits|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \HabilitaRegLEDR7to0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regLEDR8bits|DOUT\(2));

\regLEDR8bits|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \HabilitaRegLEDR7to0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regLEDR8bits|DOUT\(3));

\regLEDR8bits|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(4),
	ena => \HabilitaRegLEDR7to0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regLEDR8bits|DOUT\(4));

\regLEDR8bits|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(5),
	ena => \HabilitaRegLEDR7to0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regLEDR8bits|DOUT\(5));

\regLEDR8bits|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(6),
	ena => \HabilitaRegLEDR7to0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regLEDR8bits|DOUT\(6));

\regLEDR8bits|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(7),
	ena => \HabilitaRegLEDR7to0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regLEDR8bits|DOUT\(7));

\hab_HEX1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hab_HEX1~0_combout\ = ( \Mem_ROM|memROM~17_combout\ & ( (!\CPU|PC|DOUT\(8) & !\Mem_ROM|memROM~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000000000000000000000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \Mem_ROM|ALT_INV_memROM~11_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~17_combout\,
	combout => \hab_HEX1~0_combout\);

\regLEDR8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \regLEDR8|DOUT~0_combout\ = ( \hab_HEX0~0_combout\ & ( \hab_HEX1~0_combout\ & ( (!\Mem_ROM|memROM~62_combout\ & ((!\CPU|decoderInstru|saida[0]~0_combout\ & (\regLEDR8|DOUT~q\)) # (\CPU|decoderInstru|saida[0]~0_combout\ & ((\CPU|REGA|DOUT\(0)))))) # 
-- (\Mem_ROM|memROM~62_combout\ & (\regLEDR8|DOUT~q\)) ) ) ) # ( !\hab_HEX0~0_combout\ & ( \hab_HEX1~0_combout\ & ( \regLEDR8|DOUT~q\ ) ) ) # ( \hab_HEX0~0_combout\ & ( !\hab_HEX1~0_combout\ & ( \regLEDR8|DOUT~q\ ) ) ) # ( !\hab_HEX0~0_combout\ & ( 
-- !\hab_HEX1~0_combout\ & ( \regLEDR8|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regLEDR8|ALT_INV_DOUT~q\,
	datab => \CPU|REGA|ALT_INV_DOUT\(0),
	datac => \Mem_ROM|ALT_INV_memROM~62_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida[0]~0_combout\,
	datae => \ALT_INV_hab_HEX0~0_combout\,
	dataf => \ALT_INV_hab_HEX1~0_combout\,
	combout => \regLEDR8|DOUT~0_combout\);

\regLEDR8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \regLEDR8|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regLEDR8|DOUT~q\);

\hab_HEX2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hab_HEX2~0_combout\ = ( \Mem_ROM|memROM~17_combout\ & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(8) & \Mem_ROM|memROM~6_combout\)) ) ) # ( !\Mem_ROM|memROM~17_combout\ & ( (!\CPU|PC|DOUT\(8) & (((\Mem_ROM|memROM~11_combout\)))) # (\CPU|PC|DOUT\(8) & 
-- (!\CPU|PC|DOUT\(0) & (\Mem_ROM|memROM~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000100000001000000010110011100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \Mem_ROM|ALT_INV_memROM~6_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~11_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~17_combout\,
	combout => \hab_HEX2~0_combout\);

\regLEDR9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \regLEDR9|DOUT~0_combout\ = ( \hab_HEX0~0_combout\ & ( \hab_HEX2~0_combout\ & ( (!\Mem_ROM|memROM~62_combout\ & ((!\CPU|decoderInstru|saida[0]~0_combout\ & (\regLEDR9|DOUT~q\)) # (\CPU|decoderInstru|saida[0]~0_combout\ & ((\CPU|REGA|DOUT\(0)))))) # 
-- (\Mem_ROM|memROM~62_combout\ & (\regLEDR9|DOUT~q\)) ) ) ) # ( !\hab_HEX0~0_combout\ & ( \hab_HEX2~0_combout\ & ( \regLEDR9|DOUT~q\ ) ) ) # ( \hab_HEX0~0_combout\ & ( !\hab_HEX2~0_combout\ & ( \regLEDR9|DOUT~q\ ) ) ) # ( !\hab_HEX0~0_combout\ & ( 
-- !\hab_HEX2~0_combout\ & ( \regLEDR9|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regLEDR9|ALT_INV_DOUT~q\,
	datab => \CPU|REGA|ALT_INV_DOUT\(0),
	datac => \Mem_ROM|ALT_INV_memROM~62_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida[0]~0_combout\,
	datae => \ALT_INV_hab_HEX0~0_combout\,
	dataf => \ALT_INV_hab_HEX2~0_combout\,
	combout => \regLEDR9|DOUT~0_combout\);

\regLEDR9|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \regLEDR9|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regLEDR9|DOUT~q\);

\hab_HEX0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \hab_HEX0~1_combout\ = ( \hab_HEX0~0_combout\ & ( (\Mem_ROM|memROM~62_combout\ & (!\Mem_ROM|memROM~12_combout\ & (!\Mem_ROM|memROM~18_combout\ & \CPU|decoderInstru|saida[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~62_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida[0]~0_combout\,
	datae => \ALT_INV_hab_HEX0~0_combout\,
	combout => \hab_HEX0~1_combout\);

\reg7seg0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \hab_HEX0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7seg0|DOUT\(0));

\reg7seg0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \hab_HEX0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7seg0|DOUT\(3));

\reg7seg0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \hab_HEX0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7seg0|DOUT\(1));

\reg7seg0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \hab_HEX0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7seg0|DOUT\(2));

\Hex0value|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex0value|rascSaida7seg[0]~0_combout\ = (!\reg7seg0|DOUT\(3) & (!\reg7seg0|DOUT\(1) & (!\reg7seg0|DOUT\(0) $ (!\reg7seg0|DOUT\(2))))) # (\reg7seg0|DOUT\(3) & (\reg7seg0|DOUT\(0) & (!\reg7seg0|DOUT\(1) $ (!\reg7seg0|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg0|ALT_INV_DOUT\(0),
	datab => \reg7seg0|ALT_INV_DOUT\(3),
	datac => \reg7seg0|ALT_INV_DOUT\(1),
	datad => \reg7seg0|ALT_INV_DOUT\(2),
	combout => \Hex0value|rascSaida7seg[0]~0_combout\);

\Hex0value|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex0value|rascSaida7seg[1]~1_combout\ = (!\reg7seg0|DOUT\(3) & (\reg7seg0|DOUT\(2) & (!\reg7seg0|DOUT\(0) $ (!\reg7seg0|DOUT\(1))))) # (\reg7seg0|DOUT\(3) & ((!\reg7seg0|DOUT\(0) & ((\reg7seg0|DOUT\(2)))) # (\reg7seg0|DOUT\(0) & (\reg7seg0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg0|ALT_INV_DOUT\(0),
	datab => \reg7seg0|ALT_INV_DOUT\(3),
	datac => \reg7seg0|ALT_INV_DOUT\(1),
	datad => \reg7seg0|ALT_INV_DOUT\(2),
	combout => \Hex0value|rascSaida7seg[1]~1_combout\);

\Hex0value|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex0value|rascSaida7seg[2]~2_combout\ = (!\reg7seg0|DOUT\(3) & (!\reg7seg0|DOUT\(0) & (\reg7seg0|DOUT\(1) & !\reg7seg0|DOUT\(2)))) # (\reg7seg0|DOUT\(3) & (\reg7seg0|DOUT\(2) & ((!\reg7seg0|DOUT\(0)) # (\reg7seg0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg0|ALT_INV_DOUT\(0),
	datab => \reg7seg0|ALT_INV_DOUT\(3),
	datac => \reg7seg0|ALT_INV_DOUT\(1),
	datad => \reg7seg0|ALT_INV_DOUT\(2),
	combout => \Hex0value|rascSaida7seg[2]~2_combout\);

\Hex0value|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex0value|rascSaida7seg[3]~3_combout\ = (!\reg7seg0|DOUT\(1) & (!\reg7seg0|DOUT\(3) & (!\reg7seg0|DOUT\(0) $ (!\reg7seg0|DOUT\(2))))) # (\reg7seg0|DOUT\(1) & ((!\reg7seg0|DOUT\(0) & (!\reg7seg0|DOUT\(2) & \reg7seg0|DOUT\(3))) # (\reg7seg0|DOUT\(0) & 
-- (\reg7seg0|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg0|ALT_INV_DOUT\(0),
	datab => \reg7seg0|ALT_INV_DOUT\(1),
	datac => \reg7seg0|ALT_INV_DOUT\(2),
	datad => \reg7seg0|ALT_INV_DOUT\(3),
	combout => \Hex0value|rascSaida7seg[3]~3_combout\);

\Hex0value|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex0value|rascSaida7seg[4]~4_combout\ = (!\reg7seg0|DOUT\(1) & ((!\reg7seg0|DOUT\(2) & ((\reg7seg0|DOUT\(0)))) # (\reg7seg0|DOUT\(2) & (!\reg7seg0|DOUT\(3))))) # (\reg7seg0|DOUT\(1) & (!\reg7seg0|DOUT\(3) & ((\reg7seg0|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg0|ALT_INV_DOUT\(3),
	datab => \reg7seg0|ALT_INV_DOUT\(1),
	datac => \reg7seg0|ALT_INV_DOUT\(2),
	datad => \reg7seg0|ALT_INV_DOUT\(0),
	combout => \Hex0value|rascSaida7seg[4]~4_combout\);

\Hex0value|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex0value|rascSaida7seg[5]~5_combout\ = (!\reg7seg0|DOUT\(0) & (\reg7seg0|DOUT\(1) & (!\reg7seg0|DOUT\(2) & !\reg7seg0|DOUT\(3)))) # (\reg7seg0|DOUT\(0) & (!\reg7seg0|DOUT\(3) $ (((!\reg7seg0|DOUT\(1) & \reg7seg0|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg0|ALT_INV_DOUT\(0),
	datab => \reg7seg0|ALT_INV_DOUT\(1),
	datac => \reg7seg0|ALT_INV_DOUT\(2),
	datad => \reg7seg0|ALT_INV_DOUT\(3),
	combout => \Hex0value|rascSaida7seg[5]~5_combout\);

\Hex0value|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex0value|rascSaida7seg[6]~6_combout\ = (!\reg7seg0|DOUT\(0) & (!\reg7seg0|DOUT\(1) & (!\reg7seg0|DOUT\(3) $ (\reg7seg0|DOUT\(2))))) # (\reg7seg0|DOUT\(0) & (!\reg7seg0|DOUT\(3) & (!\reg7seg0|DOUT\(1) $ (\reg7seg0|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg0|ALT_INV_DOUT\(0),
	datab => \reg7seg0|ALT_INV_DOUT\(3),
	datac => \reg7seg0|ALT_INV_DOUT\(1),
	datad => \reg7seg0|ALT_INV_DOUT\(2),
	combout => \Hex0value|rascSaida7seg[6]~6_combout\);

\hab_HEX1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \hab_HEX1~1_combout\ = (\Mem_ROM|memROM~62_combout\ & (\CPU|decoderInstru|saida[0]~0_combout\ & (\hab_HEX0~0_combout\ & \hab_HEX1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~62_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida[0]~0_combout\,
	datac => \ALT_INV_hab_HEX0~0_combout\,
	datad => \ALT_INV_hab_HEX1~0_combout\,
	combout => \hab_HEX1~1_combout\);

\reg7seg1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \hab_HEX1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7seg1|DOUT\(0));

\reg7seg1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \hab_HEX1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7seg1|DOUT\(3));

\reg7seg1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \hab_HEX1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7seg1|DOUT\(1));

\reg7seg1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \hab_HEX1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7seg1|DOUT\(2));

\Hex1value|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex1value|rascSaida7seg[0]~0_combout\ = (!\reg7seg1|DOUT\(3) & (!\reg7seg1|DOUT\(1) & (!\reg7seg1|DOUT\(0) $ (!\reg7seg1|DOUT\(2))))) # (\reg7seg1|DOUT\(3) & (\reg7seg1|DOUT\(0) & (!\reg7seg1|DOUT\(1) $ (!\reg7seg1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg1|ALT_INV_DOUT\(0),
	datab => \reg7seg1|ALT_INV_DOUT\(3),
	datac => \reg7seg1|ALT_INV_DOUT\(1),
	datad => \reg7seg1|ALT_INV_DOUT\(2),
	combout => \Hex1value|rascSaida7seg[0]~0_combout\);

\Hex1value|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex1value|rascSaida7seg[1]~1_combout\ = (!\reg7seg1|DOUT\(3) & (\reg7seg1|DOUT\(2) & (!\reg7seg1|DOUT\(0) $ (!\reg7seg1|DOUT\(1))))) # (\reg7seg1|DOUT\(3) & ((!\reg7seg1|DOUT\(0) & ((\reg7seg1|DOUT\(2)))) # (\reg7seg1|DOUT\(0) & (\reg7seg1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg1|ALT_INV_DOUT\(0),
	datab => \reg7seg1|ALT_INV_DOUT\(3),
	datac => \reg7seg1|ALT_INV_DOUT\(1),
	datad => \reg7seg1|ALT_INV_DOUT\(2),
	combout => \Hex1value|rascSaida7seg[1]~1_combout\);

\Hex1value|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex1value|rascSaida7seg[2]~2_combout\ = (!\reg7seg1|DOUT\(3) & (!\reg7seg1|DOUT\(0) & (\reg7seg1|DOUT\(1) & !\reg7seg1|DOUT\(2)))) # (\reg7seg1|DOUT\(3) & (\reg7seg1|DOUT\(2) & ((!\reg7seg1|DOUT\(0)) # (\reg7seg1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg1|ALT_INV_DOUT\(0),
	datab => \reg7seg1|ALT_INV_DOUT\(3),
	datac => \reg7seg1|ALT_INV_DOUT\(1),
	datad => \reg7seg1|ALT_INV_DOUT\(2),
	combout => \Hex1value|rascSaida7seg[2]~2_combout\);

\Hex1value|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex1value|rascSaida7seg[3]~3_combout\ = (!\reg7seg1|DOUT\(1) & (!\reg7seg1|DOUT\(3) & (!\reg7seg1|DOUT\(0) $ (!\reg7seg1|DOUT\(2))))) # (\reg7seg1|DOUT\(1) & ((!\reg7seg1|DOUT\(0) & (!\reg7seg1|DOUT\(2) & \reg7seg1|DOUT\(3))) # (\reg7seg1|DOUT\(0) & 
-- (\reg7seg1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg1|ALT_INV_DOUT\(0),
	datab => \reg7seg1|ALT_INV_DOUT\(1),
	datac => \reg7seg1|ALT_INV_DOUT\(2),
	datad => \reg7seg1|ALT_INV_DOUT\(3),
	combout => \Hex1value|rascSaida7seg[3]~3_combout\);

\Hex1value|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex1value|rascSaida7seg[4]~4_combout\ = (!\reg7seg1|DOUT\(1) & ((!\reg7seg1|DOUT\(2) & ((\reg7seg1|DOUT\(0)))) # (\reg7seg1|DOUT\(2) & (!\reg7seg1|DOUT\(3))))) # (\reg7seg1|DOUT\(1) & (!\reg7seg1|DOUT\(3) & ((\reg7seg1|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg1|ALT_INV_DOUT\(3),
	datab => \reg7seg1|ALT_INV_DOUT\(1),
	datac => \reg7seg1|ALT_INV_DOUT\(2),
	datad => \reg7seg1|ALT_INV_DOUT\(0),
	combout => \Hex1value|rascSaida7seg[4]~4_combout\);

\Hex1value|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex1value|rascSaida7seg[5]~5_combout\ = (!\reg7seg1|DOUT\(0) & (\reg7seg1|DOUT\(1) & (!\reg7seg1|DOUT\(2) & !\reg7seg1|DOUT\(3)))) # (\reg7seg1|DOUT\(0) & (!\reg7seg1|DOUT\(3) $ (((!\reg7seg1|DOUT\(1) & \reg7seg1|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg1|ALT_INV_DOUT\(0),
	datab => \reg7seg1|ALT_INV_DOUT\(1),
	datac => \reg7seg1|ALT_INV_DOUT\(2),
	datad => \reg7seg1|ALT_INV_DOUT\(3),
	combout => \Hex1value|rascSaida7seg[5]~5_combout\);

\Hex1value|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex1value|rascSaida7seg[6]~6_combout\ = (!\reg7seg1|DOUT\(0) & (!\reg7seg1|DOUT\(1) & (!\reg7seg1|DOUT\(3) $ (\reg7seg1|DOUT\(2))))) # (\reg7seg1|DOUT\(0) & (!\reg7seg1|DOUT\(3) & (!\reg7seg1|DOUT\(1) $ (\reg7seg1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg1|ALT_INV_DOUT\(0),
	datab => \reg7seg1|ALT_INV_DOUT\(3),
	datac => \reg7seg1|ALT_INV_DOUT\(1),
	datad => \reg7seg1|ALT_INV_DOUT\(2),
	combout => \Hex1value|rascSaida7seg[6]~6_combout\);

\hab_HEX2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \hab_HEX2~1_combout\ = (\Mem_ROM|memROM~62_combout\ & (\CPU|decoderInstru|saida[0]~0_combout\ & (\hab_HEX0~0_combout\ & \hab_HEX2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~62_combout\,
	datab => \CPU|decoderInstru|ALT_INV_saida[0]~0_combout\,
	datac => \ALT_INV_hab_HEX0~0_combout\,
	datad => \ALT_INV_hab_HEX2~0_combout\,
	combout => \hab_HEX2~1_combout\);

\reg7seg2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \hab_HEX2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7seg2|DOUT\(0));

\reg7seg2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \hab_HEX2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7seg2|DOUT\(3));

\reg7seg2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \hab_HEX2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7seg2|DOUT\(1));

\reg7seg2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \hab_HEX2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7seg2|DOUT\(2));

\Hex2value|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex2value|rascSaida7seg[0]~0_combout\ = (!\reg7seg2|DOUT\(3) & (!\reg7seg2|DOUT\(1) & (!\reg7seg2|DOUT\(0) $ (!\reg7seg2|DOUT\(2))))) # (\reg7seg2|DOUT\(3) & (\reg7seg2|DOUT\(0) & (!\reg7seg2|DOUT\(1) $ (!\reg7seg2|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg2|ALT_INV_DOUT\(0),
	datab => \reg7seg2|ALT_INV_DOUT\(3),
	datac => \reg7seg2|ALT_INV_DOUT\(1),
	datad => \reg7seg2|ALT_INV_DOUT\(2),
	combout => \Hex2value|rascSaida7seg[0]~0_combout\);

\Hex2value|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex2value|rascSaida7seg[1]~1_combout\ = (!\reg7seg2|DOUT\(3) & (\reg7seg2|DOUT\(2) & (!\reg7seg2|DOUT\(0) $ (!\reg7seg2|DOUT\(1))))) # (\reg7seg2|DOUT\(3) & ((!\reg7seg2|DOUT\(0) & ((\reg7seg2|DOUT\(2)))) # (\reg7seg2|DOUT\(0) & (\reg7seg2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg2|ALT_INV_DOUT\(0),
	datab => \reg7seg2|ALT_INV_DOUT\(3),
	datac => \reg7seg2|ALT_INV_DOUT\(1),
	datad => \reg7seg2|ALT_INV_DOUT\(2),
	combout => \Hex2value|rascSaida7seg[1]~1_combout\);

\Hex2value|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex2value|rascSaida7seg[2]~2_combout\ = (!\reg7seg2|DOUT\(3) & (!\reg7seg2|DOUT\(0) & (\reg7seg2|DOUT\(1) & !\reg7seg2|DOUT\(2)))) # (\reg7seg2|DOUT\(3) & (\reg7seg2|DOUT\(2) & ((!\reg7seg2|DOUT\(0)) # (\reg7seg2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg2|ALT_INV_DOUT\(0),
	datab => \reg7seg2|ALT_INV_DOUT\(3),
	datac => \reg7seg2|ALT_INV_DOUT\(1),
	datad => \reg7seg2|ALT_INV_DOUT\(2),
	combout => \Hex2value|rascSaida7seg[2]~2_combout\);

\Hex2value|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex2value|rascSaida7seg[3]~3_combout\ = (!\reg7seg2|DOUT\(1) & (!\reg7seg2|DOUT\(3) & (!\reg7seg2|DOUT\(0) $ (!\reg7seg2|DOUT\(2))))) # (\reg7seg2|DOUT\(1) & ((!\reg7seg2|DOUT\(0) & (!\reg7seg2|DOUT\(2) & \reg7seg2|DOUT\(3))) # (\reg7seg2|DOUT\(0) & 
-- (\reg7seg2|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg2|ALT_INV_DOUT\(0),
	datab => \reg7seg2|ALT_INV_DOUT\(1),
	datac => \reg7seg2|ALT_INV_DOUT\(2),
	datad => \reg7seg2|ALT_INV_DOUT\(3),
	combout => \Hex2value|rascSaida7seg[3]~3_combout\);

\Hex2value|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex2value|rascSaida7seg[4]~4_combout\ = (!\reg7seg2|DOUT\(1) & ((!\reg7seg2|DOUT\(2) & ((\reg7seg2|DOUT\(0)))) # (\reg7seg2|DOUT\(2) & (!\reg7seg2|DOUT\(3))))) # (\reg7seg2|DOUT\(1) & (!\reg7seg2|DOUT\(3) & ((\reg7seg2|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg2|ALT_INV_DOUT\(3),
	datab => \reg7seg2|ALT_INV_DOUT\(1),
	datac => \reg7seg2|ALT_INV_DOUT\(2),
	datad => \reg7seg2|ALT_INV_DOUT\(0),
	combout => \Hex2value|rascSaida7seg[4]~4_combout\);

\Hex2value|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex2value|rascSaida7seg[5]~5_combout\ = (!\reg7seg2|DOUT\(0) & (\reg7seg2|DOUT\(1) & (!\reg7seg2|DOUT\(2) & !\reg7seg2|DOUT\(3)))) # (\reg7seg2|DOUT\(0) & (!\reg7seg2|DOUT\(3) $ (((!\reg7seg2|DOUT\(1) & \reg7seg2|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg2|ALT_INV_DOUT\(0),
	datab => \reg7seg2|ALT_INV_DOUT\(1),
	datac => \reg7seg2|ALT_INV_DOUT\(2),
	datad => \reg7seg2|ALT_INV_DOUT\(3),
	combout => \Hex2value|rascSaida7seg[5]~5_combout\);

\Hex2value|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex2value|rascSaida7seg[6]~6_combout\ = (!\reg7seg2|DOUT\(0) & (!\reg7seg2|DOUT\(1) & (!\reg7seg2|DOUT\(3) $ (\reg7seg2|DOUT\(2))))) # (\reg7seg2|DOUT\(0) & (!\reg7seg2|DOUT\(3) & (!\reg7seg2|DOUT\(1) $ (\reg7seg2|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg2|ALT_INV_DOUT\(0),
	datab => \reg7seg2|ALT_INV_DOUT\(3),
	datac => \reg7seg2|ALT_INV_DOUT\(1),
	datad => \reg7seg2|ALT_INV_DOUT\(2),
	combout => \Hex2value|rascSaida7seg[6]~6_combout\);

\hab_HEX3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hab_HEX3~0_combout\ = ( \hab_HEX0~0_combout\ & ( (\Mem_ROM|memROM~62_combout\ & (\Mem_ROM|memROM~12_combout\ & (\Mem_ROM|memROM~18_combout\ & \CPU|decoderInstru|saida[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~62_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida[0]~0_combout\,
	datae => \ALT_INV_hab_HEX0~0_combout\,
	combout => \hab_HEX3~0_combout\);

\reg7seg3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \hab_HEX3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7seg3|DOUT\(0));

\reg7seg3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \hab_HEX3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7seg3|DOUT\(3));

\reg7seg3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \hab_HEX3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7seg3|DOUT\(1));

\reg7seg3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \hab_HEX3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7seg3|DOUT\(2));

\Hex3value|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex3value|rascSaida7seg[0]~0_combout\ = (!\reg7seg3|DOUT\(3) & (!\reg7seg3|DOUT\(1) & (!\reg7seg3|DOUT\(0) $ (!\reg7seg3|DOUT\(2))))) # (\reg7seg3|DOUT\(3) & (\reg7seg3|DOUT\(0) & (!\reg7seg3|DOUT\(1) $ (!\reg7seg3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg3|ALT_INV_DOUT\(0),
	datab => \reg7seg3|ALT_INV_DOUT\(3),
	datac => \reg7seg3|ALT_INV_DOUT\(1),
	datad => \reg7seg3|ALT_INV_DOUT\(2),
	combout => \Hex3value|rascSaida7seg[0]~0_combout\);

\Hex3value|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex3value|rascSaida7seg[1]~1_combout\ = (!\reg7seg3|DOUT\(3) & (\reg7seg3|DOUT\(2) & (!\reg7seg3|DOUT\(0) $ (!\reg7seg3|DOUT\(1))))) # (\reg7seg3|DOUT\(3) & ((!\reg7seg3|DOUT\(0) & ((\reg7seg3|DOUT\(2)))) # (\reg7seg3|DOUT\(0) & (\reg7seg3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg3|ALT_INV_DOUT\(0),
	datab => \reg7seg3|ALT_INV_DOUT\(3),
	datac => \reg7seg3|ALT_INV_DOUT\(1),
	datad => \reg7seg3|ALT_INV_DOUT\(2),
	combout => \Hex3value|rascSaida7seg[1]~1_combout\);

\Hex3value|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex3value|rascSaida7seg[2]~2_combout\ = (!\reg7seg3|DOUT\(3) & (!\reg7seg3|DOUT\(0) & (\reg7seg3|DOUT\(1) & !\reg7seg3|DOUT\(2)))) # (\reg7seg3|DOUT\(3) & (\reg7seg3|DOUT\(2) & ((!\reg7seg3|DOUT\(0)) # (\reg7seg3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg3|ALT_INV_DOUT\(0),
	datab => \reg7seg3|ALT_INV_DOUT\(3),
	datac => \reg7seg3|ALT_INV_DOUT\(1),
	datad => \reg7seg3|ALT_INV_DOUT\(2),
	combout => \Hex3value|rascSaida7seg[2]~2_combout\);

\Hex3value|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex3value|rascSaida7seg[3]~3_combout\ = (!\reg7seg3|DOUT\(1) & (!\reg7seg3|DOUT\(3) & (!\reg7seg3|DOUT\(0) $ (!\reg7seg3|DOUT\(2))))) # (\reg7seg3|DOUT\(1) & ((!\reg7seg3|DOUT\(0) & (!\reg7seg3|DOUT\(2) & \reg7seg3|DOUT\(3))) # (\reg7seg3|DOUT\(0) & 
-- (\reg7seg3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg3|ALT_INV_DOUT\(0),
	datab => \reg7seg3|ALT_INV_DOUT\(1),
	datac => \reg7seg3|ALT_INV_DOUT\(2),
	datad => \reg7seg3|ALT_INV_DOUT\(3),
	combout => \Hex3value|rascSaida7seg[3]~3_combout\);

\Hex3value|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex3value|rascSaida7seg[4]~4_combout\ = (!\reg7seg3|DOUT\(1) & ((!\reg7seg3|DOUT\(2) & ((\reg7seg3|DOUT\(0)))) # (\reg7seg3|DOUT\(2) & (!\reg7seg3|DOUT\(3))))) # (\reg7seg3|DOUT\(1) & (!\reg7seg3|DOUT\(3) & ((\reg7seg3|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg3|ALT_INV_DOUT\(3),
	datab => \reg7seg3|ALT_INV_DOUT\(1),
	datac => \reg7seg3|ALT_INV_DOUT\(2),
	datad => \reg7seg3|ALT_INV_DOUT\(0),
	combout => \Hex3value|rascSaida7seg[4]~4_combout\);

\Hex3value|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex3value|rascSaida7seg[5]~5_combout\ = (!\reg7seg3|DOUT\(0) & (\reg7seg3|DOUT\(1) & (!\reg7seg3|DOUT\(2) & !\reg7seg3|DOUT\(3)))) # (\reg7seg3|DOUT\(0) & (!\reg7seg3|DOUT\(3) $ (((!\reg7seg3|DOUT\(1) & \reg7seg3|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg3|ALT_INV_DOUT\(0),
	datab => \reg7seg3|ALT_INV_DOUT\(1),
	datac => \reg7seg3|ALT_INV_DOUT\(2),
	datad => \reg7seg3|ALT_INV_DOUT\(3),
	combout => \Hex3value|rascSaida7seg[5]~5_combout\);

\Hex3value|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex3value|rascSaida7seg[6]~6_combout\ = (!\reg7seg3|DOUT\(0) & (!\reg7seg3|DOUT\(1) & (!\reg7seg3|DOUT\(3) $ (\reg7seg3|DOUT\(2))))) # (\reg7seg3|DOUT\(0) & (!\reg7seg3|DOUT\(3) & (!\reg7seg3|DOUT\(1) $ (\reg7seg3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg3|ALT_INV_DOUT\(0),
	datab => \reg7seg3|ALT_INV_DOUT\(3),
	datac => \reg7seg3|ALT_INV_DOUT\(1),
	datad => \reg7seg3|ALT_INV_DOUT\(2),
	combout => \Hex3value|rascSaida7seg[6]~6_combout\);

\hab_HEX5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hab_HEX5~0_combout\ = ( !\Mem_ROM|memROM~12_combout\ & ( (!\CPU|PC|DOUT\(8) & (\Mem_ROM|memROM~44_combout\ & (!\Mem_ROM|memROM~50_combout\ & !\Mem_ROM|memROM~55_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \Mem_ROM|ALT_INV_memROM~44_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~50_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~55_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~12_combout\,
	combout => \hab_HEX5~0_combout\);

\hab_HEX4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hab_HEX4~0_combout\ = ( \hab_HEX5~0_combout\ & ( (\Mem_ROM|memROM~61_combout\ & (\Mem_ROM|memROM~62_combout\ & (!\Mem_ROM|memROM~18_combout\ & \CPU|decoderInstru|saida[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~62_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida[0]~0_combout\,
	datae => \ALT_INV_hab_HEX5~0_combout\,
	combout => \hab_HEX4~0_combout\);

\reg7seg4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \hab_HEX4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7seg4|DOUT\(0));

\reg7seg4|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \hab_HEX4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7seg4|DOUT\(3));

\reg7seg4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \hab_HEX4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7seg4|DOUT\(1));

\reg7seg4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \hab_HEX4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7seg4|DOUT\(2));

\Hex4value|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex4value|rascSaida7seg[0]~0_combout\ = (!\reg7seg4|DOUT\(3) & (!\reg7seg4|DOUT\(1) & (!\reg7seg4|DOUT\(0) $ (!\reg7seg4|DOUT\(2))))) # (\reg7seg4|DOUT\(3) & (\reg7seg4|DOUT\(0) & (!\reg7seg4|DOUT\(1) $ (!\reg7seg4|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg4|ALT_INV_DOUT\(0),
	datab => \reg7seg4|ALT_INV_DOUT\(3),
	datac => \reg7seg4|ALT_INV_DOUT\(1),
	datad => \reg7seg4|ALT_INV_DOUT\(2),
	combout => \Hex4value|rascSaida7seg[0]~0_combout\);

\Hex4value|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex4value|rascSaida7seg[1]~1_combout\ = (!\reg7seg4|DOUT\(3) & (\reg7seg4|DOUT\(2) & (!\reg7seg4|DOUT\(0) $ (!\reg7seg4|DOUT\(1))))) # (\reg7seg4|DOUT\(3) & ((!\reg7seg4|DOUT\(0) & ((\reg7seg4|DOUT\(2)))) # (\reg7seg4|DOUT\(0) & (\reg7seg4|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg4|ALT_INV_DOUT\(0),
	datab => \reg7seg4|ALT_INV_DOUT\(3),
	datac => \reg7seg4|ALT_INV_DOUT\(1),
	datad => \reg7seg4|ALT_INV_DOUT\(2),
	combout => \Hex4value|rascSaida7seg[1]~1_combout\);

\Hex4value|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex4value|rascSaida7seg[2]~2_combout\ = (!\reg7seg4|DOUT\(3) & (!\reg7seg4|DOUT\(0) & (\reg7seg4|DOUT\(1) & !\reg7seg4|DOUT\(2)))) # (\reg7seg4|DOUT\(3) & (\reg7seg4|DOUT\(2) & ((!\reg7seg4|DOUT\(0)) # (\reg7seg4|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg4|ALT_INV_DOUT\(0),
	datab => \reg7seg4|ALT_INV_DOUT\(3),
	datac => \reg7seg4|ALT_INV_DOUT\(1),
	datad => \reg7seg4|ALT_INV_DOUT\(2),
	combout => \Hex4value|rascSaida7seg[2]~2_combout\);

\Hex4value|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex4value|rascSaida7seg[3]~3_combout\ = (!\reg7seg4|DOUT\(1) & (!\reg7seg4|DOUT\(3) & (!\reg7seg4|DOUT\(0) $ (!\reg7seg4|DOUT\(2))))) # (\reg7seg4|DOUT\(1) & ((!\reg7seg4|DOUT\(0) & (!\reg7seg4|DOUT\(2) & \reg7seg4|DOUT\(3))) # (\reg7seg4|DOUT\(0) & 
-- (\reg7seg4|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg4|ALT_INV_DOUT\(0),
	datab => \reg7seg4|ALT_INV_DOUT\(1),
	datac => \reg7seg4|ALT_INV_DOUT\(2),
	datad => \reg7seg4|ALT_INV_DOUT\(3),
	combout => \Hex4value|rascSaida7seg[3]~3_combout\);

\Hex4value|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex4value|rascSaida7seg[4]~4_combout\ = (!\reg7seg4|DOUT\(1) & ((!\reg7seg4|DOUT\(2) & ((\reg7seg4|DOUT\(0)))) # (\reg7seg4|DOUT\(2) & (!\reg7seg4|DOUT\(3))))) # (\reg7seg4|DOUT\(1) & (!\reg7seg4|DOUT\(3) & ((\reg7seg4|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg4|ALT_INV_DOUT\(3),
	datab => \reg7seg4|ALT_INV_DOUT\(1),
	datac => \reg7seg4|ALT_INV_DOUT\(2),
	datad => \reg7seg4|ALT_INV_DOUT\(0),
	combout => \Hex4value|rascSaida7seg[4]~4_combout\);

\Hex4value|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex4value|rascSaida7seg[5]~5_combout\ = (!\reg7seg4|DOUT\(0) & (\reg7seg4|DOUT\(1) & (!\reg7seg4|DOUT\(2) & !\reg7seg4|DOUT\(3)))) # (\reg7seg4|DOUT\(0) & (!\reg7seg4|DOUT\(3) $ (((!\reg7seg4|DOUT\(1) & \reg7seg4|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg4|ALT_INV_DOUT\(0),
	datab => \reg7seg4|ALT_INV_DOUT\(1),
	datac => \reg7seg4|ALT_INV_DOUT\(2),
	datad => \reg7seg4|ALT_INV_DOUT\(3),
	combout => \Hex4value|rascSaida7seg[5]~5_combout\);

\Hex4value|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex4value|rascSaida7seg[6]~6_combout\ = (!\reg7seg4|DOUT\(0) & (!\reg7seg4|DOUT\(1) & (!\reg7seg4|DOUT\(3) $ (\reg7seg4|DOUT\(2))))) # (\reg7seg4|DOUT\(0) & (!\reg7seg4|DOUT\(3) & (!\reg7seg4|DOUT\(1) $ (\reg7seg4|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg4|ALT_INV_DOUT\(0),
	datab => \reg7seg4|ALT_INV_DOUT\(3),
	datac => \reg7seg4|ALT_INV_DOUT\(1),
	datad => \reg7seg4|ALT_INV_DOUT\(2),
	combout => \Hex4value|rascSaida7seg[6]~6_combout\);

hab_HEX5 : cyclonev_lcell_comb
-- Equation(s):
-- \hab_HEX5~combout\ = ( \hab_HEX5~0_combout\ & ( (\Mem_ROM|memROM~61_combout\ & (\Mem_ROM|memROM~62_combout\ & (\Mem_ROM|memROM~18_combout\ & \CPU|decoderInstru|saida[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~61_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~62_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~18_combout\,
	datad => \CPU|decoderInstru|ALT_INV_saida[0]~0_combout\,
	datae => \ALT_INV_hab_HEX5~0_combout\,
	combout => \hab_HEX5~combout\);

\reg7seg5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(0),
	ena => \hab_HEX5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7seg5|DOUT\(0));

\reg7seg5|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(3),
	ena => \hab_HEX5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7seg5|DOUT\(3));

\reg7seg5|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(1),
	ena => \hab_HEX5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7seg5|DOUT\(1));

\reg7seg5|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT\(2),
	ena => \hab_HEX5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7seg5|DOUT\(2));

\Hex5value|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex5value|rascSaida7seg[0]~0_combout\ = (!\reg7seg5|DOUT\(3) & (!\reg7seg5|DOUT\(1) & (!\reg7seg5|DOUT\(0) $ (!\reg7seg5|DOUT\(2))))) # (\reg7seg5|DOUT\(3) & (\reg7seg5|DOUT\(0) & (!\reg7seg5|DOUT\(1) $ (!\reg7seg5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg5|ALT_INV_DOUT\(0),
	datab => \reg7seg5|ALT_INV_DOUT\(3),
	datac => \reg7seg5|ALT_INV_DOUT\(1),
	datad => \reg7seg5|ALT_INV_DOUT\(2),
	combout => \Hex5value|rascSaida7seg[0]~0_combout\);

\Hex5value|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex5value|rascSaida7seg[1]~1_combout\ = (!\reg7seg5|DOUT\(3) & (\reg7seg5|DOUT\(2) & (!\reg7seg5|DOUT\(0) $ (!\reg7seg5|DOUT\(1))))) # (\reg7seg5|DOUT\(3) & ((!\reg7seg5|DOUT\(0) & ((\reg7seg5|DOUT\(2)))) # (\reg7seg5|DOUT\(0) & (\reg7seg5|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg5|ALT_INV_DOUT\(0),
	datab => \reg7seg5|ALT_INV_DOUT\(3),
	datac => \reg7seg5|ALT_INV_DOUT\(1),
	datad => \reg7seg5|ALT_INV_DOUT\(2),
	combout => \Hex5value|rascSaida7seg[1]~1_combout\);

\Hex5value|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex5value|rascSaida7seg[2]~2_combout\ = (!\reg7seg5|DOUT\(3) & (!\reg7seg5|DOUT\(0) & (\reg7seg5|DOUT\(1) & !\reg7seg5|DOUT\(2)))) # (\reg7seg5|DOUT\(3) & (\reg7seg5|DOUT\(2) & ((!\reg7seg5|DOUT\(0)) # (\reg7seg5|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg5|ALT_INV_DOUT\(0),
	datab => \reg7seg5|ALT_INV_DOUT\(3),
	datac => \reg7seg5|ALT_INV_DOUT\(1),
	datad => \reg7seg5|ALT_INV_DOUT\(2),
	combout => \Hex5value|rascSaida7seg[2]~2_combout\);

\Hex5value|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex5value|rascSaida7seg[3]~3_combout\ = (!\reg7seg5|DOUT\(1) & (!\reg7seg5|DOUT\(3) & (!\reg7seg5|DOUT\(0) $ (!\reg7seg5|DOUT\(2))))) # (\reg7seg5|DOUT\(1) & ((!\reg7seg5|DOUT\(0) & (!\reg7seg5|DOUT\(2) & \reg7seg5|DOUT\(3))) # (\reg7seg5|DOUT\(0) & 
-- (\reg7seg5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg5|ALT_INV_DOUT\(0),
	datab => \reg7seg5|ALT_INV_DOUT\(1),
	datac => \reg7seg5|ALT_INV_DOUT\(2),
	datad => \reg7seg5|ALT_INV_DOUT\(3),
	combout => \Hex5value|rascSaida7seg[3]~3_combout\);

\Hex5value|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex5value|rascSaida7seg[4]~4_combout\ = (!\reg7seg5|DOUT\(1) & ((!\reg7seg5|DOUT\(2) & ((\reg7seg5|DOUT\(0)))) # (\reg7seg5|DOUT\(2) & (!\reg7seg5|DOUT\(3))))) # (\reg7seg5|DOUT\(1) & (!\reg7seg5|DOUT\(3) & ((\reg7seg5|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg5|ALT_INV_DOUT\(3),
	datab => \reg7seg5|ALT_INV_DOUT\(1),
	datac => \reg7seg5|ALT_INV_DOUT\(2),
	datad => \reg7seg5|ALT_INV_DOUT\(0),
	combout => \Hex5value|rascSaida7seg[4]~4_combout\);

\Hex5value|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex5value|rascSaida7seg[5]~5_combout\ = (!\reg7seg5|DOUT\(0) & (\reg7seg5|DOUT\(1) & (!\reg7seg5|DOUT\(2) & !\reg7seg5|DOUT\(3)))) # (\reg7seg5|DOUT\(0) & (!\reg7seg5|DOUT\(3) $ (((!\reg7seg5|DOUT\(1) & \reg7seg5|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg5|ALT_INV_DOUT\(0),
	datab => \reg7seg5|ALT_INV_DOUT\(1),
	datac => \reg7seg5|ALT_INV_DOUT\(2),
	datad => \reg7seg5|ALT_INV_DOUT\(3),
	combout => \Hex5value|rascSaida7seg[5]~5_combout\);

\Hex5value|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hex5value|rascSaida7seg[6]~6_combout\ = (!\reg7seg5|DOUT\(0) & (!\reg7seg5|DOUT\(1) & (!\reg7seg5|DOUT\(3) $ (\reg7seg5|DOUT\(2))))) # (\reg7seg5|DOUT\(0) & (!\reg7seg5|DOUT\(3) & (!\reg7seg5|DOUT\(1) $ (\reg7seg5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg7seg5|ALT_INV_DOUT\(0),
	datab => \reg7seg5|ALT_INV_DOUT\(3),
	datac => \reg7seg5|ALT_INV_DOUT\(1),
	datad => \reg7seg5|ALT_INV_DOUT\(2),
	combout => \Hex5value|rascSaida7seg[6]~6_combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_PC_OUT(0) <= \PC_OUT[0]~output_o\;

ww_PC_OUT(1) <= \PC_OUT[1]~output_o\;

ww_PC_OUT(2) <= \PC_OUT[2]~output_o\;

ww_PC_OUT(3) <= \PC_OUT[3]~output_o\;

ww_PC_OUT(4) <= \PC_OUT[4]~output_o\;

ww_PC_OUT(5) <= \PC_OUT[5]~output_o\;

ww_PC_OUT(6) <= \PC_OUT[6]~output_o\;

ww_PC_OUT(7) <= \PC_OUT[7]~output_o\;

ww_PC_OUT(8) <= \PC_OUT[8]~output_o\;

ww_Hab_debug(0) <= \Hab_debug[0]~output_o\;

ww_Hab_debug(1) <= \Hab_debug[1]~output_o\;

ww_Hab_debug(2) <= \Hab_debug[2]~output_o\;

ww_Hab_debug(3) <= \Hab_debug[3]~output_o\;

ww_Hab_debug(4) <= \Hab_debug[4]~output_o\;

ww_Hab_debug(5) <= \Hab_debug[5]~output_o\;

ww_Hab_debug(6) <= \Hab_debug[6]~output_o\;

ww_Hab_debug(7) <= \Hab_debug[7]~output_o\;

ww_Hab_debug(8) <= \Hab_debug[8]~output_o\;

ww_Hab_debug(9) <= \Hab_debug[9]~output_o\;

ww_Hab_debug(10) <= \Hab_debug[10]~output_o\;

ww_Hab_debug(11) <= \Hab_debug[11]~output_o\;

ww_Hab_debug(12) <= \Hab_debug[12]~output_o\;

ww_Hab_debug(13) <= \Hab_debug[13]~output_o\;

ww_Hab_debug(14) <= \Hab_debug[14]~output_o\;

ww_Hab_debug(15) <= \Hab_debug[15]~output_o\;

ww_REG_A_OUT(0) <= \REG_A_OUT[0]~output_o\;

ww_REG_A_OUT(1) <= \REG_A_OUT[1]~output_o\;

ww_REG_A_OUT(2) <= \REG_A_OUT[2]~output_o\;

ww_REG_A_OUT(3) <= \REG_A_OUT[3]~output_o\;

ww_REG_A_OUT(4) <= \REG_A_OUT[4]~output_o\;

ww_REG_A_OUT(5) <= \REG_A_OUT[5]~output_o\;

ww_REG_A_OUT(6) <= \REG_A_OUT[6]~output_o\;

ww_REG_A_OUT(7) <= \REG_A_OUT[7]~output_o\;
END structure;


