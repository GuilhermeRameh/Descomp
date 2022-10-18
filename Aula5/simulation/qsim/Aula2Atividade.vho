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

-- DATE "10/13/2022 20:40:27"

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

ENTITY 	Aula2Atividade IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Aula2Atividade;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[1]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[2]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[3]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[4]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[5]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[6]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[7]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[8]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[9]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[0]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[2]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[3]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[4]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[5]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[6]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[0]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[1]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[2]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[3]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[4]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[5]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[6]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[0]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[1]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[2]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[3]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[4]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[5]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[6]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[0]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[1]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[2]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[3]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[4]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[5]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[6]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[0]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[1]	=>  Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[2]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[3]	=>  Location: PIN_U16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[4]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[5]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[6]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[0]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[1]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[2]	=>  Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[3]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[4]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[5]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[6]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Aula2Atividade IS
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
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
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
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \incrementaPC|Add0~10\ : std_logic;
SIGNAL \incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~14\ : std_logic;
SIGNAL \incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \decoderInstru|Equal4~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~18\ : std_logic;
SIGNAL \incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \MUX2|saida_MUX[5]~7_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~22\ : std_logic;
SIGNAL \incrementaPC|Add0~26\ : std_logic;
SIGNAL \incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[7]~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \decoderInstru|saida~3_combout\ : std_logic;
SIGNAL \MUX2|saida_MUX[4]~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~17_combout\ : std_logic;
SIGNAL \MUX2|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \decoderInstru|saida[4]~2_combout\ : std_logic;
SIGNAL \decoderInstru|saida[3]~0_combout\ : std_logic;
SIGNAL \decoderInstru|saida[3]~1_combout\ : std_logic;
SIGNAL \ULA1|saida[7]~1_combout\ : std_logic;
SIGNAL \decoderInstru|saida[5]~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \ROM1|memROM~15_combout\ : std_logic;
SIGNAL \ROM1|memROM~16_combout\ : std_logic;
SIGNAL \ROM1|memROM~18_combout\ : std_logic;
SIGNAL \RAM1|process_0~0_combout\ : std_logic;
SIGNAL \decoderInstru|saida[2]~7_combout\ : std_logic;
SIGNAL \decoderInstru|saida[2]~5_combout\ : std_logic;
SIGNAL \decoderInstru|saida~6_combout\ : std_logic;
SIGNAL \RAM1|process_0~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \RAM1|ram~192_combout\ : std_logic;
SIGNAL \RAM1|ram~89_q\ : std_logic;
SIGNAL \RAM1|ram~97feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~193_combout\ : std_logic;
SIGNAL \RAM1|ram~185_combout\ : std_logic;
SIGNAL \RAM1|ram~194_combout\ : std_logic;
SIGNAL \RAM1|ram~97_q\ : std_logic;
SIGNAL \RAM1|ram~147_combout\ : std_logic;
SIGNAL \RAM1|ram~49feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~182_combout\ : std_logic;
SIGNAL \RAM1|ram~188_combout\ : std_logic;
SIGNAL \RAM1|ram~49_q\ : std_logic;
SIGNAL \RAM1|ram~57feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~189_combout\ : std_logic;
SIGNAL \RAM1|ram~57_q\ : std_logic;
SIGNAL \RAM1|ram~190_combout\ : std_logic;
SIGNAL \RAM1|ram~65_q\ : std_logic;
SIGNAL \RAM1|ram~73feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~191_combout\ : std_logic;
SIGNAL \RAM1|ram~73_q\ : std_logic;
SIGNAL \RAM1|ram~146_combout\ : std_logic;
SIGNAL \RAM1|ram~17feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~183_combout\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~184_combout\ : std_logic;
SIGNAL \RAM1|ram~25_q\ : std_logic;
SIGNAL \RAM1|ram~41feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~187_combout\ : std_logic;
SIGNAL \RAM1|ram~41_q\ : std_logic;
SIGNAL \RAM1|ram~186_combout\ : std_logic;
SIGNAL \RAM1|ram~33_q\ : std_logic;
SIGNAL \RAM1|ram~145_combout\ : std_logic;
SIGNAL \RAM1|ram~195_combout\ : std_logic;
SIGNAL \RAM1|ram~196_combout\ : std_logic;
SIGNAL \RAM1|ram~121_q\ : std_logic;
SIGNAL \RAM1|ram~198_combout\ : std_logic;
SIGNAL \RAM1|ram~137_q\ : std_logic;
SIGNAL \RAM1|ram~197_combout\ : std_logic;
SIGNAL \RAM1|ram~129_q\ : std_logic;
SIGNAL \RAM1|ram~148_combout\ : std_logic;
SIGNAL \RAM1|ram~149_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~19_combout\ : std_logic;
SIGNAL \ULA1|Add0~34_cout\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \flagIgual|DOUT~0_combout\ : std_logic;
SIGNAL \flagIgual|DOUT~q\ : std_logic;
SIGNAL \MUX2|Equal2~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~2\ : std_logic;
SIGNAL \incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~6\ : std_logic;
SIGNAL \incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \MUX2|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[6]~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~30\ : std_logic;
SIGNAL \incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[8]~10_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \MUX2|Equal1~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \RAM1|ram~90_q\ : std_logic;
SIGNAL \RAM1|ram~26_q\ : std_logic;
SIGNAL \RAM1|ram~122_q\ : std_logic;
SIGNAL \RAM1|ram~58_q\ : std_logic;
SIGNAL \RAM1|ram~151_combout\ : std_logic;
SIGNAL \RAM1|ram~74_q\ : std_logic;
SIGNAL \RAM1|ram~42_q\ : std_logic;
SIGNAL \RAM1|ram~138_q\ : std_logic;
SIGNAL \RAM1|ram~153_combout\ : std_logic;
SIGNAL \RAM1|ram~50feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~50_q\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~150_combout\ : std_logic;
SIGNAL \RAM1|ram~66_q\ : std_logic;
SIGNAL \RAM1|ram~130_q\ : std_logic;
SIGNAL \RAM1|ram~98_q\ : std_logic;
SIGNAL \RAM1|ram~34_q\ : std_logic;
SIGNAL \RAM1|ram~152_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[1]~10_combout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|saida[1]~2_combout\ : std_logic;
SIGNAL \RAM1|ram~99_q\ : std_logic;
SIGNAL \RAM1|ram~91_q\ : std_logic;
SIGNAL \RAM1|ram~156_combout\ : std_logic;
SIGNAL \RAM1|ram~139_q\ : std_logic;
SIGNAL \RAM1|ram~123_q\ : std_logic;
SIGNAL \RAM1|ram~131_q\ : std_logic;
SIGNAL \RAM1|ram~157_combout\ : std_logic;
SIGNAL \RAM1|ram~43_q\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~35_q\ : std_logic;
SIGNAL \RAM1|ram~27_q\ : std_logic;
SIGNAL \RAM1|ram~154_combout\ : std_logic;
SIGNAL \RAM1|ram~59_q\ : std_logic;
SIGNAL \RAM1|ram~67_q\ : std_logic;
SIGNAL \RAM1|ram~51_q\ : std_logic;
SIGNAL \RAM1|ram~75_q\ : std_logic;
SIGNAL \RAM1|ram~155_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[2]~6_combout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|saida[2]~3_combout\ : std_logic;
SIGNAL \RAM1|ram~28_q\ : std_logic;
SIGNAL \RAM1|ram~92_q\ : std_logic;
SIGNAL \RAM1|ram~60_q\ : std_logic;
SIGNAL \RAM1|ram~124_q\ : std_logic;
SIGNAL \RAM1|ram~159_combout\ : std_logic;
SIGNAL \RAM1|ram~52_q\ : std_logic;
SIGNAL \RAM1|ram~20feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~158_combout\ : std_logic;
SIGNAL \RAM1|ram~140_q\ : std_logic;
SIGNAL \RAM1|ram~76_q\ : std_logic;
SIGNAL \RAM1|ram~44feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~44_q\ : std_logic;
SIGNAL \RAM1|ram~161_combout\ : std_logic;
SIGNAL \RAM1|ram~100_q\ : std_logic;
SIGNAL \RAM1|ram~132_q\ : std_logic;
SIGNAL \RAM1|ram~36_q\ : std_logic;
SIGNAL \RAM1|ram~68_q\ : std_logic;
SIGNAL \RAM1|ram~160_combout\ : std_logic;
SIGNAL \RAM1|ram~162_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[3]~1_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|saida[3]~4_combout\ : std_logic;
SIGNAL \RAM1|ram~93_q\ : std_logic;
SIGNAL \RAM1|ram~101_q\ : std_logic;
SIGNAL \RAM1|ram~165_combout\ : std_logic;
SIGNAL \RAM1|ram~141_q\ : std_logic;
SIGNAL \RAM1|ram~133_q\ : std_logic;
SIGNAL \RAM1|ram~125_q\ : std_logic;
SIGNAL \RAM1|ram~166_combout\ : std_logic;
SIGNAL \RAM1|ram~53_q\ : std_logic;
SIGNAL \RAM1|ram~69_q\ : std_logic;
SIGNAL \RAM1|ram~61_q\ : std_logic;
SIGNAL \RAM1|ram~77_q\ : std_logic;
SIGNAL \RAM1|ram~164_combout\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~45_q\ : std_logic;
SIGNAL \RAM1|ram~29_q\ : std_logic;
SIGNAL \RAM1|ram~37_q\ : std_logic;
SIGNAL \RAM1|ram~163_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[4]~2_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|saida[4]~5_combout\ : std_logic;
SIGNAL \RAM1|ram~54_q\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~167_combout\ : std_logic;
SIGNAL \RAM1|ram~38_q\ : std_logic;
SIGNAL \RAM1|ram~70_q\ : std_logic;
SIGNAL \RAM1|ram~134_q\ : std_logic;
SIGNAL \RAM1|ram~102_q\ : std_logic;
SIGNAL \RAM1|ram~169_combout\ : std_logic;
SIGNAL \RAM1|ram~30feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~30_q\ : std_logic;
SIGNAL \RAM1|ram~126_q\ : std_logic;
SIGNAL \RAM1|ram~94_q\ : std_logic;
SIGNAL \RAM1|ram~62_q\ : std_logic;
SIGNAL \RAM1|ram~168_combout\ : std_logic;
SIGNAL \RAM1|ram~46_q\ : std_logic;
SIGNAL \RAM1|ram~78_q\ : std_logic;
SIGNAL \RAM1|ram~142_q\ : std_logic;
SIGNAL \RAM1|ram~170_combout\ : std_logic;
SIGNAL \RAM1|ram~171_combout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|saida[5]~6_combout\ : std_logic;
SIGNAL \RAM1|ram~39feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~39_q\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \RAM1|ram~47feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~47_q\ : std_logic;
SIGNAL \RAM1|ram~31_q\ : std_logic;
SIGNAL \RAM1|ram~172_combout\ : std_logic;
SIGNAL \RAM1|ram~79_q\ : std_logic;
SIGNAL \RAM1|ram~55_q\ : std_logic;
SIGNAL \RAM1|ram~71_q\ : std_logic;
SIGNAL \RAM1|ram~63_q\ : std_logic;
SIGNAL \RAM1|ram~173_combout\ : std_logic;
SIGNAL \RAM1|ram~95_q\ : std_logic;
SIGNAL \RAM1|ram~103_q\ : std_logic;
SIGNAL \RAM1|ram~174_combout\ : std_logic;
SIGNAL \RAM1|ram~135_q\ : std_logic;
SIGNAL \RAM1|ram~127feeder_combout\ : std_logic;
SIGNAL \RAM1|ram~127_q\ : std_logic;
SIGNAL \RAM1|ram~143_q\ : std_logic;
SIGNAL \RAM1|ram~175_combout\ : std_logic;
SIGNAL \RAM1|ram~176_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|saida[6]~7_combout\ : std_logic;
SIGNAL \RAM1|ram~80_q\ : std_logic;
SIGNAL \RAM1|ram~144_q\ : std_logic;
SIGNAL \RAM1|ram~48_q\ : std_logic;
SIGNAL \RAM1|ram~180_combout\ : std_logic;
SIGNAL \RAM1|ram~72_q\ : std_logic;
SIGNAL \RAM1|ram~104_q\ : std_logic;
SIGNAL \RAM1|ram~136_q\ : std_logic;
SIGNAL \RAM1|ram~40_q\ : std_logic;
SIGNAL \RAM1|ram~179_combout\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~56_q\ : std_logic;
SIGNAL \RAM1|ram~177_combout\ : std_logic;
SIGNAL \RAM1|ram~32_q\ : std_logic;
SIGNAL \RAM1|ram~64_q\ : std_logic;
SIGNAL \RAM1|ram~96_q\ : std_logic;
SIGNAL \RAM1|ram~128_q\ : std_logic;
SIGNAL \RAM1|ram~178_combout\ : std_logic;
SIGNAL \RAM1|ram~181_combout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|saida[7]~8_combout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \enderecoDeRetorno|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ULA1|saida\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \MUX1|ALT_INV_saida_MUX[1]~10_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[2]~6_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[4]~2_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~132_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~100_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~124_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~92_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[2]~3_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~139_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~131_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~123_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~99_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~91_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[1]~2_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~138_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~130_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~98_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~122_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~90_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[7]~1_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~137_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~129_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~121_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~97_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~89_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \decoderInstru|ALT_INV_saida[5]~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \enderecoDeRetorno|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \MUX2|ALT_INV_saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \MUX2|ALT_INV_saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \decoderInstru|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \MUX2|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \MUX2|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \flagIgual|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \decoderInstru|ALT_INV_saida[4]~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \decoderInstru|ALT_INV_saida[3]~1_combout\ : std_logic;
SIGNAL \decoderInstru|ALT_INV_saida[3]~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~195_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~193_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~185_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~182_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \decoderInstru|ALT_INV_saida[2]~7_combout\ : std_logic;
SIGNAL \decoderInstru|ALT_INV_saida~6_combout\ : std_logic;
SIGNAL \decoderInstru|ALT_INV_saida[2]~5_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[7]~8_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~181_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~180_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~144_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~179_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~136_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~104_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~178_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~128_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~96_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~177_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[6]~7_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~176_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~175_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~143_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~135_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~127_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~174_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~103_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~95_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~173_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~172_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[5]~6_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~171_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~170_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~142_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~169_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~134_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~102_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~168_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~126_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~94_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~167_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[4]~5_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~166_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~141_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~133_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~125_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~165_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~101_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~93_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~164_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~163_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[3]~4_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[3]~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~162_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~161_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~140_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~76_q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
PC_OUT <= ww_PC_OUT;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\REGA|ALT_INV_DOUT\(0) <= NOT \REGA|DOUT\(0);
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\MUX1|ALT_INV_saida_MUX[1]~10_combout\ <= NOT \MUX1|saida_MUX[1]~10_combout\;
\MUX1|ALT_INV_saida_MUX[2]~6_combout\ <= NOT \MUX1|saida_MUX[2]~6_combout\;
\MUX1|ALT_INV_saida_MUX[4]~2_combout\ <= NOT \MUX1|saida_MUX[4]~2_combout\;
\ULA1|ALT_INV_Add0~29_sumout\ <= NOT \ULA1|Add0~29_sumout\;
\ULA1|ALT_INV_Add0~25_sumout\ <= NOT \ULA1|Add0~25_sumout\;
\ULA1|ALT_INV_Add0~21_sumout\ <= NOT \ULA1|Add0~21_sumout\;
\ULA1|ALT_INV_Add0~17_sumout\ <= NOT \ULA1|Add0~17_sumout\;
\ULA1|ALT_INV_Add0~13_sumout\ <= NOT \ULA1|Add0~13_sumout\;
\ULA1|ALT_INV_Add0~9_sumout\ <= NOT \ULA1|Add0~9_sumout\;
\ULA1|ALT_INV_Add0~5_sumout\ <= NOT \ULA1|Add0~5_sumout\;
\ULA1|ALT_INV_Add0~1_sumout\ <= NOT \ULA1|Add0~1_sumout\;
\incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \incrementaPC|Add0~33_sumout\;
\incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \incrementaPC|Add0~29_sumout\;
\incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \incrementaPC|Add0~25_sumout\;
\incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \incrementaPC|Add0~21_sumout\;
\incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \incrementaPC|Add0~17_sumout\;
\incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \incrementaPC|Add0~13_sumout\;
\incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \incrementaPC|Add0~9_sumout\;
\incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \incrementaPC|Add0~5_sumout\;
\incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \incrementaPC|Add0~1_sumout\;
\RAM1|ALT_INV_ram~44_q\ <= NOT \RAM1|ram~44_q\;
\RAM1|ALT_INV_ram~160_combout\ <= NOT \RAM1|ram~160_combout\;
\RAM1|ALT_INV_ram~132_q\ <= NOT \RAM1|ram~132_q\;
\RAM1|ALT_INV_ram~100_q\ <= NOT \RAM1|ram~100_q\;
\RAM1|ALT_INV_ram~68_q\ <= NOT \RAM1|ram~68_q\;
\RAM1|ALT_INV_ram~36_q\ <= NOT \RAM1|ram~36_q\;
\RAM1|ALT_INV_ram~159_combout\ <= NOT \RAM1|ram~159_combout\;
\RAM1|ALT_INV_ram~124_q\ <= NOT \RAM1|ram~124_q\;
\RAM1|ALT_INV_ram~92_q\ <= NOT \RAM1|ram~92_q\;
\RAM1|ALT_INV_ram~60_q\ <= NOT \RAM1|ram~60_q\;
\RAM1|ALT_INV_ram~28_q\ <= NOT \RAM1|ram~28_q\;
\RAM1|ALT_INV_ram~158_combout\ <= NOT \RAM1|ram~158_combout\;
\RAM1|ALT_INV_ram~52_q\ <= NOT \RAM1|ram~52_q\;
\RAM1|ALT_INV_ram~20_q\ <= NOT \RAM1|ram~20_q\;
\ULA1|ALT_INV_saida[2]~3_combout\ <= NOT \ULA1|saida[2]~3_combout\;
\RAM1|ALT_INV_ram~157_combout\ <= NOT \RAM1|ram~157_combout\;
\RAM1|ALT_INV_ram~139_q\ <= NOT \RAM1|ram~139_q\;
\RAM1|ALT_INV_ram~131_q\ <= NOT \RAM1|ram~131_q\;
\RAM1|ALT_INV_ram~123_q\ <= NOT \RAM1|ram~123_q\;
\RAM1|ALT_INV_ram~156_combout\ <= NOT \RAM1|ram~156_combout\;
\RAM1|ALT_INV_ram~99_q\ <= NOT \RAM1|ram~99_q\;
\RAM1|ALT_INV_ram~91_q\ <= NOT \RAM1|ram~91_q\;
\RAM1|ALT_INV_ram~155_combout\ <= NOT \RAM1|ram~155_combout\;
\RAM1|ALT_INV_ram~75_q\ <= NOT \RAM1|ram~75_q\;
\RAM1|ALT_INV_ram~67_q\ <= NOT \RAM1|ram~67_q\;
\RAM1|ALT_INV_ram~59_q\ <= NOT \RAM1|ram~59_q\;
\RAM1|ALT_INV_ram~51_q\ <= NOT \RAM1|ram~51_q\;
\RAM1|ALT_INV_ram~154_combout\ <= NOT \RAM1|ram~154_combout\;
\RAM1|ALT_INV_ram~43_q\ <= NOT \RAM1|ram~43_q\;
\RAM1|ALT_INV_ram~35_q\ <= NOT \RAM1|ram~35_q\;
\RAM1|ALT_INV_ram~27_q\ <= NOT \RAM1|ram~27_q\;
\RAM1|ALT_INV_ram~19_q\ <= NOT \RAM1|ram~19_q\;
\ULA1|ALT_INV_saida[1]~2_combout\ <= NOT \ULA1|saida[1]~2_combout\;
\RAM1|ALT_INV_ram~153_combout\ <= NOT \RAM1|ram~153_combout\;
\RAM1|ALT_INV_ram~138_q\ <= NOT \RAM1|ram~138_q\;
\RAM1|ALT_INV_ram~74_q\ <= NOT \RAM1|ram~74_q\;
\RAM1|ALT_INV_ram~42_q\ <= NOT \RAM1|ram~42_q\;
\RAM1|ALT_INV_ram~152_combout\ <= NOT \RAM1|ram~152_combout\;
\RAM1|ALT_INV_ram~130_q\ <= NOT \RAM1|ram~130_q\;
\RAM1|ALT_INV_ram~98_q\ <= NOT \RAM1|ram~98_q\;
\RAM1|ALT_INV_ram~66_q\ <= NOT \RAM1|ram~66_q\;
\RAM1|ALT_INV_ram~34_q\ <= NOT \RAM1|ram~34_q\;
\RAM1|ALT_INV_ram~151_combout\ <= NOT \RAM1|ram~151_combout\;
\RAM1|ALT_INV_ram~122_q\ <= NOT \RAM1|ram~122_q\;
\RAM1|ALT_INV_ram~90_q\ <= NOT \RAM1|ram~90_q\;
\RAM1|ALT_INV_ram~58_q\ <= NOT \RAM1|ram~58_q\;
\RAM1|ALT_INV_ram~26_q\ <= NOT \RAM1|ram~26_q\;
\RAM1|ALT_INV_ram~150_combout\ <= NOT \RAM1|ram~150_combout\;
\RAM1|ALT_INV_ram~50_q\ <= NOT \RAM1|ram~50_q\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\ULA1|ALT_INV_saida[7]~1_combout\ <= NOT \ULA1|saida[7]~1_combout\;
\ULA1|ALT_INV_saida[0]~0_combout\ <= NOT \ULA1|saida[0]~0_combout\;
\MUX1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \MUX1|saida_MUX[0]~0_combout\;
\RAM1|ALT_INV_ram~149_combout\ <= NOT \RAM1|ram~149_combout\;
\RAM1|ALT_INV_ram~148_combout\ <= NOT \RAM1|ram~148_combout\;
\RAM1|ALT_INV_ram~137_q\ <= NOT \RAM1|ram~137_q\;
\RAM1|ALT_INV_ram~129_q\ <= NOT \RAM1|ram~129_q\;
\RAM1|ALT_INV_ram~121_q\ <= NOT \RAM1|ram~121_q\;
\RAM1|ALT_INV_ram~147_combout\ <= NOT \RAM1|ram~147_combout\;
\RAM1|ALT_INV_ram~97_q\ <= NOT \RAM1|ram~97_q\;
\RAM1|ALT_INV_ram~89_q\ <= NOT \RAM1|ram~89_q\;
\RAM1|ALT_INV_ram~146_combout\ <= NOT \RAM1|ram~146_combout\;
\RAM1|ALT_INV_ram~73_q\ <= NOT \RAM1|ram~73_q\;
\RAM1|ALT_INV_ram~65_q\ <= NOT \RAM1|ram~65_q\;
\RAM1|ALT_INV_ram~57_q\ <= NOT \RAM1|ram~57_q\;
\RAM1|ALT_INV_ram~49_q\ <= NOT \RAM1|ram~49_q\;
\RAM1|ALT_INV_ram~145_combout\ <= NOT \RAM1|ram~145_combout\;
\RAM1|ALT_INV_ram~41_q\ <= NOT \RAM1|ram~41_q\;
\RAM1|ALT_INV_ram~33_q\ <= NOT \RAM1|ram~33_q\;
\RAM1|ALT_INV_ram~25_q\ <= NOT \RAM1|ram~25_q\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\decoderInstru|ALT_INV_saida[5]~4_combout\ <= NOT \decoderInstru|saida[5]~4_combout\;
\ROM1|ALT_INV_memROM~18_combout\ <= NOT \ROM1|memROM~18_combout\;
\enderecoDeRetorno|ALT_INV_DOUT\(8) <= NOT \enderecoDeRetorno|DOUT\(8);
\enderecoDeRetorno|ALT_INV_DOUT\(7) <= NOT \enderecoDeRetorno|DOUT\(7);
\enderecoDeRetorno|ALT_INV_DOUT\(6) <= NOT \enderecoDeRetorno|DOUT\(6);
\enderecoDeRetorno|ALT_INV_DOUT\(5) <= NOT \enderecoDeRetorno|DOUT\(5);
\MUX2|ALT_INV_saida_MUX[5]~5_combout\ <= NOT \MUX2|saida_MUX[5]~5_combout\;
\MUX2|ALT_INV_saida_MUX[4]~4_combout\ <= NOT \MUX2|saida_MUX[4]~4_combout\;
\enderecoDeRetorno|ALT_INV_DOUT\(4) <= NOT \enderecoDeRetorno|DOUT\(4);
\decoderInstru|ALT_INV_Equal4~0_combout\ <= NOT \decoderInstru|Equal4~0_combout\;
\ROM1|ALT_INV_memROM~17_combout\ <= NOT \ROM1|memROM~17_combout\;
\enderecoDeRetorno|ALT_INV_DOUT\(3) <= NOT \enderecoDeRetorno|DOUT\(3);
\ROM1|ALT_INV_memROM~16_combout\ <= NOT \ROM1|memROM~16_combout\;
\ROM1|ALT_INV_memROM~15_combout\ <= NOT \ROM1|memROM~15_combout\;
\enderecoDeRetorno|ALT_INV_DOUT\(2) <= NOT \enderecoDeRetorno|DOUT\(2);
\ROM1|ALT_INV_memROM~14_combout\ <= NOT \ROM1|memROM~14_combout\;
\ROM1|ALT_INV_memROM~13_combout\ <= NOT \ROM1|memROM~13_combout\;
\enderecoDeRetorno|ALT_INV_DOUT\(1) <= NOT \enderecoDeRetorno|DOUT\(1);
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\MUX2|ALT_INV_Equal1~0_combout\ <= NOT \MUX2|Equal1~0_combout\;
\enderecoDeRetorno|ALT_INV_DOUT\(0) <= NOT \enderecoDeRetorno|DOUT\(0);
\MUX2|ALT_INV_Equal2~0_combout\ <= NOT \MUX2|Equal2~0_combout\;
\flagIgual|ALT_INV_DOUT~q\ <= NOT \flagIgual|DOUT~q\;
\decoderInstru|ALT_INV_saida[4]~2_combout\ <= NOT \decoderInstru|saida[4]~2_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\decoderInstru|ALT_INV_saida[3]~1_combout\ <= NOT \decoderInstru|saida[3]~1_combout\;
\decoderInstru|ALT_INV_saida[3]~0_combout\ <= NOT \decoderInstru|saida[3]~0_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\REGA|ALT_INV_DOUT\(7) <= NOT \REGA|DOUT\(7);
\REGA|ALT_INV_DOUT\(6) <= NOT \REGA|DOUT\(6);
\REGA|ALT_INV_DOUT\(5) <= NOT \REGA|DOUT\(5);
\REGA|ALT_INV_DOUT\(4) <= NOT \REGA|DOUT\(4);
\REGA|ALT_INV_DOUT\(3) <= NOT \REGA|DOUT\(3);
\REGA|ALT_INV_DOUT\(2) <= NOT \REGA|DOUT\(2);
\REGA|ALT_INV_DOUT\(1) <= NOT \REGA|DOUT\(1);
\ULA1|ALT_INV_saida\(7) <= NOT \ULA1|saida\(7);
\ULA1|ALT_INV_saida\(6) <= NOT \ULA1|saida\(6);
\ULA1|ALT_INV_saida\(5) <= NOT \ULA1|saida\(5);
\ULA1|ALT_INV_saida\(4) <= NOT \ULA1|saida\(4);
\ULA1|ALT_INV_saida\(3) <= NOT \ULA1|saida\(3);
\ULA1|ALT_INV_saida\(2) <= NOT \ULA1|saida\(2);
\ULA1|ALT_INV_saida\(1) <= NOT \ULA1|saida\(1);
\ULA1|ALT_INV_saida\(0) <= NOT \ULA1|saida\(0);
\ROM1|ALT_INV_memROM~19_combout\ <= NOT \ROM1|memROM~19_combout\;
\RAM1|ALT_INV_ram~195_combout\ <= NOT \RAM1|ram~195_combout\;
\RAM1|ALT_INV_ram~193_combout\ <= NOT \RAM1|ram~193_combout\;
\RAM1|ALT_INV_process_0~1_combout\ <= NOT \RAM1|process_0~1_combout\;
\RAM1|ALT_INV_ram~185_combout\ <= NOT \RAM1|ram~185_combout\;
\RAM1|ALT_INV_ram~182_combout\ <= NOT \RAM1|ram~182_combout\;
\RAM1|ALT_INV_process_0~0_combout\ <= NOT \RAM1|process_0~0_combout\;
\decoderInstru|ALT_INV_saida[2]~7_combout\ <= NOT \decoderInstru|saida[2]~7_combout\;
\decoderInstru|ALT_INV_saida~6_combout\ <= NOT \decoderInstru|saida~6_combout\;
\decoderInstru|ALT_INV_saida[2]~5_combout\ <= NOT \decoderInstru|saida[2]~5_combout\;
\ULA1|ALT_INV_saida[7]~8_combout\ <= NOT \ULA1|saida[7]~8_combout\;
\RAM1|ALT_INV_ram~181_combout\ <= NOT \RAM1|ram~181_combout\;
\RAM1|ALT_INV_ram~180_combout\ <= NOT \RAM1|ram~180_combout\;
\RAM1|ALT_INV_ram~144_q\ <= NOT \RAM1|ram~144_q\;
\RAM1|ALT_INV_ram~80_q\ <= NOT \RAM1|ram~80_q\;
\RAM1|ALT_INV_ram~48_q\ <= NOT \RAM1|ram~48_q\;
\RAM1|ALT_INV_ram~179_combout\ <= NOT \RAM1|ram~179_combout\;
\RAM1|ALT_INV_ram~136_q\ <= NOT \RAM1|ram~136_q\;
\RAM1|ALT_INV_ram~104_q\ <= NOT \RAM1|ram~104_q\;
\RAM1|ALT_INV_ram~72_q\ <= NOT \RAM1|ram~72_q\;
\RAM1|ALT_INV_ram~40_q\ <= NOT \RAM1|ram~40_q\;
\RAM1|ALT_INV_ram~178_combout\ <= NOT \RAM1|ram~178_combout\;
\RAM1|ALT_INV_ram~128_q\ <= NOT \RAM1|ram~128_q\;
\RAM1|ALT_INV_ram~96_q\ <= NOT \RAM1|ram~96_q\;
\RAM1|ALT_INV_ram~64_q\ <= NOT \RAM1|ram~64_q\;
\RAM1|ALT_INV_ram~32_q\ <= NOT \RAM1|ram~32_q\;
\RAM1|ALT_INV_ram~177_combout\ <= NOT \RAM1|ram~177_combout\;
\RAM1|ALT_INV_ram~56_q\ <= NOT \RAM1|ram~56_q\;
\RAM1|ALT_INV_ram~24_q\ <= NOT \RAM1|ram~24_q\;
\ULA1|ALT_INV_saida[6]~7_combout\ <= NOT \ULA1|saida[6]~7_combout\;
\RAM1|ALT_INV_ram~176_combout\ <= NOT \RAM1|ram~176_combout\;
\RAM1|ALT_INV_ram~175_combout\ <= NOT \RAM1|ram~175_combout\;
\RAM1|ALT_INV_ram~143_q\ <= NOT \RAM1|ram~143_q\;
\RAM1|ALT_INV_ram~135_q\ <= NOT \RAM1|ram~135_q\;
\RAM1|ALT_INV_ram~127_q\ <= NOT \RAM1|ram~127_q\;
\RAM1|ALT_INV_ram~174_combout\ <= NOT \RAM1|ram~174_combout\;
\RAM1|ALT_INV_ram~103_q\ <= NOT \RAM1|ram~103_q\;
\RAM1|ALT_INV_ram~95_q\ <= NOT \RAM1|ram~95_q\;
\RAM1|ALT_INV_ram~173_combout\ <= NOT \RAM1|ram~173_combout\;
\RAM1|ALT_INV_ram~79_q\ <= NOT \RAM1|ram~79_q\;
\RAM1|ALT_INV_ram~71_q\ <= NOT \RAM1|ram~71_q\;
\RAM1|ALT_INV_ram~63_q\ <= NOT \RAM1|ram~63_q\;
\RAM1|ALT_INV_ram~55_q\ <= NOT \RAM1|ram~55_q\;
\RAM1|ALT_INV_ram~172_combout\ <= NOT \RAM1|ram~172_combout\;
\RAM1|ALT_INV_ram~47_q\ <= NOT \RAM1|ram~47_q\;
\RAM1|ALT_INV_ram~39_q\ <= NOT \RAM1|ram~39_q\;
\RAM1|ALT_INV_ram~31_q\ <= NOT \RAM1|ram~31_q\;
\RAM1|ALT_INV_ram~23_q\ <= NOT \RAM1|ram~23_q\;
\ULA1|ALT_INV_saida[5]~6_combout\ <= NOT \ULA1|saida[5]~6_combout\;
\RAM1|ALT_INV_ram~171_combout\ <= NOT \RAM1|ram~171_combout\;
\RAM1|ALT_INV_ram~170_combout\ <= NOT \RAM1|ram~170_combout\;
\RAM1|ALT_INV_ram~142_q\ <= NOT \RAM1|ram~142_q\;
\RAM1|ALT_INV_ram~78_q\ <= NOT \RAM1|ram~78_q\;
\RAM1|ALT_INV_ram~46_q\ <= NOT \RAM1|ram~46_q\;
\RAM1|ALT_INV_ram~169_combout\ <= NOT \RAM1|ram~169_combout\;
\RAM1|ALT_INV_ram~134_q\ <= NOT \RAM1|ram~134_q\;
\RAM1|ALT_INV_ram~102_q\ <= NOT \RAM1|ram~102_q\;
\RAM1|ALT_INV_ram~70_q\ <= NOT \RAM1|ram~70_q\;
\RAM1|ALT_INV_ram~38_q\ <= NOT \RAM1|ram~38_q\;
\RAM1|ALT_INV_ram~168_combout\ <= NOT \RAM1|ram~168_combout\;
\RAM1|ALT_INV_ram~126_q\ <= NOT \RAM1|ram~126_q\;
\RAM1|ALT_INV_ram~94_q\ <= NOT \RAM1|ram~94_q\;
\RAM1|ALT_INV_ram~62_q\ <= NOT \RAM1|ram~62_q\;
\RAM1|ALT_INV_ram~30_q\ <= NOT \RAM1|ram~30_q\;
\RAM1|ALT_INV_ram~167_combout\ <= NOT \RAM1|ram~167_combout\;
\RAM1|ALT_INV_ram~54_q\ <= NOT \RAM1|ram~54_q\;
\RAM1|ALT_INV_ram~22_q\ <= NOT \RAM1|ram~22_q\;
\ULA1|ALT_INV_saida[4]~5_combout\ <= NOT \ULA1|saida[4]~5_combout\;
\RAM1|ALT_INV_ram~166_combout\ <= NOT \RAM1|ram~166_combout\;
\RAM1|ALT_INV_ram~141_q\ <= NOT \RAM1|ram~141_q\;
\RAM1|ALT_INV_ram~133_q\ <= NOT \RAM1|ram~133_q\;
\RAM1|ALT_INV_ram~125_q\ <= NOT \RAM1|ram~125_q\;
\RAM1|ALT_INV_ram~165_combout\ <= NOT \RAM1|ram~165_combout\;
\RAM1|ALT_INV_ram~101_q\ <= NOT \RAM1|ram~101_q\;
\RAM1|ALT_INV_ram~93_q\ <= NOT \RAM1|ram~93_q\;
\RAM1|ALT_INV_ram~164_combout\ <= NOT \RAM1|ram~164_combout\;
\RAM1|ALT_INV_ram~77_q\ <= NOT \RAM1|ram~77_q\;
\RAM1|ALT_INV_ram~69_q\ <= NOT \RAM1|ram~69_q\;
\RAM1|ALT_INV_ram~61_q\ <= NOT \RAM1|ram~61_q\;
\RAM1|ALT_INV_ram~53_q\ <= NOT \RAM1|ram~53_q\;
\RAM1|ALT_INV_ram~163_combout\ <= NOT \RAM1|ram~163_combout\;
\RAM1|ALT_INV_ram~45_q\ <= NOT \RAM1|ram~45_q\;
\RAM1|ALT_INV_ram~37_q\ <= NOT \RAM1|ram~37_q\;
\RAM1|ALT_INV_ram~29_q\ <= NOT \RAM1|ram~29_q\;
\RAM1|ALT_INV_ram~21_q\ <= NOT \RAM1|ram~21_q\;
\ULA1|ALT_INV_saida[3]~4_combout\ <= NOT \ULA1|saida[3]~4_combout\;
\MUX1|ALT_INV_saida_MUX[3]~1_combout\ <= NOT \MUX1|saida_MUX[3]~1_combout\;
\RAM1|ALT_INV_ram~162_combout\ <= NOT \RAM1|ram~162_combout\;
\RAM1|ALT_INV_ram~161_combout\ <= NOT \RAM1|ram~161_combout\;
\RAM1|ALT_INV_ram~140_q\ <= NOT \RAM1|ram~140_q\;
\RAM1|ALT_INV_ram~76_q\ <= NOT \RAM1|ram~76_q\;

-- Location: IOOBUF_X8_Y45_N76
\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(0),
	devoe => ww_devoe,
	o => ww_PC_OUT(0));

-- Location: IOOBUF_X10_Y0_N76
\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(1),
	devoe => ww_devoe,
	o => ww_PC_OUT(1));

-- Location: IOOBUF_X54_Y20_N5
\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(2),
	devoe => ww_devoe,
	o => ww_PC_OUT(2));

-- Location: IOOBUF_X8_Y45_N93
\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(3),
	devoe => ww_devoe,
	o => ww_PC_OUT(3));

-- Location: IOOBUF_X10_Y45_N53
\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(4),
	devoe => ww_devoe,
	o => ww_PC_OUT(4));

-- Location: IOOBUF_X10_Y45_N2
\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(5),
	devoe => ww_devoe,
	o => ww_PC_OUT(5));

-- Location: IOOBUF_X10_Y45_N36
\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(6),
	devoe => ww_devoe,
	o => ww_PC_OUT(6));

-- Location: IOOBUF_X8_Y45_N59
\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(7),
	devoe => ww_devoe,
	o => ww_PC_OUT(7));

-- Location: IOOBUF_X8_Y45_N42
\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(8),
	devoe => ww_devoe,
	o => ww_PC_OUT(8));

-- Location: IOOBUF_X0_Y18_N79
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(0),
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X0_Y18_N96
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(1),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X0_Y18_N62
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X0_Y18_N45
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(3),
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X0_Y19_N39
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(4),
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X0_Y19_N56
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(5),
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X0_Y19_N5
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(6),
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X0_Y19_N22
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(7),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X0_Y20_N39
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderInstru|saida[3]~1_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X0_Y20_N56
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderInstru|saida[4]~2_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X52_Y0_N53
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
	o => ww_HEX0(0));

-- Location: IOOBUF_X51_Y0_N36
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
	o => ww_HEX0(1));

-- Location: IOOBUF_X48_Y0_N76
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
	o => ww_HEX0(2));

-- Location: IOOBUF_X50_Y0_N36
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
	o => ww_HEX0(3));

-- Location: IOOBUF_X48_Y0_N93
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
	o => ww_HEX0(4));

-- Location: IOOBUF_X50_Y0_N53
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
	o => ww_HEX0(5));

-- Location: IOOBUF_X46_Y0_N36
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X44_Y0_N36
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
	o => ww_HEX1(0));

-- Location: IOOBUF_X40_Y0_N93
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
	o => ww_HEX1(1));

-- Location: IOOBUF_X44_Y0_N53
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
	o => ww_HEX1(2));

-- Location: IOOBUF_X43_Y0_N36
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
	o => ww_HEX1(3));

-- Location: IOOBUF_X38_Y0_N36
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
	o => ww_HEX1(4));

-- Location: IOOBUF_X43_Y0_N53
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
	o => ww_HEX1(5));

-- Location: IOOBUF_X51_Y0_N53
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X48_Y0_N42
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
	o => ww_HEX2(0));

-- Location: IOOBUF_X38_Y0_N53
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
	o => ww_HEX2(1));

-- Location: IOOBUF_X22_Y0_N53
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
	o => ww_HEX2(2));

-- Location: IOOBUF_X36_Y0_N19
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
	o => ww_HEX2(3));

-- Location: IOOBUF_X38_Y0_N19
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
	o => ww_HEX2(4));

-- Location: IOOBUF_X46_Y0_N53
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
	o => ww_HEX2(5));

-- Location: IOOBUF_X40_Y0_N76
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X40_Y0_N59
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
	o => ww_HEX3(0));

-- Location: IOOBUF_X46_Y0_N2
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
	o => ww_HEX3(1));

-- Location: IOOBUF_X40_Y0_N42
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
	o => ww_HEX3(2));

-- Location: IOOBUF_X46_Y0_N19
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
	o => ww_HEX3(3));

-- Location: IOOBUF_X52_Y0_N2
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
	o => ww_HEX3(4));

-- Location: IOOBUF_X51_Y0_N2
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
	o => ww_HEX3(5));

-- Location: IOOBUF_X51_Y0_N19
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X52_Y0_N36
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
	o => ww_HEX4(0));

-- Location: IOOBUF_X48_Y0_N59
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
	o => ww_HEX4(1));

-- Location: IOOBUF_X44_Y0_N19
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
	o => ww_HEX4(2));

-- Location: IOOBUF_X52_Y0_N19
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
	o => ww_HEX4(3));

-- Location: IOOBUF_X43_Y0_N2
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
	o => ww_HEX4(4));

-- Location: IOOBUF_X36_Y0_N2
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
	o => ww_HEX4(5));

-- Location: IOOBUF_X29_Y0_N19
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X29_Y0_N2
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
	o => ww_HEX5(0));

-- Location: IOOBUF_X22_Y0_N19
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
	o => ww_HEX5(1));

-- Location: IOOBUF_X43_Y0_N19
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
	o => ww_HEX5(2));

-- Location: IOOBUF_X50_Y0_N19
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
	o => ww_HEX5(3));

-- Location: IOOBUF_X0_Y21_N56
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
	o => ww_HEX5(4));

-- Location: IOOBUF_X0_Y21_N39
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
	o => ww_HEX5(5));

-- Location: IOOBUF_X44_Y0_N2
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOIBUF_X10_Y0_N92
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G4
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: LABCELL_X7_Y18_N36
\incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~9_sumout\ = SUM(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))
-- \incrementaPC|Add0~10\ = CARRY(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => \incrementaPC|Add0~6\,
	sumout => \incrementaPC|Add0~9_sumout\,
	cout => \incrementaPC|Add0~10\);

-- Location: LABCELL_X7_Y18_N39
\incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~13_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))
-- \incrementaPC|Add0~14\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \incrementaPC|Add0~10\,
	sumout => \incrementaPC|Add0~13_sumout\,
	cout => \incrementaPC|Add0~14\);

-- Location: LABCELL_X7_Y18_N42
\incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~17_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))
-- \incrementaPC|Add0~18\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \incrementaPC|Add0~14\,
	sumout => \incrementaPC|Add0~17_sumout\,
	cout => \incrementaPC|Add0~18\);

-- Location: LABCELL_X6_Y20_N3
\decoderInstru|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderInstru|Equal4~0_combout\ = ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~10_combout\ & ( (\ROM1|memROM~7_combout\ & !\ROM1|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \decoderInstru|Equal4~0_combout\);

-- Location: LABCELL_X7_Y18_N45
\incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~21_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))
-- \incrementaPC|Add0~22\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \incrementaPC|Add0~18\,
	sumout => \incrementaPC|Add0~21_sumout\,
	cout => \incrementaPC|Add0~22\);

-- Location: FF_X7_Y18_N46
\enderecoDeRetorno|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~21_sumout\,
	ena => \decoderInstru|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enderecoDeRetorno|DOUT\(5));

-- Location: LABCELL_X6_Y20_N15
\MUX2|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[4]~4_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~7_combout\ & ( (\ROM1|memROM~9_combout\ & !\ROM1|memROM~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \MUX2|saida_MUX[4]~4_combout\);

-- Location: LABCELL_X7_Y18_N3
\MUX2|saida_MUX[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[5]~7_combout\ = ( !\decoderInstru|Equal4~0_combout\ & ( (!\enderecoDeRetorno|DOUT\(5) & (\incrementaPC|Add0~21_sumout\ & (!\MUX2|saida_MUX[5]~5_combout\))) # (\enderecoDeRetorno|DOUT\(5) & (((\incrementaPC|Add0~21_sumout\ & 
-- !\MUX2|saida_MUX[5]~5_combout\)) # (\MUX2|saida_MUX[4]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001110101001100000111010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \enderecoDeRetorno|ALT_INV_DOUT\(5),
	datab => \incrementaPC|ALT_INV_Add0~21_sumout\,
	datac => \MUX2|ALT_INV_saida_MUX[5]~5_combout\,
	datad => \MUX2|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \decoderInstru|ALT_INV_Equal4~0_combout\,
	combout => \MUX2|saida_MUX[5]~7_combout\);

-- Location: FF_X7_Y18_N5
\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|saida_MUX[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

-- Location: LABCELL_X7_Y18_N48
\incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~25_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))
-- \incrementaPC|Add0~26\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(6),
	cin => \incrementaPC|Add0~22\,
	sumout => \incrementaPC|Add0~25_sumout\,
	cout => \incrementaPC|Add0~26\);

-- Location: LABCELL_X7_Y18_N51
\incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~29_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))
-- \incrementaPC|Add0~30\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(7),
	cin => \incrementaPC|Add0~26\,
	sumout => \incrementaPC|Add0~29_sumout\,
	cout => \incrementaPC|Add0~30\);

-- Location: FF_X7_Y18_N53
\enderecoDeRetorno|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~29_sumout\,
	ena => \decoderInstru|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enderecoDeRetorno|DOUT\(7));

-- Location: LABCELL_X7_Y18_N12
\MUX2|saida_MUX[7]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[7]~9_combout\ = ( \MUX2|saida_MUX[4]~4_combout\ & ( (!\decoderInstru|Equal4~0_combout\ & (((!\MUX2|saida_MUX[5]~5_combout\ & \incrementaPC|Add0~29_sumout\)) # (\enderecoDeRetorno|DOUT\(7)))) ) ) # ( !\MUX2|saida_MUX[4]~4_combout\ & ( 
-- (!\MUX2|saida_MUX[5]~5_combout\ & (!\decoderInstru|Equal4~0_combout\ & \incrementaPC|Add0~29_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000001100100011000000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|ALT_INV_saida_MUX[5]~5_combout\,
	datab => \decoderInstru|ALT_INV_Equal4~0_combout\,
	datac => \enderecoDeRetorno|ALT_INV_DOUT\(7),
	datad => \incrementaPC|ALT_INV_Add0~29_sumout\,
	dataf => \MUX2|ALT_INV_saida_MUX[4]~4_combout\,
	combout => \MUX2|saida_MUX[7]~9_combout\);

-- Location: FF_X7_Y18_N14
\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|saida_MUX[7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

-- Location: LABCELL_X7_Y18_N0
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( !\PC|DOUT\(6) & ( (!\PC|DOUT\(4) & !\PC|DOUT\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	dataf => \PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~0_combout\);

-- Location: LABCELL_X6_Y18_N27
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( \PC|DOUT\(0) & ( (!\PC|DOUT\(8) & (!\PC|DOUT\(1) & ((!\PC|DOUT\(3)) # (\PC|DOUT\(2))))) ) ) # ( !\PC|DOUT\(0) & ( (!\PC|DOUT\(2) & (!\PC|DOUT\(8) $ (((!\PC|DOUT\(3) & !\PC|DOUT\(1)))))) # (\PC|DOUT\(2) & (!\PC|DOUT\(8) & 
-- (!\PC|DOUT\(3) $ (!\PC|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110011001000001011001100100011000100000000001100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(1),
	dataf => \PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~1_combout\);

-- Location: LABCELL_X6_Y18_N24
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~0_combout\) # (\PC|DOUT\(7)) ) ) # ( !\ROM1|memROM~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~2_combout\);

-- Location: LABCELL_X7_Y18_N21
\decoderInstru|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderInstru|saida~3_combout\ = ( \ROM1|memROM~2_combout\ & ( (\ROM1|memROM~10_combout\ & (!\ROM1|memROM~7_combout\ & \ROM1|memROM~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \decoderInstru|saida~3_combout\);

-- Location: FF_X7_Y18_N44
\enderecoDeRetorno|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~17_sumout\,
	ena => \decoderInstru|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enderecoDeRetorno|DOUT\(4));

-- Location: LABCELL_X7_Y18_N27
\MUX2|saida_MUX[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[4]~6_combout\ = ( \incrementaPC|Add0~17_sumout\ & ( \MUX2|saida_MUX[5]~5_combout\ & ( (\enderecoDeRetorno|DOUT\(4) & (!\decoderInstru|Equal4~0_combout\ & \MUX2|saida_MUX[4]~4_combout\)) ) ) ) # ( !\incrementaPC|Add0~17_sumout\ & ( 
-- \MUX2|saida_MUX[5]~5_combout\ & ( (\enderecoDeRetorno|DOUT\(4) & (!\decoderInstru|Equal4~0_combout\ & \MUX2|saida_MUX[4]~4_combout\)) ) ) ) # ( \incrementaPC|Add0~17_sumout\ & ( !\MUX2|saida_MUX[5]~5_combout\ & ( !\decoderInstru|Equal4~0_combout\ ) ) ) # 
-- ( !\incrementaPC|Add0~17_sumout\ & ( !\MUX2|saida_MUX[5]~5_combout\ & ( (\enderecoDeRetorno|DOUT\(4) & (!\decoderInstru|Equal4~0_combout\ & \MUX2|saida_MUX[4]~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000111100001111000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \enderecoDeRetorno|ALT_INV_DOUT\(4),
	datac => \decoderInstru|ALT_INV_Equal4~0_combout\,
	datad => \MUX2|ALT_INV_saida_MUX[4]~4_combout\,
	datae => \incrementaPC|ALT_INV_Add0~17_sumout\,
	dataf => \MUX2|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \MUX2|saida_MUX[4]~6_combout\);

-- Location: FF_X7_Y18_N29
\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|saida_MUX[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

-- Location: LABCELL_X7_Y18_N6
\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( !\PC|DOUT\(5) & ( !\PC|DOUT\(8) & ( (!\PC|DOUT\(6) & (!\PC|DOUT\(4) & !\PC|DOUT\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \PC|ALT_INV_DOUT\(5),
	dataf => \PC|ALT_INV_DOUT\(8),
	combout => \ROM1|memROM~8_combout\);

-- Location: LABCELL_X6_Y18_N18
\ROM1|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~17_combout\ = ( \ROM1|memROM~8_combout\ & ( (!\PC|DOUT\(2) & (!\PC|DOUT\(0) & !\PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \ROM1|memROM~17_combout\);

-- Location: FF_X7_Y18_N40
\enderecoDeRetorno|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~13_sumout\,
	ena => \decoderInstru|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enderecoDeRetorno|DOUT\(3));

-- Location: LABCELL_X5_Y18_N45
\MUX2|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[3]~3_combout\ = ( \MUX2|Equal2~0_combout\ & ( (!\MUX2|Equal1~0_combout\ & (\ROM1|memROM~17_combout\)) # (\MUX2|Equal1~0_combout\ & ((\enderecoDeRetorno|DOUT\(3)))) ) ) # ( !\MUX2|Equal2~0_combout\ & ( \incrementaPC|Add0~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \incrementaPC|ALT_INV_Add0~13_sumout\,
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \enderecoDeRetorno|ALT_INV_DOUT\(3),
	datad => \MUX2|ALT_INV_Equal1~0_combout\,
	dataf => \MUX2|ALT_INV_Equal2~0_combout\,
	combout => \MUX2|saida_MUX[3]~3_combout\);

-- Location: FF_X5_Y18_N47
\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

-- Location: LABCELL_X5_Y18_N12
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \PC|DOUT\(1) & ( (\PC|DOUT\(0) & ((\PC|DOUT\(2)) # (\PC|DOUT\(3)))) ) ) # ( !\PC|DOUT\(1) & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(0) & !\PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000011000011110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~5_combout\);

-- Location: LABCELL_X6_Y20_N6
\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \ROM1|memROM~9_combout\);

-- Location: LABCELL_X7_Y19_N6
\decoderInstru|saida[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderInstru|saida[4]~2_combout\ = ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~7_combout\ & !\ROM1|memROM~9_combout\) ) ) ) # ( !\ROM1|memROM~10_combout\ & ( \ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~7_combout\ & 
-- \ROM1|memROM~9_combout\) ) ) ) # ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~7_combout\ & !\ROM1|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000111100001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \decoderInstru|saida[4]~2_combout\);

-- Location: LABCELL_X6_Y18_N6
\decoderInstru|saida[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderInstru|saida[3]~0_combout\ = ( \ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~5_combout\ & (!\PC|DOUT\(8) & (\ROM1|memROM~4_combout\ & \ROM1|memROM~3_combout\))) ) ) # ( !\ROM1|memROM~6_combout\ & ( (\ROM1|memROM~5_combout\ & (!\PC|DOUT\(8) & 
-- (!\ROM1|memROM~4_combout\ & \ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \decoderInstru|saida[3]~0_combout\);

-- Location: LABCELL_X6_Y18_N48
\decoderInstru|saida[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderInstru|saida[3]~1_combout\ = ( \decoderInstru|saida[3]~0_combout\ & ( \ROM1|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \decoderInstru|ALT_INV_saida[3]~0_combout\,
	combout => \decoderInstru|saida[3]~1_combout\);

-- Location: LABCELL_X7_Y19_N48
\ULA1|saida[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~1_combout\ = ( \decoderInstru|saida[3]~1_combout\ & ( !\decoderInstru|saida[4]~2_combout\ ) ) # ( !\decoderInstru|saida[3]~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \decoderInstru|ALT_INV_saida[4]~2_combout\,
	dataf => \decoderInstru|ALT_INV_saida[3]~1_combout\,
	combout => \ULA1|saida[7]~1_combout\);

-- Location: LABCELL_X6_Y20_N39
\decoderInstru|saida[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderInstru|saida[5]~4_combout\ = ( !\ROM1|memROM~7_combout\ & ( \ROM1|memROM~9_combout\ & ( (\ROM1|memROM~2_combout\ & !\ROM1|memROM~10_combout\) ) ) ) # ( \ROM1|memROM~7_combout\ & ( !\ROM1|memROM~9_combout\ & ( \ROM1|memROM~2_combout\ ) ) ) # ( 
-- !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~9_combout\ & ( !\ROM1|memROM~2_combout\ $ (\ROM1|memROM~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001010101010101010101000100010001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \decoderInstru|saida[5]~4_combout\);

-- Location: LABCELL_X5_Y18_N9
\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ( \PC|DOUT\(0) & ( (!\PC|DOUT\(1) & (!\PC|DOUT\(3) & \PC|DOUT\(2))) ) ) # ( !\PC|DOUT\(0) & ( (!\PC|DOUT\(1) & (\PC|DOUT\(3) & \PC|DOUT\(2))) # (\PC|DOUT\(1) & (!\PC|DOUT\(3) & !\PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001010010100000000101000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~11_combout\);

-- Location: LABCELL_X5_Y18_N24
\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = (\ROM1|memROM~11_combout\ & \ROM1|memROM~8_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \ROM1|memROM~12_combout\);

-- Location: FF_X7_Y19_N44
\REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida\(0),
	ena => \decoderInstru|saida[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(0));

-- Location: LABCELL_X5_Y18_N30
\ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~15_combout\ = ( \PC|DOUT\(0) & ( (!\PC|DOUT\(3) & !\PC|DOUT\(1)) ) ) # ( !\PC|DOUT\(0) & ( (!\PC|DOUT\(2) & (!\PC|DOUT\(3) $ (\PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(1),
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~15_combout\);

-- Location: LABCELL_X5_Y18_N57
\ROM1|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~16_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \ROM1|memROM~16_combout\);

-- Location: LABCELL_X6_Y18_N54
\ROM1|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~18_combout\ = ( \PC|DOUT\(0) & ( (\PC|DOUT\(3) & (!\PC|DOUT\(8) & \PC|DOUT\(2))) ) ) # ( !\PC|DOUT\(0) & ( (!\PC|DOUT\(3) & (\PC|DOUT\(8) & !\PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(8),
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~18_combout\);

-- Location: LABCELL_X6_Y18_N21
\RAM1|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|process_0~0_combout\ = ( !\ROM1|memROM~4_combout\ & ( (!\PC|DOUT\(1) & (\ROM1|memROM~3_combout\ & \ROM1|memROM~18_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~18_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|process_0~0_combout\);

-- Location: LABCELL_X6_Y18_N42
\decoderInstru|saida[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderInstru|saida[2]~7_combout\ = ( \ROM1|memROM~6_combout\ & ( (\ROM1|memROM~3_combout\ & ((!\PC|DOUT\(8)) # (\ROM1|memROM~4_combout\))) ) ) # ( !\ROM1|memROM~6_combout\ & ( (\ROM1|memROM~3_combout\ & (((!\PC|DOUT\(8) & \ROM1|memROM~5_combout\)) # 
-- (\ROM1|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010001000100010101000101010001010100010101000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \PC|ALT_INV_DOUT\(8),
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \decoderInstru|saida[2]~7_combout\);

-- Location: LABCELL_X6_Y18_N9
\decoderInstru|saida[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderInstru|saida[2]~5_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\PC|DOUT\(7) & \ROM1|memROM~0_combout\) ) ) # ( !\ROM1|memROM~1_combout\ & ( (\ROM1|memROM~5_combout\ & (!\PC|DOUT\(8) & (!\PC|DOUT\(7) & \ROM1|memROM~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \decoderInstru|saida[2]~5_combout\);

-- Location: LABCELL_X6_Y18_N30
\decoderInstru|saida~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderInstru|saida~6_combout\ = ( \ROM1|memROM~0_combout\ & ( \ROM1|memROM~1_combout\ & ( (\ROM1|memROM~6_combout\ & (!\ROM1|memROM~5_combout\ & (!\PC|DOUT\(8) & !\PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \PC|ALT_INV_DOUT\(8),
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \decoderInstru|saida~6_combout\);

-- Location: LABCELL_X5_Y18_N18
\RAM1|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|process_0~1_combout\ = ( \decoderInstru|saida[2]~5_combout\ & ( \decoderInstru|saida~6_combout\ & ( (\RAM1|process_0~0_combout\ & \decoderInstru|saida[2]~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~0_combout\,
	datab => \decoderInstru|ALT_INV_saida[2]~7_combout\,
	datae => \decoderInstru|ALT_INV_saida[2]~5_combout\,
	dataf => \decoderInstru|ALT_INV_saida~6_combout\,
	combout => \RAM1|process_0~1_combout\);

-- Location: LABCELL_X5_Y18_N15
\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = ( !\PC|DOUT\(0) & ( (!\PC|DOUT\(1) & ((!\PC|DOUT\(2)) # (\PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000100010101010100010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datab => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~13_combout\);

-- Location: LABCELL_X5_Y18_N6
\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = ( \ROM1|memROM~8_combout\ & ( \ROM1|memROM~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \ROM1|memROM~14_combout\);

-- Location: LABCELL_X5_Y19_N54
\RAM1|ram~192\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~192_combout\ = ( \ROM1|memROM~12_combout\ & ( !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~16_combout\ & (\RAM1|process_0~1_combout\ & \ROM1|memROM~17_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \RAM1|ALT_INV_process_0~1_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM1|ram~192_combout\);

-- Location: FF_X5_Y19_N44
\RAM1|ram~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~89_q\);

-- Location: LABCELL_X5_Y20_N27
\RAM1|ram~97feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~97feeder_combout\ = ( \REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT\(0),
	combout => \RAM1|ram~97feeder_combout\);

-- Location: LABCELL_X6_Y20_N57
\RAM1|ram~193\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~193_combout\ = ( !\ROM1|memROM~15_combout\ & ( \ROM1|memROM~8_combout\ & ( (!\PC|DOUT\(0) & (!\PC|DOUT\(3) & !\PC|DOUT\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(2),
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~193_combout\);

-- Location: LABCELL_X5_Y18_N42
\RAM1|ram~185\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~185_combout\ = ( \ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~11_combout\ & \ROM1|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM1|ram~185_combout\);

-- Location: LABCELL_X5_Y20_N0
\RAM1|ram~194\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~194_combout\ = ( \decoderInstru|saida~6_combout\ & ( \decoderInstru|saida[2]~7_combout\ & ( (\RAM1|ram~193_combout\ & (\decoderInstru|saida[2]~5_combout\ & (\RAM1|process_0~0_combout\ & \RAM1|ram~185_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~193_combout\,
	datab => \decoderInstru|ALT_INV_saida[2]~5_combout\,
	datac => \RAM1|ALT_INV_process_0~0_combout\,
	datad => \RAM1|ALT_INV_ram~185_combout\,
	datae => \decoderInstru|ALT_INV_saida~6_combout\,
	dataf => \decoderInstru|ALT_INV_saida[2]~7_combout\,
	combout => \RAM1|ram~194_combout\);

-- Location: FF_X5_Y20_N28
\RAM1|ram~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM1|ram~97feeder_combout\,
	ena => \RAM1|ram~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~97_q\);

-- Location: LABCELL_X6_Y19_N0
\RAM1|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~147_combout\ = ( \ROM1|memROM~12_combout\ & ( (\RAM1|ram~89_q\ & !\ROM1|memROM~14_combout\) ) ) # ( !\ROM1|memROM~12_combout\ & ( (\ROM1|memROM~14_combout\ & \RAM1|ram~97_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~89_q\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \RAM1|ALT_INV_ram~97_q\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~147_combout\);

-- Location: LABCELL_X6_Y20_N18
\RAM1|ram~49feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~49feeder_combout\ = ( \REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT\(0),
	combout => \RAM1|ram~49feeder_combout\);

-- Location: LABCELL_X6_Y18_N3
\RAM1|ram~182\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~182_combout\ = ( \RAM1|process_0~0_combout\ & ( \decoderInstru|saida[2]~5_combout\ & ( (\decoderInstru|saida~6_combout\ & (\decoderInstru|saida[2]~7_combout\ & !\ROM1|memROM~17_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \decoderInstru|ALT_INV_saida~6_combout\,
	datac => \decoderInstru|ALT_INV_saida[2]~7_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \RAM1|ALT_INV_process_0~0_combout\,
	dataf => \decoderInstru|ALT_INV_saida[2]~5_combout\,
	combout => \RAM1|ram~182_combout\);

-- Location: LABCELL_X6_Y20_N51
\RAM1|ram~188\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~188_combout\ = ( !\ROM1|memROM~12_combout\ & ( !\ROM1|memROM~14_combout\ & ( (\ROM1|memROM~16_combout\ & \RAM1|ram~182_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \RAM1|ALT_INV_ram~182_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM1|ram~188_combout\);

-- Location: FF_X6_Y20_N20
\RAM1|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM1|ram~49feeder_combout\,
	ena => \RAM1|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~49_q\);

-- Location: LABCELL_X5_Y17_N42
\RAM1|ram~57feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~57feeder_combout\ = ( \REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT\(0),
	combout => \RAM1|ram~57feeder_combout\);

-- Location: LABCELL_X5_Y17_N54
\RAM1|ram~189\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~189_combout\ = ( \RAM1|ram~182_combout\ & ( \ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~14_combout\ & \ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \RAM1|ALT_INV_ram~182_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~189_combout\);

-- Location: FF_X5_Y17_N44
\RAM1|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM1|ram~57feeder_combout\,
	ena => \RAM1|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~57_q\);

-- Location: LABCELL_X5_Y18_N0
\RAM1|ram~190\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~190_combout\ = ( \RAM1|ram~185_combout\ & ( (\ROM1|memROM~16_combout\ & \RAM1|ram~182_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \RAM1|ALT_INV_ram~182_combout\,
	dataf => \RAM1|ALT_INV_ram~185_combout\,
	combout => \RAM1|ram~190_combout\);

-- Location: FF_X5_Y18_N23
\RAM1|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~65_q\);

-- Location: LABCELL_X5_Y20_N30
\RAM1|ram~73feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~73feeder_combout\ = ( \REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT\(0),
	combout => \RAM1|ram~73feeder_combout\);

-- Location: LABCELL_X5_Y20_N39
\RAM1|ram~191\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~191_combout\ = ( \RAM1|ram~182_combout\ & ( \ROM1|memROM~12_combout\ & ( (\ROM1|memROM~14_combout\ & \ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \RAM1|ALT_INV_ram~182_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~191_combout\);

-- Location: FF_X5_Y20_N32
\RAM1|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM1|ram~73feeder_combout\,
	ena => \RAM1|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~73_q\);

-- Location: LABCELL_X5_Y20_N48
\RAM1|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~146_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~12_combout\ & ( \RAM1|ram~73_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~12_combout\ & ( \RAM1|ram~57_q\ ) ) ) # ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~12_combout\ & ( 
-- \RAM1|ram~65_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~12_combout\ & ( \RAM1|ram~49_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~49_q\,
	datab => \RAM1|ALT_INV_ram~57_q\,
	datac => \RAM1|ALT_INV_ram~65_q\,
	datad => \RAM1|ALT_INV_ram~73_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~146_combout\);

-- Location: LABCELL_X7_Y17_N15
\RAM1|ram~17feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~17feeder_combout\ = ( \REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT\(0),
	combout => \RAM1|ram~17feeder_combout\);

-- Location: LABCELL_X6_Y17_N57
\RAM1|ram~183\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~183_combout\ = ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~16_combout\ & \RAM1|ram~182_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \RAM1|ALT_INV_ram~182_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~183_combout\);

-- Location: FF_X7_Y17_N16
\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM1|ram~17feeder_combout\,
	ena => \RAM1|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

-- Location: LABCELL_X6_Y17_N48
\RAM1|ram~184\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~184_combout\ = ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~16_combout\ & \RAM1|ram~182_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \RAM1|ALT_INV_ram~182_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~184_combout\);

-- Location: FF_X6_Y17_N14
\RAM1|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~25_q\);

-- Location: LABCELL_X5_Y17_N21
\RAM1|ram~41feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~41feeder_combout\ = ( \REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT\(0),
	combout => \RAM1|ram~41feeder_combout\);

-- Location: LABCELL_X5_Y17_N39
\RAM1|ram~187\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~187_combout\ = ( \RAM1|ram~182_combout\ & ( \ROM1|memROM~12_combout\ & ( (\ROM1|memROM~14_combout\ & !\ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \RAM1|ALT_INV_ram~182_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~187_combout\);

-- Location: FF_X5_Y17_N22
\RAM1|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM1|ram~41feeder_combout\,
	ena => \RAM1|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~41_q\);

-- Location: LABCELL_X6_Y17_N27
\RAM1|ram~186\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~186_combout\ = ( \RAM1|ram~182_combout\ & ( !\ROM1|memROM~16_combout\ & ( \RAM1|ram~185_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~185_combout\,
	datae => \RAM1|ALT_INV_ram~182_combout\,
	dataf => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \RAM1|ram~186_combout\);

-- Location: FF_X6_Y17_N11
\RAM1|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~33_q\);

-- Location: LABCELL_X6_Y17_N36
\RAM1|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~145_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~12_combout\ & ( \RAM1|ram~41_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~12_combout\ & ( \RAM1|ram~25_q\ ) ) ) # ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~12_combout\ & ( 
-- \RAM1|ram~33_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~12_combout\ & ( \RAM1|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~17_q\,
	datab => \RAM1|ALT_INV_ram~25_q\,
	datac => \RAM1|ALT_INV_ram~41_q\,
	datad => \RAM1|ALT_INV_ram~33_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~145_combout\);

-- Location: MLABCELL_X4_Y18_N0
\RAM1|ram~195\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~195_combout\ = ( !\PC|DOUT\(0) & ( \ROM1|memROM~15_combout\ & ( (!\PC|DOUT\(2) & (!\PC|DOUT\(3) & \ROM1|memROM~8_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \PC|ALT_INV_DOUT\(0),
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM1|ram~195_combout\);

-- Location: MLABCELL_X4_Y18_N57
\RAM1|ram~196\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~196_combout\ = ( \RAM1|ram~195_combout\ & ( \RAM1|process_0~1_combout\ & ( (\ROM1|memROM~12_combout\ & !\ROM1|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \RAM1|ALT_INV_ram~195_combout\,
	dataf => \RAM1|ALT_INV_process_0~1_combout\,
	combout => \RAM1|ram~196_combout\);

-- Location: FF_X4_Y18_N44
\RAM1|ram~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~121_q\);

-- Location: MLABCELL_X4_Y18_N51
\RAM1|ram~198\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~198_combout\ = ( \RAM1|ram~195_combout\ & ( \RAM1|process_0~1_combout\ & ( (\ROM1|memROM~12_combout\ & \ROM1|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \RAM1|ALT_INV_ram~195_combout\,
	dataf => \RAM1|ALT_INV_process_0~1_combout\,
	combout => \RAM1|ram~198_combout\);

-- Location: FF_X5_Y18_N38
\RAM1|ram~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~137_q\);

-- Location: MLABCELL_X4_Y18_N6
\RAM1|ram~197\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~197_combout\ = ( \decoderInstru|saida~6_combout\ & ( \decoderInstru|saida[2]~5_combout\ & ( (\decoderInstru|saida[2]~7_combout\ & (\RAM1|ram~195_combout\ & (\RAM1|process_0~0_combout\ & \RAM1|ram~185_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderInstru|ALT_INV_saida[2]~7_combout\,
	datab => \RAM1|ALT_INV_ram~195_combout\,
	datac => \RAM1|ALT_INV_process_0~0_combout\,
	datad => \RAM1|ALT_INV_ram~185_combout\,
	datae => \decoderInstru|ALT_INV_saida~6_combout\,
	dataf => \decoderInstru|ALT_INV_saida[2]~5_combout\,
	combout => \RAM1|ram~197_combout\);

-- Location: FF_X4_Y18_N34
\RAM1|ram~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~129_q\);

-- Location: LABCELL_X5_Y18_N39
\RAM1|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~148_combout\ = ( \RAM1|ram~129_q\ & ( \ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~14_combout\ & (\RAM1|ram~121_q\)) # (\ROM1|memROM~14_combout\ & ((\RAM1|ram~137_q\))) ) ) ) # ( !\RAM1|ram~129_q\ & ( \ROM1|memROM~12_combout\ & ( 
-- (!\ROM1|memROM~14_combout\ & (\RAM1|ram~121_q\)) # (\ROM1|memROM~14_combout\ & ((\RAM1|ram~137_q\))) ) ) ) # ( \RAM1|ram~129_q\ & ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~14_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~121_q\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \RAM1|ALT_INV_ram~137_q\,
	datae => \RAM1|ALT_INV_ram~129_q\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~148_combout\);

-- Location: LABCELL_X6_Y19_N12
\RAM1|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~149_combout\ = ( \RAM1|ram~145_combout\ & ( \RAM1|ram~148_combout\ & ( (!\ROM1|memROM~17_combout\ & (((!\ROM1|memROM~16_combout\) # (\RAM1|ram~146_combout\)))) # (\ROM1|memROM~17_combout\ & (((\ROM1|memROM~16_combout\)) # 
-- (\RAM1|ram~147_combout\))) ) ) ) # ( !\RAM1|ram~145_combout\ & ( \RAM1|ram~148_combout\ & ( (!\ROM1|memROM~17_combout\ & (((\RAM1|ram~146_combout\ & \ROM1|memROM~16_combout\)))) # (\ROM1|memROM~17_combout\ & (((\ROM1|memROM~16_combout\)) # 
-- (\RAM1|ram~147_combout\))) ) ) ) # ( \RAM1|ram~145_combout\ & ( !\RAM1|ram~148_combout\ & ( (!\ROM1|memROM~17_combout\ & (((!\ROM1|memROM~16_combout\) # (\RAM1|ram~146_combout\)))) # (\ROM1|memROM~17_combout\ & (\RAM1|ram~147_combout\ & 
-- ((!\ROM1|memROM~16_combout\)))) ) ) ) # ( !\RAM1|ram~145_combout\ & ( !\RAM1|ram~148_combout\ & ( (!\ROM1|memROM~17_combout\ & (((\RAM1|ram~146_combout\ & \ROM1|memROM~16_combout\)))) # (\ROM1|memROM~17_combout\ & (\RAM1|ram~147_combout\ & 
-- ((!\ROM1|memROM~16_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100110111010000110000010001001111111101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~147_combout\,
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \RAM1|ALT_INV_ram~146_combout\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \RAM1|ALT_INV_ram~145_combout\,
	dataf => \RAM1|ALT_INV_ram~148_combout\,
	combout => \RAM1|ram~149_combout\);

-- Location: LABCELL_X6_Y19_N24
\MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[0]~0_combout\ = ( \RAM1|ram~149_combout\ & ( (!\decoderInstru|saida[5]~4_combout\) # (\ROM1|memROM~12_combout\) ) ) # ( !\RAM1|ram~149_combout\ & ( (\decoderInstru|saida[5]~4_combout\ & \ROM1|memROM~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderInstru|ALT_INV_saida[5]~4_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \RAM1|ALT_INV_ram~149_combout\,
	combout => \MUX1|saida_MUX[0]~0_combout\);

-- Location: LABCELL_X6_Y18_N45
\ROM1|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~19_combout\ = ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~0_combout\ ) ) # ( !\ROM1|memROM~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~19_combout\);

-- Location: LABCELL_X6_Y19_N30
\ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~34_cout\ = CARRY(( ((!\decoderInstru|saida[3]~0_combout\) # ((!\ROM1|memROM~19_combout\ & !\PC|DOUT\(7)))) # (\decoderInstru|saida[4]~2_combout\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderInstru|ALT_INV_saida[4]~2_combout\,
	datab => \decoderInstru|ALT_INV_saida[3]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \PC|ALT_INV_DOUT\(7),
	cin => GND,
	cout => \ULA1|Add0~34_cout\);

-- Location: LABCELL_X6_Y19_N33
\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( !\MUX1|saida_MUX[0]~0_combout\ $ (((!\decoderInstru|saida[4]~2_combout\ & (\decoderInstru|saida[3]~0_combout\ & \ROM1|memROM~2_combout\)))) ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))
-- \ULA1|Add0~2\ = CARRY(( !\MUX1|saida_MUX[0]~0_combout\ $ (((!\decoderInstru|saida[4]~2_combout\ & (\decoderInstru|saida[3]~0_combout\ & \ROM1|memROM~2_combout\)))) ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000011010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderInstru|ALT_INV_saida[4]~2_combout\,
	datab => \decoderInstru|ALT_INV_saida[3]~0_combout\,
	datac => \MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \REGA|ALT_INV_DOUT\(0),
	cin => \ULA1|Add0~34_cout\,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

-- Location: LABCELL_X7_Y19_N39
\ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~0_combout\ = ( \ULA1|Add0~1_sumout\ & ( \decoderInstru|saida[4]~2_combout\ & ( \MUX1|saida_MUX[0]~0_combout\ ) ) ) # ( !\ULA1|Add0~1_sumout\ & ( \decoderInstru|saida[4]~2_combout\ & ( \MUX1|saida_MUX[0]~0_combout\ ) ) ) # ( 
-- \ULA1|Add0~1_sumout\ & ( !\decoderInstru|saida[4]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datae => \ULA1|ALT_INV_Add0~1_sumout\,
	dataf => \decoderInstru|ALT_INV_saida[4]~2_combout\,
	combout => \ULA1|saida[0]~0_combout\);

-- Location: LABCELL_X7_Y19_N42
\ULA1|saida[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida\(0) = ( \ULA1|saida[0]~0_combout\ & ( (\ULA1|saida[7]~1_combout\) # (\ULA1|saida\(0)) ) ) # ( !\ULA1|saida[0]~0_combout\ & ( (\ULA1|saida\(0) & !\ULA1|saida[7]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|ALT_INV_saida\(0),
	datac => \ULA1|ALT_INV_saida[7]~1_combout\,
	dataf => \ULA1|ALT_INV_saida[0]~0_combout\,
	combout => \ULA1|saida\(0));

-- Location: LABCELL_X7_Y19_N18
\flagIgual|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \flagIgual|DOUT~0_combout\ = ( \flagIgual|DOUT~q\ & ( \ROM1|memROM~9_combout\ & ( (((!\ROM1|memROM~2_combout\) # (\ROM1|memROM~10_combout\)) # (\ULA1|saida\(0))) # (\ROM1|memROM~7_combout\) ) ) ) # ( !\flagIgual|DOUT~q\ & ( \ROM1|memROM~9_combout\ & ( 
-- (!\ROM1|memROM~7_combout\ & (\ULA1|saida\(0) & (!\ROM1|memROM~10_combout\ & \ROM1|memROM~2_combout\))) ) ) ) # ( \flagIgual|DOUT~q\ & ( !\ROM1|memROM~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000001000001111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \ULA1|ALT_INV_saida\(0),
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \flagIgual|ALT_INV_DOUT~q\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \flagIgual|DOUT~0_combout\);

-- Location: FF_X7_Y19_N20
\flagIgual|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \flagIgual|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flagIgual|DOUT~q\);

-- Location: LABCELL_X6_Y18_N12
\MUX2|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|Equal2~0_combout\ = ( \ROM1|memROM~2_combout\ & ( (\ROM1|memROM~9_combout\ & (!\ROM1|memROM~7_combout\ $ (!\ROM1|memROM~10_combout\))) ) ) # ( !\ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~9_combout\ & (\ROM1|memROM~7_combout\ & 
-- ((!\ROM1|memROM~10_combout\) # (\flagIgual|DOUT~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000010000010100000001000000101010100000000010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datab => \flagIgual|ALT_INV_DOUT~q\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \MUX2|Equal2~0_combout\);

-- Location: LABCELL_X7_Y18_N30
\incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~1_sumout\ = SUM(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \incrementaPC|Add0~2\ = CARRY(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \incrementaPC|Add0~1_sumout\,
	cout => \incrementaPC|Add0~2\);

-- Location: LABCELL_X7_Y18_N33
\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \PC|DOUT\(1) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))
-- \incrementaPC|Add0~6\ = CARRY(( \PC|DOUT\(1) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(1),
	cin => \incrementaPC|Add0~2\,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

-- Location: FF_X7_Y18_N35
\enderecoDeRetorno|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~5_sumout\,
	ena => \decoderInstru|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enderecoDeRetorno|DOUT\(1));

-- Location: LABCELL_X5_Y18_N51
\MUX2|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[1]~1_combout\ = ( \incrementaPC|Add0~5_sumout\ & ( (!\MUX2|Equal2~0_combout\) # ((!\MUX2|Equal1~0_combout\ & (\ROM1|memROM~14_combout\)) # (\MUX2|Equal1~0_combout\ & ((\enderecoDeRetorno|DOUT\(1))))) ) ) # ( !\incrementaPC|Add0~5_sumout\ & 
-- ( (\MUX2|Equal2~0_combout\ & ((!\MUX2|Equal1~0_combout\ & (\ROM1|memROM~14_combout\)) # (\MUX2|Equal1~0_combout\ & ((\enderecoDeRetorno|DOUT\(1)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001111001110110111111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|ALT_INV_Equal1~0_combout\,
	datab => \MUX2|ALT_INV_Equal2~0_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \enderecoDeRetorno|ALT_INV_DOUT\(1),
	dataf => \incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \MUX2|saida_MUX[1]~1_combout\);

-- Location: FF_X5_Y18_N53
\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

-- Location: FF_X7_Y18_N38
\enderecoDeRetorno|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~9_sumout\,
	ena => \decoderInstru|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enderecoDeRetorno|DOUT\(2));

-- Location: LABCELL_X5_Y18_N3
\MUX2|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[2]~2_combout\ = ( \MUX2|Equal2~0_combout\ & ( (!\MUX2|Equal1~0_combout\ & (\ROM1|memROM~16_combout\)) # (\MUX2|Equal1~0_combout\ & ((\enderecoDeRetorno|DOUT\(2)))) ) ) # ( !\MUX2|Equal2~0_combout\ & ( \incrementaPC|Add0~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \incrementaPC|ALT_INV_Add0~9_sumout\,
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \enderecoDeRetorno|ALT_INV_DOUT\(2),
	datad => \MUX2|ALT_INV_Equal1~0_combout\,
	dataf => \MUX2|ALT_INV_Equal2~0_combout\,
	combout => \MUX2|saida_MUX[2]~2_combout\);

-- Location: FF_X5_Y18_N5
\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

-- Location: LABCELL_X5_Y18_N54
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \PC|DOUT\(1) & ( (!\PC|DOUT\(3) & !\PC|DOUT\(0)) ) ) # ( !\PC|DOUT\(1) & ( (!\PC|DOUT\(0) & (!\PC|DOUT\(2) $ (\PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010010000100100001001000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(0),
	dataf => \PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~6_combout\);

-- Location: LABCELL_X6_Y20_N33
\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( \ROM1|memROM~6_combout\ & ( \ROM1|memROM~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \ROM1|memROM~10_combout\);

-- Location: LABCELL_X7_Y18_N18
\MUX2|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[5]~5_combout\ = ( \ROM1|memROM~7_combout\ & ( (!\ROM1|memROM~10_combout\ & (\ROM1|memROM~2_combout\ & ((\ROM1|memROM~9_combout\)))) # (\ROM1|memROM~10_combout\ & (!\ROM1|memROM~2_combout\ & (\flagIgual|DOUT~q\ & !\ROM1|memROM~9_combout\))) 
-- ) ) # ( !\ROM1|memROM~7_combout\ & ( (\ROM1|memROM~10_combout\ & (\ROM1|memROM~2_combout\ & \ROM1|memROM~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000100001000100000010000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \flagIgual|ALT_INV_DOUT~q\,
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \MUX2|saida_MUX[5]~5_combout\);

-- Location: FF_X7_Y18_N49
\enderecoDeRetorno|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~25_sumout\,
	ena => \decoderInstru|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enderecoDeRetorno|DOUT\(6));

-- Location: LABCELL_X7_Y18_N15
\MUX2|saida_MUX[6]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[6]~8_combout\ = ( \MUX2|saida_MUX[4]~4_combout\ & ( (!\decoderInstru|Equal4~0_combout\ & (((!\MUX2|saida_MUX[5]~5_combout\ & \incrementaPC|Add0~25_sumout\)) # (\enderecoDeRetorno|DOUT\(6)))) ) ) # ( !\MUX2|saida_MUX[4]~4_combout\ & ( 
-- (!\MUX2|saida_MUX[5]~5_combout\ & (!\decoderInstru|Equal4~0_combout\ & \incrementaPC|Add0~25_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000110011000000100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|ALT_INV_saida_MUX[5]~5_combout\,
	datab => \decoderInstru|ALT_INV_Equal4~0_combout\,
	datac => \incrementaPC|ALT_INV_Add0~25_sumout\,
	datad => \enderecoDeRetorno|ALT_INV_DOUT\(6),
	dataf => \MUX2|ALT_INV_saida_MUX[4]~4_combout\,
	combout => \MUX2|saida_MUX[6]~8_combout\);

-- Location: FF_X7_Y18_N17
\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|saida_MUX[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

-- Location: LABCELL_X6_Y18_N57
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( !\PC|DOUT\(5) & ( (!\PC|DOUT\(6) & (!\PC|DOUT\(7) & !\PC|DOUT\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~3_combout\);

-- Location: LABCELL_X7_Y18_N54
\incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~33_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(8),
	cin => \incrementaPC|Add0~30\,
	sumout => \incrementaPC|Add0~33_sumout\);

-- Location: FF_X7_Y18_N55
\enderecoDeRetorno|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~33_sumout\,
	ena => \decoderInstru|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enderecoDeRetorno|DOUT\(8));

-- Location: LABCELL_X6_Y18_N36
\MUX2|saida_MUX[8]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[8]~10_combout\ = ( !\MUX2|Equal1~0_combout\ & ( (!\MUX2|Equal2~0_combout\ & ((((\incrementaPC|Add0~33_sumout\))))) # (\MUX2|Equal2~0_combout\ & (\ROM1|memROM~3_combout\ & (!\PC|DOUT\(1) & ((\ROM1|memROM~18_combout\))))) ) ) # ( 
-- \MUX2|Equal1~0_combout\ & ( ((!\MUX2|Equal2~0_combout\ & (((\incrementaPC|Add0~33_sumout\)))) # (\MUX2|Equal2~0_combout\ & (\enderecoDeRetorno|DOUT\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011001100000000111100111100010000110111000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \MUX2|ALT_INV_Equal2~0_combout\,
	datac => \enderecoDeRetorno|ALT_INV_DOUT\(8),
	datad => \incrementaPC|ALT_INV_Add0~33_sumout\,
	datae => \MUX2|ALT_INV_Equal1~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~18_combout\,
	datag => \PC|ALT_INV_DOUT\(1),
	combout => \MUX2|saida_MUX[8]~10_combout\);

-- Location: FF_X6_Y18_N38
\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|saida_MUX[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

-- Location: LABCELL_X6_Y18_N51
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \PC|DOUT\(0) & ( (!\PC|DOUT\(8) & ((!\PC|DOUT\(3) & (!\PC|DOUT\(1) & !\PC|DOUT\(2))) # (\PC|DOUT\(3) & ((\PC|DOUT\(2)))))) ) ) # ( !\PC|DOUT\(0) & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(2) & (!\PC|DOUT\(8) $ (!\PC|DOUT\(1))))) # 
-- (\PC|DOUT\(3) & (!\PC|DOUT\(8) & (!\PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100000100000011010000010000010000000001000101000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(1),
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~4_combout\);

-- Location: LABCELL_X6_Y18_N15
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = (\ROM1|memROM~4_combout\ & \ROM1|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~7_combout\);

-- Location: LABCELL_X5_Y18_N27
\MUX2|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|Equal1~0_combout\ = ( \ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~10_combout\) # (!\ROM1|memROM~9_combout\)) # (\ROM1|memROM~7_combout\) ) ) # ( !\ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~7_combout\) # (((!\flagIgual|DOUT~q\ & 
-- \ROM1|memROM~10_combout\)) # (\ROM1|memROM~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111011111111101011101111111111111111111101011111111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \flagIgual|ALT_INV_DOUT~q\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \MUX2|Equal1~0_combout\);

-- Location: FF_X7_Y18_N31
\enderecoDeRetorno|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~1_sumout\,
	ena => \decoderInstru|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enderecoDeRetorno|DOUT\(0));

-- Location: LABCELL_X5_Y18_N48
\MUX2|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[0]~0_combout\ = ( \incrementaPC|Add0~1_sumout\ & ( (!\MUX2|Equal2~0_combout\) # ((!\MUX2|Equal1~0_combout\ & (\ROM1|memROM~12_combout\)) # (\MUX2|Equal1~0_combout\ & ((\enderecoDeRetorno|DOUT\(0))))) ) ) # ( !\incrementaPC|Add0~1_sumout\ & 
-- ( (\MUX2|Equal2~0_combout\ & ((!\MUX2|Equal1~0_combout\ & (\ROM1|memROM~12_combout\)) # (\MUX2|Equal1~0_combout\ & ((\enderecoDeRetorno|DOUT\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001111001110110111111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2|ALT_INV_Equal1~0_combout\,
	datab => \MUX2|ALT_INV_Equal2~0_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \enderecoDeRetorno|ALT_INV_DOUT\(0),
	dataf => \incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \MUX2|saida_MUX[0]~0_combout\);

-- Location: FF_X5_Y18_N50
\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

-- Location: FF_X5_Y19_N55
\RAM1|ram~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~90_q\);

-- Location: FF_X6_Y17_N5
\RAM1|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~26_q\);

-- Location: FF_X4_Y18_N2
\RAM1|ram~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~122_q\);

-- Location: FF_X5_Y17_N53
\RAM1|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~58_q\);

-- Location: LABCELL_X5_Y19_N15
\RAM1|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~151_combout\ = ( \RAM1|ram~58_q\ & ( \ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~16_combout\ & (\RAM1|ram~90_q\)) # (\ROM1|memROM~16_combout\ & ((\RAM1|ram~122_q\))) ) ) ) # ( !\RAM1|ram~58_q\ & ( \ROM1|memROM~17_combout\ & ( 
-- (!\ROM1|memROM~16_combout\ & (\RAM1|ram~90_q\)) # (\ROM1|memROM~16_combout\ & ((\RAM1|ram~122_q\))) ) ) ) # ( \RAM1|ram~58_q\ & ( !\ROM1|memROM~17_combout\ & ( (\ROM1|memROM~16_combout\) # (\RAM1|ram~26_q\) ) ) ) # ( !\RAM1|ram~58_q\ & ( 
-- !\ROM1|memROM~17_combout\ & ( (\RAM1|ram~26_q\ & !\ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~90_q\,
	datab => \RAM1|ALT_INV_ram~26_q\,
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \RAM1|ALT_INV_ram~122_q\,
	datae => \RAM1|ALT_INV_ram~58_q\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~151_combout\);

-- Location: FF_X5_Y20_N40
\RAM1|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~74_q\);

-- Location: FF_X5_Y17_N19
\RAM1|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~42_q\);

-- Location: FF_X4_Y18_N38
\RAM1|ram~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~138_q\);

-- Location: LABCELL_X5_Y19_N18
\RAM1|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~153_combout\ = ( \RAM1|ram~138_q\ & ( (!\ROM1|memROM~16_combout\ & (!\ROM1|memROM~17_combout\ & ((\RAM1|ram~42_q\)))) # (\ROM1|memROM~16_combout\ & (((\RAM1|ram~74_q\)) # (\ROM1|memROM~17_combout\))) ) ) # ( !\RAM1|ram~138_q\ & ( 
-- (!\ROM1|memROM~17_combout\ & ((!\ROM1|memROM~16_combout\ & ((\RAM1|ram~42_q\))) # (\ROM1|memROM~16_combout\ & (\RAM1|ram~74_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000010101100111010001010110011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \RAM1|ALT_INV_ram~74_q\,
	datad => \RAM1|ALT_INV_ram~42_q\,
	dataf => \RAM1|ALT_INV_ram~138_q\,
	combout => \RAM1|ram~153_combout\);

-- Location: LABCELL_X6_Y20_N21
\RAM1|ram~50feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~50feeder_combout\ = ( \REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~50feeder_combout\);

-- Location: FF_X6_Y20_N22
\RAM1|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM1|ram~50feeder_combout\,
	ena => \RAM1|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~50_q\);

-- Location: FF_X6_Y17_N55
\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

-- Location: LABCELL_X5_Y19_N45
\RAM1|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~150_combout\ = ( \RAM1|ram~18_q\ & ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~16_combout\) # (\RAM1|ram~50_q\) ) ) ) # ( !\RAM1|ram~18_q\ & ( !\ROM1|memROM~17_combout\ & ( (\ROM1|memROM~16_combout\ & \RAM1|ram~50_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \RAM1|ALT_INV_ram~50_q\,
	datae => \RAM1|ALT_INV_ram~18_q\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~150_combout\);

-- Location: FF_X6_Y18_N49
\RAM1|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~66_q\);

-- Location: FF_X4_Y18_N16
\RAM1|ram~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~130_q\);

-- Location: FF_X5_Y20_N2
\RAM1|ram~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~98_q\);

-- Location: FF_X6_Y17_N25
\RAM1|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~34_q\);

-- Location: MLABCELL_X4_Y19_N33
\RAM1|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~152_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~17_combout\ & ( \RAM1|ram~130_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~17_combout\ & ( \RAM1|ram~98_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~17_combout\ & ( 
-- \RAM1|ram~66_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~17_combout\ & ( \RAM1|ram~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~66_q\,
	datab => \RAM1|ALT_INV_ram~130_q\,
	datac => \RAM1|ALT_INV_ram~98_q\,
	datad => \RAM1|ALT_INV_ram~34_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~152_combout\);

-- Location: LABCELL_X5_Y19_N24
\MUX1|saida_MUX[1]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[1]~10_combout\ = ( !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~14_combout\ & ((((\RAM1|ram~150_combout\ & !\decoderInstru|saida[5]~4_combout\))))) # (\ROM1|memROM~14_combout\ & ((((\decoderInstru|saida[5]~4_combout\)) # 
-- (\RAM1|ram~152_combout\)))) ) ) # ( \ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~14_combout\ & (\RAM1|ram~151_combout\ & (((!\decoderInstru|saida[5]~4_combout\))))) # (\ROM1|memROM~14_combout\ & ((((\decoderInstru|saida[5]~4_combout\)) # 
-- (\RAM1|ram~153_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010110101111001001110010011101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datab => \RAM1|ALT_INV_ram~151_combout\,
	datac => \RAM1|ALT_INV_ram~153_combout\,
	datad => \RAM1|ALT_INV_ram~150_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \decoderInstru|ALT_INV_saida[5]~4_combout\,
	datag => \RAM1|ALT_INV_ram~152_combout\,
	combout => \MUX1|saida_MUX[1]~10_combout\);

-- Location: LABCELL_X6_Y19_N36
\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( !\MUX1|saida_MUX[1]~10_combout\ $ (((\ROM1|memROM~2_combout\ & (\decoderInstru|saida[3]~0_combout\ & !\decoderInstru|saida[4]~2_combout\)))) ) + ( \REGA|DOUT\(1) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( !\MUX1|saida_MUX[1]~10_combout\ $ (((\ROM1|memROM~2_combout\ & (\decoderInstru|saida[3]~0_combout\ & !\decoderInstru|saida[4]~2_combout\)))) ) + ( \REGA|DOUT\(1) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110111100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \decoderInstru|ALT_INV_saida[3]~0_combout\,
	datac => \decoderInstru|ALT_INV_saida[4]~2_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[1]~10_combout\,
	dataf => \REGA|ALT_INV_DOUT\(1),
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

-- Location: LABCELL_X7_Y19_N24
\ULA1|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~2_combout\ = ( \decoderInstru|saida[4]~2_combout\ & ( \MUX1|saida_MUX[1]~10_combout\ ) ) # ( !\decoderInstru|saida[4]~2_combout\ & ( \ULA1|Add0~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA1|ALT_INV_Add0~5_sumout\,
	datac => \MUX1|ALT_INV_saida_MUX[1]~10_combout\,
	dataf => \decoderInstru|ALT_INV_saida[4]~2_combout\,
	combout => \ULA1|saida[1]~2_combout\);

-- Location: LABCELL_X7_Y19_N45
\ULA1|saida[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida\(1) = ( \ULA1|saida[1]~2_combout\ & ( (\ULA1|saida\(1)) # (\ULA1|saida[7]~1_combout\) ) ) # ( !\ULA1|saida[1]~2_combout\ & ( (!\ULA1|saida[7]~1_combout\ & \ULA1|saida\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[7]~1_combout\,
	datad => \ULA1|ALT_INV_saida\(1),
	dataf => \ULA1|ALT_INV_saida[1]~2_combout\,
	combout => \ULA1|saida\(1));

-- Location: FF_X7_Y19_N47
\REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida\(1),
	ena => \decoderInstru|saida[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(1));

-- Location: FF_X5_Y20_N44
\RAM1|ram~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~99_q\);

-- Location: FF_X5_Y19_N38
\RAM1|ram~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~91_q\);

-- Location: LABCELL_X5_Y19_N36
\RAM1|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~156_combout\ = ( \RAM1|ram~91_q\ & ( \ROM1|memROM~14_combout\ & ( (\RAM1|ram~99_q\ & !\ROM1|memROM~12_combout\) ) ) ) # ( !\RAM1|ram~91_q\ & ( \ROM1|memROM~14_combout\ & ( (\RAM1|ram~99_q\ & !\ROM1|memROM~12_combout\) ) ) ) # ( \RAM1|ram~91_q\ & 
-- ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~12_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~99_q\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \RAM1|ALT_INV_ram~91_q\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM1|ram~156_combout\);

-- Location: FF_X4_Y18_N20
\RAM1|ram~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~139_q\);

-- Location: FF_X4_Y18_N5
\RAM1|ram~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~123_q\);

-- Location: FF_X4_Y18_N7
\RAM1|ram~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~131_q\);

-- Location: MLABCELL_X4_Y18_N24
\RAM1|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~157_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~12_combout\ & ( \RAM1|ram~139_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~12_combout\ & ( \RAM1|ram~123_q\ ) ) ) # ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~12_combout\ & 
-- ( \RAM1|ram~131_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~139_q\,
	datac => \RAM1|ALT_INV_ram~123_q\,
	datad => \RAM1|ALT_INV_ram~131_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~157_combout\);

-- Location: FF_X5_Y17_N37
\RAM1|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~43_q\);

-- Location: FF_X6_Y17_N41
\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

-- Location: FF_X6_Y17_N43
\RAM1|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~35_q\);

-- Location: FF_X6_Y17_N23
\RAM1|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~27_q\);

-- Location: LABCELL_X6_Y17_N21
\RAM1|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~154_combout\ = ( \RAM1|ram~27_q\ & ( \ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~14_combout\) # (\RAM1|ram~43_q\) ) ) ) # ( !\RAM1|ram~27_q\ & ( \ROM1|memROM~12_combout\ & ( (\RAM1|ram~43_q\ & \ROM1|memROM~14_combout\) ) ) ) # ( \RAM1|ram~27_q\ 
-- & ( !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~14_combout\ & (\RAM1|ram~19_q\)) # (\ROM1|memROM~14_combout\ & ((\RAM1|ram~35_q\))) ) ) ) # ( !\RAM1|ram~27_q\ & ( !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~14_combout\ & (\RAM1|ram~19_q\)) # 
-- (\ROM1|memROM~14_combout\ & ((\RAM1|ram~35_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~43_q\,
	datab => \RAM1|ALT_INV_ram~19_q\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \RAM1|ALT_INV_ram~35_q\,
	datae => \RAM1|ALT_INV_ram~27_q\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~154_combout\);

-- Location: FF_X5_Y17_N46
\RAM1|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~59_q\);

-- Location: FF_X5_Y18_N56
\RAM1|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~67_q\);

-- Location: FF_X6_Y20_N53
\RAM1|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~51_q\);

-- Location: FF_X5_Y20_N11
\RAM1|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~75_q\);

-- Location: LABCELL_X5_Y20_N9
\RAM1|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~155_combout\ = ( \RAM1|ram~75_q\ & ( \ROM1|memROM~14_combout\ & ( (\ROM1|memROM~12_combout\) # (\RAM1|ram~67_q\) ) ) ) # ( !\RAM1|ram~75_q\ & ( \ROM1|memROM~14_combout\ & ( (\RAM1|ram~67_q\ & !\ROM1|memROM~12_combout\) ) ) ) # ( \RAM1|ram~75_q\ 
-- & ( !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~12_combout\ & ((\RAM1|ram~51_q\))) # (\ROM1|memROM~12_combout\ & (\RAM1|ram~59_q\)) ) ) ) # ( !\RAM1|ram~75_q\ & ( !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~12_combout\ & ((\RAM1|ram~51_q\))) # 
-- (\ROM1|memROM~12_combout\ & (\RAM1|ram~59_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~59_q\,
	datab => \RAM1|ALT_INV_ram~67_q\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \RAM1|ALT_INV_ram~51_q\,
	datae => \RAM1|ALT_INV_ram~75_q\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM1|ram~155_combout\);

-- Location: LABCELL_X5_Y19_N9
\MUX1|saida_MUX[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[2]~6_combout\ = ( !\ROM1|memROM~17_combout\ & ( ((!\decoderInstru|saida[5]~4_combout\ & ((!\ROM1|memROM~16_combout\ & ((\RAM1|ram~154_combout\))) # (\ROM1|memROM~16_combout\ & (\RAM1|ram~155_combout\)))) # 
-- (\decoderInstru|saida[5]~4_combout\ & (((\ROM1|memROM~16_combout\))))) ) ) # ( \ROM1|memROM~17_combout\ & ( (!\decoderInstru|saida[5]~4_combout\ & ((!\ROM1|memROM~16_combout\ & (\RAM1|ram~156_combout\)) # (\ROM1|memROM~16_combout\ & 
-- (((\RAM1|ram~157_combout\)))))) # (\decoderInstru|saida[5]~4_combout\ & ((((\ROM1|memROM~16_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000111111010001000011111111001100001111110100010000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~156_combout\,
	datab => \decoderInstru|ALT_INV_saida[5]~4_combout\,
	datac => \RAM1|ALT_INV_ram~157_combout\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \RAM1|ALT_INV_ram~154_combout\,
	datag => \RAM1|ALT_INV_ram~155_combout\,
	combout => \MUX1|saida_MUX[2]~6_combout\);

-- Location: LABCELL_X6_Y19_N39
\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( !\MUX1|saida_MUX[2]~6_combout\ $ (((\ROM1|memROM~2_combout\ & (\decoderInstru|saida[3]~0_combout\ & !\decoderInstru|saida[4]~2_combout\)))) ) + ( \REGA|DOUT\(2) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( !\MUX1|saida_MUX[2]~6_combout\ $ (((\ROM1|memROM~2_combout\ & (\decoderInstru|saida[3]~0_combout\ & !\decoderInstru|saida[4]~2_combout\)))) ) + ( \REGA|DOUT\(2) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110111100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \decoderInstru|ALT_INV_saida[3]~0_combout\,
	datac => \decoderInstru|ALT_INV_saida[4]~2_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[2]~6_combout\,
	dataf => \REGA|ALT_INV_DOUT\(2),
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

-- Location: LABCELL_X6_Y19_N3
\ULA1|saida[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~3_combout\ = ( \decoderInstru|saida[4]~2_combout\ & ( \MUX1|saida_MUX[2]~6_combout\ ) ) # ( !\decoderInstru|saida[4]~2_combout\ & ( \ULA1|Add0~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA1|ALT_INV_Add0~9_sumout\,
	datad => \MUX1|ALT_INV_saida_MUX[2]~6_combout\,
	dataf => \decoderInstru|ALT_INV_saida[4]~2_combout\,
	combout => \ULA1|saida[2]~3_combout\);

-- Location: LABCELL_X7_Y19_N51
\ULA1|saida[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida\(2) = ( \ULA1|saida[2]~3_combout\ & ( (\ULA1|saida[7]~1_combout\) # (\ULA1|saida\(2)) ) ) # ( !\ULA1|saida[2]~3_combout\ & ( (\ULA1|saida\(2) & !\ULA1|saida[7]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida\(2),
	datad => \ULA1|ALT_INV_saida[7]~1_combout\,
	dataf => \ULA1|ALT_INV_saida[2]~3_combout\,
	combout => \ULA1|saida\(2));

-- Location: FF_X7_Y19_N53
\REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida\(2),
	ena => \decoderInstru|saida[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(2));

-- Location: FF_X6_Y17_N1
\RAM1|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~28_q\);

-- Location: FF_X5_Y19_N32
\RAM1|ram~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~92_q\);

-- Location: FF_X5_Y17_N59
\RAM1|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~60_q\);

-- Location: FF_X5_Y19_N50
\RAM1|ram~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~124_q\);

-- Location: LABCELL_X5_Y19_N48
\RAM1|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~159_combout\ = ( \RAM1|ram~124_q\ & ( \ROM1|memROM~17_combout\ & ( (\ROM1|memROM~16_combout\) # (\RAM1|ram~92_q\) ) ) ) # ( !\RAM1|ram~124_q\ & ( \ROM1|memROM~17_combout\ & ( (\RAM1|ram~92_q\ & !\ROM1|memROM~16_combout\) ) ) ) # ( 
-- \RAM1|ram~124_q\ & ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~16_combout\ & (\RAM1|ram~28_q\)) # (\ROM1|memROM~16_combout\ & ((\RAM1|ram~60_q\))) ) ) ) # ( !\RAM1|ram~124_q\ & ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~16_combout\ & 
-- (\RAM1|ram~28_q\)) # (\ROM1|memROM~16_combout\ & ((\RAM1|ram~60_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~28_q\,
	datab => \RAM1|ALT_INV_ram~92_q\,
	datac => \RAM1|ALT_INV_ram~60_q\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \RAM1|ALT_INV_ram~124_q\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~159_combout\);

-- Location: FF_X6_Y20_N25
\RAM1|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~52_q\);

-- Location: LABCELL_X7_Y17_N9
\RAM1|ram~20feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~20feeder_combout\ = ( \REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~20feeder_combout\);

-- Location: FF_X7_Y17_N10
\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM1|ram~20feeder_combout\,
	ena => \RAM1|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

-- Location: LABCELL_X5_Y18_N33
\RAM1|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~158_combout\ = ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~16_combout\ & ((\RAM1|ram~20_q\))) # (\ROM1|memROM~16_combout\ & (\RAM1|ram~52_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~52_q\,
	datac => \RAM1|ALT_INV_ram~20_q\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~158_combout\);

-- Location: FF_X5_Y19_N2
\RAM1|ram~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~140_q\);

-- Location: FF_X5_Y20_N50
\RAM1|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~76_q\);

-- Location: MLABCELL_X4_Y17_N48
\RAM1|ram~44feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~44feeder_combout\ = ( \REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~44feeder_combout\);

-- Location: FF_X4_Y17_N50
\RAM1|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM1|ram~44feeder_combout\,
	ena => \RAM1|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~44_q\);

-- Location: LABCELL_X5_Y19_N3
\RAM1|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~161_combout\ = ( \ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ & ( \RAM1|ram~140_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( \ROM1|memROM~16_combout\ & ( \RAM1|ram~76_q\ ) ) ) # ( !\ROM1|memROM~17_combout\ & ( !\ROM1|memROM~16_combout\ & 
-- ( \RAM1|ram~44_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~140_q\,
	datac => \RAM1|ALT_INV_ram~76_q\,
	datad => \RAM1|ALT_INV_ram~44_q\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \RAM1|ram~161_combout\);

-- Location: FF_X5_Y20_N4
\RAM1|ram~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~100_q\);

-- Location: FF_X4_Y18_N10
\RAM1|ram~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~132_q\);

-- Location: FF_X6_Y17_N7
\RAM1|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~36_q\);

-- Location: FF_X4_Y19_N20
\RAM1|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~68_q\);

-- Location: MLABCELL_X4_Y19_N18
\RAM1|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~160_combout\ = ( \RAM1|ram~68_q\ & ( \ROM1|memROM~16_combout\ & ( (!\ROM1|memROM~17_combout\) # (\RAM1|ram~132_q\) ) ) ) # ( !\RAM1|ram~68_q\ & ( \ROM1|memROM~16_combout\ & ( (\RAM1|ram~132_q\ & \ROM1|memROM~17_combout\) ) ) ) # ( 
-- \RAM1|ram~68_q\ & ( !\ROM1|memROM~16_combout\ & ( (!\ROM1|memROM~17_combout\ & ((\RAM1|ram~36_q\))) # (\ROM1|memROM~17_combout\ & (\RAM1|ram~100_q\)) ) ) ) # ( !\RAM1|ram~68_q\ & ( !\ROM1|memROM~16_combout\ & ( (!\ROM1|memROM~17_combout\ & 
-- ((\RAM1|ram~36_q\))) # (\ROM1|memROM~17_combout\ & (\RAM1|ram~100_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~100_q\,
	datab => \RAM1|ALT_INV_ram~132_q\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \RAM1|ALT_INV_ram~36_q\,
	datae => \RAM1|ALT_INV_ram~68_q\,
	dataf => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \RAM1|ram~160_combout\);

-- Location: LABCELL_X5_Y19_N30
\RAM1|ram~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~162_combout\ = ( \RAM1|ram~161_combout\ & ( \RAM1|ram~160_combout\ & ( ((!\ROM1|memROM~12_combout\ & ((\RAM1|ram~158_combout\))) # (\ROM1|memROM~12_combout\ & (\RAM1|ram~159_combout\))) # (\ROM1|memROM~14_combout\) ) ) ) # ( 
-- !\RAM1|ram~161_combout\ & ( \RAM1|ram~160_combout\ & ( (!\ROM1|memROM~14_combout\ & ((!\ROM1|memROM~12_combout\ & ((\RAM1|ram~158_combout\))) # (\ROM1|memROM~12_combout\ & (\RAM1|ram~159_combout\)))) # (\ROM1|memROM~14_combout\ & 
-- (((!\ROM1|memROM~12_combout\)))) ) ) ) # ( \RAM1|ram~161_combout\ & ( !\RAM1|ram~160_combout\ & ( (!\ROM1|memROM~14_combout\ & ((!\ROM1|memROM~12_combout\ & ((\RAM1|ram~158_combout\))) # (\ROM1|memROM~12_combout\ & (\RAM1|ram~159_combout\)))) # 
-- (\ROM1|memROM~14_combout\ & (((\ROM1|memROM~12_combout\)))) ) ) ) # ( !\RAM1|ram~161_combout\ & ( !\RAM1|ram~160_combout\ & ( (!\ROM1|memROM~14_combout\ & ((!\ROM1|memROM~12_combout\ & ((\RAM1|ram~158_combout\))) # (\ROM1|memROM~12_combout\ & 
-- (\RAM1|ram~159_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000001111100011100110100111101000011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~159_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \RAM1|ALT_INV_ram~158_combout\,
	datae => \RAM1|ALT_INV_ram~161_combout\,
	dataf => \RAM1|ALT_INV_ram~160_combout\,
	combout => \RAM1|ram~162_combout\);

-- Location: LABCELL_X6_Y19_N18
\MUX1|saida_MUX[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[3]~1_combout\ = ( \RAM1|ram~162_combout\ & ( (!\decoderInstru|saida[5]~4_combout\) # (\ROM1|memROM~17_combout\) ) ) # ( !\RAM1|ram~162_combout\ & ( (\decoderInstru|saida[5]~4_combout\ & \ROM1|memROM~17_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \decoderInstru|ALT_INV_saida[5]~4_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \RAM1|ALT_INV_ram~162_combout\,
	combout => \MUX1|saida_MUX[3]~1_combout\);

-- Location: LABCELL_X6_Y19_N42
\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( !\MUX1|saida_MUX[3]~1_combout\ $ (((\ROM1|memROM~2_combout\ & (\decoderInstru|saida[3]~0_combout\ & !\decoderInstru|saida[4]~2_combout\)))) ) + ( \REGA|DOUT\(3) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( !\MUX1|saida_MUX[3]~1_combout\ $ (((\ROM1|memROM~2_combout\ & (\decoderInstru|saida[3]~0_combout\ & !\decoderInstru|saida[4]~2_combout\)))) ) + ( \REGA|DOUT\(3) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110111100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \decoderInstru|ALT_INV_saida[3]~0_combout\,
	datac => \decoderInstru|ALT_INV_saida[4]~2_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[3]~1_combout\,
	dataf => \REGA|ALT_INV_DOUT\(3),
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

-- Location: LABCELL_X7_Y19_N12
\ULA1|saida[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~4_combout\ = ( \MUX1|saida_MUX[3]~1_combout\ & ( (\decoderInstru|saida[4]~2_combout\) # (\ULA1|Add0~13_sumout\) ) ) # ( !\MUX1|saida_MUX[3]~1_combout\ & ( (\ULA1|Add0~13_sumout\ & !\decoderInstru|saida[4]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~13_sumout\,
	datab => \decoderInstru|ALT_INV_saida[4]~2_combout\,
	dataf => \MUX1|ALT_INV_saida_MUX[3]~1_combout\,
	combout => \ULA1|saida[3]~4_combout\);

-- Location: LABCELL_X7_Y19_N27
\ULA1|saida[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida\(3) = ( \ULA1|saida[3]~4_combout\ & ( (\ULA1|saida\(3)) # (\ULA1|saida[7]~1_combout\) ) ) # ( !\ULA1|saida[3]~4_combout\ & ( (!\ULA1|saida[7]~1_combout\ & \ULA1|saida\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA1|ALT_INV_saida[7]~1_combout\,
	datad => \ULA1|ALT_INV_saida\(3),
	dataf => \ULA1|ALT_INV_saida[3]~4_combout\,
	combout => \ULA1|saida\(3));

-- Location: FF_X7_Y19_N29
\REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida\(3),
	ena => \decoderInstru|saida[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(3));

-- Location: FF_X5_Y19_N58
\RAM1|ram~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~93_q\);

-- Location: FF_X5_Y20_N20
\RAM1|ram~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~101_q\);

-- Location: LABCELL_X5_Y20_N18
\RAM1|ram~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~165_combout\ = ( \RAM1|ram~101_q\ & ( \ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~14_combout\ & \RAM1|ram~93_q\) ) ) ) # ( !\RAM1|ram~101_q\ & ( \ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~14_combout\ & \RAM1|ram~93_q\) ) ) ) # ( 
-- \RAM1|ram~101_q\ & ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~14_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \RAM1|ALT_INV_ram~93_q\,
	datae => \RAM1|ALT_INV_ram~101_q\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~165_combout\);

-- Location: FF_X4_Y18_N53
\RAM1|ram~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~141_q\);

-- Location: FF_X4_Y18_N29
\RAM1|ram~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~133_q\);

-- Location: FF_X4_Y18_N59
\RAM1|ram~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~125_q\);

-- Location: MLABCELL_X4_Y18_N30
\RAM1|ram~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~166_combout\ = ( \ROM1|memROM~14_combout\ & ( \ROM1|memROM~12_combout\ & ( \RAM1|ram~141_q\ ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~12_combout\ & ( \RAM1|ram~125_q\ ) ) ) # ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~12_combout\ & 
-- ( \RAM1|ram~133_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~141_q\,
	datac => \RAM1|ALT_INV_ram~133_q\,
	datad => \RAM1|ALT_INV_ram~125_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~166_combout\);

-- Location: FF_X6_Y20_N11
\RAM1|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~53_q\);

-- Location: FF_X5_Y18_N7
\RAM1|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~69_q\);

-- Location: FF_X5_Y17_N34
\RAM1|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~61_q\);

-- Location: FF_X5_Y20_N17
\RAM1|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~77_q\);

-- Location: LABCELL_X5_Y20_N15
\RAM1|ram~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~164_combout\ = ( \RAM1|ram~77_q\ & ( \ROM1|memROM~12_combout\ & ( (\ROM1|memROM~14_combout\) # (\RAM1|ram~61_q\) ) ) ) # ( !\RAM1|ram~77_q\ & ( \ROM1|memROM~12_combout\ & ( (\RAM1|ram~61_q\ & !\ROM1|memROM~14_combout\) ) ) ) # ( \RAM1|ram~77_q\ 
-- & ( !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~14_combout\ & (\RAM1|ram~53_q\)) # (\ROM1|memROM~14_combout\ & ((\RAM1|ram~69_q\))) ) ) ) # ( !\RAM1|ram~77_q\ & ( !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~14_combout\ & (\RAM1|ram~53_q\)) # 
-- (\ROM1|memROM~14_combout\ & ((\RAM1|ram~69_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~53_q\,
	datab => \RAM1|ALT_INV_ram~69_q\,
	datac => \RAM1|ALT_INV_ram~61_q\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \RAM1|ALT_INV_ram~77_q\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~164_combout\);

-- Location: FF_X6_Y17_N50
\RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

-- Location: FF_X5_Y17_N11
\RAM1|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~45_q\);

-- Location: FF_X6_Y17_N34
\RAM1|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~29_q\);

-- Location: FF_X6_Y17_N46
\RAM1|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~37_q\);

-- Location: LABCELL_X5_Y20_N54
\RAM1|ram~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~163_combout\ = ( \ROM1|memROM~14_combout\ & ( \RAM1|ram~37_q\ & ( (!\ROM1|memROM~12_combout\) # (\RAM1|ram~45_q\) ) ) ) # ( !\ROM1|memROM~14_combout\ & ( \RAM1|ram~37_q\ & ( (!\ROM1|memROM~12_combout\ & (\RAM1|ram~21_q\)) # 
-- (\ROM1|memROM~12_combout\ & ((\RAM1|ram~29_q\))) ) ) ) # ( \ROM1|memROM~14_combout\ & ( !\RAM1|ram~37_q\ & ( (\RAM1|ram~45_q\ & \ROM1|memROM~12_combout\) ) ) ) # ( !\ROM1|memROM~14_combout\ & ( !\RAM1|ram~37_q\ & ( (!\ROM1|memROM~12_combout\ & 
-- (\RAM1|ram~21_q\)) # (\ROM1|memROM~12_combout\ & ((\RAM1|ram~29_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111000000000011001101010101000011111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~21_q\,
	datab => \RAM1|ALT_INV_ram~45_q\,
	datac => \RAM1|ALT_INV_ram~29_q\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \RAM1|ALT_INV_ram~37_q\,
	combout => \RAM1|ram~163_combout\);

-- Location: LABCELL_X5_Y20_N42
\MUX1|saida_MUX[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[4]~2_combout\ = ( !\ROM1|memROM~17_combout\ & ( (!\decoderInstru|saida[5]~4_combout\ & ((!\ROM1|memROM~16_combout\ & (\RAM1|ram~163_combout\)) # (\ROM1|memROM~16_combout\ & (((\RAM1|ram~164_combout\)))))) ) ) # ( \ROM1|memROM~17_combout\ & 
-- ( (!\decoderInstru|saida[5]~4_combout\ & ((!\ROM1|memROM~16_combout\ & (\RAM1|ram~165_combout\)) # (\ROM1|memROM~16_combout\ & (((\RAM1|ram~166_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000100000001000000010000100110001001100010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \decoderInstru|ALT_INV_saida[5]~4_combout\,
	datac => \RAM1|ALT_INV_ram~165_combout\,
	datad => \RAM1|ALT_INV_ram~166_combout\,
	datae => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \RAM1|ALT_INV_ram~164_combout\,
	datag => \RAM1|ALT_INV_ram~163_combout\,
	combout => \MUX1|saida_MUX[4]~2_combout\);

-- Location: LABCELL_X6_Y19_N45
\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( !\MUX1|saida_MUX[4]~2_combout\ $ (((\ROM1|memROM~2_combout\ & (\decoderInstru|saida[3]~0_combout\ & !\decoderInstru|saida[4]~2_combout\)))) ) + ( \REGA|DOUT\(4) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~18\ = CARRY(( !\MUX1|saida_MUX[4]~2_combout\ $ (((\ROM1|memROM~2_combout\ & (\decoderInstru|saida[3]~0_combout\ & !\decoderInstru|saida[4]~2_combout\)))) ) + ( \REGA|DOUT\(4) ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110111100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \decoderInstru|ALT_INV_saida[3]~0_combout\,
	datac => \decoderInstru|ALT_INV_saida[4]~2_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[4]~2_combout\,
	dataf => \REGA|ALT_INV_DOUT\(4),
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

-- Location: LABCELL_X7_Y19_N54
\ULA1|saida[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~5_combout\ = ( \ULA1|Add0~17_sumout\ & ( \decoderInstru|saida[4]~2_combout\ & ( \MUX1|saida_MUX[4]~2_combout\ ) ) ) # ( !\ULA1|Add0~17_sumout\ & ( \decoderInstru|saida[4]~2_combout\ & ( \MUX1|saida_MUX[4]~2_combout\ ) ) ) # ( 
-- \ULA1|Add0~17_sumout\ & ( !\decoderInstru|saida[4]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX1|ALT_INV_saida_MUX[4]~2_combout\,
	datae => \ULA1|ALT_INV_Add0~17_sumout\,
	dataf => \decoderInstru|ALT_INV_saida[4]~2_combout\,
	combout => \ULA1|saida[4]~5_combout\);

-- Location: LABCELL_X7_Y19_N15
\ULA1|saida[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida\(4) = ( \ULA1|saida[4]~5_combout\ & ( (\ULA1|saida[7]~1_combout\) # (\ULA1|saida\(4)) ) ) # ( !\ULA1|saida[4]~5_combout\ & ( (\ULA1|saida\(4) & !\ULA1|saida[7]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA1|ALT_INV_saida\(4),
	datad => \ULA1|ALT_INV_saida[7]~1_combout\,
	dataf => \ULA1|ALT_INV_saida[4]~5_combout\,
	combout => \ULA1|saida\(4));

-- Location: FF_X7_Y19_N17
\REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida\(4),
	ena => \decoderInstru|saida[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(4));

-- Location: FF_X6_Y20_N38
\RAM1|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~54_q\);

-- Location: FF_X6_Y17_N53
\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

-- Location: LABCELL_X5_Y17_N12
\RAM1|ram~167\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~167_combout\ = ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~17_combout\ & ( \RAM1|ram~54_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~17_combout\ & ( \RAM1|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~54_q\,
	datac => \RAM1|ALT_INV_ram~22_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~167_combout\);

-- Location: FF_X6_Y17_N29
\RAM1|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~38_q\);

-- Location: FF_X5_Y18_N19
\RAM1|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~70_q\);

-- Location: FF_X4_Y18_N32
\RAM1|ram~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~134_q\);

-- Location: FF_X5_Y20_N26
\RAM1|ram~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~102_q\);

-- Location: LABCELL_X5_Y17_N48
\RAM1|ram~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~169_combout\ = ( \ROM1|memROM~16_combout\ & ( \ROM1|memROM~17_combout\ & ( \RAM1|ram~134_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( \ROM1|memROM~17_combout\ & ( \RAM1|ram~102_q\ ) ) ) # ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~17_combout\ & 
-- ( \RAM1|ram~70_q\ ) ) ) # ( !\ROM1|memROM~16_combout\ & ( !\ROM1|memROM~17_combout\ & ( \RAM1|ram~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~38_q\,
	datab => \RAM1|ALT_INV_ram~70_q\,
	datac => \RAM1|ALT_INV_ram~134_q\,
	datad => \RAM1|ALT_INV_ram~102_q\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~169_combout\);

-- Location: LABCELL_X6_Y17_N15
\RAM1|ram~30feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~30feeder_combout\ = ( \REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT\(5),
	combout => \RAM1|ram~30feeder_combout\);

-- Location: FF_X6_Y17_N17
\RAM1|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM1|ram~30feeder_combout\,
	ena => \RAM1|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~30_q\);

-- Location: FF_X4_Y18_N56
\RAM1|ram~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~126_q\);

-- Location: FF_X5_Y19_N35
\RAM1|ram~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~94_q\);

-- Location: FF_X5_Y17_N29
\RAM1|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~62_q\);

-- Location: LABCELL_X5_Y17_N27
\RAM1|ram~168\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~168_combout\ = ( \RAM1|ram~62_q\ & ( \ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~16_combout\ & ((\RAM1|ram~94_q\))) # (\ROM1|memROM~16_combout\ & (\RAM1|ram~126_q\)) ) ) ) # ( !\RAM1|ram~62_q\ & ( \ROM1|memROM~17_combout\ & ( 
-- (!\ROM1|memROM~16_combout\ & ((\RAM1|ram~94_q\))) # (\ROM1|memROM~16_combout\ & (\RAM1|ram~126_q\)) ) ) ) # ( \RAM1|ram~62_q\ & ( !\ROM1|memROM~17_combout\ & ( (\ROM1|memROM~16_combout\) # (\RAM1|ram~30_q\) ) ) ) # ( !\RAM1|ram~62_q\ & ( 
-- !\ROM1|memROM~17_combout\ & ( (\RAM1|ram~30_q\ & !\ROM1|memROM~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~30_q\,
	datab => \RAM1|ALT_INV_ram~126_q\,
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \RAM1|ALT_INV_ram~94_q\,
	datae => \RAM1|ALT_INV_ram~62_q\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~168_combout\);

-- Location: FF_X5_Y17_N2
\RAM1|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~46_q\);

-- Location: FF_X5_Y20_N34
\RAM1|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~78_q\);

-- Location: FF_X4_Y18_N41
\RAM1|ram~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~142_q\);

-- Location: MLABCELL_X4_Y18_N39
\RAM1|ram~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~170_combout\ = ( \RAM1|ram~142_q\ & ( (!\ROM1|memROM~17_combout\ & ((!\ROM1|memROM~16_combout\ & (\RAM1|ram~46_q\)) # (\ROM1|memROM~16_combout\ & ((\RAM1|ram~78_q\))))) # (\ROM1|memROM~17_combout\ & (((\ROM1|memROM~16_combout\)))) ) ) # ( 
-- !\RAM1|ram~142_q\ & ( (!\ROM1|memROM~17_combout\ & ((!\ROM1|memROM~16_combout\ & (\RAM1|ram~46_q\)) # (\ROM1|memROM~16_combout\ & ((\RAM1|ram~78_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010001001010010111100100000001010100010010100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \RAM1|ALT_INV_ram~46_q\,
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \RAM1|ALT_INV_ram~78_q\,
	datae => \RAM1|ALT_INV_ram~142_q\,
	combout => \RAM1|ram~170_combout\);

-- Location: LABCELL_X5_Y17_N30
\RAM1|ram~171\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~171_combout\ = ( \RAM1|ram~168_combout\ & ( \RAM1|ram~170_combout\ & ( ((!\ROM1|memROM~14_combout\ & (\RAM1|ram~167_combout\)) # (\ROM1|memROM~14_combout\ & ((\RAM1|ram~169_combout\)))) # (\ROM1|memROM~12_combout\) ) ) ) # ( 
-- !\RAM1|ram~168_combout\ & ( \RAM1|ram~170_combout\ & ( (!\ROM1|memROM~12_combout\ & ((!\ROM1|memROM~14_combout\ & (\RAM1|ram~167_combout\)) # (\ROM1|memROM~14_combout\ & ((\RAM1|ram~169_combout\))))) # (\ROM1|memROM~12_combout\ & 
-- (((\ROM1|memROM~14_combout\)))) ) ) ) # ( \RAM1|ram~168_combout\ & ( !\RAM1|ram~170_combout\ & ( (!\ROM1|memROM~12_combout\ & ((!\ROM1|memROM~14_combout\ & (\RAM1|ram~167_combout\)) # (\ROM1|memROM~14_combout\ & ((\RAM1|ram~169_combout\))))) # 
-- (\ROM1|memROM~12_combout\ & (((!\ROM1|memROM~14_combout\)))) ) ) ) # ( !\RAM1|ram~168_combout\ & ( !\RAM1|ram~170_combout\ & ( (!\ROM1|memROM~12_combout\ & ((!\ROM1|memROM~14_combout\ & (\RAM1|ram~167_combout\)) # (\ROM1|memROM~14_combout\ & 
-- ((\RAM1|ram~169_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010011101110000101000100010010111110111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \RAM1|ALT_INV_ram~167_combout\,
	datac => \RAM1|ALT_INV_ram~169_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \RAM1|ALT_INV_ram~168_combout\,
	dataf => \RAM1|ALT_INV_ram~170_combout\,
	combout => \RAM1|ram~171_combout\);

-- Location: LABCELL_X6_Y19_N48
\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( (!\decoderInstru|saida[5]~4_combout\ & (!\RAM1|ram~171_combout\ $ (((\decoderInstru|saida[3]~1_combout\ & !\decoderInstru|saida[4]~2_combout\))))) # (\decoderInstru|saida[5]~4_combout\ & ((!\decoderInstru|saida[3]~1_combout\) 
-- # ((\decoderInstru|saida[4]~2_combout\)))) ) + ( \REGA|DOUT\(5) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( (!\decoderInstru|saida[5]~4_combout\ & (!\RAM1|ram~171_combout\ $ (((\decoderInstru|saida[3]~1_combout\ & !\decoderInstru|saida[4]~2_combout\))))) # (\decoderInstru|saida[5]~4_combout\ & ((!\decoderInstru|saida[3]~1_combout\) # 
-- ((\decoderInstru|saida[4]~2_combout\)))) ) + ( \REGA|DOUT\(5) ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100111101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderInstru|ALT_INV_saida[5]~4_combout\,
	datab => \decoderInstru|ALT_INV_saida[3]~1_combout\,
	datac => \decoderInstru|ALT_INV_saida[4]~2_combout\,
	datad => \RAM1|ALT_INV_ram~171_combout\,
	dataf => \REGA|ALT_INV_DOUT\(5),
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

-- Location: LABCELL_X6_Y19_N6
\ULA1|saida[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~6_combout\ = ( \ULA1|Add0~21_sumout\ & ( (!\decoderInstru|saida[4]~2_combout\) # ((!\decoderInstru|saida[5]~4_combout\ & \RAM1|ram~171_combout\)) ) ) # ( !\ULA1|Add0~21_sumout\ & ( (\decoderInstru|saida[4]~2_combout\ & 
-- (!\decoderInstru|saida[5]~4_combout\ & \RAM1|ram~171_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000010101010111110101010101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderInstru|ALT_INV_saida[4]~2_combout\,
	datac => \decoderInstru|ALT_INV_saida[5]~4_combout\,
	datad => \RAM1|ALT_INV_ram~171_combout\,
	dataf => \ULA1|ALT_INV_Add0~21_sumout\,
	combout => \ULA1|saida[5]~6_combout\);

-- Location: LABCELL_X6_Y19_N27
\ULA1|saida[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida\(5) = ( \ULA1|saida[5]~6_combout\ & ( (\ULA1|saida\(5)) # (\ULA1|saida[7]~1_combout\) ) ) # ( !\ULA1|saida[5]~6_combout\ & ( (!\ULA1|saida[7]~1_combout\ & \ULA1|saida\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA1|ALT_INV_saida[7]~1_combout\,
	datad => \ULA1|ALT_INV_saida\(5),
	dataf => \ULA1|ALT_INV_saida[5]~6_combout\,
	combout => \ULA1|saida\(5));

-- Location: FF_X6_Y19_N29
\REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida\(5),
	ena => \decoderInstru|saida[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(5));

-- Location: LABCELL_X7_Y17_N51
\RAM1|ram~39feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~39feeder_combout\ = ( \REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT\(6),
	combout => \RAM1|ram~39feeder_combout\);

-- Location: FF_X7_Y17_N53
\RAM1|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM1|ram~39feeder_combout\,
	ena => \RAM1|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~39_q\);

-- Location: FF_X6_Y17_N59
\RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

-- Location: LABCELL_X5_Y17_N3
\RAM1|ram~47feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~47feeder_combout\ = ( \REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT\(6),
	combout => \RAM1|ram~47feeder_combout\);

-- Location: FF_X5_Y17_N4
\RAM1|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM1|ram~47feeder_combout\,
	ena => \RAM1|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~47_q\);

-- Location: FF_X6_Y17_N32
\RAM1|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~31_q\);

-- Location: LABCELL_X6_Y17_N30
\RAM1|ram~172\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~172_combout\ = ( \RAM1|ram~31_q\ & ( \ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~14_combout\) # (\RAM1|ram~47_q\) ) ) ) # ( !\RAM1|ram~31_q\ & ( \ROM1|memROM~12_combout\ & ( (\ROM1|memROM~14_combout\ & \RAM1|ram~47_q\) ) ) ) # ( \RAM1|ram~31_q\ 
-- & ( !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~14_combout\ & ((\RAM1|ram~23_q\))) # (\ROM1|memROM~14_combout\ & (\RAM1|ram~39_q\)) ) ) ) # ( !\RAM1|ram~31_q\ & ( !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~14_combout\ & ((\RAM1|ram~23_q\))) # 
-- (\ROM1|memROM~14_combout\ & (\RAM1|ram~39_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~39_q\,
	datab => \RAM1|ALT_INV_ram~23_q\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \RAM1|ALT_INV_ram~47_q\,
	datae => \RAM1|ALT_INV_ram~31_q\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~172_combout\);

-- Location: FF_X5_Y20_N52
\RAM1|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~79_q\);

-- Location: FF_X6_Y20_N49
\RAM1|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~55_q\);

-- Location: FF_X6_Y18_N13
\RAM1|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~71_q\);

-- Location: FF_X5_Y17_N49
\RAM1|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~63_q\);

-- Location: LABCELL_X6_Y17_N42
\RAM1|ram~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~173_combout\ = ( \RAM1|ram~63_q\ & ( \ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~12_combout\ & ((\RAM1|ram~71_q\))) # (\ROM1|memROM~12_combout\ & (\RAM1|ram~79_q\)) ) ) ) # ( !\RAM1|ram~63_q\ & ( \ROM1|memROM~14_combout\ & ( 
-- (!\ROM1|memROM~12_combout\ & ((\RAM1|ram~71_q\))) # (\ROM1|memROM~12_combout\ & (\RAM1|ram~79_q\)) ) ) ) # ( \RAM1|ram~63_q\ & ( !\ROM1|memROM~14_combout\ & ( (\ROM1|memROM~12_combout\) # (\RAM1|ram~55_q\) ) ) ) # ( !\RAM1|ram~63_q\ & ( 
-- !\ROM1|memROM~14_combout\ & ( (\RAM1|ram~55_q\ & !\ROM1|memROM~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~79_q\,
	datab => \RAM1|ALT_INV_ram~55_q\,
	datac => \RAM1|ALT_INV_ram~71_q\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \RAM1|ALT_INV_ram~63_q\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM1|ram~173_combout\);

-- Location: FF_X5_Y19_N11
\RAM1|ram~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~95_q\);

-- Location: FF_X6_Y20_N55
\RAM1|ram~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~103_q\);

-- Location: LABCELL_X5_Y17_N6
\RAM1|ram~174\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~174_combout\ = ( !\ROM1|memROM~14_combout\ & ( \ROM1|memROM~12_combout\ & ( \RAM1|ram~95_q\ ) ) ) # ( \ROM1|memROM~14_combout\ & ( !\ROM1|memROM~12_combout\ & ( \RAM1|ram~103_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~95_q\,
	datad => \RAM1|ALT_INV_ram~103_q\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~174_combout\);

-- Location: FF_X4_Y18_N26
\RAM1|ram~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~135_q\);

-- Location: MLABCELL_X4_Y18_N45
\RAM1|ram~127feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~127feeder_combout\ = ( \REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \REGA|ALT_INV_DOUT\(6),
	combout => \RAM1|ram~127feeder_combout\);

-- Location: FF_X4_Y18_N47
\RAM1|ram~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RAM1|ram~127feeder_combout\,
	ena => \RAM1|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~127_q\);

-- Location: FF_X4_Y18_N23
\RAM1|ram~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~143_q\);

-- Location: MLABCELL_X4_Y18_N21
\RAM1|ram~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~175_combout\ = ( \RAM1|ram~143_q\ & ( \ROM1|memROM~12_combout\ & ( (\ROM1|memROM~14_combout\) # (\RAM1|ram~127_q\) ) ) ) # ( !\RAM1|ram~143_q\ & ( \ROM1|memROM~12_combout\ & ( (\RAM1|ram~127_q\ & !\ROM1|memROM~14_combout\) ) ) ) # ( 
-- \RAM1|ram~143_q\ & ( !\ROM1|memROM~12_combout\ & ( (\RAM1|ram~135_q\ & \ROM1|memROM~14_combout\) ) ) ) # ( !\RAM1|ram~143_q\ & ( !\ROM1|memROM~12_combout\ & ( (\RAM1|ram~135_q\ & \ROM1|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~135_q\,
	datac => \RAM1|ALT_INV_ram~127_q\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \RAM1|ALT_INV_ram~143_q\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~175_combout\);

-- Location: LABCELL_X6_Y17_N3
\RAM1|ram~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~176_combout\ = ( \RAM1|ram~174_combout\ & ( \RAM1|ram~175_combout\ & ( ((!\ROM1|memROM~16_combout\ & (\RAM1|ram~172_combout\)) # (\ROM1|memROM~16_combout\ & ((\RAM1|ram~173_combout\)))) # (\ROM1|memROM~17_combout\) ) ) ) # ( 
-- !\RAM1|ram~174_combout\ & ( \RAM1|ram~175_combout\ & ( (!\ROM1|memROM~17_combout\ & ((!\ROM1|memROM~16_combout\ & (\RAM1|ram~172_combout\)) # (\ROM1|memROM~16_combout\ & ((\RAM1|ram~173_combout\))))) # (\ROM1|memROM~17_combout\ & 
-- (((\ROM1|memROM~16_combout\)))) ) ) ) # ( \RAM1|ram~174_combout\ & ( !\RAM1|ram~175_combout\ & ( (!\ROM1|memROM~17_combout\ & ((!\ROM1|memROM~16_combout\ & (\RAM1|ram~172_combout\)) # (\ROM1|memROM~16_combout\ & ((\RAM1|ram~173_combout\))))) # 
-- (\ROM1|memROM~17_combout\ & (((!\ROM1|memROM~16_combout\)))) ) ) ) # ( !\RAM1|ram~174_combout\ & ( !\RAM1|ram~175_combout\ & ( (!\ROM1|memROM~17_combout\ & ((!\ROM1|memROM~16_combout\ & (\RAM1|ram~172_combout\)) # (\ROM1|memROM~16_combout\ & 
-- ((\RAM1|ram~173_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010011101110000101000100010010111110111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \RAM1|ALT_INV_ram~172_combout\,
	datac => \RAM1|ALT_INV_ram~173_combout\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \RAM1|ALT_INV_ram~174_combout\,
	dataf => \RAM1|ALT_INV_ram~175_combout\,
	combout => \RAM1|ram~176_combout\);

-- Location: LABCELL_X6_Y19_N51
\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( (!\decoderInstru|saida[5]~4_combout\ & (!\RAM1|ram~176_combout\ $ (((\decoderInstru|saida[3]~1_combout\ & !\decoderInstru|saida[4]~2_combout\))))) # (\decoderInstru|saida[5]~4_combout\ & ((!\decoderInstru|saida[3]~1_combout\) 
-- # ((\decoderInstru|saida[4]~2_combout\)))) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( (!\decoderInstru|saida[5]~4_combout\ & (!\RAM1|ram~176_combout\ $ (((\decoderInstru|saida[3]~1_combout\ & !\decoderInstru|saida[4]~2_combout\))))) # (\decoderInstru|saida[5]~4_combout\ & ((!\decoderInstru|saida[3]~1_combout\) # 
-- ((\decoderInstru|saida[4]~2_combout\)))) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100111101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderInstru|ALT_INV_saida[5]~4_combout\,
	datab => \decoderInstru|ALT_INV_saida[3]~1_combout\,
	datac => \decoderInstru|ALT_INV_saida[4]~2_combout\,
	datad => \RAM1|ALT_INV_ram~176_combout\,
	dataf => \REGA|ALT_INV_DOUT\(6),
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

-- Location: LABCELL_X7_Y19_N33
\ULA1|saida[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~7_combout\ = ( \decoderInstru|saida[4]~2_combout\ & ( (\RAM1|ram~176_combout\ & !\decoderInstru|saida[5]~4_combout\) ) ) # ( !\decoderInstru|saida[4]~2_combout\ & ( \ULA1|Add0~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~176_combout\,
	datab => \ULA1|ALT_INV_Add0~25_sumout\,
	datac => \decoderInstru|ALT_INV_saida[5]~4_combout\,
	dataf => \decoderInstru|ALT_INV_saida[4]~2_combout\,
	combout => \ULA1|saida[6]~7_combout\);

-- Location: LABCELL_X7_Y19_N30
\ULA1|saida[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida\(6) = ( \ULA1|saida[6]~7_combout\ & ( (\ULA1|saida[7]~1_combout\) # (\ULA1|saida\(6)) ) ) # ( !\ULA1|saida[6]~7_combout\ & ( (\ULA1|saida\(6) & !\ULA1|saida[7]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA1|ALT_INV_saida\(6),
	datad => \ULA1|ALT_INV_saida[7]~1_combout\,
	dataf => \ULA1|ALT_INV_saida[6]~7_combout\,
	combout => \ULA1|saida\(6));

-- Location: FF_X7_Y19_N32
\REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida\(6),
	ena => \decoderInstru|saida[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(6));

-- Location: FF_X5_Y20_N7
\RAM1|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~80_q\);

-- Location: FF_X5_Y19_N23
\RAM1|ram~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~144_q\);

-- Location: FF_X5_Y17_N41
\RAM1|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~48_q\);

-- Location: LABCELL_X5_Y19_N21
\RAM1|ram~180\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~180_combout\ = ( \RAM1|ram~48_q\ & ( (!\ROM1|memROM~16_combout\ & (!\ROM1|memROM~17_combout\)) # (\ROM1|memROM~16_combout\ & ((!\ROM1|memROM~17_combout\ & (\RAM1|ram~80_q\)) # (\ROM1|memROM~17_combout\ & ((\RAM1|ram~144_q\))))) ) ) # ( 
-- !\RAM1|ram~48_q\ & ( (\ROM1|memROM~16_combout\ & ((!\ROM1|memROM~17_combout\ & (\RAM1|ram~80_q\)) # (\ROM1|memROM~17_combout\ & ((\RAM1|ram~144_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110001100100111011000110010011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \RAM1|ALT_INV_ram~80_q\,
	datad => \RAM1|ALT_INV_ram~144_q\,
	dataf => \RAM1|ALT_INV_ram~48_q\,
	combout => \RAM1|ram~180_combout\);

-- Location: FF_X5_Y18_N29
\RAM1|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~72_q\);

-- Location: FF_X5_Y20_N23
\RAM1|ram~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~104_q\);

-- Location: FF_X4_Y18_N14
\RAM1|ram~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~136_q\);

-- Location: FF_X5_Y17_N17
\RAM1|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~40_q\);

-- Location: MLABCELL_X4_Y18_N12
\RAM1|ram~179\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~179_combout\ = ( \RAM1|ram~136_q\ & ( \RAM1|ram~40_q\ & ( (!\ROM1|memROM~16_combout\ & (((!\ROM1|memROM~17_combout\) # (\RAM1|ram~104_q\)))) # (\ROM1|memROM~16_combout\ & (((\ROM1|memROM~17_combout\)) # (\RAM1|ram~72_q\))) ) ) ) # ( 
-- !\RAM1|ram~136_q\ & ( \RAM1|ram~40_q\ & ( (!\ROM1|memROM~16_combout\ & (((!\ROM1|memROM~17_combout\) # (\RAM1|ram~104_q\)))) # (\ROM1|memROM~16_combout\ & (\RAM1|ram~72_q\ & (!\ROM1|memROM~17_combout\))) ) ) ) # ( \RAM1|ram~136_q\ & ( !\RAM1|ram~40_q\ & ( 
-- (!\ROM1|memROM~16_combout\ & (((\ROM1|memROM~17_combout\ & \RAM1|ram~104_q\)))) # (\ROM1|memROM~16_combout\ & (((\ROM1|memROM~17_combout\)) # (\RAM1|ram~72_q\))) ) ) ) # ( !\RAM1|ram~136_q\ & ( !\RAM1|ram~40_q\ & ( (!\ROM1|memROM~16_combout\ & 
-- (((\ROM1|memROM~17_combout\ & \RAM1|ram~104_q\)))) # (\ROM1|memROM~16_combout\ & (\RAM1|ram~72_q\ & (!\ROM1|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100000100110001111111010000110111001101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~72_q\,
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \RAM1|ALT_INV_ram~104_q\,
	datae => \RAM1|ALT_INV_ram~136_q\,
	dataf => \RAM1|ALT_INV_ram~40_q\,
	combout => \RAM1|ram~179_combout\);

-- Location: FF_X6_Y17_N38
\RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

-- Location: FF_X6_Y20_N44
\RAM1|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~56_q\);

-- Location: LABCELL_X6_Y20_N42
\RAM1|ram~177\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~177_combout\ = ( \RAM1|ram~56_q\ & ( \ROM1|memROM~16_combout\ & ( !\ROM1|memROM~17_combout\ ) ) ) # ( \RAM1|ram~56_q\ & ( !\ROM1|memROM~16_combout\ & ( (\RAM1|ram~24_q\ & !\ROM1|memROM~17_combout\) ) ) ) # ( !\RAM1|ram~56_q\ & ( 
-- !\ROM1|memROM~16_combout\ & ( (\RAM1|ram~24_q\ & !\ROM1|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~24_q\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	datae => \RAM1|ALT_INV_ram~56_q\,
	dataf => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \RAM1|ram~177_combout\);

-- Location: FF_X6_Y17_N19
\RAM1|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~32_q\);

-- Location: FF_X5_Y17_N26
\RAM1|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~64_q\);

-- Location: FF_X5_Y19_N41
\RAM1|ram~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~96_q\);

-- Location: FF_X4_Y19_N8
\RAM1|ram~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~128_q\);

-- Location: MLABCELL_X4_Y19_N6
\RAM1|ram~178\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~178_combout\ = ( \RAM1|ram~128_q\ & ( \ROM1|memROM~17_combout\ & ( (\ROM1|memROM~16_combout\) # (\RAM1|ram~96_q\) ) ) ) # ( !\RAM1|ram~128_q\ & ( \ROM1|memROM~17_combout\ & ( (\RAM1|ram~96_q\ & !\ROM1|memROM~16_combout\) ) ) ) # ( 
-- \RAM1|ram~128_q\ & ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~16_combout\ & (\RAM1|ram~32_q\)) # (\ROM1|memROM~16_combout\ & ((\RAM1|ram~64_q\))) ) ) ) # ( !\RAM1|ram~128_q\ & ( !\ROM1|memROM~17_combout\ & ( (!\ROM1|memROM~16_combout\ & 
-- (\RAM1|ram~32_q\)) # (\ROM1|memROM~16_combout\ & ((\RAM1|ram~64_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~32_q\,
	datab => \RAM1|ALT_INV_ram~64_q\,
	datac => \RAM1|ALT_INV_ram~96_q\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \RAM1|ALT_INV_ram~128_q\,
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM1|ram~178_combout\);

-- Location: MLABCELL_X4_Y19_N0
\RAM1|ram~181\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~181_combout\ = ( \RAM1|ram~177_combout\ & ( \RAM1|ram~178_combout\ & ( (!\ROM1|memROM~14_combout\) # ((!\ROM1|memROM~12_combout\ & ((\RAM1|ram~179_combout\))) # (\ROM1|memROM~12_combout\ & (\RAM1|ram~180_combout\))) ) ) ) # ( 
-- !\RAM1|ram~177_combout\ & ( \RAM1|ram~178_combout\ & ( (!\ROM1|memROM~12_combout\ & (\ROM1|memROM~14_combout\ & ((\RAM1|ram~179_combout\)))) # (\ROM1|memROM~12_combout\ & ((!\ROM1|memROM~14_combout\) # ((\RAM1|ram~180_combout\)))) ) ) ) # ( 
-- \RAM1|ram~177_combout\ & ( !\RAM1|ram~178_combout\ & ( (!\ROM1|memROM~12_combout\ & ((!\ROM1|memROM~14_combout\) # ((\RAM1|ram~179_combout\)))) # (\ROM1|memROM~12_combout\ & (\ROM1|memROM~14_combout\ & (\RAM1|ram~180_combout\))) ) ) ) # ( 
-- !\RAM1|ram~177_combout\ & ( !\RAM1|ram~178_combout\ & ( (\ROM1|memROM~14_combout\ & ((!\ROM1|memROM~12_combout\ & ((\RAM1|ram~179_combout\))) # (\ROM1|memROM~12_combout\ & (\RAM1|ram~180_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011100010011010101101000101011001111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \RAM1|ALT_INV_ram~180_combout\,
	datad => \RAM1|ALT_INV_ram~179_combout\,
	datae => \RAM1|ALT_INV_ram~177_combout\,
	dataf => \RAM1|ALT_INV_ram~178_combout\,
	combout => \RAM1|ram~181_combout\);

-- Location: LABCELL_X6_Y19_N54
\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( (!\decoderInstru|saida[5]~4_combout\ & (!\RAM1|ram~181_combout\ $ (((\decoderInstru|saida[3]~1_combout\ & !\decoderInstru|saida[4]~2_combout\))))) # (\decoderInstru|saida[5]~4_combout\ & ((!\decoderInstru|saida[3]~1_combout\) 
-- # ((\decoderInstru|saida[4]~2_combout\)))) ) + ( \REGA|DOUT\(7) ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100111101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoderInstru|ALT_INV_saida[5]~4_combout\,
	datab => \decoderInstru|ALT_INV_saida[3]~1_combout\,
	datac => \decoderInstru|ALT_INV_saida[4]~2_combout\,
	datad => \RAM1|ALT_INV_ram~181_combout\,
	dataf => \REGA|ALT_INV_DOUT\(7),
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\);

-- Location: LABCELL_X6_Y19_N9
\ULA1|saida[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~8_combout\ = ( \ULA1|Add0~29_sumout\ & ( (!\decoderInstru|saida[4]~2_combout\) # ((!\decoderInstru|saida[5]~4_combout\ & \RAM1|ram~181_combout\)) ) ) # ( !\ULA1|Add0~29_sumout\ & ( (!\decoderInstru|saida[5]~4_combout\ & 
-- (\decoderInstru|saida[4]~2_combout\ & \RAM1|ram~181_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011110000111111001111000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \decoderInstru|ALT_INV_saida[5]~4_combout\,
	datac => \decoderInstru|ALT_INV_saida[4]~2_combout\,
	datad => \RAM1|ALT_INV_ram~181_combout\,
	dataf => \ULA1|ALT_INV_Add0~29_sumout\,
	combout => \ULA1|saida[7]~8_combout\);

-- Location: LABCELL_X6_Y19_N21
\ULA1|saida[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida\(7) = (!\ULA1|saida[7]~1_combout\ & ((\ULA1|saida\(7)))) # (\ULA1|saida[7]~1_combout\ & (\ULA1|saida[7]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_saida[7]~8_combout\,
	datac => \ULA1|ALT_INV_saida[7]~1_combout\,
	datad => \ULA1|ALT_INV_saida\(7),
	combout => \ULA1|saida\(7));

-- Location: FF_X6_Y19_N23
\REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida\(7),
	ena => \decoderInstru|saida[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(7));

-- Location: IOIBUF_X22_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X33_Y0_N41
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N18
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X34_Y0_N52
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X33_Y0_N92
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X33_Y0_N75
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LABCELL_X41_Y26_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


