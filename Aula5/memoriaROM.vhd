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
         tmp(0) := x"9"&'0'&x"0E";	-- JSR @14 	#Deve desviar para a posição 14
			tmp(1) := x"6"&'0'&x"04";	-- JMP @LOOP  	#Deve desviar para a posição 5
			tmp(2) := x"7"&'0'&x"09";	-- JEQ @9  	#Deve desviar para a posição 9
			tmp(3) := x"0"&'0'&x"00";	-- NOP
			tmp(4) := x"0"&'0'&x"00";	-- LOOP
			tmp(5) := x"4"&'0'&x"05";	-- LDI $5  	#Carrega acumulador com o valor 5
			tmp(6) := x"5"&'0'&x"00";	-- STA @0  	#Armazena 5 na posição 0 da memória
			tmp(7) := x"8"&'0'&x"00";	-- CEQ @0  	#A comparação deve fazer a flagIgual ser 1
			tmp(8) := x"6"&'0'&x"02";	-- JMP @2  	#Vai testar o flagIgual depois do jump
			tmp(9) := x"0"&'0'&x"00";	-- NOP
			tmp(10) := x"4"&'0'&x"04";	-- LDI $4  	#Carrega acumulador com o valor 4
			tmp(11) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com o valor 5, deve fazer flaguIgual ser 0
			tmp(12) := x"7"&'0'&x"03";	-- JEQ @3  	#Nao deve ocorrer o jump
			tmp(13) := x"6"&'1'&x"00";	-- JMP @256 	#FIM. Deve ficar neste laço
			tmp(14) := x"0"&'0'&x"00";	-- NOP
			tmp(15) := x"A"&'0'&x"00";	-- RET     	#Retorna pra posição 1
			tmp(256) := x"6"&'1'&x"00";

        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;