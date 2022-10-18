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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "08/24/2022 10:13:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Aula2Memoria
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Aula2Memoria_vhd_vec_tst IS
END Aula2Memoria_vhd_vec_tst;
ARCHITECTURE Aula2Memoria_arch OF Aula2Memoria_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Dado : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Endereco : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT Aula2Memoria
	PORT (
	Dado : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Endereco : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Aula2Memoria
	PORT MAP (
-- list connections between master ports and signals
	Dado => Dado,
	Endereco => Endereco
	);
-- Endereco[3]
t_prcs_Endereco_3: PROCESS
BEGIN
	Endereco(3) <= '0';
	WAIT FOR 320000 ps;
	Endereco(3) <= '1';
	WAIT FOR 320000 ps;
	Endereco(3) <= '0';
	WAIT FOR 320000 ps;
	Endereco(3) <= '1';
WAIT;
END PROCESS t_prcs_Endereco_3;
-- Endereco[2]
t_prcs_Endereco_2: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		Endereco(2) <= '0';
		WAIT FOR 160000 ps;
		Endereco(2) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	Endereco(2) <= '0';
WAIT;
END PROCESS t_prcs_Endereco_2;
-- Endereco[1]
t_prcs_Endereco_1: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		Endereco(1) <= '0';
		WAIT FOR 80000 ps;
		Endereco(1) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	Endereco(1) <= '0';
WAIT;
END PROCESS t_prcs_Endereco_1;
-- Endereco[0]
t_prcs_Endereco_0: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		Endereco(0) <= '0';
		WAIT FOR 40000 ps;
		Endereco(0) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	Endereco(0) <= '0';
WAIT;
END PROCESS t_prcs_Endereco_0;
END Aula2Memoria_arch;
