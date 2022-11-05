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

-- DATE "11/04/2022 14:26:02"

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

ENTITY 	Proj1EntregaIntermediaria IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	FPGA_RESET_N : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	CF : OUT std_logic;
	SAIDA : OUT std_logic_vector(7 DOWNTO 0)
	);
END Proj1EntregaIntermediaria;

ARCHITECTURE structure OF Proj1EntregaIntermediaria IS
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
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_FPGA_RESET_N : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_CF : std_logic;
SIGNAL ww_SAIDA : std_logic_vector(7 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
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
SIGNAL \PC_OUT[0]~output_o\ : std_logic;
SIGNAL \PC_OUT[1]~output_o\ : std_logic;
SIGNAL \PC_OUT[2]~output_o\ : std_logic;
SIGNAL \PC_OUT[3]~output_o\ : std_logic;
SIGNAL \PC_OUT[4]~output_o\ : std_logic;
SIGNAL \PC_OUT[5]~output_o\ : std_logic;
SIGNAL \PC_OUT[6]~output_o\ : std_logic;
SIGNAL \PC_OUT[7]~output_o\ : std_logic;
SIGNAL \PC_OUT[8]~output_o\ : std_logic;
SIGNAL \CF~output_o\ : std_logic;
SIGNAL \SAIDA[0]~output_o\ : std_logic;
SIGNAL \SAIDA[1]~output_o\ : std_logic;
SIGNAL \SAIDA[2]~output_o\ : std_logic;
SIGNAL \SAIDA[3]~output_o\ : std_logic;
SIGNAL \SAIDA[4]~output_o\ : std_logic;
SIGNAL \SAIDA[5]~output_o\ : std_logic;
SIGNAL \SAIDA[6]~output_o\ : std_logic;
SIGNAL \SAIDA[7]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \ROM1|memROM~15_combout\ : std_logic;
SIGNAL \PROCESSADOR|incrementaPC|Add0~2\ : std_logic;
SIGNAL \PROCESSADOR|incrementaPC|Add0~6\ : std_logic;
SIGNAL \PROCESSADOR|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \PROCESSADOR|incrementaPC|Add0~18\ : std_logic;
SIGNAL \PROCESSADOR|incrementaPC|Add0~22\ : std_logic;
SIGNAL \PROCESSADOR|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \PROCESSADOR|MUXJUMP|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \PROCESSADOR|incrementaPC|Add0~26\ : std_logic;
SIGNAL \PROCESSADOR|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \PROCESSADOR|MUXJUMP|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \PROCESSADOR|DEC|Equal13~0_combout\ : std_logic;
SIGNAL \PROCESSADOR|DEC|Equal13~1_combout\ : std_logic;
SIGNAL \PROCESSADOR|DEC|saida[4]~2_combout\ : std_logic;
SIGNAL \PROCESSADOR|DEC|saida[3]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~16_combout\ : std_logic;
SIGNAL \ROM1|memROM~21_combout\ : std_logic;
SIGNAL \ROM1|memROM~17_combout\ : std_logic;
SIGNAL \MEM|ram~183_combout\ : std_logic;
SIGNAL \MEM|ram~18_q\ : std_logic;
SIGNAL \MEM|ram~187_combout\ : std_logic;
SIGNAL \MEM|ram~188_combout\ : std_logic;
SIGNAL \MEM|ram~26_q\ : std_logic;
SIGNAL \MEM|ram~193_combout\ : std_logic;
SIGNAL \MEM|ram~34_q\ : std_logic;
SIGNAL \MEM|ram~199_combout\ : std_logic;
SIGNAL \MEM|ram~42_q\ : std_logic;
SIGNAL \MEM|ram~158_combout\ : std_logic;
SIGNAL \MEM|ram~184_combout\ : std_logic;
SIGNAL \MEM|ram~50_q\ : std_logic;
SIGNAL \MEM|ram~189_combout\ : std_logic;
SIGNAL \MEM|ram~58_q\ : std_logic;
SIGNAL \MEM|ram~194_combout\ : std_logic;
SIGNAL \MEM|ram~195_combout\ : std_logic;
SIGNAL \MEM|ram~66_q\ : std_logic;
SIGNAL \MEM|ram~200_combout\ : std_logic;
SIGNAL \MEM|ram~74_q\ : std_logic;
SIGNAL \MEM|ram~159_combout\ : std_logic;
SIGNAL \MEM|ram~185_combout\ : std_logic;
SIGNAL \MEM|ram~82_q\ : std_logic;
SIGNAL \MEM|ram~190_combout\ : std_logic;
SIGNAL \MEM|ram~191_combout\ : std_logic;
SIGNAL \MEM|ram~90_q\ : std_logic;
SIGNAL \MEM|ram~196_combout\ : std_logic;
SIGNAL \MEM|ram~98_q\ : std_logic;
SIGNAL \MEM|ram~201_combout\ : std_logic;
SIGNAL \MEM|ram~106_q\ : std_logic;
SIGNAL \MEM|ram~160_combout\ : std_logic;
SIGNAL \MEM|ram~186_combout\ : std_logic;
SIGNAL \MEM|ram~114_q\ : std_logic;
SIGNAL \MEM|ram~192_combout\ : std_logic;
SIGNAL \MEM|ram~122_q\ : std_logic;
SIGNAL \MEM|ram~197_combout\ : std_logic;
SIGNAL \MEM|ram~198_combout\ : std_logic;
SIGNAL \MEM|ram~130_q\ : std_logic;
SIGNAL \MEM|ram~202_combout\ : std_logic;
SIGNAL \MEM|ram~138_q\ : std_logic;
SIGNAL \MEM|ram~161_combout\ : std_logic;
SIGNAL \MEM|ram~162_combout\ : std_logic;
SIGNAL \PROCESSADOR|MUX1|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~20_combout\ : std_logic;
SIGNAL \MEM|ram~17_q\ : std_logic;
SIGNAL \MEM|ram~49_q\ : std_logic;
SIGNAL \MEM|ram~81_q\ : std_logic;
SIGNAL \MEM|ram~113_q\ : std_logic;
SIGNAL \MEM|ram~153_combout\ : std_logic;
SIGNAL \MEM|ram~25_q\ : std_logic;
SIGNAL \MEM|ram~57_q\ : std_logic;
SIGNAL \MEM|ram~89_q\ : std_logic;
SIGNAL \MEM|ram~121_q\ : std_logic;
SIGNAL \MEM|ram~154_combout\ : std_logic;
SIGNAL \MEM|ram~33_q\ : std_logic;
SIGNAL \MEM|ram~65_q\ : std_logic;
SIGNAL \MEM|ram~97_q\ : std_logic;
SIGNAL \MEM|ram~129_q\ : std_logic;
SIGNAL \MEM|ram~155_combout\ : std_logic;
SIGNAL \MEM|ram~41_q\ : std_logic;
SIGNAL \MEM|ram~73_q\ : std_logic;
SIGNAL \MEM|ram~105_q\ : std_logic;
SIGNAL \MEM|ram~137_q\ : std_logic;
SIGNAL \MEM|ram~156_combout\ : std_logic;
SIGNAL \MEM|ram~157_combout\ : std_logic;
SIGNAL \PROCESSADOR|MUX1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~19_combout\ : std_logic;
SIGNAL \MEM|ram~16_q\ : std_logic;
SIGNAL \MEM|ram~24_q\ : std_logic;
SIGNAL \MEM|ram~32_q\ : std_logic;
SIGNAL \MEM|ram~40_q\ : std_logic;
SIGNAL \MEM|ram~148_combout\ : std_logic;
SIGNAL \MEM|ram~48_q\ : std_logic;
SIGNAL \MEM|ram~56_q\ : std_logic;
SIGNAL \MEM|ram~64_q\ : std_logic;
SIGNAL \MEM|ram~72_q\ : std_logic;
SIGNAL \MEM|ram~149_combout\ : std_logic;
SIGNAL \MEM|ram~80_q\ : std_logic;
SIGNAL \MEM|ram~88_q\ : std_logic;
SIGNAL \MEM|ram~96_q\ : std_logic;
SIGNAL \MEM|ram~104_q\ : std_logic;
SIGNAL \MEM|ram~150_combout\ : std_logic;
SIGNAL \MEM|ram~112_q\ : std_logic;
SIGNAL \MEM|ram~120_q\ : std_logic;
SIGNAL \MEM|ram~128_q\ : std_logic;
SIGNAL \MEM|ram~136_q\ : std_logic;
SIGNAL \MEM|ram~151_combout\ : std_logic;
SIGNAL \MEM|ram~152_combout\ : std_logic;
SIGNAL \PROCESSADOR|MUX1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~18_combout\ : std_logic;
SIGNAL \MEM|ram~15_q\ : std_logic;
SIGNAL \MEM|ram~47_q\ : std_logic;
SIGNAL \MEM|ram~79_q\ : std_logic;
SIGNAL \MEM|ram~111_q\ : std_logic;
SIGNAL \MEM|ram~143_combout\ : std_logic;
SIGNAL \MEM|ram~23_q\ : std_logic;
SIGNAL \MEM|ram~55_q\ : std_logic;
SIGNAL \MEM|ram~87_q\ : std_logic;
SIGNAL \MEM|ram~119_q\ : std_logic;
SIGNAL \MEM|ram~144_combout\ : std_logic;
SIGNAL \MEM|ram~31_q\ : std_logic;
SIGNAL \MEM|ram~63_q\ : std_logic;
SIGNAL \MEM|ram~95_q\ : std_logic;
SIGNAL \MEM|ram~127_q\ : std_logic;
SIGNAL \MEM|ram~145_combout\ : std_logic;
SIGNAL \MEM|ram~39_q\ : std_logic;
SIGNAL \MEM|ram~71_q\ : std_logic;
SIGNAL \MEM|ram~103_q\ : std_logic;
SIGNAL \MEM|ram~135_q\ : std_logic;
SIGNAL \MEM|ram~146_combout\ : std_logic;
SIGNAL \MEM|ram~147_combout\ : std_logic;
SIGNAL \PROCESSADOR|MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \PROCESSADOR|ULA|Add0~1_sumout\ : std_logic;
SIGNAL \PROCESSADOR|ULA|Add1~34_cout\ : std_logic;
SIGNAL \PROCESSADOR|ULA|Add1~5_sumout\ : std_logic;
SIGNAL \PROCESSADOR|ULA|saida[0]~0_combout\ : std_logic;
SIGNAL \PROCESSADOR|DEC|saida[5]~3_combout\ : std_logic;
SIGNAL \PROCESSADOR|BANCOREG|registrador~12_q\ : std_logic;
SIGNAL \PROCESSADOR|ULA|Add0~2\ : std_logic;
SIGNAL \PROCESSADOR|ULA|Add0~5_sumout\ : std_logic;
SIGNAL \PROCESSADOR|ULA|Add1~6\ : std_logic;
SIGNAL \PROCESSADOR|ULA|Add1~9_sumout\ : std_logic;
SIGNAL \PROCESSADOR|ULA|saida[1]~1_combout\ : std_logic;
SIGNAL \PROCESSADOR|BANCOREG|registrador~13_q\ : std_logic;
SIGNAL \PROCESSADOR|ULA|Add0~6\ : std_logic;
SIGNAL \PROCESSADOR|ULA|Add0~9_sumout\ : std_logic;
SIGNAL \PROCESSADOR|ULA|Add1~10\ : std_logic;
SIGNAL \PROCESSADOR|ULA|Add1~13_sumout\ : std_logic;
SIGNAL \PROCESSADOR|ULA|saida[2]~2_combout\ : std_logic;
SIGNAL \PROCESSADOR|BANCOREG|registrador~14_q\ : std_logic;
SIGNAL \PROCESSADOR|ULA|Add0~10\ : std_logic;
SIGNAL \PROCESSADOR|ULA|Add0~13_sumout\ : std_logic;
SIGNAL \PROCESSADOR|ULA|Add1~14\ : std_logic;
SIGNAL \PROCESSADOR|ULA|Add1~17_sumout\ : std_logic;
SIGNAL \PROCESSADOR|ULA|saida[3]~3_combout\ : std_logic;
SIGNAL \PROCESSADOR|BANCOREG|registrador~15_q\ : std_logic;
SIGNAL \PROCESSADOR|ULA|Add1~18\ : std_logic;
SIGNAL \PROCESSADOR|ULA|Add1~21_sumout\ : std_logic;
SIGNAL \PROCESSADOR|ULA|Add0~14\ : std_logic;
SIGNAL \PROCESSADOR|ULA|Add0~17_sumout\ : std_logic;
SIGNAL \PROCESSADOR|ULA|saida[4]~16_combout\ : std_logic;
SIGNAL \PROCESSADOR|BANCOREG|registrador~16_q\ : std_logic;
SIGNAL \MEM|ram~19_q\ : std_logic;
SIGNAL \MEM|ram~51_q\ : std_logic;
SIGNAL \MEM|ram~83_q\ : std_logic;
SIGNAL \MEM|ram~115_q\ : std_logic;
SIGNAL \MEM|ram~163_combout\ : std_logic;
SIGNAL \MEM|ram~27_q\ : std_logic;
SIGNAL \MEM|ram~59_q\ : std_logic;
SIGNAL \MEM|ram~91_q\ : std_logic;
SIGNAL \MEM|ram~123_q\ : std_logic;
SIGNAL \MEM|ram~164_combout\ : std_logic;
SIGNAL \MEM|ram~35_q\ : std_logic;
SIGNAL \MEM|ram~67_q\ : std_logic;
SIGNAL \MEM|ram~99_q\ : std_logic;
SIGNAL \MEM|ram~131_q\ : std_logic;
SIGNAL \MEM|ram~165_combout\ : std_logic;
SIGNAL \MEM|ram~43_q\ : std_logic;
SIGNAL \MEM|ram~75_q\ : std_logic;
SIGNAL \MEM|ram~107_q\ : std_logic;
SIGNAL \MEM|ram~139_q\ : std_logic;
SIGNAL \MEM|ram~166_combout\ : std_logic;
SIGNAL \MEM|ram~167_combout\ : std_logic;
SIGNAL \PROCESSADOR|ULA|Add1~22\ : std_logic;
SIGNAL \PROCESSADOR|ULA|Add1~25_sumout\ : std_logic;
SIGNAL \PROCESSADOR|ULA|Add0~18\ : std_logic;
SIGNAL \PROCESSADOR|ULA|Add0~21_sumout\ : std_logic;
SIGNAL \PROCESSADOR|ULA|saida[5]~12_combout\ : std_logic;
SIGNAL \PROCESSADOR|BANCOREG|registrador~17_q\ : std_logic;
SIGNAL \MEM|ram~20_q\ : std_logic;
SIGNAL \MEM|ram~28_q\ : std_logic;
SIGNAL \MEM|ram~36_q\ : std_logic;
SIGNAL \MEM|ram~44_q\ : std_logic;
SIGNAL \MEM|ram~168_combout\ : std_logic;
SIGNAL \MEM|ram~52_q\ : std_logic;
SIGNAL \MEM|ram~60_q\ : std_logic;
SIGNAL \MEM|ram~68_q\ : std_logic;
SIGNAL \MEM|ram~76_q\ : std_logic;
SIGNAL \MEM|ram~169_combout\ : std_logic;
SIGNAL \MEM|ram~84_q\ : std_logic;
SIGNAL \MEM|ram~92_q\ : std_logic;
SIGNAL \MEM|ram~100_q\ : std_logic;
SIGNAL \MEM|ram~108_q\ : std_logic;
SIGNAL \MEM|ram~170_combout\ : std_logic;
SIGNAL \MEM|ram~116_q\ : std_logic;
SIGNAL \MEM|ram~124_q\ : std_logic;
SIGNAL \MEM|ram~132_q\ : std_logic;
SIGNAL \MEM|ram~140_q\ : std_logic;
SIGNAL \MEM|ram~171_combout\ : std_logic;
SIGNAL \MEM|ram~172_combout\ : std_logic;
SIGNAL \PROCESSADOR|ULA|Add1~26\ : std_logic;
SIGNAL \PROCESSADOR|ULA|Add1~29_sumout\ : std_logic;
SIGNAL \PROCESSADOR|ULA|Add0~22\ : std_logic;
SIGNAL \PROCESSADOR|ULA|Add0~25_sumout\ : std_logic;
SIGNAL \PROCESSADOR|ULA|saida[6]~8_combout\ : std_logic;
SIGNAL \PROCESSADOR|BANCOREG|registrador~18_q\ : std_logic;
SIGNAL \MEM|ram~21_q\ : std_logic;
SIGNAL \MEM|ram~53_q\ : std_logic;
SIGNAL \MEM|ram~85_q\ : std_logic;
SIGNAL \MEM|ram~117_q\ : std_logic;
SIGNAL \MEM|ram~173_combout\ : std_logic;
SIGNAL \MEM|ram~29_q\ : std_logic;
SIGNAL \MEM|ram~61_q\ : std_logic;
SIGNAL \MEM|ram~93_q\ : std_logic;
SIGNAL \MEM|ram~125_q\ : std_logic;
SIGNAL \MEM|ram~174_combout\ : std_logic;
SIGNAL \MEM|ram~37_q\ : std_logic;
SIGNAL \MEM|ram~69_q\ : std_logic;
SIGNAL \MEM|ram~101_q\ : std_logic;
SIGNAL \MEM|ram~133_q\ : std_logic;
SIGNAL \MEM|ram~175_combout\ : std_logic;
SIGNAL \MEM|ram~45_q\ : std_logic;
SIGNAL \MEM|ram~77_q\ : std_logic;
SIGNAL \MEM|ram~109_q\ : std_logic;
SIGNAL \MEM|ram~141_q\ : std_logic;
SIGNAL \MEM|ram~176_combout\ : std_logic;
SIGNAL \MEM|ram~177_combout\ : std_logic;
SIGNAL \PROCESSADOR|ULA|Add0~26\ : std_logic;
SIGNAL \PROCESSADOR|ULA|Add0~29_sumout\ : std_logic;
SIGNAL \PROCESSADOR|ULA|saida[7]~4_combout\ : std_logic;
SIGNAL \PROCESSADOR|BANCOREG|registrador~19_q\ : std_logic;
SIGNAL \MEM|ram~22_q\ : std_logic;
SIGNAL \MEM|ram~30_q\ : std_logic;
SIGNAL \MEM|ram~38_q\ : std_logic;
SIGNAL \MEM|ram~46_q\ : std_logic;
SIGNAL \MEM|ram~178_combout\ : std_logic;
SIGNAL \MEM|ram~54_q\ : std_logic;
SIGNAL \MEM|ram~62_q\ : std_logic;
SIGNAL \MEM|ram~70_q\ : std_logic;
SIGNAL \MEM|ram~78_q\ : std_logic;
SIGNAL \MEM|ram~179_combout\ : std_logic;
SIGNAL \MEM|ram~86_q\ : std_logic;
SIGNAL \MEM|ram~94_q\ : std_logic;
SIGNAL \MEM|ram~102_q\ : std_logic;
SIGNAL \MEM|ram~110_q\ : std_logic;
SIGNAL \MEM|ram~180_combout\ : std_logic;
SIGNAL \MEM|ram~118_q\ : std_logic;
SIGNAL \MEM|ram~126_q\ : std_logic;
SIGNAL \MEM|ram~134_q\ : std_logic;
SIGNAL \MEM|ram~142_q\ : std_logic;
SIGNAL \MEM|ram~181_combout\ : std_logic;
SIGNAL \MEM|ram~182_combout\ : std_logic;
SIGNAL \PROCESSADOR|ULA|Add1~30\ : std_logic;
SIGNAL \PROCESSADOR|ULA|Add1~1_sumout\ : std_logic;
SIGNAL \PROCESSADOR|FFZ|DOUT~1_combout\ : std_logic;
SIGNAL \PROCESSADOR|FFZ|DOUT~2_combout\ : std_logic;
SIGNAL \PROCESSADOR|FFZ|DOUT~0_combout\ : std_logic;
SIGNAL \PROCESSADOR|FFZ|DOUT~q\ : std_logic;
SIGNAL \PROCESSADOR|LOG_DESVIO|saida[0]~0_combout\ : std_logic;
SIGNAL \PROCESSADOR|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \PROCESSADOR|MUXJUMP|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \PROCESSADOR|DEC|Equal13~2_combout\ : std_logic;
SIGNAL \PROCESSADOR|MUXJUMP|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \PROCESSADOR|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \PROCESSADOR|MUXJUMP|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \PROCESSADOR|FFLT|DOUT~0_combout\ : std_logic;
SIGNAL \PROCESSADOR|FFLT|DOUT~q\ : std_logic;
SIGNAL \PROCESSADOR|PC|DOUT[0]~0_combout\ : std_logic;
SIGNAL \PROCESSADOR|incrementaPC|Add0~10\ : std_logic;
SIGNAL \PROCESSADOR|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \PROCESSADOR|MUXJUMP|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \PROCESSADOR|incrementaPC|Add0~14\ : std_logic;
SIGNAL \PROCESSADOR|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \PROCESSADOR|MUXJUMP|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \PROCESSADOR|DEC|saida[9]~0_combout\ : std_logic;
SIGNAL \PROCESSADOR|incrementaPC|Add0~30\ : std_logic;
SIGNAL \PROCESSADOR|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \PROCESSADOR|MUXJUMP|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \PROCESSADOR|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \PROCESSADOR|MUXJUMP|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \PROCESSADOR|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \PROCESSADOR|REGRET|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \PROCESSADOR|ULA|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \PROCESSADOR|ULA|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \PROCESSADOR|ULA|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \PROCESSADOR|ULA|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \PROCESSADOR|ULA|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \PROCESSADOR|ULA|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \PROCESSADOR|ULA|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \PROCESSADOR|ULA|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \PROCESSADOR|incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \PROCESSADOR|incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \PROCESSADOR|incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \PROCESSADOR|incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \PROCESSADOR|incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \PROCESSADOR|incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \PROCESSADOR|incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \PROCESSADOR|incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \PROCESSADOR|incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~128_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~120_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~112_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~104_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~96_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~88_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \PROCESSADOR|MUX1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~135_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~103_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~127_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~95_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~144_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~119_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~87_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~143_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~111_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \PROCESSADOR|DEC|ALT_INV_Equal13~1_combout\ : std_logic;
SIGNAL \PROCESSADOR|DEC|ALT_INV_Equal13~0_combout\ : std_logic;
SIGNAL \PROCESSADOR|DEC|ALT_INV_saida[4]~2_combout\ : std_logic;
SIGNAL \PROCESSADOR|DEC|ALT_INV_saida[3]~1_combout\ : std_logic;
SIGNAL \PROCESSADOR|REGRET|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \PROCESSADOR|LOG_DESVIO|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \PROCESSADOR|DEC|ALT_INV_saida[9]~0_combout\ : std_logic;
SIGNAL \PROCESSADOR|PC|ALT_INV_DOUT[0]~0_combout\ : std_logic;
SIGNAL \PROCESSADOR|FFZ|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \PROCESSADOR|BANCOREG|ALT_INV_registrador~19_q\ : std_logic;
SIGNAL \PROCESSADOR|BANCOREG|ALT_INV_registrador~18_q\ : std_logic;
SIGNAL \PROCESSADOR|BANCOREG|ALT_INV_registrador~17_q\ : std_logic;
SIGNAL \PROCESSADOR|BANCOREG|ALT_INV_registrador~16_q\ : std_logic;
SIGNAL \PROCESSADOR|BANCOREG|ALT_INV_registrador~15_q\ : std_logic;
SIGNAL \PROCESSADOR|BANCOREG|ALT_INV_registrador~14_q\ : std_logic;
SIGNAL \PROCESSADOR|BANCOREG|ALT_INV_registrador~13_q\ : std_logic;
SIGNAL \PROCESSADOR|BANCOREG|ALT_INV_registrador~12_q\ : std_logic;
SIGNAL \PROCESSADOR|FFLT|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \PROCESSADOR|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \PROCESSADOR|ULA|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \PROCESSADOR|ULA|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \PROCESSADOR|ULA|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \PROCESSADOR|ULA|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \PROCESSADOR|ULA|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \PROCESSADOR|ULA|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \PROCESSADOR|ULA|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \PROCESSADOR|ULA|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~102_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~94_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~86_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~179_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~178_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~177_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~176_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~141_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~109_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~175_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~133_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~101_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~174_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~125_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~93_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~173_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~117_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~85_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~172_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~171_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~140_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~132_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~124_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~116_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~170_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~108_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~100_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~92_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~84_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~169_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~168_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~167_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~166_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~139_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~107_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~165_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~131_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~99_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~164_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~123_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~91_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~163_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~115_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~83_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \PROCESSADOR|MUX1|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~162_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~161_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~138_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~130_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~122_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~114_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~106_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~98_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~90_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~82_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \PROCESSADOR|MUX1|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~137_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~105_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~129_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~97_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~121_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~89_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~113_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~81_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \PROCESSADOR|MUX1|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~136_q\ : std_logic;
SIGNAL \PROCESSADOR|FFZ|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \PROCESSADOR|FFZ|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~197_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~194_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~190_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~187_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~182_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~181_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~142_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~134_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~126_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~118_q\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~180_combout\ : std_logic;
SIGNAL \MEM|ALT_INV_ram~110_q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_FPGA_RESET_N <= FPGA_RESET_N;
ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
LEDR <= ww_LEDR;
PC_OUT <= ww_PC_OUT;
CF <= ww_CF;
SAIDA <= ww_SAIDA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\PROCESSADOR|ULA|ALT_INV_Add0~13_sumout\ <= NOT \PROCESSADOR|ULA|Add0~13_sumout\;
\PROCESSADOR|ULA|ALT_INV_Add1~13_sumout\ <= NOT \PROCESSADOR|ULA|Add1~13_sumout\;
\PROCESSADOR|ULA|ALT_INV_Add0~9_sumout\ <= NOT \PROCESSADOR|ULA|Add0~9_sumout\;
\PROCESSADOR|ULA|ALT_INV_Add1~9_sumout\ <= NOT \PROCESSADOR|ULA|Add1~9_sumout\;
\PROCESSADOR|ULA|ALT_INV_Add0~5_sumout\ <= NOT \PROCESSADOR|ULA|Add0~5_sumout\;
\PROCESSADOR|ULA|ALT_INV_Add1~5_sumout\ <= NOT \PROCESSADOR|ULA|Add1~5_sumout\;
\PROCESSADOR|ULA|ALT_INV_Add0~1_sumout\ <= NOT \PROCESSADOR|ULA|Add0~1_sumout\;
\PROCESSADOR|ULA|ALT_INV_Add1~1_sumout\ <= NOT \PROCESSADOR|ULA|Add1~1_sumout\;
\PROCESSADOR|incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \PROCESSADOR|incrementaPC|Add0~33_sumout\;
\PROCESSADOR|incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \PROCESSADOR|incrementaPC|Add0~29_sumout\;
\PROCESSADOR|incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \PROCESSADOR|incrementaPC|Add0~25_sumout\;
\PROCESSADOR|incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \PROCESSADOR|incrementaPC|Add0~21_sumout\;
\PROCESSADOR|incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \PROCESSADOR|incrementaPC|Add0~17_sumout\;
\PROCESSADOR|incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \PROCESSADOR|incrementaPC|Add0~13_sumout\;
\PROCESSADOR|incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \PROCESSADOR|incrementaPC|Add0~9_sumout\;
\PROCESSADOR|incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \PROCESSADOR|incrementaPC|Add0~5_sumout\;
\PROCESSADOR|incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \PROCESSADOR|incrementaPC|Add0~1_sumout\;
\MEM|ALT_INV_ram~128_q\ <= NOT \MEM|ram~128_q\;
\MEM|ALT_INV_ram~120_q\ <= NOT \MEM|ram~120_q\;
\MEM|ALT_INV_ram~112_q\ <= NOT \MEM|ram~112_q\;
\MEM|ALT_INV_ram~150_combout\ <= NOT \MEM|ram~150_combout\;
\MEM|ALT_INV_ram~104_q\ <= NOT \MEM|ram~104_q\;
\MEM|ALT_INV_ram~96_q\ <= NOT \MEM|ram~96_q\;
\MEM|ALT_INV_ram~88_q\ <= NOT \MEM|ram~88_q\;
\MEM|ALT_INV_ram~80_q\ <= NOT \MEM|ram~80_q\;
\MEM|ALT_INV_ram~149_combout\ <= NOT \MEM|ram~149_combout\;
\MEM|ALT_INV_ram~72_q\ <= NOT \MEM|ram~72_q\;
\MEM|ALT_INV_ram~64_q\ <= NOT \MEM|ram~64_q\;
\MEM|ALT_INV_ram~56_q\ <= NOT \MEM|ram~56_q\;
\MEM|ALT_INV_ram~48_q\ <= NOT \MEM|ram~48_q\;
\MEM|ALT_INV_ram~148_combout\ <= NOT \MEM|ram~148_combout\;
\MEM|ALT_INV_ram~40_q\ <= NOT \MEM|ram~40_q\;
\MEM|ALT_INV_ram~32_q\ <= NOT \MEM|ram~32_q\;
\MEM|ALT_INV_ram~24_q\ <= NOT \MEM|ram~24_q\;
\MEM|ALT_INV_ram~16_q\ <= NOT \MEM|ram~16_q\;
\PROCESSADOR|MUX1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \PROCESSADOR|MUX1|saida_MUX[0]~0_combout\;
\MEM|ALT_INV_ram~147_combout\ <= NOT \MEM|ram~147_combout\;
\MEM|ALT_INV_ram~146_combout\ <= NOT \MEM|ram~146_combout\;
\MEM|ALT_INV_ram~135_q\ <= NOT \MEM|ram~135_q\;
\MEM|ALT_INV_ram~103_q\ <= NOT \MEM|ram~103_q\;
\MEM|ALT_INV_ram~71_q\ <= NOT \MEM|ram~71_q\;
\MEM|ALT_INV_ram~39_q\ <= NOT \MEM|ram~39_q\;
\MEM|ALT_INV_ram~145_combout\ <= NOT \MEM|ram~145_combout\;
\MEM|ALT_INV_ram~127_q\ <= NOT \MEM|ram~127_q\;
\MEM|ALT_INV_ram~95_q\ <= NOT \MEM|ram~95_q\;
\MEM|ALT_INV_ram~63_q\ <= NOT \MEM|ram~63_q\;
\MEM|ALT_INV_ram~31_q\ <= NOT \MEM|ram~31_q\;
\MEM|ALT_INV_ram~144_combout\ <= NOT \MEM|ram~144_combout\;
\MEM|ALT_INV_ram~119_q\ <= NOT \MEM|ram~119_q\;
\MEM|ALT_INV_ram~87_q\ <= NOT \MEM|ram~87_q\;
\MEM|ALT_INV_ram~55_q\ <= NOT \MEM|ram~55_q\;
\MEM|ALT_INV_ram~23_q\ <= NOT \MEM|ram~23_q\;
\MEM|ALT_INV_ram~143_combout\ <= NOT \MEM|ram~143_combout\;
\MEM|ALT_INV_ram~111_q\ <= NOT \MEM|ram~111_q\;
\MEM|ALT_INV_ram~79_q\ <= NOT \MEM|ram~79_q\;
\MEM|ALT_INV_ram~47_q\ <= NOT \MEM|ram~47_q\;
\MEM|ALT_INV_ram~15_q\ <= NOT \MEM|ram~15_q\;
\PROCESSADOR|DEC|ALT_INV_Equal13~1_combout\ <= NOT \PROCESSADOR|DEC|Equal13~1_combout\;
\PROCESSADOR|DEC|ALT_INV_Equal13~0_combout\ <= NOT \PROCESSADOR|DEC|Equal13~0_combout\;
\PROCESSADOR|DEC|ALT_INV_saida[4]~2_combout\ <= NOT \PROCESSADOR|DEC|saida[4]~2_combout\;
\PROCESSADOR|DEC|ALT_INV_saida[3]~1_combout\ <= NOT \PROCESSADOR|DEC|saida[3]~1_combout\;
\PROCESSADOR|REGRET|ALT_INV_DOUT\(8) <= NOT \PROCESSADOR|REGRET|DOUT\(8);
\PROCESSADOR|REGRET|ALT_INV_DOUT\(7) <= NOT \PROCESSADOR|REGRET|DOUT\(7);
\PROCESSADOR|REGRET|ALT_INV_DOUT\(6) <= NOT \PROCESSADOR|REGRET|DOUT\(6);
\PROCESSADOR|REGRET|ALT_INV_DOUT\(5) <= NOT \PROCESSADOR|REGRET|DOUT\(5);
\PROCESSADOR|LOG_DESVIO|ALT_INV_saida[0]~0_combout\ <= NOT \PROCESSADOR|LOG_DESVIO|saida[0]~0_combout\;
\PROCESSADOR|REGRET|ALT_INV_DOUT\(4) <= NOT \PROCESSADOR|REGRET|DOUT\(4);
\PROCESSADOR|REGRET|ALT_INV_DOUT\(3) <= NOT \PROCESSADOR|REGRET|DOUT\(3);
\ROM1|ALT_INV_memROM~17_combout\ <= NOT \ROM1|memROM~17_combout\;
\ROM1|ALT_INV_memROM~16_combout\ <= NOT \ROM1|memROM~16_combout\;
\PROCESSADOR|REGRET|ALT_INV_DOUT\(2) <= NOT \PROCESSADOR|REGRET|DOUT\(2);
\ROM1|ALT_INV_memROM~15_combout\ <= NOT \ROM1|memROM~15_combout\;
\ROM1|ALT_INV_memROM~14_combout\ <= NOT \ROM1|memROM~14_combout\;
\PROCESSADOR|REGRET|ALT_INV_DOUT\(1) <= NOT \PROCESSADOR|REGRET|DOUT\(1);
\ROM1|ALT_INV_memROM~13_combout\ <= NOT \ROM1|memROM~13_combout\;
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\PROCESSADOR|REGRET|ALT_INV_DOUT\(0) <= NOT \PROCESSADOR|REGRET|DOUT\(0);
\PROCESSADOR|DEC|ALT_INV_saida[9]~0_combout\ <= NOT \PROCESSADOR|DEC|saida[9]~0_combout\;
\PROCESSADOR|PC|ALT_INV_DOUT[0]~0_combout\ <= NOT \PROCESSADOR|PC|DOUT[0]~0_combout\;
\PROCESSADOR|FFZ|ALT_INV_DOUT~q\ <= NOT \PROCESSADOR|FFZ|DOUT~q\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\PROCESSADOR|BANCOREG|ALT_INV_registrador~19_q\ <= NOT \PROCESSADOR|BANCOREG|registrador~19_q\;
\PROCESSADOR|BANCOREG|ALT_INV_registrador~18_q\ <= NOT \PROCESSADOR|BANCOREG|registrador~18_q\;
\PROCESSADOR|BANCOREG|ALT_INV_registrador~17_q\ <= NOT \PROCESSADOR|BANCOREG|registrador~17_q\;
\PROCESSADOR|BANCOREG|ALT_INV_registrador~16_q\ <= NOT \PROCESSADOR|BANCOREG|registrador~16_q\;
\PROCESSADOR|BANCOREG|ALT_INV_registrador~15_q\ <= NOT \PROCESSADOR|BANCOREG|registrador~15_q\;
\PROCESSADOR|BANCOREG|ALT_INV_registrador~14_q\ <= NOT \PROCESSADOR|BANCOREG|registrador~14_q\;
\PROCESSADOR|BANCOREG|ALT_INV_registrador~13_q\ <= NOT \PROCESSADOR|BANCOREG|registrador~13_q\;
\PROCESSADOR|BANCOREG|ALT_INV_registrador~12_q\ <= NOT \PROCESSADOR|BANCOREG|registrador~12_q\;
\PROCESSADOR|FFLT|ALT_INV_DOUT~q\ <= NOT \PROCESSADOR|FFLT|DOUT~q\;
\PROCESSADOR|PC|ALT_INV_DOUT\(8) <= NOT \PROCESSADOR|PC|DOUT\(8);
\PROCESSADOR|PC|ALT_INV_DOUT\(7) <= NOT \PROCESSADOR|PC|DOUT\(7);
\PROCESSADOR|PC|ALT_INV_DOUT\(6) <= NOT \PROCESSADOR|PC|DOUT\(6);
\PROCESSADOR|PC|ALT_INV_DOUT\(5) <= NOT \PROCESSADOR|PC|DOUT\(5);
\PROCESSADOR|PC|ALT_INV_DOUT\(4) <= NOT \PROCESSADOR|PC|DOUT\(4);
\PROCESSADOR|PC|ALT_INV_DOUT\(3) <= NOT \PROCESSADOR|PC|DOUT\(3);
\PROCESSADOR|PC|ALT_INV_DOUT\(2) <= NOT \PROCESSADOR|PC|DOUT\(2);
\PROCESSADOR|PC|ALT_INV_DOUT\(1) <= NOT \PROCESSADOR|PC|DOUT\(1);
\PROCESSADOR|PC|ALT_INV_DOUT\(0) <= NOT \PROCESSADOR|PC|DOUT\(0);
\PROCESSADOR|ULA|ALT_INV_Add0~29_sumout\ <= NOT \PROCESSADOR|ULA|Add0~29_sumout\;
\PROCESSADOR|ULA|ALT_INV_Add1~29_sumout\ <= NOT \PROCESSADOR|ULA|Add1~29_sumout\;
\PROCESSADOR|ULA|ALT_INV_Add0~25_sumout\ <= NOT \PROCESSADOR|ULA|Add0~25_sumout\;
\PROCESSADOR|ULA|ALT_INV_Add1~25_sumout\ <= NOT \PROCESSADOR|ULA|Add1~25_sumout\;
\PROCESSADOR|ULA|ALT_INV_Add0~21_sumout\ <= NOT \PROCESSADOR|ULA|Add0~21_sumout\;
\PROCESSADOR|ULA|ALT_INV_Add1~21_sumout\ <= NOT \PROCESSADOR|ULA|Add1~21_sumout\;
\PROCESSADOR|ULA|ALT_INV_Add0~17_sumout\ <= NOT \PROCESSADOR|ULA|Add0~17_sumout\;
\PROCESSADOR|ULA|ALT_INV_Add1~17_sumout\ <= NOT \PROCESSADOR|ULA|Add1~17_sumout\;
\MEM|ALT_INV_ram~102_q\ <= NOT \MEM|ram~102_q\;
\MEM|ALT_INV_ram~94_q\ <= NOT \MEM|ram~94_q\;
\MEM|ALT_INV_ram~86_q\ <= NOT \MEM|ram~86_q\;
\MEM|ALT_INV_ram~179_combout\ <= NOT \MEM|ram~179_combout\;
\MEM|ALT_INV_ram~78_q\ <= NOT \MEM|ram~78_q\;
\MEM|ALT_INV_ram~70_q\ <= NOT \MEM|ram~70_q\;
\MEM|ALT_INV_ram~62_q\ <= NOT \MEM|ram~62_q\;
\MEM|ALT_INV_ram~54_q\ <= NOT \MEM|ram~54_q\;
\MEM|ALT_INV_ram~178_combout\ <= NOT \MEM|ram~178_combout\;
\MEM|ALT_INV_ram~46_q\ <= NOT \MEM|ram~46_q\;
\MEM|ALT_INV_ram~38_q\ <= NOT \MEM|ram~38_q\;
\MEM|ALT_INV_ram~30_q\ <= NOT \MEM|ram~30_q\;
\MEM|ALT_INV_ram~22_q\ <= NOT \MEM|ram~22_q\;
\MEM|ALT_INV_ram~177_combout\ <= NOT \MEM|ram~177_combout\;
\MEM|ALT_INV_ram~176_combout\ <= NOT \MEM|ram~176_combout\;
\MEM|ALT_INV_ram~141_q\ <= NOT \MEM|ram~141_q\;
\MEM|ALT_INV_ram~109_q\ <= NOT \MEM|ram~109_q\;
\MEM|ALT_INV_ram~77_q\ <= NOT \MEM|ram~77_q\;
\MEM|ALT_INV_ram~45_q\ <= NOT \MEM|ram~45_q\;
\MEM|ALT_INV_ram~175_combout\ <= NOT \MEM|ram~175_combout\;
\MEM|ALT_INV_ram~133_q\ <= NOT \MEM|ram~133_q\;
\MEM|ALT_INV_ram~101_q\ <= NOT \MEM|ram~101_q\;
\MEM|ALT_INV_ram~69_q\ <= NOT \MEM|ram~69_q\;
\MEM|ALT_INV_ram~37_q\ <= NOT \MEM|ram~37_q\;
\MEM|ALT_INV_ram~174_combout\ <= NOT \MEM|ram~174_combout\;
\MEM|ALT_INV_ram~125_q\ <= NOT \MEM|ram~125_q\;
\MEM|ALT_INV_ram~93_q\ <= NOT \MEM|ram~93_q\;
\MEM|ALT_INV_ram~61_q\ <= NOT \MEM|ram~61_q\;
\MEM|ALT_INV_ram~29_q\ <= NOT \MEM|ram~29_q\;
\MEM|ALT_INV_ram~173_combout\ <= NOT \MEM|ram~173_combout\;
\MEM|ALT_INV_ram~117_q\ <= NOT \MEM|ram~117_q\;
\MEM|ALT_INV_ram~85_q\ <= NOT \MEM|ram~85_q\;
\MEM|ALT_INV_ram~53_q\ <= NOT \MEM|ram~53_q\;
\MEM|ALT_INV_ram~21_q\ <= NOT \MEM|ram~21_q\;
\MEM|ALT_INV_ram~172_combout\ <= NOT \MEM|ram~172_combout\;
\MEM|ALT_INV_ram~171_combout\ <= NOT \MEM|ram~171_combout\;
\MEM|ALT_INV_ram~140_q\ <= NOT \MEM|ram~140_q\;
\MEM|ALT_INV_ram~132_q\ <= NOT \MEM|ram~132_q\;
\MEM|ALT_INV_ram~124_q\ <= NOT \MEM|ram~124_q\;
\MEM|ALT_INV_ram~116_q\ <= NOT \MEM|ram~116_q\;
\MEM|ALT_INV_ram~170_combout\ <= NOT \MEM|ram~170_combout\;
\MEM|ALT_INV_ram~108_q\ <= NOT \MEM|ram~108_q\;
\MEM|ALT_INV_ram~100_q\ <= NOT \MEM|ram~100_q\;
\MEM|ALT_INV_ram~92_q\ <= NOT \MEM|ram~92_q\;
\MEM|ALT_INV_ram~84_q\ <= NOT \MEM|ram~84_q\;
\MEM|ALT_INV_ram~169_combout\ <= NOT \MEM|ram~169_combout\;
\MEM|ALT_INV_ram~76_q\ <= NOT \MEM|ram~76_q\;
\MEM|ALT_INV_ram~68_q\ <= NOT \MEM|ram~68_q\;
\MEM|ALT_INV_ram~60_q\ <= NOT \MEM|ram~60_q\;
\MEM|ALT_INV_ram~52_q\ <= NOT \MEM|ram~52_q\;
\MEM|ALT_INV_ram~168_combout\ <= NOT \MEM|ram~168_combout\;
\MEM|ALT_INV_ram~44_q\ <= NOT \MEM|ram~44_q\;
\MEM|ALT_INV_ram~36_q\ <= NOT \MEM|ram~36_q\;
\MEM|ALT_INV_ram~28_q\ <= NOT \MEM|ram~28_q\;
\MEM|ALT_INV_ram~20_q\ <= NOT \MEM|ram~20_q\;
\MEM|ALT_INV_ram~167_combout\ <= NOT \MEM|ram~167_combout\;
\MEM|ALT_INV_ram~166_combout\ <= NOT \MEM|ram~166_combout\;
\MEM|ALT_INV_ram~139_q\ <= NOT \MEM|ram~139_q\;
\MEM|ALT_INV_ram~107_q\ <= NOT \MEM|ram~107_q\;
\MEM|ALT_INV_ram~75_q\ <= NOT \MEM|ram~75_q\;
\MEM|ALT_INV_ram~43_q\ <= NOT \MEM|ram~43_q\;
\MEM|ALT_INV_ram~165_combout\ <= NOT \MEM|ram~165_combout\;
\MEM|ALT_INV_ram~131_q\ <= NOT \MEM|ram~131_q\;
\MEM|ALT_INV_ram~99_q\ <= NOT \MEM|ram~99_q\;
\MEM|ALT_INV_ram~67_q\ <= NOT \MEM|ram~67_q\;
\MEM|ALT_INV_ram~35_q\ <= NOT \MEM|ram~35_q\;
\MEM|ALT_INV_ram~164_combout\ <= NOT \MEM|ram~164_combout\;
\MEM|ALT_INV_ram~123_q\ <= NOT \MEM|ram~123_q\;
\MEM|ALT_INV_ram~91_q\ <= NOT \MEM|ram~91_q\;
\MEM|ALT_INV_ram~59_q\ <= NOT \MEM|ram~59_q\;
\MEM|ALT_INV_ram~27_q\ <= NOT \MEM|ram~27_q\;
\MEM|ALT_INV_ram~163_combout\ <= NOT \MEM|ram~163_combout\;
\MEM|ALT_INV_ram~115_q\ <= NOT \MEM|ram~115_q\;
\MEM|ALT_INV_ram~83_q\ <= NOT \MEM|ram~83_q\;
\MEM|ALT_INV_ram~51_q\ <= NOT \MEM|ram~51_q\;
\MEM|ALT_INV_ram~19_q\ <= NOT \MEM|ram~19_q\;
\PROCESSADOR|MUX1|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \PROCESSADOR|MUX1|saida_MUX[3]~3_combout\;
\MEM|ALT_INV_ram~162_combout\ <= NOT \MEM|ram~162_combout\;
\MEM|ALT_INV_ram~161_combout\ <= NOT \MEM|ram~161_combout\;
\MEM|ALT_INV_ram~138_q\ <= NOT \MEM|ram~138_q\;
\MEM|ALT_INV_ram~130_q\ <= NOT \MEM|ram~130_q\;
\MEM|ALT_INV_ram~122_q\ <= NOT \MEM|ram~122_q\;
\MEM|ALT_INV_ram~114_q\ <= NOT \MEM|ram~114_q\;
\MEM|ALT_INV_ram~160_combout\ <= NOT \MEM|ram~160_combout\;
\MEM|ALT_INV_ram~106_q\ <= NOT \MEM|ram~106_q\;
\MEM|ALT_INV_ram~98_q\ <= NOT \MEM|ram~98_q\;
\MEM|ALT_INV_ram~90_q\ <= NOT \MEM|ram~90_q\;
\MEM|ALT_INV_ram~82_q\ <= NOT \MEM|ram~82_q\;
\MEM|ALT_INV_ram~159_combout\ <= NOT \MEM|ram~159_combout\;
\MEM|ALT_INV_ram~74_q\ <= NOT \MEM|ram~74_q\;
\MEM|ALT_INV_ram~66_q\ <= NOT \MEM|ram~66_q\;
\MEM|ALT_INV_ram~58_q\ <= NOT \MEM|ram~58_q\;
\MEM|ALT_INV_ram~50_q\ <= NOT \MEM|ram~50_q\;
\MEM|ALT_INV_ram~158_combout\ <= NOT \MEM|ram~158_combout\;
\MEM|ALT_INV_ram~42_q\ <= NOT \MEM|ram~42_q\;
\MEM|ALT_INV_ram~34_q\ <= NOT \MEM|ram~34_q\;
\MEM|ALT_INV_ram~26_q\ <= NOT \MEM|ram~26_q\;
\MEM|ALT_INV_ram~18_q\ <= NOT \MEM|ram~18_q\;
\PROCESSADOR|MUX1|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \PROCESSADOR|MUX1|saida_MUX[2]~2_combout\;
\MEM|ALT_INV_ram~157_combout\ <= NOT \MEM|ram~157_combout\;
\MEM|ALT_INV_ram~156_combout\ <= NOT \MEM|ram~156_combout\;
\MEM|ALT_INV_ram~137_q\ <= NOT \MEM|ram~137_q\;
\MEM|ALT_INV_ram~105_q\ <= NOT \MEM|ram~105_q\;
\MEM|ALT_INV_ram~73_q\ <= NOT \MEM|ram~73_q\;
\MEM|ALT_INV_ram~41_q\ <= NOT \MEM|ram~41_q\;
\MEM|ALT_INV_ram~155_combout\ <= NOT \MEM|ram~155_combout\;
\MEM|ALT_INV_ram~129_q\ <= NOT \MEM|ram~129_q\;
\MEM|ALT_INV_ram~97_q\ <= NOT \MEM|ram~97_q\;
\MEM|ALT_INV_ram~65_q\ <= NOT \MEM|ram~65_q\;
\MEM|ALT_INV_ram~33_q\ <= NOT \MEM|ram~33_q\;
\MEM|ALT_INV_ram~154_combout\ <= NOT \MEM|ram~154_combout\;
\MEM|ALT_INV_ram~121_q\ <= NOT \MEM|ram~121_q\;
\MEM|ALT_INV_ram~89_q\ <= NOT \MEM|ram~89_q\;
\MEM|ALT_INV_ram~57_q\ <= NOT \MEM|ram~57_q\;
\MEM|ALT_INV_ram~25_q\ <= NOT \MEM|ram~25_q\;
\MEM|ALT_INV_ram~153_combout\ <= NOT \MEM|ram~153_combout\;
\MEM|ALT_INV_ram~113_q\ <= NOT \MEM|ram~113_q\;
\MEM|ALT_INV_ram~81_q\ <= NOT \MEM|ram~81_q\;
\MEM|ALT_INV_ram~49_q\ <= NOT \MEM|ram~49_q\;
\MEM|ALT_INV_ram~17_q\ <= NOT \MEM|ram~17_q\;
\PROCESSADOR|MUX1|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \PROCESSADOR|MUX1|saida_MUX[1]~1_combout\;
\MEM|ALT_INV_ram~152_combout\ <= NOT \MEM|ram~152_combout\;
\MEM|ALT_INV_ram~151_combout\ <= NOT \MEM|ram~151_combout\;
\MEM|ALT_INV_ram~136_q\ <= NOT \MEM|ram~136_q\;
\PROCESSADOR|FFZ|ALT_INV_DOUT~2_combout\ <= NOT \PROCESSADOR|FFZ|DOUT~2_combout\;
\PROCESSADOR|FFZ|ALT_INV_DOUT~1_combout\ <= NOT \PROCESSADOR|FFZ|DOUT~1_combout\;
\ROM1|ALT_INV_memROM~21_combout\ <= NOT \ROM1|memROM~21_combout\;
\ROM1|ALT_INV_memROM~20_combout\ <= NOT \ROM1|memROM~20_combout\;
\ROM1|ALT_INV_memROM~19_combout\ <= NOT \ROM1|memROM~19_combout\;
\ROM1|ALT_INV_memROM~18_combout\ <= NOT \ROM1|memROM~18_combout\;
\MEM|ALT_INV_ram~197_combout\ <= NOT \MEM|ram~197_combout\;
\MEM|ALT_INV_ram~194_combout\ <= NOT \MEM|ram~194_combout\;
\MEM|ALT_INV_ram~190_combout\ <= NOT \MEM|ram~190_combout\;
\MEM|ALT_INV_ram~187_combout\ <= NOT \MEM|ram~187_combout\;
\MEM|ALT_INV_ram~182_combout\ <= NOT \MEM|ram~182_combout\;
\MEM|ALT_INV_ram~181_combout\ <= NOT \MEM|ram~181_combout\;
\MEM|ALT_INV_ram~142_q\ <= NOT \MEM|ram~142_q\;
\MEM|ALT_INV_ram~134_q\ <= NOT \MEM|ram~134_q\;
\MEM|ALT_INV_ram~126_q\ <= NOT \MEM|ram~126_q\;
\MEM|ALT_INV_ram~118_q\ <= NOT \MEM|ram~118_q\;
\MEM|ALT_INV_ram~180_combout\ <= NOT \MEM|ram~180_combout\;
\MEM|ALT_INV_ram~110_q\ <= NOT \MEM|ram~110_q\;

\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PROCESSADOR|PC|DOUT\(0),
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
	i => \PROCESSADOR|PC|DOUT\(1),
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
	i => \PROCESSADOR|PC|DOUT\(2),
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
	i => \PROCESSADOR|PC|DOUT\(3),
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
	i => \PROCESSADOR|PC|DOUT\(4),
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
	i => \PROCESSADOR|PC|DOUT\(5),
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
	i => \PROCESSADOR|PC|DOUT\(6),
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
	i => \PROCESSADOR|PC|DOUT\(7),
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
	i => \PROCESSADOR|PC|DOUT\(8),
	devoe => ww_devoe,
	o => \PC_OUT[8]~output_o\);

\CF~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PROCESSADOR|FFLT|DOUT~q\,
	devoe => ww_devoe,
	o => \CF~output_o\);

\SAIDA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PROCESSADOR|BANCOREG|registrador~12_q\,
	devoe => ww_devoe,
	o => \SAIDA[0]~output_o\);

\SAIDA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PROCESSADOR|BANCOREG|registrador~13_q\,
	devoe => ww_devoe,
	o => \SAIDA[1]~output_o\);

\SAIDA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PROCESSADOR|BANCOREG|registrador~14_q\,
	devoe => ww_devoe,
	o => \SAIDA[2]~output_o\);

\SAIDA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PROCESSADOR|BANCOREG|registrador~15_q\,
	devoe => ww_devoe,
	o => \SAIDA[3]~output_o\);

\SAIDA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PROCESSADOR|BANCOREG|registrador~16_q\,
	devoe => ww_devoe,
	o => \SAIDA[4]~output_o\);

\SAIDA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PROCESSADOR|BANCOREG|registrador~17_q\,
	devoe => ww_devoe,
	o => \SAIDA[5]~output_o\);

\SAIDA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PROCESSADOR|BANCOREG|registrador~18_q\,
	devoe => ww_devoe,
	o => \SAIDA[6]~output_o\);

\SAIDA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PROCESSADOR|BANCOREG|registrador~19_q\,
	devoe => ww_devoe,
	o => \SAIDA[7]~output_o\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = (\PROCESSADOR|PC|DOUT\(3) & ((!\PROCESSADOR|PC|DOUT\(0) & (!\PROCESSADOR|PC|DOUT\(1) & !\PROCESSADOR|PC|DOUT\(2))) # (\PROCESSADOR|PC|DOUT\(0) & (\PROCESSADOR|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010010001000000001001000100000000100100010000000010010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|PC|ALT_INV_DOUT\(0),
	datab => \PROCESSADOR|PC|ALT_INV_DOUT\(1),
	datac => \PROCESSADOR|PC|ALT_INV_DOUT\(2),
	datad => \PROCESSADOR|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~14_combout\);

\ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~15_combout\ = (!\PROCESSADOR|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & \ROM1|memROM~14_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \ROM1|memROM~15_combout\);

\PROCESSADOR|incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|incrementaPC|Add0~1_sumout\ = SUM(( \PROCESSADOR|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \PROCESSADOR|incrementaPC|Add0~2\ = CARRY(( \PROCESSADOR|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PROCESSADOR|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \PROCESSADOR|incrementaPC|Add0~1_sumout\,
	cout => \PROCESSADOR|incrementaPC|Add0~2\);

\PROCESSADOR|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|incrementaPC|Add0~5_sumout\ = SUM(( \PROCESSADOR|PC|DOUT\(1) ) + ( GND ) + ( \PROCESSADOR|incrementaPC|Add0~2\ ))
-- \PROCESSADOR|incrementaPC|Add0~6\ = CARRY(( \PROCESSADOR|PC|DOUT\(1) ) + ( GND ) + ( \PROCESSADOR|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PROCESSADOR|PC|ALT_INV_DOUT\(1),
	cin => \PROCESSADOR|incrementaPC|Add0~2\,
	sumout => \PROCESSADOR|incrementaPC|Add0~5_sumout\,
	cout => \PROCESSADOR|incrementaPC|Add0~6\);

\PROCESSADOR|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|incrementaPC|Add0~9_sumout\ = SUM(( \PROCESSADOR|PC|DOUT\(2) ) + ( GND ) + ( \PROCESSADOR|incrementaPC|Add0~6\ ))
-- \PROCESSADOR|incrementaPC|Add0~10\ = CARRY(( \PROCESSADOR|PC|DOUT\(2) ) + ( GND ) + ( \PROCESSADOR|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PROCESSADOR|PC|ALT_INV_DOUT\(2),
	cin => \PROCESSADOR|incrementaPC|Add0~6\,
	sumout => \PROCESSADOR|incrementaPC|Add0~9_sumout\,
	cout => \PROCESSADOR|incrementaPC|Add0~10\);

\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = (\PROCESSADOR|PC|DOUT\(1) & (!\PROCESSADOR|PC|DOUT\(4) & (!\PROCESSADOR|PC|DOUT\(2) $ (!\PROCESSADOR|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000000000000101000000000000010100000000000001010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|PC|ALT_INV_DOUT\(1),
	datab => \PROCESSADOR|PC|ALT_INV_DOUT\(2),
	datac => \PROCESSADOR|PC|ALT_INV_DOUT\(3),
	datad => \PROCESSADOR|PC|ALT_INV_DOUT\(4),
	combout => \ROM1|memROM~7_combout\);

\PROCESSADOR|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|incrementaPC|Add0~17_sumout\ = SUM(( \PROCESSADOR|PC|DOUT\(4) ) + ( GND ) + ( \PROCESSADOR|incrementaPC|Add0~14\ ))
-- \PROCESSADOR|incrementaPC|Add0~18\ = CARRY(( \PROCESSADOR|PC|DOUT\(4) ) + ( GND ) + ( \PROCESSADOR|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PROCESSADOR|PC|ALT_INV_DOUT\(4),
	cin => \PROCESSADOR|incrementaPC|Add0~14\,
	sumout => \PROCESSADOR|incrementaPC|Add0~17_sumout\,
	cout => \PROCESSADOR|incrementaPC|Add0~18\);

\PROCESSADOR|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|incrementaPC|Add0~21_sumout\ = SUM(( \PROCESSADOR|PC|DOUT\(5) ) + ( GND ) + ( \PROCESSADOR|incrementaPC|Add0~18\ ))
-- \PROCESSADOR|incrementaPC|Add0~22\ = CARRY(( \PROCESSADOR|PC|DOUT\(5) ) + ( GND ) + ( \PROCESSADOR|incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PROCESSADOR|PC|ALT_INV_DOUT\(5),
	cin => \PROCESSADOR|incrementaPC|Add0~18\,
	sumout => \PROCESSADOR|incrementaPC|Add0~21_sumout\,
	cout => \PROCESSADOR|incrementaPC|Add0~22\);

\PROCESSADOR|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|incrementaPC|Add0~25_sumout\ = SUM(( \PROCESSADOR|PC|DOUT\(6) ) + ( GND ) + ( \PROCESSADOR|incrementaPC|Add0~22\ ))
-- \PROCESSADOR|incrementaPC|Add0~26\ = CARRY(( \PROCESSADOR|PC|DOUT\(6) ) + ( GND ) + ( \PROCESSADOR|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PROCESSADOR|PC|ALT_INV_DOUT\(6),
	cin => \PROCESSADOR|incrementaPC|Add0~22\,
	sumout => \PROCESSADOR|incrementaPC|Add0~25_sumout\,
	cout => \PROCESSADOR|incrementaPC|Add0~26\);

\PROCESSADOR|REGRET|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|incrementaPC|Add0~25_sumout\,
	ena => \PROCESSADOR|DEC|Equal13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROCESSADOR|REGRET|DOUT\(6));

\PROCESSADOR|MUXJUMP|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|MUXJUMP|saida_MUX[6]~6_combout\ = (!\PROCESSADOR|LOG_DESVIO|saida[0]~0_combout\ & ((!\PROCESSADOR|DEC|saida[9]~0_combout\ & ((\PROCESSADOR|incrementaPC|Add0~25_sumout\))) # (\PROCESSADOR|DEC|saida[9]~0_combout\ & 
-- (\PROCESSADOR|REGRET|DOUT\(6)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|DEC|ALT_INV_saida[9]~0_combout\,
	datab => \PROCESSADOR|LOG_DESVIO|ALT_INV_saida[0]~0_combout\,
	datac => \PROCESSADOR|REGRET|ALT_INV_DOUT\(6),
	datad => \PROCESSADOR|incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \PROCESSADOR|MUXJUMP|saida_MUX[6]~6_combout\);

\PROCESSADOR|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|MUXJUMP|saida_MUX[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROCESSADOR|PC|DOUT\(6));

\PROCESSADOR|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|incrementaPC|Add0~29_sumout\ = SUM(( \PROCESSADOR|PC|DOUT\(7) ) + ( GND ) + ( \PROCESSADOR|incrementaPC|Add0~26\ ))
-- \PROCESSADOR|incrementaPC|Add0~30\ = CARRY(( \PROCESSADOR|PC|DOUT\(7) ) + ( GND ) + ( \PROCESSADOR|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PROCESSADOR|PC|ALT_INV_DOUT\(7),
	cin => \PROCESSADOR|incrementaPC|Add0~26\,
	sumout => \PROCESSADOR|incrementaPC|Add0~29_sumout\,
	cout => \PROCESSADOR|incrementaPC|Add0~30\);

\PROCESSADOR|REGRET|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|incrementaPC|Add0~29_sumout\,
	ena => \PROCESSADOR|DEC|Equal13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROCESSADOR|REGRET|DOUT\(7));

\PROCESSADOR|MUXJUMP|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|MUXJUMP|saida_MUX[7]~7_combout\ = (!\PROCESSADOR|LOG_DESVIO|saida[0]~0_combout\ & ((!\PROCESSADOR|DEC|saida[9]~0_combout\ & ((\PROCESSADOR|incrementaPC|Add0~29_sumout\))) # (\PROCESSADOR|DEC|saida[9]~0_combout\ & 
-- (\PROCESSADOR|REGRET|DOUT\(7)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|DEC|ALT_INV_saida[9]~0_combout\,
	datab => \PROCESSADOR|LOG_DESVIO|ALT_INV_saida[0]~0_combout\,
	datac => \PROCESSADOR|REGRET|ALT_INV_DOUT\(7),
	datad => \PROCESSADOR|incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \PROCESSADOR|MUXJUMP|saida_MUX[7]~7_combout\);

\PROCESSADOR|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|MUXJUMP|saida_MUX[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROCESSADOR|PC|DOUT\(7));

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = (!\PROCESSADOR|PC|DOUT\(4) & (!\PROCESSADOR|PC|DOUT\(5) & ((!\PROCESSADOR|PC|DOUT\(2)) # (!\PROCESSADOR|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000000000000111000000000000011100000000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|PC|ALT_INV_DOUT\(2),
	datab => \PROCESSADOR|PC|ALT_INV_DOUT\(3),
	datac => \PROCESSADOR|PC|ALT_INV_DOUT\(4),
	datad => \PROCESSADOR|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~5_combout\);

\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \ROM1|memROM~5_combout\ & ( (\PROCESSADOR|PC|DOUT\(0) & (!\PROCESSADOR|PC|DOUT\(6) & (!\PROCESSADOR|PC|DOUT\(7) & !\PROCESSADOR|PC|DOUT\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|PC|ALT_INV_DOUT\(0),
	datab => \PROCESSADOR|PC|ALT_INV_DOUT\(6),
	datac => \PROCESSADOR|PC|ALT_INV_DOUT\(7),
	datad => \PROCESSADOR|PC|ALT_INV_DOUT\(8),
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \ROM1|memROM~6_combout\);

\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = (\PROCESSADOR|PC|DOUT\(3) & ((!\PROCESSADOR|PC|DOUT\(0) & (!\PROCESSADOR|PC|DOUT\(1) & !\PROCESSADOR|PC|DOUT\(2))) # (\PROCESSADOR|PC|DOUT\(0) & (\PROCESSADOR|PC|DOUT\(1) & \PROCESSADOR|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000001000000001000000100000000100000010000000010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|PC|ALT_INV_DOUT\(0),
	datab => \PROCESSADOR|PC|ALT_INV_DOUT\(1),
	datac => \PROCESSADOR|PC|ALT_INV_DOUT\(2),
	datad => \PROCESSADOR|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~10_combout\);

\PROCESSADOR|DEC|Equal13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|DEC|Equal13~0_combout\ = ( !\ROM1|memROM~7_combout\ & ( \ROM1|memROM~8_combout\ & ( (!\PROCESSADOR|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~10_combout\ & !\ROM1|memROM~3_combout\))) ) ) ) # ( \ROM1|memROM~7_combout\ & ( 
-- !\ROM1|memROM~8_combout\ & ( (!\PROCESSADOR|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~10_combout\ & !\ROM1|memROM~3_combout\))) ) ) ) # ( !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~8_combout\ & ( (!\PROCESSADOR|PC|DOUT\(8) & 
-- (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~10_combout\ & !\ROM1|memROM~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \PROCESSADOR|DEC|Equal13~0_combout\);

\PROCESSADOR|DEC|Equal13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|DEC|Equal13~1_combout\ = (!\ROM1|memROM~6_combout\ & \PROCESSADOR|DEC|Equal13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \PROCESSADOR|DEC|ALT_INV_Equal13~0_combout\,
	combout => \PROCESSADOR|DEC|Equal13~1_combout\);

\PROCESSADOR|DEC|saida[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|DEC|saida[4]~2_combout\ = (!\ROM1|memROM~11_combout\) # (!\ROM1|memROM~4_combout\ $ (!\ROM1|memROM~9_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111010111110101111101011111010111110101111101011111010111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \PROCESSADOR|DEC|saida[4]~2_combout\);

\PROCESSADOR|DEC|saida[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|DEC|saida[3]~1_combout\ = (!\ROM1|memROM~11_combout\) # ((!\ROM1|memROM~4_combout\ & ((!\ROM1|memROM~6_combout\))) # (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111010111010111111101011101011111110101110101111111010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \PROCESSADOR|DEC|saida[3]~1_combout\);

\ROM1|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~16_combout\ = (!\PROCESSADOR|PC|DOUT\(2) & (\PROCESSADOR|PC|DOUT\(3) & (!\PROCESSADOR|PC|DOUT\(0) $ (\PROCESSADOR|PC|DOUT\(1))))) # (\PROCESSADOR|PC|DOUT\(2) & (\PROCESSADOR|PC|DOUT\(0) & (\PROCESSADOR|PC|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110010001000000011001000100000001100100010000000110010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|PC|ALT_INV_DOUT\(0),
	datab => \PROCESSADOR|PC|ALT_INV_DOUT\(1),
	datac => \PROCESSADOR|PC|ALT_INV_DOUT\(2),
	datad => \PROCESSADOR|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~16_combout\);

\ROM1|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~21_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~16_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \ROM1|memROM~21_combout\);

\ROM1|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~17_combout\ = (!\PROCESSADOR|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & \ROM1|memROM~16_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \ROM1|memROM~17_combout\);

\MEM|ram~183\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~183_combout\ = ( !\ROM1|memROM~17_combout\ & ( \PROCESSADOR|DEC|Equal13~0_combout\ & ( (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~6_combout\ & (!\ROM1|memROM~13_combout\ & !\ROM1|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \PROCESSADOR|DEC|ALT_INV_Equal13~0_combout\,
	combout => \MEM|ram~183_combout\);

\MEM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~15_q\,
	ena => \MEM|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~18_q\);

\MEM|ram~187\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~187_combout\ = (!\PROCESSADOR|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & ((\ROM1|memROM~16_combout\) # (\ROM1|memROM~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010000000100010001000000010001000100000001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \MEM|ram~187_combout\);

\MEM|ram~188\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~188_combout\ = ( !\MEM|ram~187_combout\ & ( (\ROM1|memROM~2_combout\ & (\ROM1|memROM~6_combout\ & (!\ROM1|memROM~13_combout\ & \PROCESSADOR|DEC|Equal13~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \PROCESSADOR|DEC|ALT_INV_Equal13~0_combout\,
	datae => \MEM|ALT_INV_ram~187_combout\,
	combout => \MEM|ram~188_combout\);

\MEM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~15_q\,
	ena => \MEM|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~26_q\);

\MEM|ram~193\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~193_combout\ = ( !\MEM|ram~187_combout\ & ( (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~6_combout\ & (\ROM1|memROM~13_combout\ & \PROCESSADOR|DEC|Equal13~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \PROCESSADOR|DEC|ALT_INV_Equal13~0_combout\,
	datae => \MEM|ALT_INV_ram~187_combout\,
	combout => \MEM|ram~193_combout\);

\MEM|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~15_q\,
	ena => \MEM|ram~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~34_q\);

\MEM|ram~199\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~199_combout\ = ( !\MEM|ram~187_combout\ & ( (\ROM1|memROM~2_combout\ & (\ROM1|memROM~6_combout\ & (\ROM1|memROM~13_combout\ & \PROCESSADOR|DEC|Equal13~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \PROCESSADOR|DEC|ALT_INV_Equal13~0_combout\,
	datae => \MEM|ALT_INV_ram~187_combout\,
	combout => \MEM|ram~199_combout\);

\MEM|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~15_q\,
	ena => \MEM|ram~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~42_q\);

\MEM|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~158_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~42_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~34_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~13_combout\ & ( 
-- \MEM|ram~26_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~13_combout\ & ( \MEM|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~18_q\,
	datab => \MEM|ALT_INV_ram~26_q\,
	datac => \MEM|ALT_INV_ram~34_q\,
	datad => \MEM|ALT_INV_ram~42_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \MEM|ram~158_combout\);

\MEM|ram~184\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~184_combout\ = ( !\ROM1|memROM~17_combout\ & ( \PROCESSADOR|DEC|Equal13~0_combout\ & ( (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~6_combout\ & (!\ROM1|memROM~13_combout\ & \ROM1|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \PROCESSADOR|DEC|ALT_INV_Equal13~0_combout\,
	combout => \MEM|ram~184_combout\);

\MEM|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~15_q\,
	ena => \MEM|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~50_q\);

\MEM|ram~189\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~189_combout\ = ( !\ROM1|memROM~17_combout\ & ( \PROCESSADOR|DEC|Equal13~0_combout\ & ( (\ROM1|memROM~2_combout\ & (\ROM1|memROM~6_combout\ & (!\ROM1|memROM~13_combout\ & \ROM1|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \PROCESSADOR|DEC|ALT_INV_Equal13~0_combout\,
	combout => \MEM|ram~189_combout\);

\MEM|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~15_q\,
	ena => \MEM|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~58_q\);

\MEM|ram~194\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~194_combout\ = (!\PROCESSADOR|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~14_combout\ & !\ROM1|memROM~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \MEM|ram~194_combout\);

\MEM|ram~195\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~195_combout\ = ( \MEM|ram~194_combout\ & ( (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~6_combout\ & (\ROM1|memROM~13_combout\ & \PROCESSADOR|DEC|Equal13~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \PROCESSADOR|DEC|ALT_INV_Equal13~0_combout\,
	datae => \MEM|ALT_INV_ram~194_combout\,
	combout => \MEM|ram~195_combout\);

\MEM|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~15_q\,
	ena => \MEM|ram~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~66_q\);

\MEM|ram~200\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~200_combout\ = ( \MEM|ram~194_combout\ & ( (\ROM1|memROM~2_combout\ & (\ROM1|memROM~6_combout\ & (\ROM1|memROM~13_combout\ & \PROCESSADOR|DEC|Equal13~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \PROCESSADOR|DEC|ALT_INV_Equal13~0_combout\,
	datae => \MEM|ALT_INV_ram~194_combout\,
	combout => \MEM|ram~200_combout\);

\MEM|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~15_q\,
	ena => \MEM|ram~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~74_q\);

\MEM|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~159_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~74_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~66_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~13_combout\ & ( 
-- \MEM|ram~58_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~13_combout\ & ( \MEM|ram~50_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~50_q\,
	datab => \MEM|ALT_INV_ram~58_q\,
	datac => \MEM|ALT_INV_ram~66_q\,
	datad => \MEM|ALT_INV_ram~74_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \MEM|ram~159_combout\);

\MEM|ram~185\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~185_combout\ = ( \ROM1|memROM~17_combout\ & ( \PROCESSADOR|DEC|Equal13~0_combout\ & ( (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~6_combout\ & (!\ROM1|memROM~13_combout\ & !\ROM1|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \PROCESSADOR|DEC|ALT_INV_Equal13~0_combout\,
	combout => \MEM|ram~185_combout\);

\MEM|ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~15_q\,
	ena => \MEM|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~82_q\);

\MEM|ram~190\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~190_combout\ = (!\PROCESSADOR|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~14_combout\ & \ROM1|memROM~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \MEM|ram~190_combout\);

\MEM|ram~191\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~191_combout\ = ( \MEM|ram~190_combout\ & ( (\ROM1|memROM~2_combout\ & (\ROM1|memROM~6_combout\ & (!\ROM1|memROM~13_combout\ & \PROCESSADOR|DEC|Equal13~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \PROCESSADOR|DEC|ALT_INV_Equal13~0_combout\,
	datae => \MEM|ALT_INV_ram~190_combout\,
	combout => \MEM|ram~191_combout\);

\MEM|ram~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~15_q\,
	ena => \MEM|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~90_q\);

\MEM|ram~196\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~196_combout\ = ( \MEM|ram~190_combout\ & ( (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~6_combout\ & (\ROM1|memROM~13_combout\ & \PROCESSADOR|DEC|Equal13~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \PROCESSADOR|DEC|ALT_INV_Equal13~0_combout\,
	datae => \MEM|ALT_INV_ram~190_combout\,
	combout => \MEM|ram~196_combout\);

\MEM|ram~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~15_q\,
	ena => \MEM|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~98_q\);

\MEM|ram~201\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~201_combout\ = ( \MEM|ram~190_combout\ & ( (\ROM1|memROM~2_combout\ & (\ROM1|memROM~6_combout\ & (\ROM1|memROM~13_combout\ & \PROCESSADOR|DEC|Equal13~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \PROCESSADOR|DEC|ALT_INV_Equal13~0_combout\,
	datae => \MEM|ALT_INV_ram~190_combout\,
	combout => \MEM|ram~201_combout\);

\MEM|ram~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~15_q\,
	ena => \MEM|ram~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~106_q\);

\MEM|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~160_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~106_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~98_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~13_combout\ & ( 
-- \MEM|ram~90_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~13_combout\ & ( \MEM|ram~82_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~82_q\,
	datab => \MEM|ALT_INV_ram~90_q\,
	datac => \MEM|ALT_INV_ram~98_q\,
	datad => \MEM|ALT_INV_ram~106_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \MEM|ram~160_combout\);

\MEM|ram~186\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~186_combout\ = ( \ROM1|memROM~17_combout\ & ( \PROCESSADOR|DEC|Equal13~0_combout\ & ( (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~6_combout\ & (!\ROM1|memROM~13_combout\ & \ROM1|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \PROCESSADOR|DEC|ALT_INV_Equal13~0_combout\,
	combout => \MEM|ram~186_combout\);

\MEM|ram~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~15_q\,
	ena => \MEM|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~114_q\);

\MEM|ram~192\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~192_combout\ = ( \ROM1|memROM~17_combout\ & ( \PROCESSADOR|DEC|Equal13~0_combout\ & ( (\ROM1|memROM~2_combout\ & (\ROM1|memROM~6_combout\ & (!\ROM1|memROM~13_combout\ & \ROM1|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \PROCESSADOR|DEC|ALT_INV_Equal13~0_combout\,
	combout => \MEM|ram~192_combout\);

\MEM|ram~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~15_q\,
	ena => \MEM|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~122_q\);

\MEM|ram~197\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~197_combout\ = (!\PROCESSADOR|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~14_combout\ & \ROM1|memROM~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \MEM|ram~197_combout\);

\MEM|ram~198\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~198_combout\ = ( \MEM|ram~197_combout\ & ( (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~6_combout\ & (\ROM1|memROM~13_combout\ & \PROCESSADOR|DEC|Equal13~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \PROCESSADOR|DEC|ALT_INV_Equal13~0_combout\,
	datae => \MEM|ALT_INV_ram~197_combout\,
	combout => \MEM|ram~198_combout\);

\MEM|ram~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~15_q\,
	ena => \MEM|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~130_q\);

\MEM|ram~202\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~202_combout\ = ( \MEM|ram~197_combout\ & ( (\ROM1|memROM~2_combout\ & (\ROM1|memROM~6_combout\ & (\ROM1|memROM~13_combout\ & \PROCESSADOR|DEC|Equal13~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \PROCESSADOR|DEC|ALT_INV_Equal13~0_combout\,
	datae => \MEM|ALT_INV_ram~197_combout\,
	combout => \MEM|ram~202_combout\);

\MEM|ram~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~15_q\,
	ena => \MEM|ram~202_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~138_q\);

\MEM|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~161_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~138_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~130_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~13_combout\ & ( 
-- \MEM|ram~122_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~13_combout\ & ( \MEM|ram~114_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~114_q\,
	datab => \MEM|ALT_INV_ram~122_q\,
	datac => \MEM|ALT_INV_ram~130_q\,
	datad => \MEM|ALT_INV_ram~138_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \MEM|ram~161_combout\);

\MEM|ram~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~162_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~161_combout\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~160_combout\ ) ) ) # ( \ROM1|memROM~15_combout\ & ( 
-- !\ROM1|memROM~17_combout\ & ( \MEM|ram~159_combout\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & ( \MEM|ram~158_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~158_combout\,
	datab => \MEM|ALT_INV_ram~159_combout\,
	datac => \MEM|ALT_INV_ram~160_combout\,
	datad => \MEM|ALT_INV_ram~161_combout\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \MEM|ram~162_combout\);

\PROCESSADOR|MUX1|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|MUX1|saida_MUX[3]~3_combout\ = (!\PROCESSADOR|DEC|Equal13~1_combout\ & ((\MEM|ram~162_combout\))) # (\PROCESSADOR|DEC|Equal13~1_combout\ & (\ROM1|memROM~17_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \PROCESSADOR|DEC|ALT_INV_Equal13~1_combout\,
	datac => \MEM|ALT_INV_ram~162_combout\,
	combout => \PROCESSADOR|MUX1|saida_MUX[3]~3_combout\);

\ROM1|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~20_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~14_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \ROM1|memROM~20_combout\);

\MEM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~14_q\,
	ena => \MEM|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~17_q\);

\MEM|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~14_q\,
	ena => \MEM|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~49_q\);

\MEM|ram~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~14_q\,
	ena => \MEM|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~81_q\);

\MEM|ram~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~14_q\,
	ena => \MEM|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~113_q\);

\MEM|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~153_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~113_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~81_q\ ) ) ) # ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & ( 
-- \MEM|ram~49_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & ( \MEM|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~17_q\,
	datab => \MEM|ALT_INV_ram~49_q\,
	datac => \MEM|ALT_INV_ram~81_q\,
	datad => \MEM|ALT_INV_ram~113_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \MEM|ram~153_combout\);

\MEM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~14_q\,
	ena => \MEM|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~25_q\);

\MEM|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~14_q\,
	ena => \MEM|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~57_q\);

\MEM|ram~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~14_q\,
	ena => \MEM|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~89_q\);

\MEM|ram~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~14_q\,
	ena => \MEM|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~121_q\);

\MEM|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~154_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~121_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~89_q\ ) ) ) # ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & ( 
-- \MEM|ram~57_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & ( \MEM|ram~25_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~25_q\,
	datab => \MEM|ALT_INV_ram~57_q\,
	datac => \MEM|ALT_INV_ram~89_q\,
	datad => \MEM|ALT_INV_ram~121_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \MEM|ram~154_combout\);

\MEM|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~14_q\,
	ena => \MEM|ram~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~33_q\);

\MEM|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~14_q\,
	ena => \MEM|ram~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~65_q\);

\MEM|ram~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~14_q\,
	ena => \MEM|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~97_q\);

\MEM|ram~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~14_q\,
	ena => \MEM|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~129_q\);

\MEM|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~155_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~129_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~97_q\ ) ) ) # ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & ( 
-- \MEM|ram~65_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & ( \MEM|ram~33_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~33_q\,
	datab => \MEM|ALT_INV_ram~65_q\,
	datac => \MEM|ALT_INV_ram~97_q\,
	datad => \MEM|ALT_INV_ram~129_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \MEM|ram~155_combout\);

\MEM|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~14_q\,
	ena => \MEM|ram~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~41_q\);

\MEM|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~14_q\,
	ena => \MEM|ram~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~73_q\);

\MEM|ram~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~14_q\,
	ena => \MEM|ram~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~105_q\);

\MEM|ram~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~14_q\,
	ena => \MEM|ram~202_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~137_q\);

\MEM|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~156_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~137_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~105_q\ ) ) ) # ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & ( 
-- \MEM|ram~73_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & ( \MEM|ram~41_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~41_q\,
	datab => \MEM|ALT_INV_ram~73_q\,
	datac => \MEM|ALT_INV_ram~105_q\,
	datad => \MEM|ALT_INV_ram~137_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \MEM|ram~156_combout\);

\MEM|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~157_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~156_combout\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~155_combout\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( 
-- !\ROM1|memROM~13_combout\ & ( \MEM|ram~154_combout\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~13_combout\ & ( \MEM|ram~153_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~153_combout\,
	datab => \MEM|ALT_INV_ram~154_combout\,
	datac => \MEM|ALT_INV_ram~155_combout\,
	datad => \MEM|ALT_INV_ram~156_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \MEM|ram~157_combout\);

\PROCESSADOR|MUX1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|MUX1|saida_MUX[2]~2_combout\ = (!\PROCESSADOR|DEC|Equal13~1_combout\ & ((\MEM|ram~157_combout\))) # (\PROCESSADOR|DEC|Equal13~1_combout\ & (\ROM1|memROM~15_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~15_combout\,
	datab => \PROCESSADOR|DEC|ALT_INV_Equal13~1_combout\,
	datac => \MEM|ALT_INV_ram~157_combout\,
	combout => \PROCESSADOR|MUX1|saida_MUX[2]~2_combout\);

\ROM1|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~19_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~12_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \ROM1|memROM~19_combout\);

\MEM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~13_q\,
	ena => \MEM|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~16_q\);

\MEM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~13_q\,
	ena => \MEM|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~24_q\);

\MEM|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~13_q\,
	ena => \MEM|ram~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~32_q\);

\MEM|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~13_q\,
	ena => \MEM|ram~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~40_q\);

\MEM|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~148_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~40_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~32_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~13_combout\ & ( 
-- \MEM|ram~24_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~13_combout\ & ( \MEM|ram~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~16_q\,
	datab => \MEM|ALT_INV_ram~24_q\,
	datac => \MEM|ALT_INV_ram~32_q\,
	datad => \MEM|ALT_INV_ram~40_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \MEM|ram~148_combout\);

\MEM|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~13_q\,
	ena => \MEM|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~48_q\);

\MEM|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~13_q\,
	ena => \MEM|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~56_q\);

\MEM|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~13_q\,
	ena => \MEM|ram~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~64_q\);

\MEM|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~13_q\,
	ena => \MEM|ram~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~72_q\);

\MEM|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~149_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~72_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~64_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~13_combout\ & ( 
-- \MEM|ram~56_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~13_combout\ & ( \MEM|ram~48_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~48_q\,
	datab => \MEM|ALT_INV_ram~56_q\,
	datac => \MEM|ALT_INV_ram~64_q\,
	datad => \MEM|ALT_INV_ram~72_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \MEM|ram~149_combout\);

\MEM|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~13_q\,
	ena => \MEM|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~80_q\);

\MEM|ram~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~13_q\,
	ena => \MEM|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~88_q\);

\MEM|ram~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~13_q\,
	ena => \MEM|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~96_q\);

\MEM|ram~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~13_q\,
	ena => \MEM|ram~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~104_q\);

\MEM|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~150_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~104_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~96_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~13_combout\ & ( 
-- \MEM|ram~88_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~13_combout\ & ( \MEM|ram~80_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~80_q\,
	datab => \MEM|ALT_INV_ram~88_q\,
	datac => \MEM|ALT_INV_ram~96_q\,
	datad => \MEM|ALT_INV_ram~104_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \MEM|ram~150_combout\);

\MEM|ram~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~13_q\,
	ena => \MEM|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~112_q\);

\MEM|ram~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~13_q\,
	ena => \MEM|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~120_q\);

\MEM|ram~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~13_q\,
	ena => \MEM|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~128_q\);

\MEM|ram~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~13_q\,
	ena => \MEM|ram~202_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~136_q\);

\MEM|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~151_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~136_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~128_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~13_combout\ & ( 
-- \MEM|ram~120_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~13_combout\ & ( \MEM|ram~112_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~112_q\,
	datab => \MEM|ALT_INV_ram~120_q\,
	datac => \MEM|ALT_INV_ram~128_q\,
	datad => \MEM|ALT_INV_ram~136_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \MEM|ram~151_combout\);

\MEM|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~152_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~151_combout\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~150_combout\ ) ) ) # ( \ROM1|memROM~15_combout\ & ( 
-- !\ROM1|memROM~17_combout\ & ( \MEM|ram~149_combout\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & ( \MEM|ram~148_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~148_combout\,
	datab => \MEM|ALT_INV_ram~149_combout\,
	datac => \MEM|ALT_INV_ram~150_combout\,
	datad => \MEM|ALT_INV_ram~151_combout\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \MEM|ram~152_combout\);

\PROCESSADOR|MUX1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|MUX1|saida_MUX[1]~1_combout\ = (!\PROCESSADOR|DEC|Equal13~1_combout\ & ((\MEM|ram~152_combout\))) # (\PROCESSADOR|DEC|Equal13~1_combout\ & (\ROM1|memROM~13_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \PROCESSADOR|DEC|ALT_INV_Equal13~1_combout\,
	datac => \MEM|ALT_INV_ram~152_combout\,
	combout => \PROCESSADOR|MUX1|saida_MUX[1]~1_combout\);

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = (!\PROCESSADOR|PC|DOUT\(1) & (((\PROCESSADOR|PC|DOUT\(2))))) # (\PROCESSADOR|PC|DOUT\(1) & (!\PROCESSADOR|PC|DOUT\(0) & ((\PROCESSADOR|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000101110000011000010111000001100001011100000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|PC|ALT_INV_DOUT\(0),
	datab => \PROCESSADOR|PC|ALT_INV_DOUT\(1),
	datac => \PROCESSADOR|PC|ALT_INV_DOUT\(2),
	datad => \PROCESSADOR|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~0_combout\);

\ROM1|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~18_combout\ = (!\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~18_combout\);

\MEM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~12_q\,
	ena => \MEM|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~15_q\);

\MEM|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~12_q\,
	ena => \MEM|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~47_q\);

\MEM|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~12_q\,
	ena => \MEM|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~79_q\);

\MEM|ram~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~12_q\,
	ena => \MEM|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~111_q\);

\MEM|ram~143\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~143_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~111_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~79_q\ ) ) ) # ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & ( 
-- \MEM|ram~47_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & ( \MEM|ram~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~15_q\,
	datab => \MEM|ALT_INV_ram~47_q\,
	datac => \MEM|ALT_INV_ram~79_q\,
	datad => \MEM|ALT_INV_ram~111_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \MEM|ram~143_combout\);

\MEM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~12_q\,
	ena => \MEM|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~23_q\);

\MEM|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~12_q\,
	ena => \MEM|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~55_q\);

\MEM|ram~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~12_q\,
	ena => \MEM|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~87_q\);

\MEM|ram~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~12_q\,
	ena => \MEM|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~119_q\);

\MEM|ram~144\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~144_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~119_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~87_q\ ) ) ) # ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & ( 
-- \MEM|ram~55_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & ( \MEM|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~23_q\,
	datab => \MEM|ALT_INV_ram~55_q\,
	datac => \MEM|ALT_INV_ram~87_q\,
	datad => \MEM|ALT_INV_ram~119_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \MEM|ram~144_combout\);

\MEM|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~12_q\,
	ena => \MEM|ram~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~31_q\);

\MEM|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~12_q\,
	ena => \MEM|ram~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~63_q\);

\MEM|ram~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~12_q\,
	ena => \MEM|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~95_q\);

\MEM|ram~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~12_q\,
	ena => \MEM|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~127_q\);

\MEM|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~145_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~127_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~95_q\ ) ) ) # ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & ( 
-- \MEM|ram~63_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & ( \MEM|ram~31_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~31_q\,
	datab => \MEM|ALT_INV_ram~63_q\,
	datac => \MEM|ALT_INV_ram~95_q\,
	datad => \MEM|ALT_INV_ram~127_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \MEM|ram~145_combout\);

\MEM|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~12_q\,
	ena => \MEM|ram~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~39_q\);

\MEM|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~12_q\,
	ena => \MEM|ram~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~71_q\);

\MEM|ram~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~12_q\,
	ena => \MEM|ram~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~103_q\);

\MEM|ram~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~12_q\,
	ena => \MEM|ram~202_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~135_q\);

\MEM|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~146_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~135_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~103_q\ ) ) ) # ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & ( 
-- \MEM|ram~71_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & ( \MEM|ram~39_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~39_q\,
	datab => \MEM|ALT_INV_ram~71_q\,
	datac => \MEM|ALT_INV_ram~103_q\,
	datad => \MEM|ALT_INV_ram~135_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \MEM|ram~146_combout\);

\MEM|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~147_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~146_combout\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~145_combout\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( 
-- !\ROM1|memROM~13_combout\ & ( \MEM|ram~144_combout\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~13_combout\ & ( \MEM|ram~143_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~143_combout\,
	datab => \MEM|ALT_INV_ram~144_combout\,
	datac => \MEM|ALT_INV_ram~145_combout\,
	datad => \MEM|ALT_INV_ram~146_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \MEM|ram~147_combout\);

\PROCESSADOR|MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|MUX1|saida_MUX[0]~0_combout\ = (!\PROCESSADOR|DEC|Equal13~1_combout\ & ((\MEM|ram~147_combout\))) # (\PROCESSADOR|DEC|Equal13~1_combout\ & (\ROM1|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \PROCESSADOR|DEC|ALT_INV_Equal13~1_combout\,
	datac => \MEM|ALT_INV_ram~147_combout\,
	combout => \PROCESSADOR|MUX1|saida_MUX[0]~0_combout\);

\PROCESSADOR|ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|ULA|Add0~1_sumout\ = SUM(( \PROCESSADOR|BANCOREG|registrador~12_q\ ) + ( (!\PROCESSADOR|DEC|Equal13~1_combout\ & (((\MEM|ram~147_combout\)))) # (\PROCESSADOR|DEC|Equal13~1_combout\ & (!\PROCESSADOR|PC|DOUT\(8) & (\ROM1|memROM~18_combout\))) ) 
-- + ( !VCC ))
-- \PROCESSADOR|ULA|Add0~2\ = CARRY(( \PROCESSADOR|BANCOREG|registrador~12_q\ ) + ( (!\PROCESSADOR|DEC|Equal13~1_combout\ & (((\MEM|ram~147_combout\)))) # (\PROCESSADOR|DEC|Equal13~1_combout\ & (!\PROCESSADOR|PC|DOUT\(8) & (\ROM1|memROM~18_combout\))) ) + ( 
-- !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110101000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|DEC|ALT_INV_Equal13~1_combout\,
	datab => \PROCESSADOR|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~18_combout\,
	datad => \PROCESSADOR|BANCOREG|ALT_INV_registrador~12_q\,
	dataf => \MEM|ALT_INV_ram~147_combout\,
	cin => GND,
	sumout => \PROCESSADOR|ULA|Add0~1_sumout\,
	cout => \PROCESSADOR|ULA|Add0~2\);

\PROCESSADOR|ULA|Add1~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|ULA|Add1~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \PROCESSADOR|ULA|Add1~34_cout\);

\PROCESSADOR|ULA|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|ULA|Add1~5_sumout\ = SUM(( \PROCESSADOR|BANCOREG|registrador~12_q\ ) + ( (!\PROCESSADOR|DEC|Equal13~1_combout\ & (((!\MEM|ram~147_combout\)))) # (\PROCESSADOR|DEC|Equal13~1_combout\ & (((!\ROM1|memROM~18_combout\)) # 
-- (\PROCESSADOR|PC|DOUT\(8)))) ) + ( \PROCESSADOR|ULA|Add1~34_cout\ ))
-- \PROCESSADOR|ULA|Add1~6\ = CARRY(( \PROCESSADOR|BANCOREG|registrador~12_q\ ) + ( (!\PROCESSADOR|DEC|Equal13~1_combout\ & (((!\MEM|ram~147_combout\)))) # (\PROCESSADOR|DEC|Equal13~1_combout\ & (((!\ROM1|memROM~18_combout\)) # (\PROCESSADOR|PC|DOUT\(8)))) ) 
-- + ( \PROCESSADOR|ULA|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001001010111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|DEC|ALT_INV_Equal13~1_combout\,
	datab => \PROCESSADOR|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~18_combout\,
	datad => \PROCESSADOR|BANCOREG|ALT_INV_registrador~12_q\,
	dataf => \MEM|ALT_INV_ram~147_combout\,
	cin => \PROCESSADOR|ULA|Add1~34_cout\,
	sumout => \PROCESSADOR|ULA|Add1~5_sumout\,
	cout => \PROCESSADOR|ULA|Add1~6\);

\PROCESSADOR|ULA|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|ULA|saida[0]~0_combout\ = ( \PROCESSADOR|ULA|Add0~1_sumout\ & ( \PROCESSADOR|ULA|Add1~5_sumout\ & ( (!\PROCESSADOR|DEC|saida[4]~2_combout\) # ((\PROCESSADOR|MUX1|saida_MUX[0]~0_combout\ & ((\PROCESSADOR|BANCOREG|registrador~12_q\) # 
-- (\PROCESSADOR|DEC|saida[3]~1_combout\)))) ) ) ) # ( !\PROCESSADOR|ULA|Add0~1_sumout\ & ( \PROCESSADOR|ULA|Add1~5_sumout\ & ( (!\PROCESSADOR|DEC|saida[4]~2_combout\ & (!\PROCESSADOR|DEC|saida[3]~1_combout\)) # (\PROCESSADOR|DEC|saida[4]~2_combout\ & 
-- (\PROCESSADOR|MUX1|saida_MUX[0]~0_combout\ & ((\PROCESSADOR|BANCOREG|registrador~12_q\) # (\PROCESSADOR|DEC|saida[3]~1_combout\)))) ) ) ) # ( \PROCESSADOR|ULA|Add0~1_sumout\ & ( !\PROCESSADOR|ULA|Add1~5_sumout\ & ( (!\PROCESSADOR|DEC|saida[4]~2_combout\ & 
-- (\PROCESSADOR|DEC|saida[3]~1_combout\)) # (\PROCESSADOR|DEC|saida[4]~2_combout\ & (\PROCESSADOR|MUX1|saida_MUX[0]~0_combout\ & ((\PROCESSADOR|BANCOREG|registrador~12_q\) # (\PROCESSADOR|DEC|saida[3]~1_combout\)))) ) ) ) # ( 
-- !\PROCESSADOR|ULA|Add0~1_sumout\ & ( !\PROCESSADOR|ULA|Add1~5_sumout\ & ( (\PROCESSADOR|DEC|saida[4]~2_combout\ & (\PROCESSADOR|MUX1|saida_MUX[0]~0_combout\ & ((\PROCESSADOR|BANCOREG|registrador~12_q\) # (\PROCESSADOR|DEC|saida[3]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111010100000101011110100000101001111111000011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|DEC|ALT_INV_saida[3]~1_combout\,
	datab => \PROCESSADOR|BANCOREG|ALT_INV_registrador~12_q\,
	datac => \PROCESSADOR|DEC|ALT_INV_saida[4]~2_combout\,
	datad => \PROCESSADOR|MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datae => \PROCESSADOR|ULA|ALT_INV_Add0~1_sumout\,
	dataf => \PROCESSADOR|ULA|ALT_INV_Add1~5_sumout\,
	combout => \PROCESSADOR|ULA|saida[0]~0_combout\);

\PROCESSADOR|DEC|saida[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|DEC|saida[5]~3_combout\ = (!\ROM1|memROM~9_combout\ & (!\ROM1|memROM~4_combout\ $ (((!\ROM1|memROM~11_combout\ & !\ROM1|memROM~6_combout\))))) # (\ROM1|memROM~9_combout\ & (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~11_combout\ & 
-- \ROM1|memROM~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100010001100001010001000110000101000100011000010100010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \PROCESSADOR|DEC|saida[5]~3_combout\);

\PROCESSADOR|BANCOREG|registrador~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|ULA|saida[0]~0_combout\,
	ena => \PROCESSADOR|DEC|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROCESSADOR|BANCOREG|registrador~12_q\);

\PROCESSADOR|ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|ULA|Add0~5_sumout\ = SUM(( \PROCESSADOR|BANCOREG|registrador~13_q\ ) + ( (!\PROCESSADOR|DEC|Equal13~1_combout\ & (((\MEM|ram~152_combout\)))) # (\PROCESSADOR|DEC|Equal13~1_combout\ & (!\PROCESSADOR|PC|DOUT\(8) & (\ROM1|memROM~19_combout\))) ) 
-- + ( \PROCESSADOR|ULA|Add0~2\ ))
-- \PROCESSADOR|ULA|Add0~6\ = CARRY(( \PROCESSADOR|BANCOREG|registrador~13_q\ ) + ( (!\PROCESSADOR|DEC|Equal13~1_combout\ & (((\MEM|ram~152_combout\)))) # (\PROCESSADOR|DEC|Equal13~1_combout\ & (!\PROCESSADOR|PC|DOUT\(8) & (\ROM1|memROM~19_combout\))) ) + ( 
-- \PROCESSADOR|ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110101000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|DEC|ALT_INV_Equal13~1_combout\,
	datab => \PROCESSADOR|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \PROCESSADOR|BANCOREG|ALT_INV_registrador~13_q\,
	dataf => \MEM|ALT_INV_ram~152_combout\,
	cin => \PROCESSADOR|ULA|Add0~2\,
	sumout => \PROCESSADOR|ULA|Add0~5_sumout\,
	cout => \PROCESSADOR|ULA|Add0~6\);

\PROCESSADOR|ULA|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|ULA|Add1~9_sumout\ = SUM(( \PROCESSADOR|BANCOREG|registrador~13_q\ ) + ( (!\PROCESSADOR|DEC|Equal13~1_combout\ & (((!\MEM|ram~152_combout\)))) # (\PROCESSADOR|DEC|Equal13~1_combout\ & (((!\ROM1|memROM~19_combout\)) # 
-- (\PROCESSADOR|PC|DOUT\(8)))) ) + ( \PROCESSADOR|ULA|Add1~6\ ))
-- \PROCESSADOR|ULA|Add1~10\ = CARRY(( \PROCESSADOR|BANCOREG|registrador~13_q\ ) + ( (!\PROCESSADOR|DEC|Equal13~1_combout\ & (((!\MEM|ram~152_combout\)))) # (\PROCESSADOR|DEC|Equal13~1_combout\ & (((!\ROM1|memROM~19_combout\)) # (\PROCESSADOR|PC|DOUT\(8)))) 
-- ) + ( \PROCESSADOR|ULA|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001001010111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|DEC|ALT_INV_Equal13~1_combout\,
	datab => \PROCESSADOR|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \PROCESSADOR|BANCOREG|ALT_INV_registrador~13_q\,
	dataf => \MEM|ALT_INV_ram~152_combout\,
	cin => \PROCESSADOR|ULA|Add1~6\,
	sumout => \PROCESSADOR|ULA|Add1~9_sumout\,
	cout => \PROCESSADOR|ULA|Add1~10\);

\PROCESSADOR|ULA|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|ULA|saida[1]~1_combout\ = ( \PROCESSADOR|ULA|Add0~5_sumout\ & ( \PROCESSADOR|ULA|Add1~9_sumout\ & ( (!\PROCESSADOR|DEC|saida[4]~2_combout\) # ((\PROCESSADOR|MUX1|saida_MUX[1]~1_combout\ & ((\PROCESSADOR|BANCOREG|registrador~13_q\) # 
-- (\PROCESSADOR|DEC|saida[3]~1_combout\)))) ) ) ) # ( !\PROCESSADOR|ULA|Add0~5_sumout\ & ( \PROCESSADOR|ULA|Add1~9_sumout\ & ( (!\PROCESSADOR|DEC|saida[4]~2_combout\ & (!\PROCESSADOR|DEC|saida[3]~1_combout\)) # (\PROCESSADOR|DEC|saida[4]~2_combout\ & 
-- (\PROCESSADOR|MUX1|saida_MUX[1]~1_combout\ & ((\PROCESSADOR|BANCOREG|registrador~13_q\) # (\PROCESSADOR|DEC|saida[3]~1_combout\)))) ) ) ) # ( \PROCESSADOR|ULA|Add0~5_sumout\ & ( !\PROCESSADOR|ULA|Add1~9_sumout\ & ( (!\PROCESSADOR|DEC|saida[4]~2_combout\ & 
-- (\PROCESSADOR|DEC|saida[3]~1_combout\)) # (\PROCESSADOR|DEC|saida[4]~2_combout\ & (\PROCESSADOR|MUX1|saida_MUX[1]~1_combout\ & ((\PROCESSADOR|BANCOREG|registrador~13_q\) # (\PROCESSADOR|DEC|saida[3]~1_combout\)))) ) ) ) # ( 
-- !\PROCESSADOR|ULA|Add0~5_sumout\ & ( !\PROCESSADOR|ULA|Add1~9_sumout\ & ( (\PROCESSADOR|DEC|saida[4]~2_combout\ & (\PROCESSADOR|MUX1|saida_MUX[1]~1_combout\ & ((\PROCESSADOR|BANCOREG|registrador~13_q\) # (\PROCESSADOR|DEC|saida[3]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111010100000101011110100000101001111111000011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|DEC|ALT_INV_saida[3]~1_combout\,
	datab => \PROCESSADOR|BANCOREG|ALT_INV_registrador~13_q\,
	datac => \PROCESSADOR|DEC|ALT_INV_saida[4]~2_combout\,
	datad => \PROCESSADOR|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	datae => \PROCESSADOR|ULA|ALT_INV_Add0~5_sumout\,
	dataf => \PROCESSADOR|ULA|ALT_INV_Add1~9_sumout\,
	combout => \PROCESSADOR|ULA|saida[1]~1_combout\);

\PROCESSADOR|BANCOREG|registrador~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|ULA|saida[1]~1_combout\,
	ena => \PROCESSADOR|DEC|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROCESSADOR|BANCOREG|registrador~13_q\);

\PROCESSADOR|ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|ULA|Add0~9_sumout\ = SUM(( \PROCESSADOR|BANCOREG|registrador~14_q\ ) + ( (!\PROCESSADOR|DEC|Equal13~1_combout\ & (((\MEM|ram~157_combout\)))) # (\PROCESSADOR|DEC|Equal13~1_combout\ & (!\PROCESSADOR|PC|DOUT\(8) & (\ROM1|memROM~20_combout\))) ) 
-- + ( \PROCESSADOR|ULA|Add0~6\ ))
-- \PROCESSADOR|ULA|Add0~10\ = CARRY(( \PROCESSADOR|BANCOREG|registrador~14_q\ ) + ( (!\PROCESSADOR|DEC|Equal13~1_combout\ & (((\MEM|ram~157_combout\)))) # (\PROCESSADOR|DEC|Equal13~1_combout\ & (!\PROCESSADOR|PC|DOUT\(8) & (\ROM1|memROM~20_combout\))) ) + ( 
-- \PROCESSADOR|ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110101000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|DEC|ALT_INV_Equal13~1_combout\,
	datab => \PROCESSADOR|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~20_combout\,
	datad => \PROCESSADOR|BANCOREG|ALT_INV_registrador~14_q\,
	dataf => \MEM|ALT_INV_ram~157_combout\,
	cin => \PROCESSADOR|ULA|Add0~6\,
	sumout => \PROCESSADOR|ULA|Add0~9_sumout\,
	cout => \PROCESSADOR|ULA|Add0~10\);

\PROCESSADOR|ULA|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|ULA|Add1~13_sumout\ = SUM(( \PROCESSADOR|BANCOREG|registrador~14_q\ ) + ( (!\PROCESSADOR|DEC|Equal13~1_combout\ & (((!\MEM|ram~157_combout\)))) # (\PROCESSADOR|DEC|Equal13~1_combout\ & (((!\ROM1|memROM~20_combout\)) # 
-- (\PROCESSADOR|PC|DOUT\(8)))) ) + ( \PROCESSADOR|ULA|Add1~10\ ))
-- \PROCESSADOR|ULA|Add1~14\ = CARRY(( \PROCESSADOR|BANCOREG|registrador~14_q\ ) + ( (!\PROCESSADOR|DEC|Equal13~1_combout\ & (((!\MEM|ram~157_combout\)))) # (\PROCESSADOR|DEC|Equal13~1_combout\ & (((!\ROM1|memROM~20_combout\)) # (\PROCESSADOR|PC|DOUT\(8)))) 
-- ) + ( \PROCESSADOR|ULA|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001001010111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|DEC|ALT_INV_Equal13~1_combout\,
	datab => \PROCESSADOR|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~20_combout\,
	datad => \PROCESSADOR|BANCOREG|ALT_INV_registrador~14_q\,
	dataf => \MEM|ALT_INV_ram~157_combout\,
	cin => \PROCESSADOR|ULA|Add1~10\,
	sumout => \PROCESSADOR|ULA|Add1~13_sumout\,
	cout => \PROCESSADOR|ULA|Add1~14\);

\PROCESSADOR|ULA|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|ULA|saida[2]~2_combout\ = ( \PROCESSADOR|ULA|Add0~9_sumout\ & ( \PROCESSADOR|ULA|Add1~13_sumout\ & ( (!\PROCESSADOR|DEC|saida[4]~2_combout\) # ((\PROCESSADOR|MUX1|saida_MUX[2]~2_combout\ & ((\PROCESSADOR|BANCOREG|registrador~14_q\) # 
-- (\PROCESSADOR|DEC|saida[3]~1_combout\)))) ) ) ) # ( !\PROCESSADOR|ULA|Add0~9_sumout\ & ( \PROCESSADOR|ULA|Add1~13_sumout\ & ( (!\PROCESSADOR|DEC|saida[4]~2_combout\ & (!\PROCESSADOR|DEC|saida[3]~1_combout\)) # (\PROCESSADOR|DEC|saida[4]~2_combout\ & 
-- (\PROCESSADOR|MUX1|saida_MUX[2]~2_combout\ & ((\PROCESSADOR|BANCOREG|registrador~14_q\) # (\PROCESSADOR|DEC|saida[3]~1_combout\)))) ) ) ) # ( \PROCESSADOR|ULA|Add0~9_sumout\ & ( !\PROCESSADOR|ULA|Add1~13_sumout\ & ( (!\PROCESSADOR|DEC|saida[4]~2_combout\ 
-- & (\PROCESSADOR|DEC|saida[3]~1_combout\)) # (\PROCESSADOR|DEC|saida[4]~2_combout\ & (\PROCESSADOR|MUX1|saida_MUX[2]~2_combout\ & ((\PROCESSADOR|BANCOREG|registrador~14_q\) # (\PROCESSADOR|DEC|saida[3]~1_combout\)))) ) ) ) # ( 
-- !\PROCESSADOR|ULA|Add0~9_sumout\ & ( !\PROCESSADOR|ULA|Add1~13_sumout\ & ( (\PROCESSADOR|DEC|saida[4]~2_combout\ & (\PROCESSADOR|MUX1|saida_MUX[2]~2_combout\ & ((\PROCESSADOR|BANCOREG|registrador~14_q\) # (\PROCESSADOR|DEC|saida[3]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111010100000101011110100000101001111111000011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|DEC|ALT_INV_saida[3]~1_combout\,
	datab => \PROCESSADOR|BANCOREG|ALT_INV_registrador~14_q\,
	datac => \PROCESSADOR|DEC|ALT_INV_saida[4]~2_combout\,
	datad => \PROCESSADOR|MUX1|ALT_INV_saida_MUX[2]~2_combout\,
	datae => \PROCESSADOR|ULA|ALT_INV_Add0~9_sumout\,
	dataf => \PROCESSADOR|ULA|ALT_INV_Add1~13_sumout\,
	combout => \PROCESSADOR|ULA|saida[2]~2_combout\);

\PROCESSADOR|BANCOREG|registrador~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|ULA|saida[2]~2_combout\,
	ena => \PROCESSADOR|DEC|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROCESSADOR|BANCOREG|registrador~14_q\);

\PROCESSADOR|ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|ULA|Add0~13_sumout\ = SUM(( \PROCESSADOR|BANCOREG|registrador~15_q\ ) + ( (!\PROCESSADOR|DEC|Equal13~1_combout\ & (((\MEM|ram~162_combout\)))) # (\PROCESSADOR|DEC|Equal13~1_combout\ & (!\PROCESSADOR|PC|DOUT\(8) & (\ROM1|memROM~21_combout\))) 
-- ) + ( \PROCESSADOR|ULA|Add0~10\ ))
-- \PROCESSADOR|ULA|Add0~14\ = CARRY(( \PROCESSADOR|BANCOREG|registrador~15_q\ ) + ( (!\PROCESSADOR|DEC|Equal13~1_combout\ & (((\MEM|ram~162_combout\)))) # (\PROCESSADOR|DEC|Equal13~1_combout\ & (!\PROCESSADOR|PC|DOUT\(8) & (\ROM1|memROM~21_combout\))) ) + ( 
-- \PROCESSADOR|ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110101000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|DEC|ALT_INV_Equal13~1_combout\,
	datab => \PROCESSADOR|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~21_combout\,
	datad => \PROCESSADOR|BANCOREG|ALT_INV_registrador~15_q\,
	dataf => \MEM|ALT_INV_ram~162_combout\,
	cin => \PROCESSADOR|ULA|Add0~10\,
	sumout => \PROCESSADOR|ULA|Add0~13_sumout\,
	cout => \PROCESSADOR|ULA|Add0~14\);

\PROCESSADOR|ULA|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|ULA|Add1~17_sumout\ = SUM(( \PROCESSADOR|BANCOREG|registrador~15_q\ ) + ( (!\PROCESSADOR|DEC|Equal13~1_combout\ & (((!\MEM|ram~162_combout\)))) # (\PROCESSADOR|DEC|Equal13~1_combout\ & (((!\ROM1|memROM~21_combout\)) # 
-- (\PROCESSADOR|PC|DOUT\(8)))) ) + ( \PROCESSADOR|ULA|Add1~14\ ))
-- \PROCESSADOR|ULA|Add1~18\ = CARRY(( \PROCESSADOR|BANCOREG|registrador~15_q\ ) + ( (!\PROCESSADOR|DEC|Equal13~1_combout\ & (((!\MEM|ram~162_combout\)))) # (\PROCESSADOR|DEC|Equal13~1_combout\ & (((!\ROM1|memROM~21_combout\)) # (\PROCESSADOR|PC|DOUT\(8)))) 
-- ) + ( \PROCESSADOR|ULA|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001001010111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|DEC|ALT_INV_Equal13~1_combout\,
	datab => \PROCESSADOR|PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~21_combout\,
	datad => \PROCESSADOR|BANCOREG|ALT_INV_registrador~15_q\,
	dataf => \MEM|ALT_INV_ram~162_combout\,
	cin => \PROCESSADOR|ULA|Add1~14\,
	sumout => \PROCESSADOR|ULA|Add1~17_sumout\,
	cout => \PROCESSADOR|ULA|Add1~18\);

\PROCESSADOR|ULA|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|ULA|saida[3]~3_combout\ = ( \PROCESSADOR|ULA|Add0~13_sumout\ & ( \PROCESSADOR|ULA|Add1~17_sumout\ & ( (!\PROCESSADOR|DEC|saida[4]~2_combout\) # ((\PROCESSADOR|MUX1|saida_MUX[3]~3_combout\ & ((\PROCESSADOR|BANCOREG|registrador~15_q\) # 
-- (\PROCESSADOR|DEC|saida[3]~1_combout\)))) ) ) ) # ( !\PROCESSADOR|ULA|Add0~13_sumout\ & ( \PROCESSADOR|ULA|Add1~17_sumout\ & ( (!\PROCESSADOR|DEC|saida[4]~2_combout\ & (!\PROCESSADOR|DEC|saida[3]~1_combout\)) # (\PROCESSADOR|DEC|saida[4]~2_combout\ & 
-- (\PROCESSADOR|MUX1|saida_MUX[3]~3_combout\ & ((\PROCESSADOR|BANCOREG|registrador~15_q\) # (\PROCESSADOR|DEC|saida[3]~1_combout\)))) ) ) ) # ( \PROCESSADOR|ULA|Add0~13_sumout\ & ( !\PROCESSADOR|ULA|Add1~17_sumout\ & ( (!\PROCESSADOR|DEC|saida[4]~2_combout\ 
-- & (\PROCESSADOR|DEC|saida[3]~1_combout\)) # (\PROCESSADOR|DEC|saida[4]~2_combout\ & (\PROCESSADOR|MUX1|saida_MUX[3]~3_combout\ & ((\PROCESSADOR|BANCOREG|registrador~15_q\) # (\PROCESSADOR|DEC|saida[3]~1_combout\)))) ) ) ) # ( 
-- !\PROCESSADOR|ULA|Add0~13_sumout\ & ( !\PROCESSADOR|ULA|Add1~17_sumout\ & ( (\PROCESSADOR|DEC|saida[4]~2_combout\ & (\PROCESSADOR|MUX1|saida_MUX[3]~3_combout\ & ((\PROCESSADOR|BANCOREG|registrador~15_q\) # (\PROCESSADOR|DEC|saida[3]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111010100000101011110100000101001111111000011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|DEC|ALT_INV_saida[3]~1_combout\,
	datab => \PROCESSADOR|BANCOREG|ALT_INV_registrador~15_q\,
	datac => \PROCESSADOR|DEC|ALT_INV_saida[4]~2_combout\,
	datad => \PROCESSADOR|MUX1|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \PROCESSADOR|ULA|ALT_INV_Add0~13_sumout\,
	dataf => \PROCESSADOR|ULA|ALT_INV_Add1~17_sumout\,
	combout => \PROCESSADOR|ULA|saida[3]~3_combout\);

\PROCESSADOR|BANCOREG|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|ULA|saida[3]~3_combout\,
	ena => \PROCESSADOR|DEC|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROCESSADOR|BANCOREG|registrador~15_q\);

\PROCESSADOR|ULA|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|ULA|Add1~21_sumout\ = SUM(( (!\MEM|ram~167_combout\) # (\PROCESSADOR|DEC|Equal13~1_combout\) ) + ( \PROCESSADOR|BANCOREG|registrador~16_q\ ) + ( \PROCESSADOR|ULA|Add1~18\ ))
-- \PROCESSADOR|ULA|Add1~22\ = CARRY(( (!\MEM|ram~167_combout\) # (\PROCESSADOR|DEC|Equal13~1_combout\) ) + ( \PROCESSADOR|BANCOREG|registrador~16_q\ ) + ( \PROCESSADOR|ULA|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|DEC|ALT_INV_Equal13~1_combout\,
	datad => \MEM|ALT_INV_ram~167_combout\,
	dataf => \PROCESSADOR|BANCOREG|ALT_INV_registrador~16_q\,
	cin => \PROCESSADOR|ULA|Add1~18\,
	sumout => \PROCESSADOR|ULA|Add1~21_sumout\,
	cout => \PROCESSADOR|ULA|Add1~22\);

\PROCESSADOR|ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|ULA|Add0~17_sumout\ = SUM(( (!\PROCESSADOR|DEC|Equal13~1_combout\ & \MEM|ram~167_combout\) ) + ( \PROCESSADOR|BANCOREG|registrador~16_q\ ) + ( \PROCESSADOR|ULA|Add0~14\ ))
-- \PROCESSADOR|ULA|Add0~18\ = CARRY(( (!\PROCESSADOR|DEC|Equal13~1_combout\ & \MEM|ram~167_combout\) ) + ( \PROCESSADOR|BANCOREG|registrador~16_q\ ) + ( \PROCESSADOR|ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|DEC|ALT_INV_Equal13~1_combout\,
	datad => \MEM|ALT_INV_ram~167_combout\,
	dataf => \PROCESSADOR|BANCOREG|ALT_INV_registrador~16_q\,
	cin => \PROCESSADOR|ULA|Add0~14\,
	sumout => \PROCESSADOR|ULA|Add0~17_sumout\,
	cout => \PROCESSADOR|ULA|Add0~18\);

\PROCESSADOR|ULA|saida[4]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|ULA|saida[4]~16_combout\ = ( !\PROCESSADOR|DEC|saida[4]~2_combout\ & ( (((!\PROCESSADOR|DEC|saida[3]~1_combout\ & ((\PROCESSADOR|ULA|Add1~21_sumout\))) # (\PROCESSADOR|DEC|saida[3]~1_combout\ & (\PROCESSADOR|ULA|Add0~17_sumout\)))) ) ) # ( 
-- \PROCESSADOR|DEC|saida[4]~2_combout\ & ( (\MEM|ram~167_combout\ & (!\PROCESSADOR|DEC|Equal13~1_combout\ & (((\PROCESSADOR|DEC|saida[3]~1_combout\)) # (\PROCESSADOR|BANCOREG|registrador~16_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000001000000010000001111000011110100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~167_combout\,
	datab => \PROCESSADOR|DEC|ALT_INV_Equal13~1_combout\,
	datac => \PROCESSADOR|BANCOREG|ALT_INV_registrador~16_q\,
	datad => \PROCESSADOR|ULA|ALT_INV_Add1~21_sumout\,
	datae => \PROCESSADOR|DEC|ALT_INV_saida[4]~2_combout\,
	dataf => \PROCESSADOR|DEC|ALT_INV_saida[3]~1_combout\,
	datag => \PROCESSADOR|ULA|ALT_INV_Add0~17_sumout\,
	combout => \PROCESSADOR|ULA|saida[4]~16_combout\);

\PROCESSADOR|BANCOREG|registrador~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|ULA|saida[4]~16_combout\,
	ena => \PROCESSADOR|DEC|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROCESSADOR|BANCOREG|registrador~16_q\);

\MEM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~16_q\,
	ena => \MEM|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~19_q\);

\MEM|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~16_q\,
	ena => \MEM|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~51_q\);

\MEM|ram~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~16_q\,
	ena => \MEM|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~83_q\);

\MEM|ram~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~16_q\,
	ena => \MEM|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~115_q\);

\MEM|ram~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~163_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~115_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~83_q\ ) ) ) # ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & ( 
-- \MEM|ram~51_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & ( \MEM|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~19_q\,
	datab => \MEM|ALT_INV_ram~51_q\,
	datac => \MEM|ALT_INV_ram~83_q\,
	datad => \MEM|ALT_INV_ram~115_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \MEM|ram~163_combout\);

\MEM|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~16_q\,
	ena => \MEM|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~27_q\);

\MEM|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~16_q\,
	ena => \MEM|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~59_q\);

\MEM|ram~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~16_q\,
	ena => \MEM|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~91_q\);

\MEM|ram~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~16_q\,
	ena => \MEM|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~123_q\);

\MEM|ram~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~164_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~123_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~91_q\ ) ) ) # ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & ( 
-- \MEM|ram~59_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & ( \MEM|ram~27_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~27_q\,
	datab => \MEM|ALT_INV_ram~59_q\,
	datac => \MEM|ALT_INV_ram~91_q\,
	datad => \MEM|ALT_INV_ram~123_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \MEM|ram~164_combout\);

\MEM|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~16_q\,
	ena => \MEM|ram~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~35_q\);

\MEM|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~16_q\,
	ena => \MEM|ram~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~67_q\);

\MEM|ram~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~16_q\,
	ena => \MEM|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~99_q\);

\MEM|ram~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~16_q\,
	ena => \MEM|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~131_q\);

\MEM|ram~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~165_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~131_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~99_q\ ) ) ) # ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & ( 
-- \MEM|ram~67_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & ( \MEM|ram~35_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~35_q\,
	datab => \MEM|ALT_INV_ram~67_q\,
	datac => \MEM|ALT_INV_ram~99_q\,
	datad => \MEM|ALT_INV_ram~131_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \MEM|ram~165_combout\);

\MEM|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~16_q\,
	ena => \MEM|ram~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~43_q\);

\MEM|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~16_q\,
	ena => \MEM|ram~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~75_q\);

\MEM|ram~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~16_q\,
	ena => \MEM|ram~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~107_q\);

\MEM|ram~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~16_q\,
	ena => \MEM|ram~202_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~139_q\);

\MEM|ram~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~166_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~139_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~107_q\ ) ) ) # ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & ( 
-- \MEM|ram~75_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & ( \MEM|ram~43_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~43_q\,
	datab => \MEM|ALT_INV_ram~75_q\,
	datac => \MEM|ALT_INV_ram~107_q\,
	datad => \MEM|ALT_INV_ram~139_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \MEM|ram~166_combout\);

\MEM|ram~167\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~167_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~166_combout\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~165_combout\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( 
-- !\ROM1|memROM~13_combout\ & ( \MEM|ram~164_combout\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~13_combout\ & ( \MEM|ram~163_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~163_combout\,
	datab => \MEM|ALT_INV_ram~164_combout\,
	datac => \MEM|ALT_INV_ram~165_combout\,
	datad => \MEM|ALT_INV_ram~166_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \MEM|ram~167_combout\);

\PROCESSADOR|ULA|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|ULA|Add1~25_sumout\ = SUM(( (!\MEM|ram~172_combout\) # (\PROCESSADOR|DEC|Equal13~1_combout\) ) + ( \PROCESSADOR|BANCOREG|registrador~17_q\ ) + ( \PROCESSADOR|ULA|Add1~22\ ))
-- \PROCESSADOR|ULA|Add1~26\ = CARRY(( (!\MEM|ram~172_combout\) # (\PROCESSADOR|DEC|Equal13~1_combout\) ) + ( \PROCESSADOR|BANCOREG|registrador~17_q\ ) + ( \PROCESSADOR|ULA|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|DEC|ALT_INV_Equal13~1_combout\,
	datad => \MEM|ALT_INV_ram~172_combout\,
	dataf => \PROCESSADOR|BANCOREG|ALT_INV_registrador~17_q\,
	cin => \PROCESSADOR|ULA|Add1~22\,
	sumout => \PROCESSADOR|ULA|Add1~25_sumout\,
	cout => \PROCESSADOR|ULA|Add1~26\);

\PROCESSADOR|ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|ULA|Add0~21_sumout\ = SUM(( (!\PROCESSADOR|DEC|Equal13~1_combout\ & \MEM|ram~172_combout\) ) + ( \PROCESSADOR|BANCOREG|registrador~17_q\ ) + ( \PROCESSADOR|ULA|Add0~18\ ))
-- \PROCESSADOR|ULA|Add0~22\ = CARRY(( (!\PROCESSADOR|DEC|Equal13~1_combout\ & \MEM|ram~172_combout\) ) + ( \PROCESSADOR|BANCOREG|registrador~17_q\ ) + ( \PROCESSADOR|ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|DEC|ALT_INV_Equal13~1_combout\,
	datad => \MEM|ALT_INV_ram~172_combout\,
	dataf => \PROCESSADOR|BANCOREG|ALT_INV_registrador~17_q\,
	cin => \PROCESSADOR|ULA|Add0~18\,
	sumout => \PROCESSADOR|ULA|Add0~21_sumout\,
	cout => \PROCESSADOR|ULA|Add0~22\);

\PROCESSADOR|ULA|saida[5]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|ULA|saida[5]~12_combout\ = ( !\PROCESSADOR|DEC|saida[4]~2_combout\ & ( (((!\PROCESSADOR|DEC|saida[3]~1_combout\ & ((\PROCESSADOR|ULA|Add1~25_sumout\))) # (\PROCESSADOR|DEC|saida[3]~1_combout\ & (\PROCESSADOR|ULA|Add0~21_sumout\)))) ) ) # ( 
-- \PROCESSADOR|DEC|saida[4]~2_combout\ & ( (\MEM|ram~172_combout\ & (!\PROCESSADOR|DEC|Equal13~1_combout\ & (((\PROCESSADOR|DEC|saida[3]~1_combout\)) # (\PROCESSADOR|BANCOREG|registrador~17_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000001000000010000001111000011110100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~172_combout\,
	datab => \PROCESSADOR|DEC|ALT_INV_Equal13~1_combout\,
	datac => \PROCESSADOR|BANCOREG|ALT_INV_registrador~17_q\,
	datad => \PROCESSADOR|ULA|ALT_INV_Add1~25_sumout\,
	datae => \PROCESSADOR|DEC|ALT_INV_saida[4]~2_combout\,
	dataf => \PROCESSADOR|DEC|ALT_INV_saida[3]~1_combout\,
	datag => \PROCESSADOR|ULA|ALT_INV_Add0~21_sumout\,
	combout => \PROCESSADOR|ULA|saida[5]~12_combout\);

\PROCESSADOR|BANCOREG|registrador~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|ULA|saida[5]~12_combout\,
	ena => \PROCESSADOR|DEC|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROCESSADOR|BANCOREG|registrador~17_q\);

\MEM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~17_q\,
	ena => \MEM|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~20_q\);

\MEM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~17_q\,
	ena => \MEM|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~28_q\);

\MEM|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~17_q\,
	ena => \MEM|ram~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~36_q\);

\MEM|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~17_q\,
	ena => \MEM|ram~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~44_q\);

\MEM|ram~168\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~168_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~44_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~36_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~13_combout\ & ( 
-- \MEM|ram~28_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~13_combout\ & ( \MEM|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~20_q\,
	datab => \MEM|ALT_INV_ram~28_q\,
	datac => \MEM|ALT_INV_ram~36_q\,
	datad => \MEM|ALT_INV_ram~44_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \MEM|ram~168_combout\);

\MEM|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~17_q\,
	ena => \MEM|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~52_q\);

\MEM|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~17_q\,
	ena => \MEM|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~60_q\);

\MEM|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~17_q\,
	ena => \MEM|ram~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~68_q\);

\MEM|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~17_q\,
	ena => \MEM|ram~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~76_q\);

\MEM|ram~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~169_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~76_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~68_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~13_combout\ & ( 
-- \MEM|ram~60_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~13_combout\ & ( \MEM|ram~52_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~52_q\,
	datab => \MEM|ALT_INV_ram~60_q\,
	datac => \MEM|ALT_INV_ram~68_q\,
	datad => \MEM|ALT_INV_ram~76_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \MEM|ram~169_combout\);

\MEM|ram~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~17_q\,
	ena => \MEM|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~84_q\);

\MEM|ram~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~17_q\,
	ena => \MEM|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~92_q\);

\MEM|ram~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~17_q\,
	ena => \MEM|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~100_q\);

\MEM|ram~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~17_q\,
	ena => \MEM|ram~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~108_q\);

\MEM|ram~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~170_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~108_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~100_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~13_combout\ & ( 
-- \MEM|ram~92_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~13_combout\ & ( \MEM|ram~84_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~84_q\,
	datab => \MEM|ALT_INV_ram~92_q\,
	datac => \MEM|ALT_INV_ram~100_q\,
	datad => \MEM|ALT_INV_ram~108_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \MEM|ram~170_combout\);

\MEM|ram~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~17_q\,
	ena => \MEM|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~116_q\);

\MEM|ram~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~17_q\,
	ena => \MEM|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~124_q\);

\MEM|ram~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~17_q\,
	ena => \MEM|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~132_q\);

\MEM|ram~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~17_q\,
	ena => \MEM|ram~202_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~140_q\);

\MEM|ram~171\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~171_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~140_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~132_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~13_combout\ & ( 
-- \MEM|ram~124_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~13_combout\ & ( \MEM|ram~116_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~116_q\,
	datab => \MEM|ALT_INV_ram~124_q\,
	datac => \MEM|ALT_INV_ram~132_q\,
	datad => \MEM|ALT_INV_ram~140_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \MEM|ram~171_combout\);

\MEM|ram~172\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~172_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~171_combout\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~170_combout\ ) ) ) # ( \ROM1|memROM~15_combout\ & ( 
-- !\ROM1|memROM~17_combout\ & ( \MEM|ram~169_combout\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & ( \MEM|ram~168_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~168_combout\,
	datab => \MEM|ALT_INV_ram~169_combout\,
	datac => \MEM|ALT_INV_ram~170_combout\,
	datad => \MEM|ALT_INV_ram~171_combout\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \MEM|ram~172_combout\);

\PROCESSADOR|ULA|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|ULA|Add1~29_sumout\ = SUM(( (!\MEM|ram~177_combout\) # (\PROCESSADOR|DEC|Equal13~1_combout\) ) + ( \PROCESSADOR|BANCOREG|registrador~18_q\ ) + ( \PROCESSADOR|ULA|Add1~26\ ))
-- \PROCESSADOR|ULA|Add1~30\ = CARRY(( (!\MEM|ram~177_combout\) # (\PROCESSADOR|DEC|Equal13~1_combout\) ) + ( \PROCESSADOR|BANCOREG|registrador~18_q\ ) + ( \PROCESSADOR|ULA|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|DEC|ALT_INV_Equal13~1_combout\,
	datad => \MEM|ALT_INV_ram~177_combout\,
	dataf => \PROCESSADOR|BANCOREG|ALT_INV_registrador~18_q\,
	cin => \PROCESSADOR|ULA|Add1~26\,
	sumout => \PROCESSADOR|ULA|Add1~29_sumout\,
	cout => \PROCESSADOR|ULA|Add1~30\);

\PROCESSADOR|ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|ULA|Add0~25_sumout\ = SUM(( (!\PROCESSADOR|DEC|Equal13~1_combout\ & \MEM|ram~177_combout\) ) + ( \PROCESSADOR|BANCOREG|registrador~18_q\ ) + ( \PROCESSADOR|ULA|Add0~22\ ))
-- \PROCESSADOR|ULA|Add0~26\ = CARRY(( (!\PROCESSADOR|DEC|Equal13~1_combout\ & \MEM|ram~177_combout\) ) + ( \PROCESSADOR|BANCOREG|registrador~18_q\ ) + ( \PROCESSADOR|ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|DEC|ALT_INV_Equal13~1_combout\,
	datad => \MEM|ALT_INV_ram~177_combout\,
	dataf => \PROCESSADOR|BANCOREG|ALT_INV_registrador~18_q\,
	cin => \PROCESSADOR|ULA|Add0~22\,
	sumout => \PROCESSADOR|ULA|Add0~25_sumout\,
	cout => \PROCESSADOR|ULA|Add0~26\);

\PROCESSADOR|ULA|saida[6]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|ULA|saida[6]~8_combout\ = ( !\PROCESSADOR|DEC|saida[4]~2_combout\ & ( (((!\PROCESSADOR|DEC|saida[3]~1_combout\ & ((\PROCESSADOR|ULA|Add1~29_sumout\))) # (\PROCESSADOR|DEC|saida[3]~1_combout\ & (\PROCESSADOR|ULA|Add0~25_sumout\)))) ) ) # ( 
-- \PROCESSADOR|DEC|saida[4]~2_combout\ & ( (\MEM|ram~177_combout\ & (!\PROCESSADOR|DEC|Equal13~1_combout\ & (((\PROCESSADOR|DEC|saida[3]~1_combout\)) # (\PROCESSADOR|BANCOREG|registrador~18_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000001000000010000001111000011110100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~177_combout\,
	datab => \PROCESSADOR|DEC|ALT_INV_Equal13~1_combout\,
	datac => \PROCESSADOR|BANCOREG|ALT_INV_registrador~18_q\,
	datad => \PROCESSADOR|ULA|ALT_INV_Add1~29_sumout\,
	datae => \PROCESSADOR|DEC|ALT_INV_saida[4]~2_combout\,
	dataf => \PROCESSADOR|DEC|ALT_INV_saida[3]~1_combout\,
	datag => \PROCESSADOR|ULA|ALT_INV_Add0~25_sumout\,
	combout => \PROCESSADOR|ULA|saida[6]~8_combout\);

\PROCESSADOR|BANCOREG|registrador~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|ULA|saida[6]~8_combout\,
	ena => \PROCESSADOR|DEC|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROCESSADOR|BANCOREG|registrador~18_q\);

\MEM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~18_q\,
	ena => \MEM|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~21_q\);

\MEM|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~18_q\,
	ena => \MEM|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~53_q\);

\MEM|ram~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~18_q\,
	ena => \MEM|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~85_q\);

\MEM|ram~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~18_q\,
	ena => \MEM|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~117_q\);

\MEM|ram~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~173_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~117_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~85_q\ ) ) ) # ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & ( 
-- \MEM|ram~53_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & ( \MEM|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~21_q\,
	datab => \MEM|ALT_INV_ram~53_q\,
	datac => \MEM|ALT_INV_ram~85_q\,
	datad => \MEM|ALT_INV_ram~117_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \MEM|ram~173_combout\);

\MEM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~18_q\,
	ena => \MEM|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~29_q\);

\MEM|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~18_q\,
	ena => \MEM|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~61_q\);

\MEM|ram~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~18_q\,
	ena => \MEM|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~93_q\);

\MEM|ram~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~18_q\,
	ena => \MEM|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~125_q\);

\MEM|ram~174\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~174_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~125_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~93_q\ ) ) ) # ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & ( 
-- \MEM|ram~61_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & ( \MEM|ram~29_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~29_q\,
	datab => \MEM|ALT_INV_ram~61_q\,
	datac => \MEM|ALT_INV_ram~93_q\,
	datad => \MEM|ALT_INV_ram~125_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \MEM|ram~174_combout\);

\MEM|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~18_q\,
	ena => \MEM|ram~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~37_q\);

\MEM|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~18_q\,
	ena => \MEM|ram~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~69_q\);

\MEM|ram~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~18_q\,
	ena => \MEM|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~101_q\);

\MEM|ram~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~18_q\,
	ena => \MEM|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~133_q\);

\MEM|ram~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~175_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~133_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~101_q\ ) ) ) # ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & ( 
-- \MEM|ram~69_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & ( \MEM|ram~37_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~37_q\,
	datab => \MEM|ALT_INV_ram~69_q\,
	datac => \MEM|ALT_INV_ram~101_q\,
	datad => \MEM|ALT_INV_ram~133_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \MEM|ram~175_combout\);

\MEM|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~18_q\,
	ena => \MEM|ram~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~45_q\);

\MEM|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~18_q\,
	ena => \MEM|ram~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~77_q\);

\MEM|ram~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~18_q\,
	ena => \MEM|ram~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~109_q\);

\MEM|ram~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~18_q\,
	ena => \MEM|ram~202_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~141_q\);

\MEM|ram~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~176_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~141_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~109_q\ ) ) ) # ( \ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & ( 
-- \MEM|ram~77_q\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & ( \MEM|ram~45_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~45_q\,
	datab => \MEM|ALT_INV_ram~77_q\,
	datac => \MEM|ALT_INV_ram~109_q\,
	datad => \MEM|ALT_INV_ram~141_q\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \MEM|ram~176_combout\);

\MEM|ram~177\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~177_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~176_combout\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~175_combout\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( 
-- !\ROM1|memROM~13_combout\ & ( \MEM|ram~174_combout\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~13_combout\ & ( \MEM|ram~173_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~173_combout\,
	datab => \MEM|ALT_INV_ram~174_combout\,
	datac => \MEM|ALT_INV_ram~175_combout\,
	datad => \MEM|ALT_INV_ram~176_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \MEM|ram~177_combout\);

\PROCESSADOR|ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|ULA|Add0~29_sumout\ = SUM(( (!\PROCESSADOR|DEC|Equal13~1_combout\ & \MEM|ram~182_combout\) ) + ( \PROCESSADOR|BANCOREG|registrador~19_q\ ) + ( \PROCESSADOR|ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|DEC|ALT_INV_Equal13~1_combout\,
	datad => \MEM|ALT_INV_ram~182_combout\,
	dataf => \PROCESSADOR|BANCOREG|ALT_INV_registrador~19_q\,
	cin => \PROCESSADOR|ULA|Add0~26\,
	sumout => \PROCESSADOR|ULA|Add0~29_sumout\);

\PROCESSADOR|ULA|saida[7]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|ULA|saida[7]~4_combout\ = ( !\PROCESSADOR|DEC|saida[4]~2_combout\ & ( (((!\PROCESSADOR|DEC|saida[3]~1_combout\ & ((\PROCESSADOR|ULA|Add1~1_sumout\))) # (\PROCESSADOR|DEC|saida[3]~1_combout\ & (\PROCESSADOR|ULA|Add0~29_sumout\)))) ) ) # ( 
-- \PROCESSADOR|DEC|saida[4]~2_combout\ & ( (\MEM|ram~182_combout\ & (!\PROCESSADOR|DEC|Equal13~1_combout\ & (((\PROCESSADOR|DEC|saida[3]~1_combout\)) # (\PROCESSADOR|BANCOREG|registrador~19_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000001000000010000001111000011110100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~182_combout\,
	datab => \PROCESSADOR|DEC|ALT_INV_Equal13~1_combout\,
	datac => \PROCESSADOR|BANCOREG|ALT_INV_registrador~19_q\,
	datad => \PROCESSADOR|ULA|ALT_INV_Add1~1_sumout\,
	datae => \PROCESSADOR|DEC|ALT_INV_saida[4]~2_combout\,
	dataf => \PROCESSADOR|DEC|ALT_INV_saida[3]~1_combout\,
	datag => \PROCESSADOR|ULA|ALT_INV_Add0~29_sumout\,
	combout => \PROCESSADOR|ULA|saida[7]~4_combout\);

\PROCESSADOR|BANCOREG|registrador~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|ULA|saida[7]~4_combout\,
	ena => \PROCESSADOR|DEC|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROCESSADOR|BANCOREG|registrador~19_q\);

\MEM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~19_q\,
	ena => \MEM|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~22_q\);

\MEM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~19_q\,
	ena => \MEM|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~30_q\);

\MEM|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~19_q\,
	ena => \MEM|ram~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~38_q\);

\MEM|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~19_q\,
	ena => \MEM|ram~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~46_q\);

\MEM|ram~178\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~178_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~46_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~38_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~13_combout\ & ( 
-- \MEM|ram~30_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~13_combout\ & ( \MEM|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~22_q\,
	datab => \MEM|ALT_INV_ram~30_q\,
	datac => \MEM|ALT_INV_ram~38_q\,
	datad => \MEM|ALT_INV_ram~46_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \MEM|ram~178_combout\);

\MEM|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~19_q\,
	ena => \MEM|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~54_q\);

\MEM|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~19_q\,
	ena => \MEM|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~62_q\);

\MEM|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~19_q\,
	ena => \MEM|ram~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~70_q\);

\MEM|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~19_q\,
	ena => \MEM|ram~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~78_q\);

\MEM|ram~179\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~179_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~78_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~70_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~13_combout\ & ( 
-- \MEM|ram~62_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~13_combout\ & ( \MEM|ram~54_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~54_q\,
	datab => \MEM|ALT_INV_ram~62_q\,
	datac => \MEM|ALT_INV_ram~70_q\,
	datad => \MEM|ALT_INV_ram~78_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \MEM|ram~179_combout\);

\MEM|ram~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~19_q\,
	ena => \MEM|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~86_q\);

\MEM|ram~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~19_q\,
	ena => \MEM|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~94_q\);

\MEM|ram~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~19_q\,
	ena => \MEM|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~102_q\);

\MEM|ram~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~19_q\,
	ena => \MEM|ram~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~110_q\);

\MEM|ram~180\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~180_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~110_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~102_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~13_combout\ & ( 
-- \MEM|ram~94_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~13_combout\ & ( \MEM|ram~86_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~86_q\,
	datab => \MEM|ALT_INV_ram~94_q\,
	datac => \MEM|ALT_INV_ram~102_q\,
	datad => \MEM|ALT_INV_ram~110_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \MEM|ram~180_combout\);

\MEM|ram~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~19_q\,
	ena => \MEM|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~118_q\);

\MEM|ram~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~19_q\,
	ena => \MEM|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~126_q\);

\MEM|ram~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~19_q\,
	ena => \MEM|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~134_q\);

\MEM|ram~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|BANCOREG|registrador~19_q\,
	ena => \MEM|ram~202_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM|ram~142_q\);

\MEM|ram~181\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~181_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~142_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~13_combout\ & ( \MEM|ram~134_q\ ) ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~13_combout\ & ( 
-- \MEM|ram~126_q\ ) ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~13_combout\ & ( \MEM|ram~118_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~118_q\,
	datab => \MEM|ALT_INV_ram~126_q\,
	datac => \MEM|ALT_INV_ram~134_q\,
	datad => \MEM|ALT_INV_ram~142_q\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \MEM|ram~181_combout\);

\MEM|ram~182\ : cyclonev_lcell_comb
-- Equation(s):
-- \MEM|ram~182_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~181_combout\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~17_combout\ & ( \MEM|ram~180_combout\ ) ) ) # ( \ROM1|memROM~15_combout\ & ( 
-- !\ROM1|memROM~17_combout\ & ( \MEM|ram~179_combout\ ) ) ) # ( !\ROM1|memROM~15_combout\ & ( !\ROM1|memROM~17_combout\ & ( \MEM|ram~178_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEM|ALT_INV_ram~178_combout\,
	datab => \MEM|ALT_INV_ram~179_combout\,
	datac => \MEM|ALT_INV_ram~180_combout\,
	datad => \MEM|ALT_INV_ram~181_combout\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \MEM|ram~182_combout\);

\PROCESSADOR|ULA|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|ULA|Add1~1_sumout\ = SUM(( (!\MEM|ram~182_combout\) # (\PROCESSADOR|DEC|Equal13~1_combout\) ) + ( \PROCESSADOR|BANCOREG|registrador~19_q\ ) + ( \PROCESSADOR|ULA|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|DEC|ALT_INV_Equal13~1_combout\,
	datad => \MEM|ALT_INV_ram~182_combout\,
	dataf => \PROCESSADOR|BANCOREG|ALT_INV_registrador~19_q\,
	cin => \PROCESSADOR|ULA|Add1~30\,
	sumout => \PROCESSADOR|ULA|Add1~1_sumout\);

\PROCESSADOR|FFZ|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|FFZ|DOUT~1_combout\ = (!\ROM1|memROM~11_combout\ & (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~9_combout\ & !\ROM1|memROM~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \PROCESSADOR|FFZ|DOUT~1_combout\);

\PROCESSADOR|FFZ|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|FFZ|DOUT~2_combout\ = ( \PROCESSADOR|FFZ|DOUT~q\ & ( \PROCESSADOR|FFZ|DOUT~1_combout\ & ( (!\PROCESSADOR|ULA|Add1~5_sumout\ & (!\PROCESSADOR|ULA|Add1~9_sumout\ & (!\PROCESSADOR|ULA|Add1~13_sumout\ & !\PROCESSADOR|ULA|Add1~17_sumout\))) ) ) ) 
-- # ( !\PROCESSADOR|FFZ|DOUT~q\ & ( \PROCESSADOR|FFZ|DOUT~1_combout\ & ( (!\PROCESSADOR|ULA|Add1~5_sumout\ & (!\PROCESSADOR|ULA|Add1~9_sumout\ & (!\PROCESSADOR|ULA|Add1~13_sumout\ & !\PROCESSADOR|ULA|Add1~17_sumout\))) ) ) ) # ( \PROCESSADOR|FFZ|DOUT~q\ & ( 
-- !\PROCESSADOR|FFZ|DOUT~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111110000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|ULA|ALT_INV_Add1~5_sumout\,
	datab => \PROCESSADOR|ULA|ALT_INV_Add1~9_sumout\,
	datac => \PROCESSADOR|ULA|ALT_INV_Add1~13_sumout\,
	datad => \PROCESSADOR|ULA|ALT_INV_Add1~17_sumout\,
	datae => \PROCESSADOR|FFZ|ALT_INV_DOUT~q\,
	dataf => \PROCESSADOR|FFZ|ALT_INV_DOUT~1_combout\,
	combout => \PROCESSADOR|FFZ|DOUT~2_combout\);

\PROCESSADOR|FFZ|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|FFZ|DOUT~0_combout\ = ( \PROCESSADOR|FFZ|DOUT~1_combout\ & ( \PROCESSADOR|FFZ|DOUT~2_combout\ & ( (!\PROCESSADOR|ULA|Add1~1_sumout\ & (!\PROCESSADOR|ULA|Add1~21_sumout\ & (!\PROCESSADOR|ULA|Add1~25_sumout\ & 
-- !\PROCESSADOR|ULA|Add1~29_sumout\))) ) ) ) # ( !\PROCESSADOR|FFZ|DOUT~1_combout\ & ( \PROCESSADOR|FFZ|DOUT~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|ULA|ALT_INV_Add1~1_sumout\,
	datab => \PROCESSADOR|ULA|ALT_INV_Add1~21_sumout\,
	datac => \PROCESSADOR|ULA|ALT_INV_Add1~25_sumout\,
	datad => \PROCESSADOR|ULA|ALT_INV_Add1~29_sumout\,
	datae => \PROCESSADOR|FFZ|ALT_INV_DOUT~1_combout\,
	dataf => \PROCESSADOR|FFZ|ALT_INV_DOUT~2_combout\,
	combout => \PROCESSADOR|FFZ|DOUT~0_combout\);

\PROCESSADOR|FFZ|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|FFZ|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROCESSADOR|FFZ|DOUT~q\);

\PROCESSADOR|LOG_DESVIO|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|LOG_DESVIO|saida[0]~0_combout\ = ( \ROM1|memROM~6_combout\ & ( \PROCESSADOR|FFZ|DOUT~q\ & ( (!\ROM1|memROM~11_combout\ & (\ROM1|memROM~9_combout\ & ((!\ROM1|memROM~4_combout\) # (\PROCESSADOR|FFLT|DOUT~q\)))) # (\ROM1|memROM~11_combout\ & 
-- (((\ROM1|memROM~4_combout\ & !\ROM1|memROM~9_combout\)))) ) ) ) # ( !\ROM1|memROM~6_combout\ & ( \PROCESSADOR|FFZ|DOUT~q\ & ( (\ROM1|memROM~11_combout\ & (\ROM1|memROM~4_combout\ & !\ROM1|memROM~9_combout\)) ) ) ) # ( \ROM1|memROM~6_combout\ & ( 
-- !\PROCESSADOR|FFZ|DOUT~q\ & ( (!\ROM1|memROM~11_combout\ & (\ROM1|memROM~9_combout\ & ((!\ROM1|memROM~4_combout\) # (\PROCESSADOR|FFLT|DOUT~q\)))) ) ) ) # ( !\ROM1|memROM~6_combout\ & ( !\PROCESSADOR|FFZ|DOUT~q\ & ( (\ROM1|memROM~11_combout\ & 
-- (\ROM1|memROM~4_combout\ & !\ROM1|memROM~9_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000001100010000000011000000000000001111000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|FFLT|ALT_INV_DOUT~q\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \PROCESSADOR|FFZ|ALT_INV_DOUT~q\,
	combout => \PROCESSADOR|LOG_DESVIO|saida[0]~0_combout\);

\PROCESSADOR|REGRET|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|incrementaPC|Add0~21_sumout\,
	ena => \PROCESSADOR|DEC|Equal13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROCESSADOR|REGRET|DOUT\(5));

\PROCESSADOR|MUXJUMP|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|MUXJUMP|saida_MUX[5]~5_combout\ = (!\PROCESSADOR|LOG_DESVIO|saida[0]~0_combout\ & ((!\PROCESSADOR|DEC|saida[9]~0_combout\ & ((\PROCESSADOR|incrementaPC|Add0~21_sumout\))) # (\PROCESSADOR|DEC|saida[9]~0_combout\ & 
-- (\PROCESSADOR|REGRET|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|DEC|ALT_INV_saida[9]~0_combout\,
	datab => \PROCESSADOR|LOG_DESVIO|ALT_INV_saida[0]~0_combout\,
	datac => \PROCESSADOR|REGRET|ALT_INV_DOUT\(5),
	datad => \PROCESSADOR|incrementaPC|ALT_INV_Add0~21_sumout\,
	combout => \PROCESSADOR|MUXJUMP|saida_MUX[5]~5_combout\);

\PROCESSADOR|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|MUXJUMP|saida_MUX[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROCESSADOR|PC|DOUT\(5));

\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = (!\PROCESSADOR|PC|DOUT\(5) & (!\PROCESSADOR|PC|DOUT\(6) & (!\PROCESSADOR|PC|DOUT\(7) & !\PROCESSADOR|PC|DOUT\(8))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|PC|ALT_INV_DOUT\(5),
	datab => \PROCESSADOR|PC|ALT_INV_DOUT\(6),
	datac => \PROCESSADOR|PC|ALT_INV_DOUT\(7),
	datad => \PROCESSADOR|PC|ALT_INV_DOUT\(8),
	combout => \ROM1|memROM~8_combout\);

\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = (\ROM1|memROM~7_combout\ & \ROM1|memROM~8_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \ROM1|memROM~9_combout\);

\PROCESSADOR|DEC|Equal13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|DEC|Equal13~2_combout\ = (!\ROM1|memROM~11_combout\ & (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~9_combout\ & \ROM1|memROM~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \PROCESSADOR|DEC|Equal13~2_combout\);

\PROCESSADOR|REGRET|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|incrementaPC|Add0~9_sumout\,
	ena => \PROCESSADOR|DEC|Equal13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROCESSADOR|REGRET|DOUT\(2));

\PROCESSADOR|MUXJUMP|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|MUXJUMP|saida_MUX[2]~2_combout\ = ( \PROCESSADOR|REGRET|DOUT\(2) & ( (!\PROCESSADOR|PC|DOUT[0]~0_combout\ & (((\PROCESSADOR|incrementaPC|Add0~9_sumout\)) # (\PROCESSADOR|DEC|saida[9]~0_combout\))) # (\PROCESSADOR|PC|DOUT[0]~0_combout\ & 
-- (!\PROCESSADOR|DEC|saida[9]~0_combout\ & (\ROM1|memROM~15_combout\))) ) ) # ( !\PROCESSADOR|REGRET|DOUT\(2) & ( (!\PROCESSADOR|DEC|saida[9]~0_combout\ & ((!\PROCESSADOR|PC|DOUT[0]~0_combout\ & ((\PROCESSADOR|incrementaPC|Add0~9_sumout\))) # 
-- (\PROCESSADOR|PC|DOUT[0]~0_combout\ & (\ROM1|memROM~15_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000000100100011000010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|PC|ALT_INV_DOUT[0]~0_combout\,
	datab => \PROCESSADOR|DEC|ALT_INV_saida[9]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \PROCESSADOR|incrementaPC|ALT_INV_Add0~9_sumout\,
	datae => \PROCESSADOR|REGRET|ALT_INV_DOUT\(2),
	combout => \PROCESSADOR|MUXJUMP|saida_MUX[2]~2_combout\);

\PROCESSADOR|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|MUXJUMP|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROCESSADOR|PC|DOUT\(2));

\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = (!\PROCESSADOR|PC|DOUT\(2) & (!\PROCESSADOR|PC|DOUT\(1) $ (((\PROCESSADOR|PC|DOUT\(0) & \PROCESSADOR|PC|DOUT\(3)))))) # (\PROCESSADOR|PC|DOUT\(2) & (\PROCESSADOR|PC|DOUT\(1) & (!\PROCESSADOR|PC|DOUT\(0) $ 
-- (\PROCESSADOR|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001010010001110000101001000111000010100100011100001010010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|PC|ALT_INV_DOUT\(0),
	datab => \PROCESSADOR|PC|ALT_INV_DOUT\(1),
	datac => \PROCESSADOR|PC|ALT_INV_DOUT\(2),
	datad => \PROCESSADOR|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~12_combout\);

\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = (!\PROCESSADOR|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & \ROM1|memROM~12_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \ROM1|memROM~13_combout\);

\PROCESSADOR|REGRET|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|incrementaPC|Add0~5_sumout\,
	ena => \PROCESSADOR|DEC|Equal13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROCESSADOR|REGRET|DOUT\(1));

\PROCESSADOR|MUXJUMP|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|MUXJUMP|saida_MUX[1]~1_combout\ = ( \PROCESSADOR|REGRET|DOUT\(1) & ( (!\PROCESSADOR|PC|DOUT[0]~0_combout\ & (((\PROCESSADOR|incrementaPC|Add0~5_sumout\)) # (\PROCESSADOR|DEC|saida[9]~0_combout\))) # (\PROCESSADOR|PC|DOUT[0]~0_combout\ & 
-- (!\PROCESSADOR|DEC|saida[9]~0_combout\ & (\ROM1|memROM~13_combout\))) ) ) # ( !\PROCESSADOR|REGRET|DOUT\(1) & ( (!\PROCESSADOR|DEC|saida[9]~0_combout\ & ((!\PROCESSADOR|PC|DOUT[0]~0_combout\ & ((\PROCESSADOR|incrementaPC|Add0~5_sumout\))) # 
-- (\PROCESSADOR|PC|DOUT[0]~0_combout\ & (\ROM1|memROM~13_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000000100100011000010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|PC|ALT_INV_DOUT[0]~0_combout\,
	datab => \PROCESSADOR|DEC|ALT_INV_saida[9]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \PROCESSADOR|incrementaPC|ALT_INV_Add0~5_sumout\,
	datae => \PROCESSADOR|REGRET|ALT_INV_DOUT\(1),
	combout => \PROCESSADOR|MUXJUMP|saida_MUX[1]~1_combout\);

\PROCESSADOR|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|MUXJUMP|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROCESSADOR|PC|DOUT\(1));

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = (\PROCESSADOR|PC|DOUT\(3) & ((!\PROCESSADOR|PC|DOUT\(0) & ((\PROCESSADOR|PC|DOUT\(2)))) # (\PROCESSADOR|PC|DOUT\(0) & (!\PROCESSADOR|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001001110000000000100111000000000010011100000000001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|PC|ALT_INV_DOUT\(0),
	datab => \PROCESSADOR|PC|ALT_INV_DOUT\(1),
	datac => \PROCESSADOR|PC|ALT_INV_DOUT\(2),
	datad => \PROCESSADOR|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~3_combout\);

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = (!\PROCESSADOR|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~4_combout\);

\PROCESSADOR|FFLT|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|FFLT|DOUT~0_combout\ = ( \ROM1|memROM~6_combout\ & ( \PROCESSADOR|ULA|Add1~1_sumout\ & ( \PROCESSADOR|FFLT|DOUT~q\ ) ) ) # ( !\ROM1|memROM~6_combout\ & ( \PROCESSADOR|ULA|Add1~1_sumout\ & ( ((!\ROM1|memROM~11_combout\ & 
-- (\ROM1|memROM~4_combout\ & \ROM1|memROM~9_combout\))) # (\PROCESSADOR|FFLT|DOUT~q\) ) ) ) # ( \ROM1|memROM~6_combout\ & ( !\PROCESSADOR|ULA|Add1~1_sumout\ & ( \PROCESSADOR|FFLT|DOUT~q\ ) ) ) # ( !\ROM1|memROM~6_combout\ & ( 
-- !\PROCESSADOR|ULA|Add1~1_sumout\ & ( (\PROCESSADOR|FFLT|DOUT~q\ & (((!\ROM1|memROM~4_combout\) # (!\ROM1|memROM~9_combout\)) # (\ROM1|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010001010101010101010101010101010111010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|FFLT|ALT_INV_DOUT~q\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \PROCESSADOR|ULA|ALT_INV_Add1~1_sumout\,
	combout => \PROCESSADOR|FFLT|DOUT~0_combout\);

\PROCESSADOR|FFLT|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|FFLT|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROCESSADOR|FFLT|DOUT~q\);

\PROCESSADOR|PC|DOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|PC|DOUT[0]~0_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~11_combout\ & (\PROCESSADOR|FFLT|DOUT~q\ & (\ROM1|memROM~9_combout\))) # (\ROM1|memROM~11_combout\ & (((!\ROM1|memROM~9_combout\ & 
-- \PROCESSADOR|FFZ|DOUT~q\)))) ) ) ) # ( !\ROM1|memROM~4_combout\ & ( \ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~11_combout\ & \ROM1|memROM~9_combout\) ) ) ) # ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~6_combout\ & ( (\ROM1|memROM~11_combout\ & 
-- !\ROM1|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000001100000011000000010000110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|FFLT|ALT_INV_DOUT~q\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \PROCESSADOR|FFZ|ALT_INV_DOUT~q\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \PROCESSADOR|PC|DOUT[0]~0_combout\);

\PROCESSADOR|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|incrementaPC|Add0~13_sumout\ = SUM(( \PROCESSADOR|PC|DOUT\(3) ) + ( GND ) + ( \PROCESSADOR|incrementaPC|Add0~10\ ))
-- \PROCESSADOR|incrementaPC|Add0~14\ = CARRY(( \PROCESSADOR|PC|DOUT\(3) ) + ( GND ) + ( \PROCESSADOR|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PROCESSADOR|PC|ALT_INV_DOUT\(3),
	cin => \PROCESSADOR|incrementaPC|Add0~10\,
	sumout => \PROCESSADOR|incrementaPC|Add0~13_sumout\,
	cout => \PROCESSADOR|incrementaPC|Add0~14\);

\PROCESSADOR|REGRET|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|incrementaPC|Add0~13_sumout\,
	ena => \PROCESSADOR|DEC|Equal13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROCESSADOR|REGRET|DOUT\(3));

\PROCESSADOR|MUXJUMP|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|MUXJUMP|saida_MUX[3]~3_combout\ = ( \PROCESSADOR|REGRET|DOUT\(3) & ( (!\PROCESSADOR|PC|DOUT[0]~0_combout\ & (((\PROCESSADOR|incrementaPC|Add0~13_sumout\)) # (\PROCESSADOR|DEC|saida[9]~0_combout\))) # (\PROCESSADOR|PC|DOUT[0]~0_combout\ & 
-- (!\PROCESSADOR|DEC|saida[9]~0_combout\ & (\ROM1|memROM~17_combout\))) ) ) # ( !\PROCESSADOR|REGRET|DOUT\(3) & ( (!\PROCESSADOR|DEC|saida[9]~0_combout\ & ((!\PROCESSADOR|PC|DOUT[0]~0_combout\ & ((\PROCESSADOR|incrementaPC|Add0~13_sumout\))) # 
-- (\PROCESSADOR|PC|DOUT[0]~0_combout\ & (\ROM1|memROM~17_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000000100100011000010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|PC|ALT_INV_DOUT[0]~0_combout\,
	datab => \PROCESSADOR|DEC|ALT_INV_saida[9]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \PROCESSADOR|incrementaPC|ALT_INV_Add0~13_sumout\,
	datae => \PROCESSADOR|REGRET|ALT_INV_DOUT\(3),
	combout => \PROCESSADOR|MUXJUMP|saida_MUX[3]~3_combout\);

\PROCESSADOR|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|MUXJUMP|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROCESSADOR|PC|DOUT\(3));

\PROCESSADOR|REGRET|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|incrementaPC|Add0~17_sumout\,
	ena => \PROCESSADOR|DEC|Equal13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROCESSADOR|REGRET|DOUT\(4));

\PROCESSADOR|MUXJUMP|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|MUXJUMP|saida_MUX[4]~4_combout\ = (!\PROCESSADOR|LOG_DESVIO|saida[0]~0_combout\ & ((!\PROCESSADOR|DEC|saida[9]~0_combout\ & ((\PROCESSADOR|incrementaPC|Add0~17_sumout\))) # (\PROCESSADOR|DEC|saida[9]~0_combout\ & 
-- (\PROCESSADOR|REGRET|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110110000000000011011000000000001101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|DEC|ALT_INV_saida[9]~0_combout\,
	datab => \PROCESSADOR|REGRET|ALT_INV_DOUT\(4),
	datac => \PROCESSADOR|incrementaPC|ALT_INV_Add0~17_sumout\,
	datad => \PROCESSADOR|LOG_DESVIO|ALT_INV_saida[0]~0_combout\,
	combout => \PROCESSADOR|MUXJUMP|saida_MUX[4]~4_combout\);

\PROCESSADOR|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|MUXJUMP|saida_MUX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROCESSADOR|PC|DOUT\(4));

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = (!\PROCESSADOR|PC|DOUT\(4) & (!\PROCESSADOR|PC|DOUT\(5) & (!\PROCESSADOR|PC|DOUT\(6) & !\PROCESSADOR|PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|PC|ALT_INV_DOUT\(4),
	datab => \PROCESSADOR|PC|ALT_INV_DOUT\(5),
	datac => \PROCESSADOR|PC|ALT_INV_DOUT\(6),
	datad => \PROCESSADOR|PC|ALT_INV_DOUT\(7),
	combout => \ROM1|memROM~1_combout\);

\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = (!\PROCESSADOR|PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & \ROM1|memROM~10_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \ROM1|memROM~11_combout\);

\PROCESSADOR|DEC|saida[9]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|DEC|saida[9]~0_combout\ = (\ROM1|memROM~11_combout\ & (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~9_combout\ & !\ROM1|memROM~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \PROCESSADOR|DEC|saida[9]~0_combout\);

\PROCESSADOR|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|incrementaPC|Add0~33_sumout\ = SUM(( \PROCESSADOR|PC|DOUT\(8) ) + ( GND ) + ( \PROCESSADOR|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PROCESSADOR|PC|ALT_INV_DOUT\(8),
	cin => \PROCESSADOR|incrementaPC|Add0~30\,
	sumout => \PROCESSADOR|incrementaPC|Add0~33_sumout\);

\PROCESSADOR|REGRET|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|incrementaPC|Add0~33_sumout\,
	ena => \PROCESSADOR|DEC|Equal13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROCESSADOR|REGRET|DOUT\(8));

\PROCESSADOR|MUXJUMP|saida_MUX[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|MUXJUMP|saida_MUX[8]~8_combout\ = (!\PROCESSADOR|LOG_DESVIO|saida[0]~0_combout\ & ((!\PROCESSADOR|DEC|saida[9]~0_combout\ & ((\PROCESSADOR|incrementaPC|Add0~33_sumout\))) # (\PROCESSADOR|DEC|saida[9]~0_combout\ & 
-- (\PROCESSADOR|REGRET|DOUT\(8)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|DEC|ALT_INV_saida[9]~0_combout\,
	datab => \PROCESSADOR|LOG_DESVIO|ALT_INV_saida[0]~0_combout\,
	datac => \PROCESSADOR|REGRET|ALT_INV_DOUT\(8),
	datad => \PROCESSADOR|incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \PROCESSADOR|MUXJUMP|saida_MUX[8]~8_combout\);

\PROCESSADOR|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|MUXJUMP|saida_MUX[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROCESSADOR|PC|DOUT\(8));

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = (!\PROCESSADOR|PC|DOUT\(8) & (!\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PROCESSADOR|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~2_combout\);

\PROCESSADOR|REGRET|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|incrementaPC|Add0~1_sumout\,
	ena => \PROCESSADOR|DEC|Equal13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROCESSADOR|REGRET|DOUT\(0));

\PROCESSADOR|MUXJUMP|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PROCESSADOR|MUXJUMP|saida_MUX[0]~0_combout\ = ( \PROCESSADOR|REGRET|DOUT\(0) & ( (!\PROCESSADOR|PC|DOUT[0]~0_combout\ & (((\PROCESSADOR|incrementaPC|Add0~1_sumout\) # (\PROCESSADOR|DEC|saida[9]~0_combout\)))) # (\PROCESSADOR|PC|DOUT[0]~0_combout\ & 
-- (\ROM1|memROM~2_combout\ & (!\PROCESSADOR|DEC|saida[9]~0_combout\))) ) ) # ( !\PROCESSADOR|REGRET|DOUT\(0) & ( (!\PROCESSADOR|DEC|saida[9]~0_combout\ & ((!\PROCESSADOR|PC|DOUT[0]~0_combout\ & ((\PROCESSADOR|incrementaPC|Add0~1_sumout\))) # 
-- (\PROCESSADOR|PC|DOUT[0]~0_combout\ & (\ROM1|memROM~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000111001101110000010000110100000001110011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \PROCESSADOR|PC|ALT_INV_DOUT[0]~0_combout\,
	datac => \PROCESSADOR|DEC|ALT_INV_saida[9]~0_combout\,
	datad => \PROCESSADOR|incrementaPC|ALT_INV_Add0~1_sumout\,
	datae => \PROCESSADOR|REGRET|ALT_INV_DOUT\(0),
	combout => \PROCESSADOR|MUXJUMP|saida_MUX[0]~0_combout\);

\PROCESSADOR|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PROCESSADOR|MUXJUMP|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROCESSADOR|PC|DOUT\(0));

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

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

\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

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

ww_PC_OUT(0) <= \PC_OUT[0]~output_o\;

ww_PC_OUT(1) <= \PC_OUT[1]~output_o\;

ww_PC_OUT(2) <= \PC_OUT[2]~output_o\;

ww_PC_OUT(3) <= \PC_OUT[3]~output_o\;

ww_PC_OUT(4) <= \PC_OUT[4]~output_o\;

ww_PC_OUT(5) <= \PC_OUT[5]~output_o\;

ww_PC_OUT(6) <= \PC_OUT[6]~output_o\;

ww_PC_OUT(7) <= \PC_OUT[7]~output_o\;

ww_PC_OUT(8) <= \PC_OUT[8]~output_o\;

ww_CF <= \CF~output_o\;

ww_SAIDA(0) <= \SAIDA[0]~output_o\;

ww_SAIDA(1) <= \SAIDA[1]~output_o\;

ww_SAIDA(2) <= \SAIDA[2]~output_o\;

ww_SAIDA(3) <= \SAIDA[3]~output_o\;

ww_SAIDA(4) <= \SAIDA[4]~output_o\;

ww_SAIDA(5) <= \SAIDA[5]~output_o\;

ww_SAIDA(6) <= \SAIDA[6]~output_o\;

ww_SAIDA(7) <= \SAIDA[7]~output_o\;
END structure;


