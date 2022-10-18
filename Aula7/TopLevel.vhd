library ieee;
use ieee.std_logic_1164.all;

entity TopLevel is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
	 CLOCK_50 : in std_logic;
	 FPGA_RESET_N: in std_logic;
	 KEY: in std_logic_vector(3 downto 0);
	 LEDR: out std_logic_vector(9 downto 0);
	 
	 PC_OUT: out std_logic_vector(larguraEnderecos-1 downto 0);
	 REG_A_OUT : out std_logic_vector(7 downto 0)
	 
	 );
end entity;


architecture arquitetura of TopLevel is
	
  -- SIGNALS
  signal CLK : std_logic;
  
  -- Processador
  signal CPU_Leitura : std_logic;
  signal CPU_Escrita : std_logic;
  signal ROM_Address : std_logic_vector(8 downto 0);
  signal Instruction_IN : std_logic_vector(12 downto 0);
  signal Data_IN : std_logic_vector (7 downto 0);
  signal Data_OUT : std_logic_vector (7 downto 0);
  signal Data_Address : std_logic_vector(8 downto 0);
  
  -- Decoder 3x8 MS
  alias EntradaDecoder3x8MS : std_logic_vector(2 downto 0) is Data_Address (8 downto 6);
  signal SaidaDecoder3x8MS : std_logic_vector(7 downto 0);
  
  -- Decoder 3x8 LS
  alias EntradaDecoder3x8LS : std_logic_vector(2 downto 0) is Data_Address (2 downto 0);
  signal SaidaDecoder3x8LS : std_logic_vector(7 downto 0);
  
  -- ----------------------
  -- IMPLEMENTACAO LEDS
  -- ----------------------
  signal HabilitaRegLEDR7to0, HabLEDR8, HabLEDR9 : std_logic;
  
  -- ----------------------
  -- IMPLEMENTAÇÃO HEX7SEG
  -- ----------------------
  signal HEX0_DADO : std_logic_vector (3 downto 0);
  signal HEX0_APAGA : std_logic;
  signal HEX0_NEG : std_logic;
  signal HEX0_OVERFLOW : std_logic;
  signal HEX0_SAIDA : std_logic_vector (6 downto 0);
  
  signal HEX1_DADO : std_logic_vector (3 downto 0);
  signal HEX1_APAGA : std_logic;
  signal HEX1_NEG : std_logic;
  signal HEX1_OVERFLOW : std_logic;
  signal HEX1_SAIDA : std_logic_vector (6 downto 0);
  
  signal HEX2_DADO : std_logic_vector (3 downto 0);
  signal HEX2_APAGA : std_logic;
  signal HEX2_NEG : std_logic;
  signal HEX2_OVERFLOW : std_logic;
  signal HEX2_SAIDA : std_logic_vector (6 downto 0);
  
  signal HEX3_DADO : std_logic_vector (3 downto 0);
  signal HEX3_APAGA : std_logic;
  signal HEX3_NEG : std_logic;
  signal HEX3_OVERFLOW : std_logic;
  signal HEX3_SAIDA : std_logic_vector (6 downto 0);
  
  signal HEX4_DADO : std_logic_vector (3 downto 0);
  signal HEX4_APAGA : std_logic;
  signal HEX4_NEG : std_logic;
  signal HEX4_OVERFLOW : std_logic;
  signal HEX4_SAIDA : std_logic_vector (6 downto 0);
  
  signal HEX5_DADO : std_logic_vector (3 downto 0);
  signal HEX5_APAGA : std_logic;
  signal HEX5_NEG : std_logic;
  signal HEX5_OVERFLOW : std_logic;
  signal HEX5_SAIDA : std_logic_vector (6 downto 0);
  
	
	
begin
-- Para simular, fica mais simples tirar o edgeDetector
	gravar:  if simulacao generate
	CLK <= KEY(0);
	else generate
	detectorSub0: work.edgeDetector(bordaSubida)
		port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
	end generate;
	
-- ########################################
-- 	   			 CPU
-- ########################################
	
-- Mapa CPU
CPU : 	entity work.Processador generic map (larguraDados => 8)
		port map(
			CLOCK => CLK,
			FPGA_RESET_N => FPGA_RESET_N,
			Leitura => CPU_Leitura,
			Escrita => CPU_Escrita,
		
			ROM_Address => ROM_Address,
			Instruction_IN => Instruction_IN,
			Data_IN => Data_IN,
			Data_OUT => Data_OUT,
			Data_Address => Data_Address, -- Leva ao decodificador 3x8 e os diferentes periféricos!
	  
			KEY => KEY,
			PC_OUT => PC_OUT
		);
		
		
-- ########################################
-- 	    DECODERS DE DATA ADDR
-- ########################################
		
-- Mapa Decodificador 3x8 A8 - A6
decoder3x8MS :	entity work.decoder3x8
		port map(
			entrada => EntradaDecoder3x8MS,
			saida => SaidaDecoder3x8MS
		);
		
-- Mapa Decodificador 3x8 A2 - A0
decoder3x8LS :	entity work.decoder3x8
		port map(
			entrada => EntradaDecoder3x8LS,
			saida => SaidaDecoder3x8LS
		);
		
		
-- Mapa periférico ROM		
Mem_ROM :	entity work.memoriaROM
		port map(
			Endereco => ROM_Address,
			Dado => Instruction_IN
		);
				

-- ########################################
-- 	    MEMORIAS ROM RAM
-- ########################################				
				
-- Mapa periférico RAM
Mem_RAM :	entity work.memoriaDeDados generic map (addrWidth => 6)
		port map(
			Habilita => SaidaDecoder3x8MS(0),
			Endereco => Data_Address(5 downto 0),
			DadoIn => Data_OUT, 
			DadoOut => Data_IN, 
			habLeitura => CPU_Leitura,
			habEscrita => CPU_Escrita, 
			clk => CLK
		);
		
		
-- ########################################
-- 	    LEDS
-- ########################################

-- LED 7-0
HabilitaRegLEDR7to0 <= (SaidaDecoder3x8MS(4) AND CPU_Escrita AND SaidaDecoder3x8LS(0));
regLEDR8bits : entity work.registradorGenerico generic map (larguraDados => 8)
		port map(
			DIN => Data_OUT,
			DOUT => LEDR(7 downto 0),
			ENABLE => HabilitaRegLEDR7to0,
			CLK => CLK,
			RST => '0'
		);
		
-- LED 8		
HabLEDR8 <= (SaidaDecoder3x8MS(4) AND CPU_Escrita AND SaidaDecoder3x8LS(1));
regLEDR8 : entity work.regFlipFlop generic map (larguraDados => 1)
		port map(
			DIN => Data_OUT(0),
			DOUT => LEDR(8),
			ENABLE => HabLEDR8,
			CLK => CLK,
			RST => '0'
		);

-- LED 9
HabLEDR9 <= (SaidaDecoder3x8MS(4) AND CPU_Escrita AND SaidaDecoder3x8LS(2));
regLEDR9 : entity work.regFlipFlop generic map (larguraDados => 1)
		port map(
			DIN => Data_OUT(0),
			DOUT => LEDR(9),
			ENABLE => HabLEDR9,
			CLK => CLK,	
			RST => '0'
		);

		
		
-- ########################################
-- 	    Ajustando saidas p DEBUGING
-- ########################################

REG_A_OUT <= Data_OUT;

end architecture;
