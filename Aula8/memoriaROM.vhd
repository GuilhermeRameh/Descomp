library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 13;
          addrWidth: natural := 9
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);
  
  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB  : std_logic_vector(3 downto 0) := "0011";
  constant LDI  : std_logic_vector(3 downto 0) := "0100";
  constant STA  : std_logic_vector(3 downto 0) := "0101";
  constant JMP  : std_logic_vector(3 downto 0) := "0110";
  constant JEQ  : std_logic_vector(3 downto 0) := "0111";
  constant CEQ  : std_logic_vector(3 downto 0) := "1000";
  constant JSR  : std_logic_vector(3 downto 0) := "1001";
  constant RET  : std_logic_vector(3 downto 0) := "1010";

	
  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
      -- Palavra de Controle = SelMUX, Habilita_A, Reset_A, Operacao_ULA
      -- Inicializa os endereços:
		
		--tmp(X)  := INSTRUÇÃO & '1 ou 0 (hab memoria)' & "valor ou endereço"
      tmp(0) := x"4"&'0'&x"00";	-- LDI $0		#Carrega o acumulador com o valor 0
		tmp(1) := x"5"&'0'&x"00";	-- STA @0  	#Armazena o valor do acumulador em MEM[0] (constante 0)
		tmp(2) := x"5"&'0'&x"02";	-- STA @2  	#Armazena o valor do acumulador em MEM[2] (contador)
		tmp(3) := x"4"&'0'&x"01";	-- LDI $1  	#Carrega o acumulador com o valor 1
		tmp(4) := x"5"&'0'&x"01";	-- STA @1  	#Armazena o valor do acumulador em MEM[1] (constante 1)
		tmp(5) := x"0"&'0'&x"00";	-- LOOP
		tmp(6) := x"1"&'1'&x"60";	-- LDA @352  	#Carrega o acumulador com a leitura do botão KEY0
		tmp(7) := x"5"&'1'&x"20";	-- STA @288  	#Armazena o valor lido em HEX0 (para verificar erros de leitura)
		tmp(8) := x"8"&'0'&x"00";	-- CEQ @0	  	#Compara com o valor de MEM[0] (constante 0)
		tmp(9) := x"7"&'0'&x"0B";	-- JEQ @11  	#Desvia se igual a 0 (botão não foi pressionado)
		tmp(10) := x"9"&'0'&x"20";	-- JSR @32  	#O botão foi pressionado, chama a sub-rotina de incremento
		tmp(11) := x"0"&'0'&x"00";	-- NOP				#Retorno da sub-rotina de incremento
		tmp(12) := x"6"&'0'&x"05";	-- JMP @5				#Fecha o laço principal, faz uma nova leitura de KEY0

		tmp(32) := x"5"&'1'&x"FF";	-- STA @511		#Limpa a leitura do botão
		tmp(33) := x"1"&'0'&x"02";	-- LDA @2				#Carrega o valor de MEM[2] (contador)
		tmp(34) := x"2"&'0'&x"01";	-- SOMA @1				#Soma com a constante em MEM[1]
		tmp(35) := x"5"&'0'&x"02";	-- STA @2				#Salva o incremento em MEM[2] (contador)
		tmp(36) := x"5"&'1'&x"02";	-- STA @258				#Armazena o valor do bit0 do acumulador no LDR9
		tmp(37) := x"5"&'1'&x"3D";	-- STA @317
		tmp(38) := x"A"&'0'&x"00";	-- RET				#Retorna da sub-rotina

		
      return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;