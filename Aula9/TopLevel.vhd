library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas


entity TopLevel is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
        simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
	 CLOCK_50 : in std_logic;
	 FPGA_RESET_N: in std_logic;
	 KEY: in std_logic_vector(3 downto 0);
	 SW: in std_logic_vector(9 downto 0);
	 LEDR: out std_logic_vector(9 downto 0);
	 
	 HEX0: out std_logic_vector(6 downto 0);
	 HEX1: out std_logic_vector(6 downto 0);
	 HEX2: out std_logic_vector(6 downto 0);
	 HEX3: out std_logic_vector(6 downto 0);
	 HEX4: out std_logic_vector(6 downto 0);
	 HEX5: out std_logic_vector(6 downto 0);
	 
	 
	 PC_OUT: out std_logic_vector(larguraEnderecos-1 downto 0);
	 Hab_debug: out std_logic_vector(15 downto 0);
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
  signal hab_HEX0 : std_logic;
  signal hab_HEX1 : std_logic;
  signal hab_HEX2 : std_logic;
  signal hab_HEX3 : std_logic;
  signal hab_HEX4 : std_logic;
  signal hab_HEX5 : std_logic;
  
  signal HEX0_Reg_IN : std_logic_vector(3 downto 0);
  signal HEX1_Reg_IN : std_logic_vector(3 downto 0);
  signal HEX2_Reg_IN : std_logic_vector(3 downto 0);
  signal HEX3_Reg_IN : std_logic_vector(3 downto 0);
  signal HEX4_Reg_IN : std_logic_vector(3 downto 0);
  signal HEX5_Reg_IN : std_logic_vector(3 downto 0);
  
  
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
  
  
  -- ----------------------
  -- IMPLEMENTAÇÃO SWITCHES
  -- ----------------------
  
  signal habSW7dt0 : std_logic;
  signal habSW8 : std_logic;
  signal habSW9 : std_logic;
  
  
  -- ----------------------
  -- IMPLEMENTAÇÃO KEYS
  -- ----------------------
  
  signal habKEY0 : std_logic;
  signal habKEY1 : std_logic;
  signal habKEY2 : std_logic;
  signal habKEY3 : std_logic;
  signal habKEYFPGA : std_logic;
  
  signal bordaSub0 : std_logic;
  signal KEY0Reg : std_logic;
  signal Reset_Reg_KEY0 : std_logic;
  
  signal bordaSub1 : std_logic;
  signal KEY1Reg : std_logic;
  signal Reset_Reg_KEY1 : std_logic;

	
	
begin
-- Para simular, fica mais simples tirar o edgeDetector
	gravar:  if simulacao generate
	CLK <= KEY(0);
	else generate
	detectorSub0: work.edgeDetector(bordaSubida)
		port map (clk => CLOCK_50, entrada => CLOCK_50, saida => CLK);
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
			CPU_debug => Hab_debug,
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
HabilitaRegLEDR7to0 <= (SaidaDecoder3x8MS(4) AND CPU_Escrita AND SaidaDecoder3x8LS(0) AND NOT(Data_Address(5)));
regLEDR8bits : entity work.registradorGenerico generic map (larguraDados => 8)
		port map(
			DIN => Data_OUT,
			DOUT => LEDR(7 downto 0),
			ENABLE => HabilitaRegLEDR7to0,
			CLK => CLK,
			RST => '0'
		);
		
-- LED 8		
HabLEDR8 <= (SaidaDecoder3x8MS(4) AND CPU_Escrita AND SaidaDecoder3x8LS(1) AND NOT(Data_Address(5)));
regLEDR8 : entity work.regFlipFlop generic map (larguraDados => 1)
		port map(
			DIN => Data_OUT(0),
			DOUT => LEDR(8),
			ENABLE => HabLEDR8,
			CLK => CLK,
			RST => '0'
		);

-- LED 9
HabLEDR9 <= (SaidaDecoder3x8MS(4) AND CPU_Escrita AND SaidaDecoder3x8LS(2) AND NOT(Data_Address(5)));
regLEDR9 : entity work.regFlipFlop generic map (larguraDados => 1)
		port map(
			DIN => Data_OUT(0),
			DOUT => LEDR(9),
			ENABLE => HabLEDR9,
			CLK => CLK,	
			RST => '0'
		);

		
		
-- ########################################
-- 	    HEX 7Seg
-- ########################################		


-- HEX0	
hab_HEX0 <= (CPU_Escrita AND SaidaDecoder3x8MS(4) AND SaidaDecoder3x8LS(0) AND Data_Address(5));
reg7seg0 : entity work.registradorGenerico generic map (larguraDados => 4)
		  port map(
		      DIN => Data_OUT(3 downto 0),
				DOUT => HEX0_DADO,
				ENABLE => hab_HEX0,
				CLK => CLK,	
				RST => '0'
			);

Hex0value :  entity work.conversorHex7Seg
        port map(dadoHex => HEX0_DADO,
                 apaga =>  HEX0_APAGA,
                 negativo => HEX0_NEG,
                 overFlow =>  HEX0_OVERFLOW,
                 saida7seg => HEX0_SAIDA);
					  
-- HEX1
hab_HEX1 <= (CPU_Escrita AND SaidaDecoder3x8MS(4) AND SaidaDecoder3x8LS(1) AND Data_Address(5));
reg7seg1 : entity work.registradorGenerico generic map (larguraDados => 4)
		  port map(
		      DIN => Data_OUT(3 downto 0),
				DOUT => HEX1_DADO,
				ENABLE => hab_HEX1,
				CLK => CLK,	
				RST => '0'
			);
			
Hex1value :  entity work.conversorHex7Seg
        port map(dadoHex => HEX1_DADO,
                 apaga =>  HEX1_APAGA,
                 negativo => HEX1_NEG,
                 overFlow =>  HEX1_OVERFLOW,
                 saida7seg => HEX1_SAIDA);
					  
-- HEX2	
hab_HEX2 <= (CPU_Escrita AND SaidaDecoder3x8MS(4) AND SaidaDecoder3x8LS(2) AND Data_Address(5));	  
reg7seg2 : entity work.registradorGenerico generic map (larguraDados => 4)
		  port map(
		      DIN => Data_OUT(3 downto 0),
				DOUT => HEX2_DADO,
				ENABLE => hab_HEX2,
				CLK => CLK,	
				RST => '0'
			);
			
Hex2value :  entity work.conversorHex7Seg
        port map(dadoHex => HEX2_DADO,
                 apaga =>  HEX2_APAGA,
                 negativo => HEX2_NEG,
                 overFlow =>  HEX2_OVERFLOW,
                 saida7seg => HEX2_SAIDA);
					  
-- HEX3
hab_HEX3<= (CPU_Escrita AND SaidaDecoder3x8MS(4) AND SaidaDecoder3x8LS(3) AND Data_Address(5));
reg7seg3 : entity work.registradorGenerico generic map (larguraDados => 4)
		  port map(
		      DIN => Data_OUT(3 downto 0),
				DOUT => HEX3_DADO,
				ENABLE => hab_HEX3,
				CLK => CLK,	
				RST => '0'
			);  
					  
Hex3value :  entity work.conversorHex7Seg
        port map(dadoHex => HEX3_DADO,
                 apaga =>  HEX3_APAGA,
                 negativo => HEX3_NEG,
                 overFlow =>  HEX3_OVERFLOW,
                 saida7seg => HEX3_SAIDA);
					  
-- HEX4
hab_HEX4 <= (CPU_Escrita AND SaidaDecoder3x8MS(4) AND SaidaDecoder3x8LS(4) AND Data_Address(5));
reg7seg4 : entity work.registradorGenerico generic map (larguraDados => 4)
		  port map(
		      DIN => Data_OUT(3 downto 0),
				DOUT => HEX4_DADO,
				ENABLE => hab_HEX4,
				CLK => CLK,	
				RST => '0'
			);	  
					  
Hex4value :  entity work.conversorHex7Seg
        port map(dadoHex => HEX4_DADO,
                 apaga =>  HEX4_APAGA,
                 negativo => HEX4_NEG,
                 overFlow =>  HEX4_OVERFLOW,
                 saida7seg => HEX4_SAIDA);
					  
-- HEX5
hab_HEX5 <= (CPU_Escrita AND SaidaDecoder3x8MS(4) AND SaidaDecoder3x8LS(5) AND Data_Address(5));
reg7seg5 : entity work.registradorGenerico generic map (larguraDados => 4)
		  port map(
		      DIN => Data_OUT(3 downto 0),
				DOUT => HEX5_DADO,
				ENABLE => hab_HEX5,
				CLK => CLK,	
				RST => '0'
			);	  

Hex5value :  entity work.conversorHex7Seg
        port map(dadoHex => HEX5_DADO,
                 apaga =>  HEX5_APAGA,
                 negativo => HEX5_NEG,
                 overFlow =>  HEX5_OVERFLOW,
                 saida7seg => HEX5_SAIDA);
					  
					  

HEX0 <= HEX0_SAIDA;
HEX1 <= HEX1_SAIDA;

HEX2 <= HEX2_SAIDA;
HEX3 <= HEX3_SAIDA;

HEX4 <= HEX4_SAIDA;
HEX5 <= HEX5_SAIDA;



-- ########################################
-- 	    			SWITCHES
-- ########################################

-- SW 7dt0
habSW7dt0 <= (CPU_Leitura AND NOT(Data_Address(5)) AND SaidaDecoder3x8MS(5) AND SaidaDecoder3x8LS(0));
tristatebufferSW7dt0 :  entity work.buffer_3_state_8portas
        port map(entrada => SW(7 downto 0), habilita =>  habSW7dt0, saida => Data_IN);


-- SW 8
habSW8 <= (CPU_Leitura AND NOT(Data_Address(5)) AND SaidaDecoder3x8MS(5) AND SaidaDecoder3x8LS(1));
tristatebufferSW8 :  entity work.buffer_3_state
        port map(entrada => SW(8), habilita => habSW8, saida => Data_IN(0));


-- SW 9
habSW9 <= (CPU_Leitura AND NOT(Data_Address(5)) AND SaidaDecoder3x8MS(5) AND SaidaDecoder3x8LS(2));
tristatebufferSW9 :  entity work.buffer_3_state
        port map(entrada => SW(9), habilita => habSW9, saida => Data_IN(0));




-- ########################################
-- 	    			  KEYS
-- ########################################

-- KEY 0
detectorSubKEY0: work.edgeDetector(bordaSubida)
		port map (clk => CLK, entrada => (not KEY(0)), saida => bordaSub0);
		
Reset_Reg_KEY0 <= (CPU_Escrita AND Data_Address(0) AND Data_Address(1) AND Data_Address(2) AND Data_Address(3) AND Data_Address(4) AND Data_Address(5) AND Data_Address(6) AND Data_Address(7) AND Data_Address(8));
regKEY0: entity work.regFlipFlop
			port map(
						DIN => '1',
						DOUT => KEY0Reg,
						ENABLE => '1',
						CLK => bordaSub0,	
						RST => Reset_Reg_KEY0
					);
		
habKEY0 <= (CPU_Leitura AND Data_Address(5) AND SaidaDecoder3x8MS(5) AND SaidaDecoder3x8LS(0));
tristatebufferKEY0 :  entity work.buffer_3_state
        port map(entrada => KEY0Reg, habilita =>  habKEY0, saida => Data_IN(0));

-- KEY 1		
detectorSubKEY1: work.edgeDetector(bordaSubida)
		port map (clk => CLK, entrada => (not KEY(1)), saida => bordaSub1);
		
Reset_Reg_KEY1 <= (CPU_Escrita AND NOT(Data_Address(0)) AND Data_Address(1) AND Data_Address(2) AND Data_Address(3) AND Data_Address(4) AND Data_Address(5) AND Data_Address(6) AND Data_Address(7) AND Data_Address(8));
regKEY1: entity work.regFlipFlop
			port map(
						DIN => '1',
						DOUT => KEY1Reg,
						ENABLE => '1',
						CLK => bordaSub1,	
						RST => Reset_Reg_KEY1
					);
					
habKEY1 <= (CPU_Leitura AND Data_Address(5) AND SaidaDecoder3x8MS(5) AND SaidaDecoder3x8LS(1));
tristatebufferKEY1 :  entity work.buffer_3_state
        port map(entrada => KEY1Reg, habilita => habKEY1, saida => Data_IN(0));

-- KEY 2
habKEY2 <= (CPU_Leitura AND Data_Address(5) AND SaidaDecoder3x8MS(5) AND SaidaDecoder3x8LS(2));
tristatebufferKEY2 :  entity work.buffer_3_state
        port map(entrada => NOT(KEY(2)), habilita =>  habKEY2, saida => Data_IN(0));

-- KEY 3
habKEY3 <= (CPU_Leitura AND Data_Address(5) AND SaidaDecoder3x8MS(5) AND SaidaDecoder3x8LS(3));
tristatebufferKEY3 :  entity work.buffer_3_state
        port map(entrada => NOT(KEY(3)), habilita =>  habKEY3, saida => Data_IN(0));

-- KEY FPGA_Reset
habKEYFPGA <= (CPU_Leitura AND Data_Address(5) AND SaidaDecoder3x8MS(5) AND SaidaDecoder3x8LS(4));
tristatebufferKEYFPGA :  entity work.buffer_3_state
        port map(entrada => NOT(FPGA_RESET_N), habilita =>  habKEYFPGA, saida => Data_IN(0));


		
-- ########################################
-- 	    Ajustando saidas p DEBUGING
-- ########################################

REG_A_OUT <= Data_OUT;


end architecture;
