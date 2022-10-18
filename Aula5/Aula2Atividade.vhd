library ieee;
use ieee.std_logic_1164.all;

entity Aula2Atividade is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    SW: in std_logic_vector(9 downto 0);
    PC_OUT: out std_logic_vector(larguraEnderecos-1 downto 0);
    LEDR  : out std_logic_vector(9 downto 0);
	 HEX0 : out std_logic_vector (6 downto 0);
	 HEX1 : out std_logic_vector (6 downto 0);
	 HEX2 : out std_logic_vector (6 downto 0);
	 HEX3 : out std_logic_vector (6 downto 0);
	 HEX4 : out std_logic_vector (6 downto 0);
	 HEX5 : out std_logic_vector (6 downto 0)
  );
end entity;


architecture arquitetura of Aula2Atividade is

-- Faltam alguns sinais:
  signal CLK : std_logic;
  
    
  signal PC_IN : std_logic_vector (8 downto 0);
  signal PC_OUTPUT : std_logic_vector (8 downto 0);
  
  alias MEM_INST_IN : std_logic_vector (8 downto 0) is PC_OUTPUT;
  signal MEM_INST_OUT : std_logic_vector (12 downto 0);
  
  alias OP_CODE : std_logic_vector (12 downto 9) is MEM_INST_OUT (12 downto 9);
  
  alias DECODER_IN : std_logic_vector (12 downto 9) is OP_CODE;
  signal DECODER_OUT : std_logic_vector (11 downto 0);
  
  signal DESVIO_IN : std_logic_vector (4 downto 0);
  signal DESVIO_OUT : std_logic_vector (8 downto 0);
  
  alias SEL_MUX : std_logic is DECODER_OUT(5);
  alias HABILITA_A : std_logic is DECODER_OUT(4);
  alias OPERACAO_ULA : std_logic_vector (1 downto 0) is DECODER_OUT(4 downto 3);
  
  alias VALOR : std_logic_vector (7 downto 0) is MEM_INST_OUT (7 downto 0);
  alias ENDERECO : std_logic_vector (8 downto 0) is MEM_INST_OUT (8 downto 0);
  
  signal MUX_IN_ZERO : std_logic_vector (7 downto 0);
  alias MUX_IN_ONE : std_logic_vector (7 downto 0) is VALOR;
  signal MUX_OUT : std_logic_vector (7 downto 0);
  
  signal ULA_IN_A : std_logic_vector (7 downto 0);
  alias ULA_IN_B : std_logic_vector (7 downto 0) is MUX_OUT;
  signal ULA_OUT : std_logic_vector (7 downto 0);
  
  alias REG_A_IN : std_logic_vector (7 downto 0) is ULA_OUT;
  alias REG_A_OUT : std_logic_vector (7 downto 0) is ULA_IN_A;
  
  alias MEM_RAM_IN_DADOS : std_logic_vector (7 downto 0) is REG_A_OUT;
  alias MEM_RAM_HABILITA : std_logic is ENDERECO (8);
  alias MEM_RAM_ENDERECO : std_logic_vector (7 downto 0) is ENDERECO (7 downto 0);
  alias MEM_RAM_OUT_DADOS : std_logic_vector (7 downto 0) is MUX_IN_ZERO;
  alias MEM_RAM_HAB_LEITURA : std_logic is DECODER_OUT(1);
  alias MEM_RAM_HAB_ESCRITA : std_logic is DECODER_OUT(0);
  
  alias DESTINO_JUMP : std_logic_vector (8 downto 0) is MEM_INST_OUT (8 downto 0);
  
  signal ENDERECO_RET_IN : std_logic_vector (8 downto 0);
  signal ENDERECO_RET_OUT : std_logic_vector (8 downto 0);
  
  alias MUX_PC_ZERO : std_logic_vector (8 downto 0) is ENDERECO_RET_IN;
  alias MUX_PC_UM : std_logic_vector (8 downto 0) is DESTINO_JUMP;
  alias MUX_PC_DOIS : std_logic_vector (8 downto 0) is ENDERECO_RET_OUT;
  signal MUX_PC_SELETOR : std_logic_vector (1 downto 0);
  alias MUX_PC_SAIDA : std_logic_vector (8 downto 0) is PC_IN;
  
  signal FLAG_IGUAL_OUT : std_logic;
  
  
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

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

-- O port map completo do MUX.
MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => MUX_IN_ZERO,
                 entradaB_MUX =>  MUX_IN_ONE,
                 seletor_MUX => SEL_MUX,
                 saida_MUX => MUX_OUT);
					  
MUX2 :  entity work.muxGenerico4x1  generic map (larguraDados => 9)
        port map( entradaA_MUX => MUX_PC_ZERO,
                 entradaB_MUX =>  MUX_PC_UM,
					  entradaC_MUX => MUX_PC_DOIS,
                 seletor_MUX => MUX_PC_SELETOR,
                 saida_MUX => MUX_PC_SAIDA);

-- O port map completo do Acumulador.
REGA : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => REG_A_IN, DOUT => REG_A_OUT, ENABLE => HABILITA_A, CLK => CLK, RST => '0');

-- O port map completo do Program Counter.
PC : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
          port map (DIN => PC_IN, DOUT => PC_OUTPUT, ENABLE => '1', CLK => CLK, RST => '0');

incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 1)
        port map( entrada => PC_OUTPUT, saida => ENDERECO_RET_IN);


-- pormap Flag Igual
flagIgual : entity work.regFlipFLop   generic map (larguraDados => 1)
          port map (DIN => ULA_OUT(0), DOUT => FLAG_IGUAL_OUT, ENABLE => DECODER_OUT(2), CLK => CLK, RST => '0');
	
-- addr de retorno - Subrotina
enderecoDeRetorno : entity work.registradorGenerico generic map (larguraDados => 9)
	port map (DIN => ENDERECO_RET_IN, DOUT => ENDERECO_RET_OUT, ENABLE => DECODER_OUT(11), CLK => CLK, RST => '0');
		 

-- O port map completo da ULA:
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => ULA_IN_A, entradaB => ULA_IN_B, saida => ULA_OUT, seletor => OPERACAO_ULA);

-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM1 : entity work.memoriaROM   generic map (dataWidth => 13, addrWidth => 9)
          port map (Endereco => MEM_INST_IN, Dado => MEM_INST_OUT);

-- Registro do DECODER
decoderInstru :  entity work.decoderInstru
        port map( opcode => DECODER_IN,
                 saida => DECODER_OUT);
					  
-- Registro da logica de DESVIO
DESVIO_IN (4 downto 1) <= DECODER_OUT (10 downto 7);
DESVIO_IN (0) <= FLAG_IGUAL_OUT;
logicaDeDesvio :  entity work.logicaDeDesvio
        port map( opcode => DESVIO_IN,
                 saida => MUX_PC_SELETOR);
					  
-- MAPA DA RAM
RAM1 : entity work.memoriaDeDados  generic map (dataWidth => 8, addrWidth => 8)
		  port map (Habilita => MEM_RAM_HABILITA,
						Endereco => MEM_RAM_ENDERECO,
						DadoIn => MEM_RAM_IN_DADOS,
						DadoOut => MEM_RAM_OUT_DADOS,
						habLeitura => MEM_RAM_HAB_LEITURA,
						habEscrita => MEM_RAM_HAB_ESCRITA,
						clk => CLK);
						

-- ########################################################################					
--	#								DEBBUGING W 7SEG 										  #				
-- ########################################################################

HEX0_DADO <= REG_A_OUT (3 downto 0);
HEX1_DADO <= REG_A_OUT (7 downto 4);

HEX4_DADO <= PC_OUTPUT (3 downto 0);
HEX5_DADO <= PC_OUTPUT (7 downto 4);


Hex0value :  entity work.conversorHex7Seg
        port map(dadoHex => HEX0_DADO,
                 apaga =>  HEX0_APAGA,
                 negativo => HEX0_NEG,
                 overFlow =>  HEX0_OVERFLOW,
                 saida7seg => HEX0_SAIDA);
					  
Hex1value :  entity work.conversorHex7Seg
        port map(dadoHex => HEX1_DADO,
                 apaga =>  HEX1_APAGA,
                 negativo => HEX1_NEG,
                 overFlow =>  HEX1_OVERFLOW,
                 saida7seg => HEX1_SAIDA);
					  
Hex2value :  entity work.conversorHex7Seg
        port map(dadoHex => HEX2_DADO,
                 apaga =>  '1',
                 negativo => '0',
                 overFlow =>  HEX2_OVERFLOW,
                 saida7seg => HEX2_SAIDA);
					  
Hex3value :  entity work.conversorHex7Seg
        port map(dadoHex => HEX3_DADO,
                 apaga =>  '1',
                 negativo => '0',
                 overFlow =>  HEX3_OVERFLOW,
                 saida7seg => HEX3_SAIDA);
					  
Hex4value :  entity work.conversorHex7Seg
        port map(dadoHex => HEX4_DADO,
                 apaga =>  HEX4_APAGA,
                 negativo => HEX4_NEG,
                 overFlow =>  HEX4_OVERFLOW,
                 saida7seg => HEX4_SAIDA);

Hex5value :  entity work.conversorHex7Seg
        port map(dadoHex => HEX5_DADO,
                 apaga =>  HEX5_APAGA,
                 negativo => HEX5_NEG,
                 overFlow =>  HEX5_OVERFLOW,
                 saida7seg => HEX5_SAIDA);
					  

--HEX0 <= HEX0_SAIDA;
--HEX1 <= HEX1_SAIDA;
--
--HEX2 <= HEX2_SAIDA;
--HEX3 <= HEX3_SAIDA;
--
--HEX4 <= HEX4_SAIDA;
--HEX5 <= HEX5_SAIDA;

PC_OUT <= PC_OUTPUT;
LEDR (7 DOWNTO 0) <= REG_A_OUT;
LEDR (9 DOWNTO 8) <= OPERACAO_ULA;


end architecture;