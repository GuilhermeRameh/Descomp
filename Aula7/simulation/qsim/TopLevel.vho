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

-- DATE "09/30/2022 15:23:01"

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
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	REG_A_OUT : OUT std_logic_vector(7 DOWNTO 0)
	);
END TopLevel;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FPGA_RESET_N	=>  Location: PIN_P22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
-- PC_OUT[0]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_A_OUT[0]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_A_OUT[1]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_A_OUT[2]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_A_OUT[3]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_A_OUT[4]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_A_OUT[5]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_A_OUT[6]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG_A_OUT[7]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_REG_A_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \Mem_ROM|memROM~7_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~8_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~5_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|Equal10~0_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Mem_ROM|memROM~12_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Mem_ROM|memROM~1_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~10_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Mem_ROM|memROM~0_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~11_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~11_wirecell_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~2\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \Mem_ROM|memROM~9_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~18\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \Mem_ROM|memROM~4_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \Mem_ROM|memROM~3_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~2_combout\ : std_logic;
SIGNAL \Mem_RAM|process_0~0_combout\ : std_logic;
SIGNAL \Mem_ROM|memROM~6_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|Equal10~1_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|Equal10~2_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~548_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~23_q\ : std_logic;
SIGNAL \Mem_RAM|ram~547_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~15_q\ : std_logic;
SIGNAL \Mem_RAM|ram~527_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~528_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~529_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|Equal10~3_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|saida~0_combout\ : std_logic;
SIGNAL \HabilitaRegLEDR7to0~0_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~546_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~16_q\ : std_logic;
SIGNAL \Mem_RAM|ram~24_q\ : std_logic;
SIGNAL \Mem_RAM|ram~530_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~531_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~532_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~17_q\ : std_logic;
SIGNAL \Mem_RAM|ram~25_q\ : std_logic;
SIGNAL \Mem_RAM|ram~533_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~534_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~535_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Mem_RAM|ram~26_q\ : std_logic;
SIGNAL \Mem_RAM|ram~18_q\ : std_logic;
SIGNAL \Mem_RAM|ram~536_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~565_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~537_combout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \regLEDR8bits|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~27_q\ : std_logic;
SIGNAL \Mem_RAM|ram~19_q\ : std_logic;
SIGNAL \Mem_RAM|ram~538_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~561_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~539_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REGA|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Mem_RAM|ram~28_q\ : std_logic;
SIGNAL \Mem_RAM|ram~20_q\ : std_logic;
SIGNAL \Mem_RAM|ram~540_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~557_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~541_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~29_q\ : std_logic;
SIGNAL \Mem_RAM|ram~21_q\ : std_logic;
SIGNAL \Mem_RAM|ram~542_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~553_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~543_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~30_q\ : std_logic;
SIGNAL \Mem_RAM|ram~22_q\ : std_logic;
SIGNAL \Mem_RAM|ram~544_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~549_combout\ : std_logic;
SIGNAL \Mem_RAM|ram~545_combout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \HabLEDR8~0_combout\ : std_logic;
SIGNAL \regLEDR8|DOUT~0_combout\ : std_logic;
SIGNAL \regLEDR8|DOUT~q\ : std_logic;
SIGNAL \regLEDR9|DOUT~0_combout\ : std_logic;
SIGNAL \regLEDR9|DOUT~q\ : std_logic;
SIGNAL \CPU|PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \regLEDR8bits|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|REGA|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_HabLEDR8~0_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_Equal10~3_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_Equal10~2_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \CPU|decoderInstru|ALT_INV_Equal10~1_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \Mem_ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \CPU|REGA|ALT_INV_DOUT\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \regLEDR9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \regLEDR8|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~565_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~561_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \Mem_RAM|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|REGA|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REGA|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REGA|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_FPGA_RESET_N <= FPGA_RESET_N;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
PC_OUT <= ww_PC_OUT;
REG_A_OUT <= ww_REG_A_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\CPU|REGA|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \CPU|REGA|DOUT[3]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[3]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[1]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[0]~DUPLICATE_q\;
\ALT_INV_HabLEDR8~0_combout\ <= NOT \HabLEDR8~0_combout\;
\Mem_RAM|ALT_INV_ram~546_combout\ <= NOT \Mem_RAM|ram~546_combout\;
\CPU|decoderInstru|ALT_INV_Equal10~3_combout\ <= NOT \CPU|decoderInstru|Equal10~3_combout\;
\Mem_RAM|ALT_INV_ram~545_combout\ <= NOT \Mem_RAM|ram~545_combout\;
\Mem_RAM|ALT_INV_ram~544_combout\ <= NOT \Mem_RAM|ram~544_combout\;
\Mem_RAM|ALT_INV_ram~22_q\ <= NOT \Mem_RAM|ram~22_q\;
\Mem_RAM|ALT_INV_ram~30_q\ <= NOT \Mem_RAM|ram~30_q\;
\Mem_RAM|ALT_INV_ram~543_combout\ <= NOT \Mem_RAM|ram~543_combout\;
\Mem_RAM|ALT_INV_ram~542_combout\ <= NOT \Mem_RAM|ram~542_combout\;
\Mem_RAM|ALT_INV_ram~21_q\ <= NOT \Mem_RAM|ram~21_q\;
\Mem_RAM|ALT_INV_ram~29_q\ <= NOT \Mem_RAM|ram~29_q\;
\Mem_RAM|ALT_INV_ram~541_combout\ <= NOT \Mem_RAM|ram~541_combout\;
\Mem_RAM|ALT_INV_ram~540_combout\ <= NOT \Mem_RAM|ram~540_combout\;
\Mem_RAM|ALT_INV_ram~20_q\ <= NOT \Mem_RAM|ram~20_q\;
\Mem_RAM|ALT_INV_ram~28_q\ <= NOT \Mem_RAM|ram~28_q\;
\Mem_RAM|ALT_INV_ram~539_combout\ <= NOT \Mem_RAM|ram~539_combout\;
\Mem_RAM|ALT_INV_ram~538_combout\ <= NOT \Mem_RAM|ram~538_combout\;
\Mem_RAM|ALT_INV_ram~19_q\ <= NOT \Mem_RAM|ram~19_q\;
\Mem_RAM|ALT_INV_ram~27_q\ <= NOT \Mem_RAM|ram~27_q\;
\Mem_RAM|ALT_INV_ram~537_combout\ <= NOT \Mem_RAM|ram~537_combout\;
\Mem_RAM|ALT_INV_ram~536_combout\ <= NOT \Mem_RAM|ram~536_combout\;
\Mem_RAM|ALT_INV_ram~18_q\ <= NOT \Mem_RAM|ram~18_q\;
\Mem_RAM|ALT_INV_ram~26_q\ <= NOT \Mem_RAM|ram~26_q\;
\Mem_RAM|ALT_INV_ram~535_combout\ <= NOT \Mem_RAM|ram~535_combout\;
\Mem_RAM|ALT_INV_ram~534_combout\ <= NOT \Mem_RAM|ram~534_combout\;
\Mem_RAM|ALT_INV_ram~533_combout\ <= NOT \Mem_RAM|ram~533_combout\;
\Mem_RAM|ALT_INV_ram~17_q\ <= NOT \Mem_RAM|ram~17_q\;
\Mem_RAM|ALT_INV_ram~25_q\ <= NOT \Mem_RAM|ram~25_q\;
\Mem_RAM|ALT_INV_ram~532_combout\ <= NOT \Mem_RAM|ram~532_combout\;
\Mem_RAM|ALT_INV_ram~531_combout\ <= NOT \Mem_RAM|ram~531_combout\;
\Mem_RAM|ALT_INV_ram~530_combout\ <= NOT \Mem_RAM|ram~530_combout\;
\Mem_RAM|ALT_INV_ram~16_q\ <= NOT \Mem_RAM|ram~16_q\;
\Mem_RAM|ALT_INV_ram~24_q\ <= NOT \Mem_RAM|ram~24_q\;
\CPU|decoderInstru|ALT_INV_Equal10~2_combout\ <= NOT \CPU|decoderInstru|Equal10~2_combout\;
\Mem_RAM|ALT_INV_ram~529_combout\ <= NOT \Mem_RAM|ram~529_combout\;
\Mem_RAM|ALT_INV_ram~528_combout\ <= NOT \Mem_RAM|ram~528_combout\;
\Mem_RAM|ALT_INV_ram~527_combout\ <= NOT \Mem_RAM|ram~527_combout\;
\Mem_RAM|ALT_INV_ram~15_q\ <= NOT \Mem_RAM|ram~15_q\;
\Mem_RAM|ALT_INV_ram~23_q\ <= NOT \Mem_RAM|ram~23_q\;
\CPU|decoderInstru|ALT_INV_Equal10~1_combout\ <= NOT \CPU|decoderInstru|Equal10~1_combout\;
\Mem_ROM|ALT_INV_memROM~12_combout\ <= NOT \Mem_ROM|memROM~12_combout\;
\Mem_ROM|ALT_INV_memROM~11_combout\ <= NOT \Mem_ROM|memROM~11_combout\;
\Mem_ROM|ALT_INV_memROM~10_combout\ <= NOT \Mem_ROM|memROM~10_combout\;
\Mem_ROM|ALT_INV_memROM~9_combout\ <= NOT \Mem_ROM|memROM~9_combout\;
\Mem_RAM|ALT_INV_process_0~0_combout\ <= NOT \Mem_RAM|process_0~0_combout\;
\Mem_ROM|ALT_INV_memROM~8_combout\ <= NOT \Mem_ROM|memROM~8_combout\;
\Mem_ROM|ALT_INV_memROM~7_combout\ <= NOT \Mem_ROM|memROM~7_combout\;
\Mem_ROM|ALT_INV_memROM~6_combout\ <= NOT \Mem_ROM|memROM~6_combout\;
\Mem_ROM|ALT_INV_memROM~5_combout\ <= NOT \Mem_ROM|memROM~5_combout\;
\Mem_ROM|ALT_INV_memROM~4_combout\ <= NOT \Mem_ROM|memROM~4_combout\;
\Mem_ROM|ALT_INV_memROM~2_combout\ <= NOT \Mem_ROM|memROM~2_combout\;
\Mem_ROM|ALT_INV_memROM~1_combout\ <= NOT \Mem_ROM|memROM~1_combout\;
\Mem_ROM|ALT_INV_memROM~0_combout\ <= NOT \Mem_ROM|memROM~0_combout\;
\CPU|REGA|ALT_INV_DOUT\(6) <= NOT \CPU|REGA|DOUT\(6);
\CPU|REGA|ALT_INV_DOUT\(3) <= NOT \CPU|REGA|DOUT\(3);
\CPU|REGA|ALT_INV_DOUT\(2) <= NOT \CPU|REGA|DOUT\(2);
\CPU|REGA|ALT_INV_DOUT\(1) <= NOT \CPU|REGA|DOUT\(1);
\CPU|REGA|ALT_INV_DOUT\(0) <= NOT \CPU|REGA|DOUT\(0);
\regLEDR9|ALT_INV_DOUT~q\ <= NOT \regLEDR9|DOUT~q\;
\regLEDR8|ALT_INV_DOUT~q\ <= NOT \regLEDR8|DOUT~q\;
\Mem_RAM|ALT_INV_ram~565_combout\ <= NOT \Mem_RAM|ram~565_combout\;
\Mem_RAM|ALT_INV_ram~561_combout\ <= NOT \Mem_RAM|ram~561_combout\;
\Mem_RAM|ALT_INV_ram~557_combout\ <= NOT \Mem_RAM|ram~557_combout\;
\Mem_RAM|ALT_INV_ram~553_combout\ <= NOT \Mem_RAM|ram~553_combout\;
\Mem_RAM|ALT_INV_ram~549_combout\ <= NOT \Mem_RAM|ram~549_combout\;
\CPU|ULA1|ALT_INV_Add0~29_sumout\ <= NOT \CPU|ULA1|Add0~29_sumout\;
\CPU|ULA1|ALT_INV_Add0~25_sumout\ <= NOT \CPU|ULA1|Add0~25_sumout\;
\CPU|ULA1|ALT_INV_Add0~21_sumout\ <= NOT \CPU|ULA1|Add0~21_sumout\;
\CPU|ULA1|ALT_INV_Add0~17_sumout\ <= NOT \CPU|ULA1|Add0~17_sumout\;
\CPU|ULA1|ALT_INV_Add0~13_sumout\ <= NOT \CPU|ULA1|Add0~13_sumout\;
\CPU|ULA1|ALT_INV_Add0~9_sumout\ <= NOT \CPU|ULA1|Add0~9_sumout\;
\CPU|ULA1|ALT_INV_Add0~5_sumout\ <= NOT \CPU|ULA1|Add0~5_sumout\;
\CPU|REGA|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \CPU|REGA|DOUT[7]~DUPLICATE_q\;
\CPU|REGA|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \CPU|REGA|DOUT[5]~DUPLICATE_q\;
\CPU|REGA|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \CPU|REGA|DOUT[4]~DUPLICATE_q\;
\CPU|ULA1|ALT_INV_Add0~1_sumout\ <= NOT \CPU|ULA1|Add0~1_sumout\;
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);

-- Location: IOOBUF_X0_Y18_N79
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
	i => \regLEDR8bits|DOUT\(1),
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
	i => \regLEDR8bits|DOUT\(2),
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
	i => \regLEDR8bits|DOUT\(3),
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
	i => \regLEDR8bits|DOUT\(4),
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
	i => \regLEDR8bits|DOUT\(5),
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
	i => \regLEDR8bits|DOUT\(6),
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
	i => \regLEDR8bits|DOUT\(7),
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
	i => \regLEDR8|DOUT~q\,
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
	i => \regLEDR9|DOUT~q\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X8_Y45_N76
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
	o => ww_PC_OUT(0));

-- Location: IOOBUF_X10_Y0_N42
\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(1));

-- Location: IOOBUF_X8_Y45_N42
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
	i => \CPU|PC|DOUT\(3),
	devoe => ww_devoe,
	o => ww_PC_OUT(3));

-- Location: IOOBUF_X12_Y45_N53
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
	o => ww_PC_OUT(4));

-- Location: IOOBUF_X16_Y0_N59
\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[5]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(5));

-- Location: IOOBUF_X12_Y0_N36
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
	o => ww_PC_OUT(6));

-- Location: IOOBUF_X12_Y0_N19
\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(7));

-- Location: IOOBUF_X10_Y45_N36
\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[8]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(8));

-- Location: IOOBUF_X10_Y0_N76
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
	o => ww_REG_A_OUT(0));

-- Location: IOOBUF_X10_Y0_N59
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
	o => ww_REG_A_OUT(1));

-- Location: IOOBUF_X11_Y0_N53
\REG_A_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA|DOUT[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_REG_A_OUT(2));

-- Location: IOOBUF_X11_Y0_N19
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
	o => ww_REG_A_OUT(3));

-- Location: IOOBUF_X8_Y45_N59
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
	o => ww_REG_A_OUT(4));

-- Location: IOOBUF_X10_Y45_N53
\REG_A_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA|DOUT[5]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_REG_A_OUT(5));

-- Location: IOOBUF_X14_Y0_N36
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
	o => ww_REG_A_OUT(6));

-- Location: IOOBUF_X11_Y0_N2
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
	o => ww_REG_A_OUT(7));

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

-- Location: CLKCTRL_G6
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

-- Location: LABCELL_X7_Y23_N30
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

-- Location: MLABCELL_X4_Y23_N0
\Mem_ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~7_combout\ = ( \CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) $ (!\CPU|PC|DOUT[0]~DUPLICATE_q\))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT[0]~DUPLICATE_q\)) ) ) # ( !\CPU|PC|DOUT\(1) & ( !\CPU|PC|DOUT\(3) $ 
-- (((!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011110000001111001111000000111100110000000011110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \Mem_ROM|memROM~7_combout\);

-- Location: MLABCELL_X4_Y23_N30
\Mem_ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~8_combout\ = ( \CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) $ (\CPU|PC|DOUT[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000011001100000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \Mem_ROM|memROM~8_combout\);

-- Location: MLABCELL_X4_Y23_N42
\Mem_ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~5_combout\ = ( \CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT[0]~DUPLICATE_q\)) # (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(3))) ) ) # ( !\CPU|PC|DOUT\(1) & ( (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT[0]~DUPLICATE_q\) # 
-- (\CPU|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000101010101010000010110100101000001011010010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \Mem_ROM|memROM~5_combout\);

-- Location: MLABCELL_X4_Y23_N6
\CPU|decoderInstru|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|Equal10~0_combout\ = ( !\Mem_ROM|memROM~5_combout\ & ( (!\Mem_ROM|memROM~7_combout\ & (\Mem_ROM|memROM~8_combout\ & \Mem_ROM|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~7_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~8_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~2_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~5_combout\,
	combout => \CPU|decoderInstru|Equal10~0_combout\);

-- Location: FF_X7_Y23_N32
\CPU|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	asdata => \Mem_ROM|memROM~11_wirecell_combout\,
	sload => \CPU|decoderInstru|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X7_Y23_N15
\Mem_ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~12_combout\ = ( \Mem_ROM|memROM~2_combout\ & ( (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT[3]~DUPLICATE_q\ & \CPU|PC|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \Mem_ROM|ALT_INV_memROM~2_combout\,
	combout => \Mem_ROM|memROM~12_combout\);

-- Location: FF_X7_Y23_N41
\CPU|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	asdata => \Mem_ROM|memROM~12_combout\,
	sload => \CPU|decoderInstru|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X6_Y23_N9
\Mem_ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~1_combout\ = ( \CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)) ) ) # ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[1]~DUPLICATE_q\ & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \Mem_ROM|memROM~1_combout\);

-- Location: LABCELL_X6_Y23_N57
\Mem_ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~10_combout\ = ( \Mem_ROM|memROM~2_combout\ & ( \Mem_ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mem_ROM|ALT_INV_memROM~1_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~2_combout\,
	combout => \Mem_ROM|memROM~10_combout\);

-- Location: FF_X7_Y23_N35
\CPU|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	asdata => \Mem_ROM|memROM~10_combout\,
	sload => \CPU|decoderInstru|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X7_Y23_N9
\Mem_ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~0_combout\ = ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[0]~DUPLICATE_q\ & ((!\CPU|PC|DOUT[3]~DUPLICATE_q\) # (!\CPU|PC|DOUT\(2)))) ) ) # ( !\CPU|PC|DOUT[1]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & 
-- (!\CPU|PC|DOUT[0]~DUPLICATE_q\ $ (\CPU|PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110000001111000011000000111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \Mem_ROM|memROM~0_combout\);

-- Location: LABCELL_X7_Y23_N12
\Mem_ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~11_combout\ = ( \Mem_ROM|memROM~0_combout\ & ( !\Mem_ROM|memROM~2_combout\ ) ) # ( !\Mem_ROM|memROM~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mem_ROM|ALT_INV_memROM~2_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~0_combout\,
	combout => \Mem_ROM|memROM~11_combout\);

-- Location: LABCELL_X7_Y23_N21
\Mem_ROM|memROM~11_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~11_wirecell_combout\ = ( !\Mem_ROM|memROM~11_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Mem_ROM|ALT_INV_memROM~11_combout\,
	combout => \Mem_ROM|memROM~11_wirecell_combout\);

-- Location: FF_X7_Y23_N31
\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	asdata => \Mem_ROM|memROM~11_wirecell_combout\,
	sload => \CPU|decoderInstru|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

-- Location: LABCELL_X7_Y23_N33
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

-- Location: FF_X7_Y23_N34
\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	asdata => \Mem_ROM|memROM~10_combout\,
	sload => \CPU|decoderInstru|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

-- Location: LABCELL_X7_Y23_N36
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

-- Location: LABCELL_X6_Y23_N3
\Mem_ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~9_combout\ = ( \CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[1]~DUPLICATE_q\ & (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & \Mem_ROM|memROM~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \Mem_ROM|ALT_INV_memROM~2_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \Mem_ROM|memROM~9_combout\);

-- Location: FF_X7_Y23_N38
\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	asdata => \Mem_ROM|memROM~9_combout\,
	sload => \CPU|decoderInstru|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

-- Location: LABCELL_X7_Y23_N39
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

-- Location: FF_X7_Y23_N40
\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	asdata => \Mem_ROM|memROM~12_combout\,
	sload => \CPU|decoderInstru|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

-- Location: LABCELL_X7_Y23_N42
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

-- Location: FF_X7_Y23_N44
\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	asdata => \Mem_ROM|memROM~9_combout\,
	sload => \CPU|decoderInstru|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

-- Location: LABCELL_X7_Y23_N45
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

-- Location: LABCELL_X7_Y23_N0
\Mem_ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~4_combout\ = ( \Mem_ROM|memROM~2_combout\ & ( (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & \CPU|PC|DOUT[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \Mem_ROM|ALT_INV_memROM~2_combout\,
	combout => \Mem_ROM|memROM~4_combout\);

-- Location: FF_X7_Y23_N47
\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	asdata => \Mem_ROM|memROM~4_combout\,
	sload => \CPU|decoderInstru|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

-- Location: LABCELL_X7_Y23_N48
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

-- Location: FF_X7_Y23_N49
\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	asdata => \Mem_ROM|memROM~9_combout\,
	sload => \CPU|decoderInstru|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

-- Location: LABCELL_X7_Y23_N51
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

-- Location: FF_X7_Y23_N53
\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	asdata => \Mem_ROM|memROM~4_combout\,
	sload => \CPU|decoderInstru|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

-- Location: LABCELL_X7_Y23_N54
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

-- Location: MLABCELL_X4_Y23_N39
\Mem_ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~3_combout\ = ( \Mem_ROM|memROM~2_combout\ & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT[0]~DUPLICATE_q\)))) # (\CPU|PC|DOUT\(3) & (((!\CPU|PC|DOUT[0]~DUPLICATE_q\ & !\CPU|PC|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100011000000000110001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \Mem_ROM|ALT_INV_memROM~2_combout\,
	combout => \Mem_ROM|memROM~3_combout\);

-- Location: FF_X7_Y23_N56
\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	asdata => \Mem_ROM|memROM~3_combout\,
	sload => \CPU|decoderInstru|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

-- Location: LABCELL_X7_Y23_N18
\Mem_ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~2_combout\ = ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(8) & !\CPU|PC|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \Mem_ROM|memROM~2_combout\);

-- Location: MLABCELL_X4_Y23_N48
\Mem_RAM|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|process_0~0_combout\ = ( !\Mem_ROM|memROM~8_combout\ & ( (\Mem_ROM|memROM~2_combout\ & \Mem_ROM|memROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~2_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~7_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~8_combout\,
	combout => \Mem_RAM|process_0~0_combout\);

-- Location: MLABCELL_X4_Y23_N12
\Mem_ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_ROM|memROM~6_combout\ = (\Mem_ROM|memROM~2_combout\ & !\Mem_ROM|memROM~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~2_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~5_combout\,
	combout => \Mem_ROM|memROM~6_combout\);

-- Location: MLABCELL_X4_Y23_N3
\CPU|decoderInstru|Equal10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|Equal10~1_combout\ = ( !\Mem_ROM|memROM~6_combout\ & ( \Mem_RAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_process_0~0_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~6_combout\,
	combout => \CPU|decoderInstru|Equal10~1_combout\);

-- Location: MLABCELL_X4_Y23_N9
\CPU|decoderInstru|Equal10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|Equal10~2_combout\ = ( \Mem_ROM|memROM~2_combout\ & ( (!\Mem_ROM|memROM~8_combout\ & (!\Mem_ROM|memROM~5_combout\ & !\Mem_ROM|memROM~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mem_ROM|ALT_INV_memROM~8_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~5_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~7_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~2_combout\,
	combout => \CPU|decoderInstru|Equal10~2_combout\);

-- Location: MLABCELL_X4_Y23_N15
\Mem_RAM|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~548_combout\ = ( \CPU|PC|DOUT\(1) & ( (\Mem_ROM|memROM~2_combout\ & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & \CPU|PC|DOUT[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~2_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \Mem_RAM|ram~548_combout\);

-- Location: FF_X6_Y23_N43
\Mem_RAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \Mem_RAM|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~23_q\);

-- Location: MLABCELL_X4_Y23_N51
\Mem_RAM|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~547_combout\ = ( !\CPU|PC|DOUT\(1) & ( (\Mem_ROM|memROM~2_combout\ & (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT[0]~DUPLICATE_q\ & !\CPU|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~2_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \Mem_RAM|ram~547_combout\);

-- Location: FF_X6_Y23_N50
\Mem_RAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \Mem_RAM|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~15_q\);

-- Location: LABCELL_X6_Y23_N48
\Mem_RAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~527_combout\ = ( \Mem_ROM|memROM~1_combout\ & ( (!\Mem_ROM|memROM~2_combout\ & \Mem_RAM|ram~15_q\) ) ) # ( !\Mem_ROM|memROM~1_combout\ & ( (!\Mem_ROM|memROM~0_combout\ & (((\Mem_RAM|ram~15_q\)))) # (\Mem_ROM|memROM~0_combout\ & 
-- ((!\Mem_ROM|memROM~2_combout\ & ((\Mem_RAM|ram~15_q\))) # (\Mem_ROM|memROM~2_combout\ & (\Mem_RAM|ram~23_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111011000000011111101100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~0_combout\,
	datab => \Mem_RAM|ALT_INV_ram~23_q\,
	datac => \Mem_ROM|ALT_INV_memROM~2_combout\,
	datad => \Mem_RAM|ALT_INV_ram~15_q\,
	dataf => \Mem_ROM|ALT_INV_memROM~1_combout\,
	combout => \Mem_RAM|ram~527_combout\);

-- Location: LABCELL_X6_Y23_N45
\Mem_RAM|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~528_combout\ = ( \Mem_RAM|ram~527_combout\ & ( !\Mem_ROM|memROM~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mem_ROM|ALT_INV_memROM~12_combout\,
	dataf => \Mem_RAM|ALT_INV_ram~527_combout\,
	combout => \Mem_RAM|ram~528_combout\);

-- Location: LABCELL_X5_Y23_N21
\Mem_RAM|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~529_combout\ = ( \Mem_RAM|ram~528_combout\ & ( !\Mem_ROM|memROM~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mem_ROM|ALT_INV_memROM~9_combout\,
	dataf => \Mem_RAM|ALT_INV_ram~528_combout\,
	combout => \Mem_RAM|ram~529_combout\);

-- Location: MLABCELL_X4_Y23_N57
\CPU|decoderInstru|Equal10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|Equal10~3_combout\ = ( !\Mem_ROM|memROM~7_combout\ & ( \Mem_ROM|memROM~2_combout\ & ( (\Mem_ROM|memROM~8_combout\ & \Mem_ROM|memROM~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mem_ROM|ALT_INV_memROM~8_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~5_combout\,
	datae => \Mem_ROM|ALT_INV_memROM~7_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~2_combout\,
	combout => \CPU|decoderInstru|Equal10~3_combout\);

-- Location: LABCELL_X5_Y23_N30
\CPU|ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~34_cout\ = CARRY(( !\CPU|decoderInstru|Equal10~3_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|decoderInstru|ALT_INV_Equal10~3_combout\,
	cin => GND,
	cout => \CPU|ULA1|Add0~34_cout\);

-- Location: LABCELL_X5_Y23_N33
\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( !\CPU|decoderInstru|Equal10~3_combout\ $ (((!\CPU|decoderInstru|Equal10~2_combout\ & ((\Mem_RAM|ram~529_combout\))) # (\CPU|decoderInstru|Equal10~2_combout\ & (!\Mem_ROM|memROM~11_combout\)))) ) + ( \CPU|REGA|DOUT\(0) ) + 
-- ( \CPU|ULA1|Add0~34_cout\ ))
-- \CPU|ULA1|Add0~2\ = CARRY(( !\CPU|decoderInstru|Equal10~3_combout\ $ (((!\CPU|decoderInstru|Equal10~2_combout\ & ((\Mem_RAM|ram~529_combout\))) # (\CPU|decoderInstru|Equal10~2_combout\ & (!\Mem_ROM|memROM~11_combout\)))) ) + ( \CPU|REGA|DOUT\(0) ) + ( 
-- \CPU|ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010011001010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal10~3_combout\,
	datab => \Mem_ROM|ALT_INV_memROM~11_combout\,
	datac => \CPU|decoderInstru|ALT_INV_Equal10~2_combout\,
	datad => \Mem_RAM|ALT_INV_ram~529_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add0~34_cout\,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

-- Location: MLABCELL_X4_Y23_N21
\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = ( \CPU|ULA1|Add0~1_sumout\ & ( (!\CPU|decoderInstru|Equal10~1_combout\ & ((!\CPU|decoderInstru|Equal10~2_combout\) # ((!\Mem_ROM|memROM~11_combout\)))) # (\CPU|decoderInstru|Equal10~1_combout\ & 
-- (((\Mem_RAM|ram~529_combout\)))) ) ) # ( !\CPU|ULA1|Add0~1_sumout\ & ( (!\CPU|decoderInstru|Equal10~1_combout\ & (\CPU|decoderInstru|Equal10~2_combout\ & (!\Mem_ROM|memROM~11_combout\))) # (\CPU|decoderInstru|Equal10~1_combout\ & 
-- (((\Mem_RAM|ram~529_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110101001000000111010110101000111111011010100011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal10~1_combout\,
	datab => \CPU|decoderInstru|ALT_INV_Equal10~2_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~11_combout\,
	datad => \Mem_RAM|ALT_INV_ram~529_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~1_sumout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

-- Location: MLABCELL_X4_Y23_N33
\CPU|decoderInstru|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|decoderInstru|saida~0_combout\ = ( \Mem_ROM|memROM~5_combout\ & ( (\Mem_ROM|memROM~2_combout\ & ((\Mem_ROM|memROM~8_combout\) # (\Mem_ROM|memROM~7_combout\))) ) ) # ( !\Mem_ROM|memROM~5_combout\ & ( (!\Mem_ROM|memROM~7_combout\ & 
-- (!\Mem_ROM|memROM~8_combout\ & \Mem_ROM|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000000010111110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~7_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~8_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~2_combout\,
	dataf => \Mem_ROM|ALT_INV_memROM~5_combout\,
	combout => \CPU|decoderInstru|saida~0_combout\);

-- Location: FF_X4_Y23_N22
\CPU|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[0]~0_combout\,
	ena => \CPU|decoderInstru|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(0));

-- Location: MLABCELL_X4_Y23_N45
\HabilitaRegLEDR7to0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HabilitaRegLEDR7to0~0_combout\ = ( \Mem_ROM|memROM~2_combout\ & ( (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \Mem_ROM|ALT_INV_memROM~2_combout\,
	combout => \HabilitaRegLEDR7to0~0_combout\);

-- Location: FF_X4_Y23_N16
\regLEDR8bits|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \HabilitaRegLEDR7to0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regLEDR8bits|DOUT\(0));

-- Location: LABCELL_X7_Y23_N3
\Mem_RAM|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~546_combout\ = (\CPU|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|PC|DOUT\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \Mem_RAM|ram~546_combout\);

-- Location: FF_X7_Y23_N23
\Mem_RAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \Mem_RAM|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~16_q\);

-- Location: FF_X7_Y23_N13
\Mem_RAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \Mem_RAM|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~24_q\);

-- Location: LABCELL_X7_Y23_N24
\Mem_RAM|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~530_combout\ = ( \Mem_RAM|ram~16_q\ & ( \Mem_RAM|ram~24_q\ & ( (!\Mem_ROM|memROM~2_combout\) # ((!\CPU|PC|DOUT[0]~DUPLICATE_q\) # (!\Mem_RAM|ram~546_combout\)) ) ) ) # ( !\Mem_RAM|ram~16_q\ & ( \Mem_RAM|ram~24_q\ & ( 
-- (\Mem_ROM|memROM~2_combout\ & (\Mem_ROM|memROM~0_combout\ & ((!\CPU|PC|DOUT[0]~DUPLICATE_q\) # (!\Mem_RAM|ram~546_combout\)))) ) ) ) # ( \Mem_RAM|ram~16_q\ & ( !\Mem_RAM|ram~24_q\ & ( (!\Mem_ROM|memROM~2_combout\) # ((!\Mem_ROM|memROM~0_combout\ & 
-- ((!\CPU|PC|DOUT[0]~DUPLICATE_q\) # (!\Mem_RAM|ram~546_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111101010101000000000010101001111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~2_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \Mem_RAM|ALT_INV_ram~546_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~0_combout\,
	datae => \Mem_RAM|ALT_INV_ram~16_q\,
	dataf => \Mem_RAM|ALT_INV_ram~24_q\,
	combout => \Mem_RAM|ram~530_combout\);

-- Location: LABCELL_X6_Y23_N24
\Mem_RAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~531_combout\ = ( \Mem_RAM|ram~530_combout\ & ( (!\Mem_ROM|memROM~10_combout\ & !\Mem_ROM|memROM~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mem_ROM|ALT_INV_memROM~10_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~4_combout\,
	dataf => \Mem_RAM|ALT_INV_ram~530_combout\,
	combout => \Mem_RAM|ram~531_combout\);

-- Location: LABCELL_X5_Y23_N0
\Mem_RAM|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~532_combout\ = ( \Mem_RAM|ram~531_combout\ & ( !\Mem_ROM|memROM~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mem_ROM|ALT_INV_memROM~9_combout\,
	dataf => \Mem_RAM|ALT_INV_ram~531_combout\,
	combout => \Mem_RAM|ram~532_combout\);

-- Location: LABCELL_X5_Y23_N36
\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( !\CPU|decoderInstru|Equal10~3_combout\ $ (((!\CPU|decoderInstru|Equal10~2_combout\ & ((\Mem_RAM|ram~532_combout\))) # (\CPU|decoderInstru|Equal10~2_combout\ & (\Mem_ROM|memROM~10_combout\)))) ) + ( \CPU|REGA|DOUT\(1) ) + ( 
-- \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( !\CPU|decoderInstru|Equal10~3_combout\ $ (((!\CPU|decoderInstru|Equal10~2_combout\ & ((\Mem_RAM|ram~532_combout\))) # (\CPU|decoderInstru|Equal10~2_combout\ & (\Mem_ROM|memROM~10_combout\)))) ) + ( \CPU|REGA|DOUT\(1) ) + ( 
-- \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal10~3_combout\,
	datab => \CPU|decoderInstru|ALT_INV_Equal10~2_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~10_combout\,
	datad => \Mem_RAM|ALT_INV_ram~532_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

-- Location: MLABCELL_X4_Y23_N18
\CPU|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~1_combout\ = ( \CPU|ULA1|Add0~5_sumout\ & ( (!\CPU|decoderInstru|Equal10~1_combout\ & ((!\CPU|decoderInstru|Equal10~2_combout\) # ((\Mem_ROM|memROM~10_combout\)))) # (\CPU|decoderInstru|Equal10~1_combout\ & 
-- (((\Mem_RAM|ram~532_combout\)))) ) ) # ( !\CPU|ULA1|Add0~5_sumout\ & ( (!\CPU|decoderInstru|Equal10~1_combout\ & (\CPU|decoderInstru|Equal10~2_combout\ & (\Mem_ROM|memROM~10_combout\))) # (\CPU|decoderInstru|Equal10~1_combout\ & 
-- (((\Mem_RAM|ram~532_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110001010110111111000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal10~1_combout\,
	datab => \CPU|decoderInstru|ALT_INV_Equal10~2_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~10_combout\,
	datad => \Mem_RAM|ALT_INV_ram~532_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~5_sumout\,
	combout => \CPU|ULA1|saida[1]~1_combout\);

-- Location: FF_X4_Y23_N19
\CPU|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[1]~1_combout\,
	ena => \CPU|decoderInstru|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(1));

-- Location: FF_X4_Y23_N56
\regLEDR8bits|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \HabilitaRegLEDR7to0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regLEDR8bits|DOUT\(1));

-- Location: FF_X7_Y23_N29
\Mem_RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \Mem_RAM|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~17_q\);

-- Location: FF_X7_Y23_N17
\Mem_RAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \Mem_RAM|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~25_q\);

-- Location: LABCELL_X7_Y23_N27
\Mem_RAM|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~533_combout\ = ( \Mem_RAM|ram~17_q\ & ( \Mem_RAM|ram~25_q\ & ( (!\Mem_ROM|memROM~2_combout\) # ((!\CPU|PC|DOUT[0]~DUPLICATE_q\) # (!\Mem_RAM|ram~546_combout\)) ) ) ) # ( !\Mem_RAM|ram~17_q\ & ( \Mem_RAM|ram~25_q\ & ( 
-- (\Mem_ROM|memROM~2_combout\ & (\Mem_ROM|memROM~0_combout\ & ((!\CPU|PC|DOUT[0]~DUPLICATE_q\) # (!\Mem_RAM|ram~546_combout\)))) ) ) ) # ( \Mem_RAM|ram~17_q\ & ( !\Mem_RAM|ram~25_q\ & ( (!\Mem_ROM|memROM~2_combout\) # ((!\Mem_ROM|memROM~0_combout\ & 
-- ((!\CPU|PC|DOUT[0]~DUPLICATE_q\) # (!\Mem_RAM|ram~546_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101110101000000101000001001111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~2_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \Mem_ROM|ALT_INV_memROM~0_combout\,
	datad => \Mem_RAM|ALT_INV_ram~546_combout\,
	datae => \Mem_RAM|ALT_INV_ram~17_q\,
	dataf => \Mem_RAM|ALT_INV_ram~25_q\,
	combout => \Mem_RAM|ram~533_combout\);

-- Location: LABCELL_X6_Y23_N30
\Mem_RAM|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~534_combout\ = ( \Mem_RAM|ram~533_combout\ & ( (!\Mem_ROM|memROM~4_combout\ & !\Mem_ROM|memROM~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mem_ROM|ALT_INV_memROM~4_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~10_combout\,
	dataf => \Mem_RAM|ALT_INV_ram~533_combout\,
	combout => \Mem_RAM|ram~534_combout\);

-- Location: LABCELL_X6_Y23_N0
\Mem_RAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~535_combout\ = ( \Mem_RAM|ram~534_combout\ & ( !\Mem_ROM|memROM~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mem_ROM|ALT_INV_memROM~9_combout\,
	dataf => \Mem_RAM|ALT_INV_ram~534_combout\,
	combout => \Mem_RAM|ram~535_combout\);

-- Location: FF_X5_Y23_N4
\CPU|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[2]~2_combout\,
	ena => \CPU|decoderInstru|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(2));

-- Location: LABCELL_X5_Y23_N39
\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( !\CPU|decoderInstru|Equal10~3_combout\ $ (((!\CPU|decoderInstru|Equal10~2_combout\ & ((\Mem_RAM|ram~535_combout\))) # (\CPU|decoderInstru|Equal10~2_combout\ & (\Mem_ROM|memROM~9_combout\)))) ) + ( \CPU|REGA|DOUT\(2) ) + ( 
-- \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( !\CPU|decoderInstru|Equal10~3_combout\ $ (((!\CPU|decoderInstru|Equal10~2_combout\ & ((\Mem_RAM|ram~535_combout\))) # (\CPU|decoderInstru|Equal10~2_combout\ & (\Mem_ROM|memROM~9_combout\)))) ) + ( \CPU|REGA|DOUT\(2) ) + ( 
-- \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal10~3_combout\,
	datab => \CPU|decoderInstru|ALT_INV_Equal10~2_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~9_combout\,
	datad => \Mem_RAM|ALT_INV_ram~535_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

-- Location: LABCELL_X5_Y23_N3
\CPU|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~2_combout\ = ( \CPU|ULA1|Add0~9_sumout\ & ( (!\CPU|decoderInstru|Equal10~1_combout\ & (((!\CPU|decoderInstru|Equal10~2_combout\) # (\Mem_ROM|memROM~9_combout\)))) # (\CPU|decoderInstru|Equal10~1_combout\ & (\Mem_RAM|ram~535_combout\)) ) 
-- ) # ( !\CPU|ULA1|Add0~9_sumout\ & ( (!\CPU|decoderInstru|Equal10~1_combout\ & (((\CPU|decoderInstru|Equal10~2_combout\ & \Mem_ROM|memROM~9_combout\)))) # (\CPU|decoderInstru|Equal10~1_combout\ & (\Mem_RAM|ram~535_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110101000001010011010111000101111101011100010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~535_combout\,
	datab => \CPU|decoderInstru|ALT_INV_Equal10~2_combout\,
	datac => \CPU|decoderInstru|ALT_INV_Equal10~1_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~9_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~9_sumout\,
	combout => \CPU|ULA1|saida[2]~2_combout\);

-- Location: FF_X5_Y23_N5
\CPU|REGA|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[2]~2_combout\,
	ena => \CPU|decoderInstru|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT[2]~DUPLICATE_q\);

-- Location: FF_X5_Y22_N28
\regLEDR8bits|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \HabilitaRegLEDR7to0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regLEDR8bits|DOUT\(2));

-- Location: FF_X6_Y23_N26
\Mem_RAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \Mem_RAM|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~26_q\);

-- Location: FF_X6_Y23_N14
\Mem_RAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \Mem_RAM|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~18_q\);

-- Location: LABCELL_X6_Y23_N12
\Mem_RAM|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~536_combout\ = ( \Mem_ROM|memROM~11_combout\ & ( (!\Mem_ROM|memROM~12_combout\ & \Mem_RAM|ram~18_q\) ) ) # ( !\Mem_ROM|memROM~11_combout\ & ( (\Mem_RAM|ram~26_q\ & !\Mem_ROM|memROM~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~26_q\,
	datac => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datad => \Mem_RAM|ALT_INV_ram~18_q\,
	dataf => \Mem_ROM|ALT_INV_memROM~11_combout\,
	combout => \Mem_RAM|ram~536_combout\);

-- Location: LABCELL_X5_Y23_N15
\Mem_RAM|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~565_combout\ = ( \Mem_RAM|ram~536_combout\ & ( (!\Mem_ROM|memROM~10_combout\ & !\Mem_ROM|memROM~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mem_ROM|ALT_INV_memROM~10_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~4_combout\,
	dataf => \Mem_RAM|ALT_INV_ram~536_combout\,
	combout => \Mem_RAM|ram~565_combout\);

-- Location: LABCELL_X5_Y23_N24
\Mem_RAM|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~537_combout\ = ( \Mem_RAM|ram~565_combout\ & ( !\Mem_ROM|memROM~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mem_ROM|ALT_INV_memROM~9_combout\,
	dataf => \Mem_RAM|ALT_INV_ram~565_combout\,
	combout => \Mem_RAM|ram~537_combout\);

-- Location: FF_X5_Y23_N14
\CPU|REGA|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[3]~3_combout\,
	ena => \CPU|decoderInstru|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y23_N42
\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( !\CPU|decoderInstru|Equal10~3_combout\ $ (((!\CPU|decoderInstru|Equal10~2_combout\ & ((\Mem_RAM|ram~537_combout\))) # (\CPU|decoderInstru|Equal10~2_combout\ & (\Mem_ROM|memROM~12_combout\)))) ) + ( 
-- \CPU|REGA|DOUT[3]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( !\CPU|decoderInstru|Equal10~3_combout\ $ (((!\CPU|decoderInstru|Equal10~2_combout\ & ((\Mem_RAM|ram~537_combout\))) # (\CPU|decoderInstru|Equal10~2_combout\ & (\Mem_ROM|memROM~12_combout\)))) ) + ( 
-- \CPU|REGA|DOUT[3]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal10~3_combout\,
	datab => \CPU|decoderInstru|ALT_INV_Equal10~2_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datad => \Mem_RAM|ALT_INV_ram~537_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

-- Location: LABCELL_X5_Y23_N12
\CPU|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~3_combout\ = ( \CPU|ULA1|Add0~13_sumout\ & ( (!\CPU|decoderInstru|Equal10~1_combout\ & (((!\CPU|decoderInstru|Equal10~2_combout\) # (\Mem_ROM|memROM~12_combout\)))) # (\CPU|decoderInstru|Equal10~1_combout\ & (\Mem_RAM|ram~537_combout\)) 
-- ) ) # ( !\CPU|ULA1|Add0~13_sumout\ & ( (!\CPU|decoderInstru|Equal10~1_combout\ & (((\CPU|decoderInstru|Equal10~2_combout\ & \Mem_ROM|memROM~12_combout\)))) # (\CPU|decoderInstru|Equal10~1_combout\ & (\Mem_RAM|ram~537_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101000100010001110111010001110111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~537_combout\,
	datab => \CPU|decoderInstru|ALT_INV_Equal10~1_combout\,
	datac => \CPU|decoderInstru|ALT_INV_Equal10~2_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~12_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~13_sumout\,
	combout => \CPU|ULA1|saida[3]~3_combout\);

-- Location: FF_X5_Y23_N13
\CPU|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[3]~3_combout\,
	ena => \CPU|decoderInstru|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(3));

-- Location: LABCELL_X5_Y22_N54
\regLEDR8bits|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regLEDR8bits|DOUT[3]~feeder_combout\ = ( \CPU|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(3),
	combout => \regLEDR8bits|DOUT[3]~feeder_combout\);

-- Location: FF_X5_Y22_N55
\regLEDR8bits|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \regLEDR8bits|DOUT[3]~feeder_combout\,
	ena => \HabilitaRegLEDR7to0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regLEDR8bits|DOUT\(3));

-- Location: FF_X5_Y23_N7
\CPU|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[4]~4_combout\,
	ena => \CPU|decoderInstru|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(4));

-- Location: FF_X6_Y23_N55
\Mem_RAM|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \Mem_RAM|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~27_q\);

-- Location: FF_X6_Y23_N23
\Mem_RAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \Mem_RAM|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~19_q\);

-- Location: LABCELL_X6_Y23_N21
\Mem_RAM|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~538_combout\ = ( \Mem_ROM|memROM~11_combout\ & ( (!\Mem_ROM|memROM~12_combout\ & \Mem_RAM|ram~19_q\) ) ) # ( !\Mem_ROM|memROM~11_combout\ & ( (!\Mem_ROM|memROM~12_combout\ & \Mem_RAM|ram~27_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_RAM|ALT_INV_ram~27_q\,
	datad => \Mem_RAM|ALT_INV_ram~19_q\,
	dataf => \Mem_ROM|ALT_INV_memROM~11_combout\,
	combout => \Mem_RAM|ram~538_combout\);

-- Location: LABCELL_X6_Y23_N51
\Mem_RAM|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~561_combout\ = ( \Mem_RAM|ram~538_combout\ & ( (!\Mem_ROM|memROM~10_combout\ & !\Mem_ROM|memROM~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mem_ROM|ALT_INV_memROM~10_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~4_combout\,
	dataf => \Mem_RAM|ALT_INV_ram~538_combout\,
	combout => \Mem_RAM|ram~561_combout\);

-- Location: LABCELL_X6_Y23_N54
\Mem_RAM|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~539_combout\ = ( \Mem_RAM|ram~561_combout\ & ( !\Mem_ROM|memROM~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mem_ROM|ALT_INV_memROM~9_combout\,
	dataf => \Mem_RAM|ALT_INV_ram~561_combout\,
	combout => \Mem_RAM|ram~539_combout\);

-- Location: LABCELL_X5_Y23_N45
\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( !\CPU|decoderInstru|Equal10~3_combout\ $ (((!\CPU|decoderInstru|Equal10~2_combout\ & ((\Mem_RAM|ram~539_combout\))) # (\CPU|decoderInstru|Equal10~2_combout\ & (\Mem_ROM|memROM~9_combout\)))) ) + ( 
-- \CPU|REGA|DOUT[4]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( !\CPU|decoderInstru|Equal10~3_combout\ $ (((!\CPU|decoderInstru|Equal10~2_combout\ & ((\Mem_RAM|ram~539_combout\))) # (\CPU|decoderInstru|Equal10~2_combout\ & (\Mem_ROM|memROM~9_combout\)))) ) + ( 
-- \CPU|REGA|DOUT[4]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal10~3_combout\,
	datab => \CPU|decoderInstru|ALT_INV_Equal10~2_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~9_combout\,
	datad => \Mem_RAM|ALT_INV_ram~539_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

-- Location: LABCELL_X5_Y23_N6
\CPU|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~4_combout\ = ( \Mem_ROM|memROM~9_combout\ & ( (!\CPU|decoderInstru|Equal10~1_combout\ & (((\CPU|ULA1|Add0~17_sumout\)) # (\CPU|decoderInstru|Equal10~2_combout\))) # (\CPU|decoderInstru|Equal10~1_combout\ & 
-- (((\Mem_RAM|ram~539_combout\)))) ) ) # ( !\Mem_ROM|memROM~9_combout\ & ( (!\CPU|decoderInstru|Equal10~1_combout\ & (!\CPU|decoderInstru|Equal10~2_combout\ & ((\CPU|ULA1|Add0~17_sumout\)))) # (\CPU|decoderInstru|Equal10~1_combout\ & 
-- (((\Mem_RAM|ram~539_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001011000000111000101101000111110011110100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal10~2_combout\,
	datab => \CPU|decoderInstru|ALT_INV_Equal10~1_combout\,
	datac => \Mem_RAM|ALT_INV_ram~539_combout\,
	datad => \CPU|ULA1|ALT_INV_Add0~17_sumout\,
	dataf => \Mem_ROM|ALT_INV_memROM~9_combout\,
	combout => \CPU|ULA1|saida[4]~4_combout\);

-- Location: FF_X5_Y23_N8
\CPU|REGA|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[4]~4_combout\,
	ena => \CPU|decoderInstru|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT[4]~DUPLICATE_q\);

-- Location: FF_X5_Y23_N34
\regLEDR8bits|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \HabilitaRegLEDR7to0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regLEDR8bits|DOUT\(4));

-- Location: FF_X5_Y23_N28
\CPU|REGA|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[5]~5_combout\,
	ena => \CPU|decoderInstru|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT[5]~DUPLICATE_q\);

-- Location: FF_X6_Y23_N41
\Mem_RAM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \Mem_RAM|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~28_q\);

-- Location: FF_X6_Y23_N20
\Mem_RAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \Mem_RAM|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~20_q\);

-- Location: LABCELL_X6_Y23_N42
\Mem_RAM|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~540_combout\ = ( \Mem_ROM|memROM~11_combout\ & ( (!\Mem_ROM|memROM~12_combout\ & \Mem_RAM|ram~20_q\) ) ) # ( !\Mem_ROM|memROM~11_combout\ & ( (!\Mem_ROM|memROM~12_combout\ & \Mem_RAM|ram~28_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datab => \Mem_RAM|ALT_INV_ram~28_q\,
	datac => \Mem_RAM|ALT_INV_ram~20_q\,
	dataf => \Mem_ROM|ALT_INV_memROM~11_combout\,
	combout => \Mem_RAM|ram~540_combout\);

-- Location: LABCELL_X6_Y23_N18
\Mem_RAM|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~557_combout\ = ( \Mem_RAM|ram~540_combout\ & ( (!\Mem_ROM|memROM~10_combout\ & !\Mem_ROM|memROM~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mem_ROM|ALT_INV_memROM~10_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~4_combout\,
	dataf => \Mem_RAM|ALT_INV_ram~540_combout\,
	combout => \Mem_RAM|ram~557_combout\);

-- Location: LABCELL_X6_Y23_N39
\Mem_RAM|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~541_combout\ = ( \Mem_RAM|ram~557_combout\ & ( !\Mem_ROM|memROM~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~9_combout\,
	dataf => \Mem_RAM|ALT_INV_ram~557_combout\,
	combout => \Mem_RAM|ram~541_combout\);

-- Location: LABCELL_X5_Y23_N48
\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( !\CPU|decoderInstru|Equal10~3_combout\ $ (((!\CPU|decoderInstru|Equal10~2_combout\ & ((\Mem_RAM|ram~541_combout\))) # (\CPU|decoderInstru|Equal10~2_combout\ & (\Mem_ROM|memROM~4_combout\)))) ) + ( 
-- \CPU|REGA|DOUT[5]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( !\CPU|decoderInstru|Equal10~3_combout\ $ (((!\CPU|decoderInstru|Equal10~2_combout\ & ((\Mem_RAM|ram~541_combout\))) # (\CPU|decoderInstru|Equal10~2_combout\ & (\Mem_ROM|memROM~4_combout\)))) ) + ( 
-- \CPU|REGA|DOUT[5]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal10~3_combout\,
	datab => \CPU|decoderInstru|ALT_INV_Equal10~2_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~4_combout\,
	datad => \Mem_RAM|ALT_INV_ram~541_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

-- Location: LABCELL_X5_Y23_N27
\CPU|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~5_combout\ = ( \CPU|ULA1|Add0~21_sumout\ & ( (!\CPU|decoderInstru|Equal10~1_combout\ & (((!\CPU|decoderInstru|Equal10~2_combout\) # (\Mem_ROM|memROM~4_combout\)))) # (\CPU|decoderInstru|Equal10~1_combout\ & (\Mem_RAM|ram~541_combout\)) 
-- ) ) # ( !\CPU|ULA1|Add0~21_sumout\ & ( (!\CPU|decoderInstru|Equal10~1_combout\ & (((\CPU|decoderInstru|Equal10~2_combout\ & \Mem_ROM|memROM~4_combout\)))) # (\CPU|decoderInstru|Equal10~1_combout\ & (\Mem_RAM|ram~541_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101000100010001110111010001110111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~541_combout\,
	datab => \CPU|decoderInstru|ALT_INV_Equal10~1_combout\,
	datac => \CPU|decoderInstru|ALT_INV_Equal10~2_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~4_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~21_sumout\,
	combout => \CPU|ULA1|saida[5]~5_combout\);

-- Location: FF_X5_Y23_N29
\CPU|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[5]~5_combout\,
	ena => \CPU|decoderInstru|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(5));

-- Location: FF_X5_Y23_N59
\regLEDR8bits|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \HabilitaRegLEDR7to0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regLEDR8bits|DOUT\(5));

-- Location: FF_X7_Y23_N2
\Mem_RAM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \Mem_RAM|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~29_q\);

-- Location: FF_X7_Y23_N8
\Mem_RAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \Mem_RAM|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~21_q\);

-- Location: LABCELL_X7_Y23_N6
\Mem_RAM|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~542_combout\ = ( \Mem_ROM|memROM~11_combout\ & ( (!\Mem_ROM|memROM~12_combout\ & \Mem_RAM|ram~21_q\) ) ) # ( !\Mem_ROM|memROM~11_combout\ & ( (\Mem_RAM|ram~29_q\ & !\Mem_ROM|memROM~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_RAM|ALT_INV_ram~29_q\,
	datac => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datad => \Mem_RAM|ALT_INV_ram~21_q\,
	dataf => \Mem_ROM|ALT_INV_memROM~11_combout\,
	combout => \Mem_RAM|ram~542_combout\);

-- Location: LABCELL_X6_Y23_N6
\Mem_RAM|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~553_combout\ = ( \Mem_RAM|ram~542_combout\ & ( (!\Mem_ROM|memROM~4_combout\ & !\Mem_ROM|memROM~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mem_ROM|ALT_INV_memROM~4_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~10_combout\,
	dataf => \Mem_RAM|ALT_INV_ram~542_combout\,
	combout => \Mem_RAM|ram~553_combout\);

-- Location: LABCELL_X6_Y23_N36
\Mem_RAM|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~543_combout\ = ( \Mem_RAM|ram~553_combout\ & ( !\Mem_ROM|memROM~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~9_combout\,
	dataf => \Mem_RAM|ALT_INV_ram~553_combout\,
	combout => \Mem_RAM|ram~543_combout\);

-- Location: LABCELL_X5_Y23_N51
\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( !\CPU|decoderInstru|Equal10~3_combout\ $ (((!\CPU|decoderInstru|Equal10~2_combout\ & ((\Mem_RAM|ram~543_combout\))) # (\CPU|decoderInstru|Equal10~2_combout\ & (\Mem_ROM|memROM~9_combout\)))) ) + ( \CPU|REGA|DOUT\(6) ) + ( 
-- \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( !\CPU|decoderInstru|Equal10~3_combout\ $ (((!\CPU|decoderInstru|Equal10~2_combout\ & ((\Mem_RAM|ram~543_combout\))) # (\CPU|decoderInstru|Equal10~2_combout\ & (\Mem_ROM|memROM~9_combout\)))) ) + ( \CPU|REGA|DOUT\(6) ) + ( 
-- \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal10~3_combout\,
	datab => \CPU|decoderInstru|ALT_INV_Equal10~2_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~9_combout\,
	datad => \Mem_RAM|ALT_INV_ram~543_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

-- Location: LABCELL_X5_Y23_N9
\CPU|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~6_combout\ = ( \CPU|ULA1|Add0~25_sumout\ & ( (!\CPU|decoderInstru|Equal10~1_combout\ & ((!\CPU|decoderInstru|Equal10~2_combout\) # ((\Mem_ROM|memROM~9_combout\)))) # (\CPU|decoderInstru|Equal10~1_combout\ & 
-- (((\Mem_RAM|ram~543_combout\)))) ) ) # ( !\CPU|ULA1|Add0~25_sumout\ & ( (!\CPU|decoderInstru|Equal10~1_combout\ & (\CPU|decoderInstru|Equal10~2_combout\ & ((\Mem_ROM|memROM~9_combout\)))) # (\CPU|decoderInstru|Equal10~1_combout\ & 
-- (((\Mem_RAM|ram~543_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011110001011110011111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal10~2_combout\,
	datab => \CPU|decoderInstru|ALT_INV_Equal10~1_combout\,
	datac => \Mem_RAM|ALT_INV_ram~543_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~9_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~25_sumout\,
	combout => \CPU|ULA1|saida[6]~6_combout\);

-- Location: FF_X5_Y23_N11
\CPU|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[6]~6_combout\,
	ena => \CPU|decoderInstru|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(6));

-- Location: FF_X5_Y23_N55
\regLEDR8bits|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \HabilitaRegLEDR7to0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regLEDR8bits|DOUT\(6));

-- Location: FF_X6_Y23_N37
\Mem_RAM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \Mem_RAM|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~30_q\);

-- Location: FF_X6_Y23_N35
\Mem_RAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \Mem_RAM|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mem_RAM|ram~22_q\);

-- Location: LABCELL_X6_Y23_N33
\Mem_RAM|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~544_combout\ = ( \Mem_ROM|memROM~11_combout\ & ( (!\Mem_ROM|memROM~12_combout\ & \Mem_RAM|ram~22_q\) ) ) # ( !\Mem_ROM|memROM~11_combout\ & ( (!\Mem_ROM|memROM~12_combout\ & \Mem_RAM|ram~30_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mem_ROM|ALT_INV_memROM~12_combout\,
	datac => \Mem_RAM|ALT_INV_ram~30_q\,
	datad => \Mem_RAM|ALT_INV_ram~22_q\,
	dataf => \Mem_ROM|ALT_INV_memROM~11_combout\,
	combout => \Mem_RAM|ram~544_combout\);

-- Location: LABCELL_X6_Y23_N27
\Mem_RAM|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~549_combout\ = ( \Mem_RAM|ram~544_combout\ & ( (!\Mem_ROM|memROM~10_combout\ & !\Mem_ROM|memROM~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mem_ROM|ALT_INV_memROM~10_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~4_combout\,
	dataf => \Mem_RAM|ALT_INV_ram~544_combout\,
	combout => \Mem_RAM|ram~549_combout\);

-- Location: LABCELL_X6_Y23_N15
\Mem_RAM|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mem_RAM|ram~545_combout\ = ( \Mem_RAM|ram~549_combout\ & ( !\Mem_ROM|memROM~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mem_ROM|ALT_INV_memROM~9_combout\,
	dataf => \Mem_RAM|ALT_INV_ram~549_combout\,
	combout => \Mem_RAM|ram~545_combout\);

-- Location: FF_X5_Y23_N20
\CPU|REGA|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[7]~7_combout\,
	ena => \CPU|decoderInstru|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y23_N54
\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( !\CPU|decoderInstru|Equal10~3_combout\ $ (((!\CPU|decoderInstru|Equal10~2_combout\ & ((\Mem_RAM|ram~545_combout\))) # (\CPU|decoderInstru|Equal10~2_combout\ & (\Mem_ROM|memROM~4_combout\)))) ) + ( 
-- \CPU|REGA|DOUT[7]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal10~2_combout\,
	datab => \CPU|decoderInstru|ALT_INV_Equal10~3_combout\,
	datac => \Mem_ROM|ALT_INV_memROM~4_combout\,
	datad => \Mem_RAM|ALT_INV_ram~545_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

-- Location: LABCELL_X5_Y23_N18
\CPU|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~7_combout\ = ( \CPU|ULA1|Add0~29_sumout\ & ( (!\CPU|decoderInstru|Equal10~1_combout\ & ((!\CPU|decoderInstru|Equal10~2_combout\) # ((\Mem_ROM|memROM~4_combout\)))) # (\CPU|decoderInstru|Equal10~1_combout\ & 
-- (((\Mem_RAM|ram~545_combout\)))) ) ) # ( !\CPU|ULA1|Add0~29_sumout\ & ( (!\CPU|decoderInstru|Equal10~1_combout\ & (\CPU|decoderInstru|Equal10~2_combout\ & ((\Mem_ROM|memROM~4_combout\)))) # (\CPU|decoderInstru|Equal10~1_combout\ & 
-- (((\Mem_RAM|ram~545_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011110001011110011111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|decoderInstru|ALT_INV_Equal10~2_combout\,
	datab => \CPU|decoderInstru|ALT_INV_Equal10~1_combout\,
	datac => \Mem_RAM|ALT_INV_ram~545_combout\,
	datad => \Mem_ROM|ALT_INV_memROM~4_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add0~29_sumout\,
	combout => \CPU|ULA1|saida[7]~7_combout\);

-- Location: FF_X5_Y23_N19
\CPU|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|ULA1|saida[7]~7_combout\,
	ena => \CPU|decoderInstru|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(7));

-- Location: FF_X5_Y23_N32
\regLEDR8bits|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \HabilitaRegLEDR7to0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regLEDR8bits|DOUT\(7));

-- Location: MLABCELL_X4_Y23_N36
\HabLEDR8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HabLEDR8~0_combout\ = ( \Mem_ROM|memROM~2_combout\ & ( (!\CPU|PC|DOUT\(2) & (((!\CPU|PC|DOUT[0]~DUPLICATE_q\ & \CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT[0]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000110110000000000011011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \Mem_ROM|ALT_INV_memROM~2_combout\,
	combout => \HabLEDR8~0_combout\);

-- Location: MLABCELL_X4_Y23_N27
\regLEDR8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \regLEDR8|DOUT~0_combout\ = ( \Mem_ROM|memROM~10_combout\ & ( \regLEDR8|DOUT~q\ ) ) # ( !\Mem_ROM|memROM~10_combout\ & ( (!\HabLEDR8~0_combout\ & (((\regLEDR8|DOUT~q\)))) # (\HabLEDR8~0_combout\ & ((!\Mem_ROM|memROM~0_combout\ & ((\regLEDR8|DOUT~q\))) # 
-- (\Mem_ROM|memROM~0_combout\ & (\CPU|REGA|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111011000000011111101100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HabLEDR8~0_combout\,
	datab => \CPU|REGA|ALT_INV_DOUT\(0),
	datac => \Mem_ROM|ALT_INV_memROM~0_combout\,
	datad => \regLEDR8|ALT_INV_DOUT~q\,
	dataf => \Mem_ROM|ALT_INV_memROM~10_combout\,
	combout => \regLEDR8|DOUT~0_combout\);

-- Location: FF_X4_Y23_N28
\regLEDR8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \regLEDR8|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regLEDR8|DOUT~q\);

-- Location: MLABCELL_X4_Y23_N24
\regLEDR9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \regLEDR9|DOUT~0_combout\ = ( \Mem_ROM|memROM~1_combout\ & ( (!\HabLEDR8~0_combout\ & (((\regLEDR9|DOUT~q\)))) # (\HabLEDR8~0_combout\ & ((!\Mem_ROM|memROM~11_combout\ & ((\regLEDR9|DOUT~q\))) # (\Mem_ROM|memROM~11_combout\ & (\CPU|REGA|DOUT\(0))))) ) ) # 
-- ( !\Mem_ROM|memROM~1_combout\ & ( \regLEDR9|DOUT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111110110000000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HabLEDR8~0_combout\,
	datab => \CPU|REGA|ALT_INV_DOUT\(0),
	datac => \Mem_ROM|ALT_INV_memROM~11_combout\,
	datad => \regLEDR9|ALT_INV_DOUT~q\,
	dataf => \Mem_ROM|ALT_INV_memROM~1_combout\,
	combout => \regLEDR9|DOUT~0_combout\);

-- Location: FF_X4_Y23_N25
\regLEDR9|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \regLEDR9|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regLEDR9|DOUT~q\);

-- Location: FF_X7_Y23_N46
\CPU|PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	asdata => \Mem_ROM|memROM~4_combout\,
	sload => \CPU|decoderInstru|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[5]~DUPLICATE_q\);

-- Location: FF_X7_Y23_N52
\CPU|PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	asdata => \Mem_ROM|memROM~4_combout\,
	sload => \CPU|decoderInstru|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[7]~DUPLICATE_q\);

-- Location: FF_X7_Y23_N55
\CPU|PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	asdata => \Mem_ROM|memROM~3_combout\,
	sload => \CPU|decoderInstru|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[8]~DUPLICATE_q\);

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

-- Location: IOIBUF_X54_Y16_N55
\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

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

-- Location: LABCELL_X31_Y42_N0
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


