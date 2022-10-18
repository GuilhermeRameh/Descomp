	library ieee;
use ieee.std_logic_1164.all;

entity Processador is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9
  );
  port   (
    CLOCK : in std_logic;
	 FPGA_RESET_N: in std_logic;
	 Leitura: out std_logic;
	 Escrita: out std_logic;
  
	 ROM_Address: out std_logic_vector(8 downto 0);
	 Instruction_IN: in std_logic_vector(12 downto 0);
	 Data_IN: in std_logic_vector(7 downto 0);
	 Data_OUT: out std_logic_vector(7 downto 0);
	 Data_Address: out std_logic_vector(8 downto 0); -- Leva ao decodificador 3x8 e os diferentes periféricos!
  
	 KEY: in std_logic_vector(3 downto 0);
	 
	 PC_OUT: out std_logic_vector(larguraEnderecos-1 downto 0)
  );
end entity;


architecture arquitetura of Processador is

-- Faltam alguns sinais:
  signal CLK : std_logic;
    
  signal PC_IN : std_logic_vector (8 downto 0);
  signal PC_OUTPUT : std_logic_vector (8 downto 0);
  
--  alias MEM_INST_IN : std_logic_vector (8 downto 0) is ROM_Address;
--  signal MEM_INST_OUT : std_logic_vector (12 downto 0) is Instruction_IN;
  
  alias OP_CODE : std_logic_vector (12 downto 9) is Instruction_IN (12 downto 9);
  
  alias DECODER_IN : std_logic_vector (12 downto 9) is OP_CODE;
  signal DECODER_OUT : std_logic_vector (11 downto 0);
  
  signal DESVIO_IN : std_logic_vector (4 downto 0);
  signal DESVIO_OUT : std_logic_vector (8 downto 0);
  
  alias SEL_MUX : std_logic is DECODER_OUT(6);
  alias HABILITA_A : std_logic is DECODER_OUT(5);
  alias OPERACAO_ULA : std_logic_vector (1 downto 0) is DECODER_OUT(4 downto 3);
  
  alias VALOR : std_logic_vector (7 downto 0) is Instruction_IN (7 downto 0);
  alias ENDERECO : std_logic_vector (8 downto 0) is Instruction_IN (8 downto 0);
  
  alias MUX_IN_ZERO : std_logic_vector (7 downto 0) is Data_IN;
  alias MUX_IN_ONE : std_logic_vector (7 downto 0) is VALOR;
  signal MUX_OUT : std_logic_vector (7 downto 0);
  
  signal ULA_IN_A : std_logic_vector (7 downto 0);
  alias ULA_IN_B : std_logic_vector (7 downto 0) is MUX_OUT;
  signal ULA_OUT : std_logic_vector (7 downto 0);
  
  alias REG_A_IN : std_logic_vector (7 downto 0) is ULA_OUT;
  alias REG_A_OUT : std_logic_vector (7 downto 0) is ULA_IN_A;
  
--  alias MEM_RAM_IN_DADOS : std_logic_vector (7 downto 0) is REG_A_OUT;
--  alias MEM_RAM_HABILITA : std_logic is ENDERECO (8);
--  alias MEM_RAM_ENDERECO : std_logic_vector (7 downto 0) is ENDERECO (7 downto 0);
--  alias MEM_RAM_OUT_DADOS : std_logic_vector (7 downto 0) is MUX_IN_ZERO;
--  alias MEM_RAM_HAB_LEITURA : std_logic is DECODER_OUT(1);
--  alias MEM_RAM_HAB_ESCRITA : std_logic is DECODER_OUT(0);
  
  alias DESTINO_JUMP : std_logic_vector (8 downto 0) is Instruction_IN (8 downto 0);
  
  signal ENDERECO_RET_IN : std_logic_vector (8 downto 0);
  signal ENDERECO_RET_OUT : std_logic_vector (8 downto 0);
  
  alias MUX_PC_ZERO : std_logic_vector (8 downto 0) is ENDERECO_RET_IN;
  alias MUX_PC_UM : std_logic_vector (8 downto 0) is DESTINO_JUMP;
  alias MUX_PC_DOIS : std_logic_vector (8 downto 0) is ENDERECO_RET_OUT;
  signal MUX_PC_SELETOR : std_logic_vector (1 downto 0);
  alias MUX_PC_SAIDA : std_logic_vector (8 downto 0) is PC_IN;
  
  signal FLAG_IGUAL_OUT : std_logic;
  
  
begin

-- Instanciando os componentes:
CLK <= CLOCK;


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
					  
					  
-- Setando as Saidas
ROM_Address <= PC_OUTPUT;
Data_OUT <= REG_A_OUT;
Data_Address <= ENDERECO;
Leitura <= DECODER_OUT(1);
Escrita <= DECODER_OUT(0);

PC_OUT <= PC_OUTPUT;

end architecture;