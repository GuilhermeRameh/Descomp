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
    LEDR  : out std_logic_vector(9 downto 0)
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
  signal DECODER_OUT : std_logic_vector (5 downto 0);
  
  alias SEL_MUX : std_logic is DECODER_OUT(5);
  alias HABILITA_A : std_logic is DECODER_OUT(4);
  alias OPERACAO_ULA : std_logic_vector (1 downto 0) is DECODER_OUT(3 downto 2);
  
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

-- O port map completo do Acumulador.
REGA : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => REG_A_IN, DOUT => REG_A_OUT, ENABLE => HABILITA_A, CLK => CLK, RST => '0');

-- O port map completo do Program Counter.
PC : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
          port map (DIN => PC_IN, DOUT => PC_OUTPUT, ENABLE => '1', CLK => CLK, RST => '0');

incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 1)
        port map( entrada => PC_OUTPUT, saida => PC_IN);


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
					  
-- MAPA DA RAM
RAM1 : entity work.memoriaDeDados  generic map (dataWidth => 8, addrWidth => 8)
		  port map (Habilita => MEM_RAM_HABILITA,
						Endereco => MEM_RAM_ENDERECO,
						DadoIn => MEM_RAM_IN_DADOS,
						DadoOut => MEM_RAM_OUT_DADOS,
						habLeitura => MEM_RAM_HAB_LEITURA,
						habEscrita => MEM_RAM_HAB_ESCRITA,
						clk => CLK);


-- A ligacao dos LEDs:
LEDR (7 downto 0) <= REG_A_OUT;


end architecture;