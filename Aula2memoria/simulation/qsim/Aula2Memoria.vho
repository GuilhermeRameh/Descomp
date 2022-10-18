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

-- DATE "08/24/2022 10:13:28"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Aula2Memoria IS
    PORT (
	Endereco : IN std_logic_vector(3 DOWNTO 0);
	Dado : OUT std_logic_vector(7 DOWNTO 0)
	);
END Aula2Memoria;

ARCHITECTURE structure OF Aula2Memoria IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Endereco : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Dado : std_logic_vector(7 DOWNTO 0);
SIGNAL \Dado[0]~output_o\ : std_logic;
SIGNAL \Dado[1]~output_o\ : std_logic;
SIGNAL \Dado[2]~output_o\ : std_logic;
SIGNAL \Dado[3]~output_o\ : std_logic;
SIGNAL \Dado[4]~output_o\ : std_logic;
SIGNAL \Dado[5]~output_o\ : std_logic;
SIGNAL \Dado[6]~output_o\ : std_logic;
SIGNAL \Dado[7]~output_o\ : std_logic;
SIGNAL \Endereco[0]~input_o\ : std_logic;
SIGNAL \Endereco[1]~input_o\ : std_logic;
SIGNAL \Endereco[2]~input_o\ : std_logic;
SIGNAL \Endereco[3]~input_o\ : std_logic;
SIGNAL \memROM~0_combout\ : std_logic;
SIGNAL \memROM~1_combout\ : std_logic;
SIGNAL \memROM~2_combout\ : std_logic;
SIGNAL \memROM~3_combout\ : std_logic;
SIGNAL \memROM~4_combout\ : std_logic;
SIGNAL \memROM~5_combout\ : std_logic;
SIGNAL \ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ALT_INV_Endereco[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Endereco[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Endereco[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Endereco[2]~input_o\ : std_logic;

BEGIN

ww_Endereco <= Endereco;
Dado <= ww_Dado;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_memROM~0_combout\ <= NOT \memROM~0_combout\;
\ALT_INV_memROM~2_combout\ <= NOT \memROM~2_combout\;
\ALT_INV_memROM~1_combout\ <= NOT \memROM~1_combout\;
\ALT_INV_memROM~5_combout\ <= NOT \memROM~5_combout\;
\ALT_INV_Endereco[0]~input_o\ <= NOT \Endereco[0]~input_o\;
\ALT_INV_Endereco[1]~input_o\ <= NOT \Endereco[1]~input_o\;
\ALT_INV_Endereco[3]~input_o\ <= NOT \Endereco[3]~input_o\;
\ALT_INV_Endereco[2]~input_o\ <= NOT \Endereco[2]~input_o\;

\Dado[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_memROM~0_combout\,
	devoe => ww_devoe,
	o => \Dado[0]~output_o\);

\Dado[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_memROM~1_combout\,
	devoe => ww_devoe,
	o => \Dado[1]~output_o\);

\Dado[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_memROM~2_combout\,
	devoe => ww_devoe,
	o => \Dado[2]~output_o\);

\Dado[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memROM~3_combout\,
	devoe => ww_devoe,
	o => \Dado[3]~output_o\);

\Dado[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memROM~4_combout\,
	devoe => ww_devoe,
	o => \Dado[4]~output_o\);

\Dado[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Dado[5]~output_o\);

\Dado[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_memROM~5_combout\,
	devoe => ww_devoe,
	o => \Dado[6]~output_o\);

\Dado[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Dado[7]~output_o\);

\Endereco[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Endereco(0),
	o => \Endereco[0]~input_o\);

\Endereco[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Endereco(1),
	o => \Endereco[1]~input_o\);

\Endereco[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Endereco(2),
	o => \Endereco[2]~input_o\);

\Endereco[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Endereco(3),
	o => \Endereco[3]~input_o\);

\memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \memROM~0_combout\ = (!\Endereco[0]~input_o\ & (((\Endereco[1]~input_o\ & \Endereco[3]~input_o\)) # (\Endereco[2]~input_o\))) # (\Endereco[0]~input_o\ & (((\Endereco[1]~input_o\ & !\Endereco[2]~input_o\)) # (\Endereco[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101001111111000110100111111100011010011111110001101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[0]~input_o\,
	datab => \ALT_INV_Endereco[1]~input_o\,
	datac => \ALT_INV_Endereco[2]~input_o\,
	datad => \ALT_INV_Endereco[3]~input_o\,
	combout => \memROM~0_combout\);

\memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \memROM~1_combout\ = ((!\Endereco[1]~input_o\ $ (!\Endereco[2]~input_o\)) # (\Endereco[3]~input_o\)) # (\Endereco[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111110111111111011111011111111101111101111111110111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[0]~input_o\,
	datab => \ALT_INV_Endereco[1]~input_o\,
	datac => \ALT_INV_Endereco[2]~input_o\,
	datad => \ALT_INV_Endereco[3]~input_o\,
	combout => \memROM~1_combout\);

\memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \memROM~2_combout\ = (!\Endereco[0]~input_o\ & (((\Endereco[2]~input_o\)) # (\Endereco[1]~input_o\))) # (\Endereco[0]~input_o\ & (((\Endereco[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101001111111001010100111111100101010011111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[0]~input_o\,
	datab => \ALT_INV_Endereco[1]~input_o\,
	datac => \ALT_INV_Endereco[2]~input_o\,
	datad => \ALT_INV_Endereco[3]~input_o\,
	combout => \memROM~2_combout\);

\memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \memROM~3_combout\ = (!\Endereco[3]~input_o\ & (!\Endereco[1]~input_o\ $ (((!\Endereco[2]~input_o\) # (\Endereco[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100100000000001110010000000000111001000000000011100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[0]~input_o\,
	datab => \ALT_INV_Endereco[1]~input_o\,
	datac => \ALT_INV_Endereco[2]~input_o\,
	datad => \ALT_INV_Endereco[3]~input_o\,
	combout => \memROM~3_combout\);

\memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \memROM~4_combout\ = (!\Endereco[3]~input_o\ & ((!\Endereco[0]~input_o\ & (\Endereco[1]~input_o\ & \Endereco[2]~input_o\)) # (\Endereco[0]~input_o\ & (!\Endereco[1]~input_o\ & !\Endereco[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001000000000010000100000000001000010000000000100001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[0]~input_o\,
	datab => \ALT_INV_Endereco[1]~input_o\,
	datac => \ALT_INV_Endereco[2]~input_o\,
	datad => \ALT_INV_Endereco[3]~input_o\,
	combout => \memROM~4_combout\);

\memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \memROM~5_combout\ = (\Endereco[3]~input_o\ & (((\Endereco[2]~input_o\) # (\Endereco[1]~input_o\)) # (\Endereco[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001111111000000000111111100000000011111110000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[0]~input_o\,
	datab => \ALT_INV_Endereco[1]~input_o\,
	datac => \ALT_INV_Endereco[2]~input_o\,
	datad => \ALT_INV_Endereco[3]~input_o\,
	combout => \memROM~5_combout\);

ww_Dado(0) <= \Dado[0]~output_o\;

ww_Dado(1) <= \Dado[1]~output_o\;

ww_Dado(2) <= \Dado[2]~output_o\;

ww_Dado(3) <= \Dado[3]~output_o\;

ww_Dado(4) <= \Dado[4]~output_o\;

ww_Dado(5) <= \Dado[5]~output_o\;

ww_Dado(6) <= \Dado[6]~output_o\;

ww_Dado(7) <= \Dado[7]~output_o\;
END structure;


