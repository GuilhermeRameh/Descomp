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
		tmp(0) := x"0"&'0'&x"00";	-- SETUP  	#Label para o setup
		tmp(1) := x"4"&'0'&x"00";	-- LDI $0  	#Carrega o acumulador com o valor 0
		tmp(2) := x"5"&'1'&x"20";	-- STA @288  	#Armazena o valor do acumulador em HEX0
		tmp(3) := x"5"&'1'&x"21";	-- STA @289  	#Armazena o valor do acumulador em HEX1
		tmp(4) := x"5"&'1'&x"22";	-- STA @290  	#Armazena o valor do acumulador em HEX2
		tmp(5) := x"5"&'1'&x"23";	-- STA @291  	#Armazena o valor do acumulador em HEX3
		tmp(6) := x"5"&'1'&x"24";	-- STA @292  	#Armazena o valor do acumulador em HEX4
		tmp(7) := x"5"&'1'&x"25";	-- STA @293  	#Armazena o valor do acumulador em HEX5
		tmp(8) := x"5"&'1'&x"00";	-- STA @256  	#Armazena o valor do bit0 do acumulador no LDR0 ~ LEDR7
		tmp(9) := x"5"&'1'&x"01";	-- STA @257  	#Armazena o valor do bit0 do acumulador no LDR8
		tmp(10) := x"5"&'1'&x"02";	-- STA @258  	#Armazena o valor do bit0 do acumulador no LDR9
		tmp(11) := x"5"&'0'&x"08";	-- STA @8  	#Armazena o valor 0 em MEM[8], eq à flag para contagem
		tmp(12) := x"5"&'0'&x"09";	-- STA @9  	#Armazena o valor 0 em MEM[9], eq à flag de overflow centenas de milhares
		tmp(13) := x"5"&'0'&x"0A";	-- STA @10  	#Armazena o valor 0 em MEM[10], equivalente à HEX0 - unidades
		tmp(14) := x"5"&'0'&x"0B";	-- STA @11  	#Armazena o valor 0 em MEM[11], equivalente à HEX1 - dezenas
		tmp(15) := x"5"&'0'&x"0C";	-- STA @12  	#Armazena o valor 0 em MEM[12], equivalente à HEX2 - centenas
		tmp(16) := x"5"&'0'&x"0D";	-- STA @13  	#Armazena o valor 0 em MEM[13], equivalente à HEX3 - milhares
		tmp(17) := x"5"&'0'&x"0E";	-- STA @14  	#Armazena o valor 0 em MEM[14], equivalente à HEX4 - dezenas de milhar
		tmp(18) := x"5"&'0'&x"0F";	-- STA @15  	#Armazena o valor 0 em MEM[15], equivalente à HEX5 - centenas de milhar
		tmp(19) := x"5"&'0'&x"14";	-- STA @20  	#Armazena o valor 0 em MEM[20], equivalente à limite de contagem unidades
		tmp(20) := x"5"&'0'&x"15";	-- STA @21  	#Armazena o valor 0 em MEM[21], equivalente à limite de contagem dezenas
		tmp(21) := x"5"&'0'&x"16";	-- STA @22  	#Armazena o valor 0 em MEM[22], equivalente à limite de contagem centenas
		tmp(22) := x"5"&'0'&x"17";	-- STA @23  	#Armazena o valor 0 em MEM[23], equivalente à limite de contagem milhares
		tmp(23) := x"5"&'0'&x"18";	-- STA @24  	#Armazena o valor 0 em MEM[24], equivalente à limite de contagem dezenas de milhares
		tmp(24) := x"5"&'0'&x"19";	-- STA @25  	#Armazena o valor 0 em MEM[25], equivalente à limite de contagem centenas de milhares
		tmp(25) := x"5"&'0'&x"00";	-- STA @0  	#Armazena em MEM[0] com o valor 0
		tmp(26) := x"4"&'0'&x"01";	-- LDI $1  	#Carrega acumulador com valor 1
		tmp(27) := x"5"&'0'&x"01";	-- STA @1  	#Armazena em MEM[1] com o valor 0
		tmp(28) := x"5"&'1'&x"FF";	-- STA @511 	#Armazena em ResetKEY0Reg como 1
		tmp(29) := x"5"&'1'&x"FE";	-- STA @510 	#Armazena em ResetKEY1Reg como 1
		tmp(30) := x"4"&'1'&x"0A";	-- LDI $10  	#Carrega acumulador com valor 10
		tmp(31) := x"5"&'0'&x"02";	-- STA @2  	#Armazena em MEM[2] com o valor 10
		tmp(32) := x"0"&'0'&x"00";	-- MAINLOOP  	#Começo do loop principal
		tmp(33) := x"4"&'0'&x"01";	-- LDI $1  	#Carrega o valor 1 para o acumulador
		tmp(34) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com 0, deve fazer FlagIgual ser 0
		tmp(35) := x"1"&'1'&x"60";	-- LDA @352  	#Carrega o valor de KEY[0] - Incremento de contagem
		tmp(36) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com o valor 0
		tmp(37) := x"7"&'0'&x"27";	-- JEQ @39 	#Desvia se igual a 0 (botao nao foi pressionado) TODO: Checar se é esse valor da mem mesmo
		tmp(38) := x"9"&'0'&x"49";	-- JSR @INCREMENTAVALOR  	#Botao foi pressionado, vai para a SubRotina INCREMENTAVALOR
		tmp(39) := x"0"&'0'&x"00";	-- NOP  	#Retorno da subrotina INCREMENTAVALOR
		tmp(40) := x"4"&'0'&x"01";	-- LDI $1  	#Carrega o valor 1 para o acumulador
		tmp(41) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com 0, deve fazer FlagIgual ser 0
		tmp(42) := x"1"&'0'&x"0A";	-- LDA @10  	#Carrega o acumulador com MEM[10] - unidades
		tmp(43) := x"5"&'1'&x"20";	-- STA @288  	#Armazena "unidades" em HEX0
		tmp(44) := x"1"&'0'&x"0B";	-- LDA @11  	#Carrega o acumulador com MEM[11] - dezenas
		tmp(45) := x"5"&'1'&x"21";	-- STA @289  	#Armazena "unidades" em HEX1
		tmp(46) := x"1"&'0'&x"0C";	-- LDA @12  	#Carrega o acumulador com MEM[12] - centenas
		tmp(47) := x"5"&'1'&x"22";	-- STA @290  	#Armazena "unidades" em HEX2
		tmp(48) := x"1"&'0'&x"0D";	-- LDA @13  	#Carrega o acumulador com MEM[13] - milhares
		tmp(49) := x"5"&'1'&x"23";	-- STA @291  	#Armazena "unidades" em HEX3
		tmp(50) := x"1"&'0'&x"0E";	-- LDA @14  	#Carrega o acumulador com MEM[14] - dezenas milhares
		tmp(51) := x"5"&'1'&x"24";	-- STA @292  	#Armazena "unidades" em HEX4
		tmp(52) := x"1"&'0'&x"0F";	-- LDA @15  	#Carrega o acumulador com MEM[15] - centenas milhares
		tmp(53) := x"5"&'1'&x"25";	-- STA @293  	#Armazena "unidades" em HEX5
		tmp(54) := x"1"&'1'&x"61";	-- LDA @353  	#Carrega o valor de KEY[1] - Configuração de limite de incremento
		tmp(55) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com o valor 0
		tmp(56) := x"7"&'0'&x"3A";	-- JEQ @58  	#Desvia se igual a 0 (botao nao foi pressionado) TODO: Checar se é esse valor da mem mesmo
		tmp(57) := x"9"&'0'&x"98";	-- JSR @LIMITAINCREMENTO  	#Botao foi pressionado, vai para a subrotina LIMITAINCREMENTO
		tmp(58) := x"0"&'0'&x"00";	-- NOP  	#Retorno da subrotina LIMITAINCREMENTO
		tmp(59) := x"4"&'0'&x"01";	-- LDI $1  	#Carrega o valor 1 para o acumulador
		tmp(60) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com 0, deve fazer FlagIgual ser 0
		tmp(61) := x"9"&'0'&x"CC";	-- JSR @VERIFICALIMITE
		tmp(62) := x"0"&'0'&x"00";	-- NOP  	#Retorno da subrotina VERIFICALIMITE
		tmp(63) := x"4"&'0'&x"01";	-- LDI $1  	#Carrega o valor 1 para o acumulador
		tmp(64) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com 0, deve fazer FlagIgual ser 0
		tmp(65) := x"1"&'1'&x"64";	-- LDA @356  	#Carrega o valor de FPGA_RESET - Reseta a contagem
		tmp(66) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com o valor 0
		tmp(67) := x"7"&'0'&x"45";	-- JEQ @69  	#Desvia se igual a 0 (botao nao foi pressionado) TODO: Checar se é esse valor da mem mesmo
		tmp(68) := x"9"&'0'&x"EF";	-- JSR @REINCONTAGEM  	#Botao foi pressionado, vai para a subrotina REINCONTAGEM
		tmp(69) := x"0"&'0'&x"00";	-- NOP  	#Retorno da subrotina REINCONTAGEM
		tmp(70) := x"4"&'0'&x"01";	-- LDI $1  	#Carrega o valor 1 para o acumulador
		tmp(71) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com 0, deve fazer FlagIgual ser 0
		tmp(72) := x"6"&'0'&x"20";	-- JMP @MAINLOOP  	#Volta para o começo do loop principal
		tmp(73) := x"0"&'0'&x"00";	-- INCREMENTAVALOR
		tmp(74) := x"4"&'0'&x"01";	-- LDI $1  	#Carrega o valor 1 para o acumulador
		tmp(75) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com 0, deve fazer FlagIgual ser 0
		tmp(76) := x"1"&'0'&x"08";	-- LDA @8  	#Carrega o acumulador com o valor da flag de parar contagem
		tmp(77) := x"8"&'0'&x"01";	-- CEQ @1  	#Compara com 1
		tmp(78) := x"7"&'0'&x"97";	-- JEQ @151   	#Se for 1, pula pro final da subrotina TODO: Checar se é esse o valor mesmo
		tmp(79) := x"4"&'0'&x"01";	-- LDI $1  	#Carrega o valor 1 para o acumulador
		tmp(80) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com 0, deve fazer FlagIgual ser 0
		tmp(81) := x"1"&'0'&x"0A";	-- LDA @10  	#Carrega acumulador com MEM[10] - unidades
		tmp(82) := x"2"&'0'&x"01";	-- SOMA @1  	#Soma com MEM[1] - valor 1
		tmp(83) := x"8"&'0'&x"02";	-- CEQ @2  	#Compara com 10
		tmp(84) := x"7"&'0'&x"57";	-- JEQ @OFU  	#Se igual, pula para OverFlow Unidades (OFU)
		tmp(85) := x"5"&'0'&x"0A";	-- STA @10  	#Amazena soma no MEM[10]
		tmp(86) := x"A"&'0'&x"00";	-- RET
		tmp(87) := x"0"&'0'&x"00";	-- OFU
		tmp(88) := x"4"&'0'&x"01";	-- LDI $1  	#Carrega o valor 1 para o acumulador
		tmp(89) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com 0, deve fazer FlagIgual ser 0
		tmp(90) := x"1"&'0'&x"00";	-- LDA @0  	#Carrega acumulador com o valor 0
		tmp(91) := x"5"&'0'&x"0A";	-- STA @10  	#Armazena em MEM[10] valor 0 - unidades
		tmp(92) := x"1"&'0'&x"0B";	-- LDA @11  	#Carrega acumulador com MEM[11] - dezenas
		tmp(93) := x"2"&'0'&x"01";	-- SOMA @1  	#Soma com MEM[1] - valor 1
		tmp(94) := x"8"&'0'&x"02";	-- CEQ @2  	#Compara com 10
		tmp(95) := x"7"&'0'&x"62";	-- JEQ @OFD  	#Se igual, pula para OverFlow Dezenas (OFD)
		tmp(96) := x"5"&'0'&x"0B";	-- STA @11  	#Armazena em MEM[10] valor 0 - unidades
		tmp(97) := x"A"&'0'&x"00";	-- RET
		tmp(98) := x"0"&'0'&x"00";	-- OFD
		tmp(99) := x"4"&'0'&x"01";	-- LDI $1  	#Carrega o valor 1 para o acumulador
		tmp(100) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com 0, deve fazer FlagIgual ser 0
		tmp(101) := x"1"&'0'&x"00";	-- LDA @0  	#Carrega acumulador com o valor 0
		tmp(102) := x"5"&'0'&x"0B";	-- STA @11  	#Armazena em MEM[11] valor 0 - dezenas
		tmp(103) := x"1"&'0'&x"0C";	-- LDA @12  	#Carrega acumulador com MEM[12] - centenas
		tmp(104) := x"2"&'0'&x"01";	-- SOMA @1  	#Soma com MEM[1] - valor 1
		tmp(105) := x"8"&'0'&x"02";	-- CEQ @2  	#Compara com 10
		tmp(106) := x"7"&'0'&x"6D";	-- JEQ @OFC  	#Se igual, pula para OverFlow Centenas (OFC)
		tmp(107) := x"5"&'0'&x"0C";	-- STA @12  	#Armazena em MEM[10] valor 0 - unidades
		tmp(108) := x"A"&'0'&x"00";	-- RET
		tmp(109) := x"0"&'0'&x"00";	-- OFC
		tmp(110) := x"4"&'0'&x"01";	-- LDI $1  	#Carrega o valor 1 para o acumulador
		tmp(111) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com 0, deve fazer FlagIgual ser 0
		tmp(112) := x"1"&'0'&x"00";	-- LDA @0  	#Carrega acumulador com o valor 0
		tmp(113) := x"5"&'0'&x"0C";	-- STA @12  	#Armazena em MEM[12] valor 0 - centenas
		tmp(114) := x"1"&'0'&x"0D";	-- LDA @13  	#Carrega acumulador com MEM[13] - milhares
		tmp(115) := x"2"&'0'&x"01";	-- SOMA @1  	#Soma com MEM[1] - valor 1
		tmp(116) := x"8"&'0'&x"02";	-- CEQ @2  	#Compara com 10
		tmp(117) := x"7"&'0'&x"78";	-- JEQ @OFM  	#Se igual, pula para OverFlow Milhares (OFM)
		tmp(118) := x"5"&'0'&x"0D";	-- STA @13  	#Armazena em MEM[10] valor 0 - unidades
		tmp(119) := x"A"&'0'&x"00";	-- RET
		tmp(120) := x"0"&'0'&x"00";	-- OFM
		tmp(121) := x"4"&'0'&x"01";	-- LDI $1  	#Carrega o valor 1 para o acumulador
		tmp(122) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com 0, deve fazer FlagIgual ser 0
		tmp(123) := x"1"&'0'&x"00";	-- LDA @0  	#Carrega acumulador com o valor 0
		tmp(124) := x"5"&'0'&x"0D";	-- STA @13  	#Armazena em MEM[13] valor 0 - milhares
		tmp(125) := x"1"&'0'&x"0E";	-- LDA @14  	#Carrega acumulador com MEM[14] - dezenas milhares
		tmp(126) := x"2"&'0'&x"01";	-- SOMA @1  	#Soma com MEM[1] - valor 1
		tmp(127) := x"8"&'0'&x"02";	-- CEQ @2  	#Compara com 10
		tmp(128) := x"7"&'0'&x"83";	-- JEQ @OFDM  	#Se igual, pula para OverFlow dezenas milhares (OFDM)
		tmp(129) := x"5"&'0'&x"0E";	-- STA @14  	#Armazena em MEM[10] valor 0 - unidades
		tmp(130) := x"A"&'0'&x"00";	-- RET
		tmp(131) := x"0"&'0'&x"00";	-- OFDM
		tmp(132) := x"4"&'0'&x"01";	-- LDI $1  	#Carrega o valor 1 para o acumulador
		tmp(133) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com 0, deve fazer FlagIgual ser 0
		tmp(134) := x"1"&'0'&x"00";	-- LDA @0  	#Carrega acumulador com o valor 0
		tmp(135) := x"5"&'0'&x"0E";	-- STA @14  	#Armazena em MEM[14] valor 0 - dezenas milhares
		tmp(136) := x"1"&'0'&x"0F";	-- LDA @15  	#Carrega acumulador com MEM[15] - Centenas milhares
		tmp(137) := x"2"&'0'&x"01";	-- SOMA @1  	#Soma com MEM[1] - valor 1
		tmp(138) := x"8"&'0'&x"02";	-- CEQ @2  	#Compara com 10
		tmp(139) := x"7"&'0'&x"8E";	-- JEQ @OFCM  	#Se igual, pula para OverFlow dezenas milhares (OFDM)
		tmp(140) := x"5"&'0'&x"0F";	-- STA @15  	#Armazena em MEM[10] valor 0 - unidades
		tmp(141) := x"A"&'0'&x"00";	-- RET
		tmp(142) := x"0"&'0'&x"00";	-- OFCM
		tmp(143) := x"4"&'0'&x"01";	-- LDI $1  	#Carrega o valor 1 para o acumulador
		tmp(144) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com 0, deve fazer FlagIgual ser 0
		tmp(145) := x"1"&'0'&x"00";	-- LDA @0  	#Carrega acumulador com o valor 0
		tmp(146) := x"5"&'0'&x"0F";	-- STA @15  	#Armazena em MEM[15] valor 0 - centenas milhares
		tmp(147) := x"1"&'0'&x"01";	-- LDA @1  	#Carrega o acumulador com 1
		tmp(148) := x"5"&'0'&x"09";	-- STA @9  	#Armazena 1 na MEM[9] - Bit de overflow
		tmp(149) := x"5"&'0'&x"08";	-- STA @8  	#Armazena 1 na MEM[8] - Flag Para Contagem
		tmp(150) := x"0"&'0'&x"00";	-- NOP
		tmp(151) := x"A"&'0'&x"00";	-- RET 
		tmp(152) := x"0"&'0'&x"00";	-- LIMITAINCREMENTO
		tmp(153) := x"1"&'1'&x"40";	-- LDA @320  	#Le os valores de SW0 ~ SW7
		tmp(154) := x"5"&'0'&x"14";	-- STA @20  	#Guarda na Mem[21] - Limita valor unidades
		tmp(155) := x"1"&'0'&x"01";	-- LDA @1  	#Carrega 1 para o acumulador
		tmp(156) := x"5"&'1'&x"FE";	-- STA @510  	#Reseta o Reg do KEY1
		tmp(157) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com 0, deve fazer FlagIgual ser 0
		tmp(158) := x"0"&'0'&x"00";	-- DEZENAS
		tmp(159) := x"1"&'1'&x"61";	-- LDA @353  	#Carrega o valor do KEY[1]
		tmp(160) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com o valor 0
		tmp(161) := x"7"&'0'&x"9E";	-- JEQ @DEZENAS  	#Volta se o botão nao foi pressionado
		tmp(162) := x"1"&'1'&x"40";	-- LDA @320  	#Le os valores de SW0 ~ SW7
		tmp(163) := x"5"&'0'&x"15";	-- STA @21  	#Guarda na Mem[21] - Limita valor dezenas
		tmp(164) := x"1"&'0'&x"01";	-- LDA @1  	#Carrega 1 para o acumulador
		tmp(165) := x"5"&'1'&x"FE";	-- STA @510  	#Reseta o Reg do KEY1
		tmp(166) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com 0, deve fazer FlagIgual ser 0
		tmp(167) := x"0"&'0'&x"00";	-- CENTENAS
		tmp(168) := x"1"&'1'&x"61";	-- LDA @353  	#Carrega o valor do KEY[1]
		tmp(169) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com o valor 0
		tmp(170) := x"7"&'0'&x"A7";	-- JEQ @CENTENAS  	#Volta se o botão nao foi pressionado
		tmp(171) := x"1"&'1'&x"40";	-- LDA @320  	#Le os valores de SW0 ~ SW7
		tmp(172) := x"5"&'0'&x"16";	-- STA @22  	#Guarda na Mem[21] - Limita valor centenas
		tmp(173) := x"1"&'0'&x"01";	-- LDA @1  	#Carrega 1 para o acumulador
		tmp(174) := x"5"&'1'&x"FE";	-- STA @510  	#Reseta o Reg do KEY1
		tmp(175) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com 0, deve fazer FlagIgual ser 0
		tmp(176) := x"0"&'0'&x"00";	-- MILHARES
		tmp(177) := x"1"&'1'&x"61";	-- LDA @353  	#Carrega o valor do KEY[1]
		tmp(178) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com o valor 0
		tmp(179) := x"7"&'0'&x"B0";	-- JEQ @MILHARES  	#Volta se o botão nao foi pressionado
		tmp(180) := x"1"&'1'&x"40";	-- LDA @320  	#Le os valores de SW0 ~ SW7
		tmp(181) := x"5"&'0'&x"17";	-- STA @23  	#Guarda na Mem[21] - Limita valor milhares
		tmp(182) := x"1"&'0'&x"01";	-- LDA @1  	#Carrega 1 para o acumulador
		tmp(183) := x"5"&'1'&x"FE";	-- STA @510  	#Reseta o Reg do KEY1
		tmp(184) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com 0, deve fazer FlagIgual ser 0
		tmp(185) := x"0"&'0'&x"00";	-- DEZMILHARES
		tmp(186) := x"1"&'1'&x"61";	-- LDA @353  	#Carrega o valor do KEY[1]
		tmp(187) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com o valor 0
		tmp(188) := x"7"&'0'&x"B9";	-- JEQ @DEZMILHARES  	#Volta se o botão nao foi pressionado
		tmp(189) := x"1"&'1'&x"40";	-- LDA @320  	#Le os valores de SW0 ~ SW7
		tmp(190) := x"5"&'0'&x"18";	-- STA @24  	#Guarda na Mem[21] - Limita valor dezenas de milhares
		tmp(191) := x"1"&'0'&x"01";	-- LDA @1  	#Carrega 1 para o acumulador
		tmp(192) := x"5"&'1'&x"FE";	-- STA @510  	#Reseta o Reg do KEY1
		tmp(193) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com 0, deve fazer FlagIgual ser 0
		tmp(194) := x"0"&'0'&x"00";	-- CEMMILHARES
		tmp(195) := x"1"&'1'&x"61";	-- LDA @353  	#Carrega o valor do KEY[1]
		tmp(196) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com o valor 0
		tmp(197) := x"7"&'0'&x"C2";	-- JEQ @CEMMILHARES  	#Volta se o botão nao foi pressionado
		tmp(198) := x"1"&'1'&x"40";	-- LDA @320  	#Le os valores de SW0 ~ SW7
		tmp(199) := x"5"&'0'&x"19";	-- STA @25  	#Guarda na Mem[21] - Limita valor dezenas de milhares
		tmp(200) := x"1"&'0'&x"01";	-- LDA @1  	#Carrega 1 para o acumulador
		tmp(201) := x"5"&'1'&x"FE";	-- STA @510  	#Reseta o Reg do KEY1
		tmp(202) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com 0, deve fazer FlagIgual ser 0
		tmp(203) := x"A"&'0'&x"00";	-- RET
		tmp(204) := x"0"&'0'&x"00";	-- VERIFICALIMITE
		tmp(205) := x"1"&'0'&x"0A";	-- LDA @10  	#Carrega acumulador com MEM[10] - unidades
		tmp(206) := x"8"&'0'&x"14";	-- CEQ @20  	#Compara com MEM[20] - limite unidades
		tmp(207) := x"7"&'0'&x"D1";	-- JEQ @CON1
		tmp(208) := x"A"&'0'&x"00";	-- RET
		tmp(209) := x"0"&'0'&x"00";	-- CON1
		tmp(210) := x"1"&'0'&x"0B";	-- LDA @11  	#Carrega acumulador com MEM[10] - unidades
		tmp(211) := x"8"&'0'&x"15";	-- CEQ @21  	#Compara com MEM[20] - limite unidades
		tmp(212) := x"7"&'0'&x"D6";	-- JEQ @CON2
		tmp(213) := x"A"&'0'&x"00";	-- RET
		tmp(214) := x"0"&'0'&x"00";	-- CON2
		tmp(215) := x"1"&'0'&x"0C";	-- LDA @12  	#Carrega acumulador com MEM[10] - unidades
		tmp(216) := x"8"&'0'&x"16";	-- CEQ @22  	#Compara com MEM[20] - limite unidades
		tmp(217) := x"7"&'0'&x"DB";	-- JEQ @CON3
		tmp(218) := x"A"&'0'&x"00";	-- RET
		tmp(219) := x"0"&'0'&x"00";	-- CON3
		tmp(220) := x"1"&'0'&x"0D";	-- LDA @13  	#Carrega acumulador com MEM[10] - unidades
		tmp(221) := x"8"&'0'&x"17";	-- CEQ @23  	#Compara com MEM[20] - limite unidades
		tmp(222) := x"7"&'0'&x"E0";	-- JEQ @CON4
		tmp(223) := x"A"&'0'&x"00";	-- RET
		tmp(224) := x"0"&'0'&x"00";	-- CON4
		tmp(225) := x"1"&'0'&x"0E";	-- LDA @14  	#Carrega acumulador com MEM[10] - unidades
		tmp(226) := x"8"&'0'&x"18";	-- CEQ @24  	#Compara com MEM[20] - limite unidades
		tmp(227) := x"7"&'0'&x"E5";	-- JEQ @CON5
		tmp(228) := x"A"&'0'&x"00";	-- RET
		tmp(229) := x"0"&'0'&x"00";	-- CON5
		tmp(230) := x"1"&'0'&x"0F";	-- LDA @15  	#Carrega acumulador com MEM[10] - unidades
		tmp(231) := x"8"&'0'&x"19";	-- CEQ @25  	#Compara com MEM[20] - limite unidades
		tmp(232) := x"7"&'0'&x"EA";	-- JEQ @CON6
		tmp(233) := x"A"&'0'&x"00";	-- RET
		tmp(234) := x"0"&'0'&x"00";	-- CON6
		tmp(235) := x"1"&'0'&x"01";	-- LDA @1  	#Carrega o acumulador com 1
		tmp(236) := x"5"&'0'&x"08";	-- STA @8  	#Armazena o valor 1 em MEM[8] - Flag Para Contagem
		tmp(237) := x"0"&'0'&x"00";	-- LIMITERETURN
		tmp(238) := x"A"&'0'&x"00";	-- RET
		tmp(239) := x"0"&'0'&x"00";	-- REINCONTAGEM
		tmp(240) := x"4"&'0'&x"00";	-- LDI $0  	#Carrega o acumulador com o valor 0
		tmp(241) := x"5"&'1'&x"20";	-- STA @288  	#Armazena o valor do acumulador em HEX0
		tmp(242) := x"5"&'1'&x"21";	-- STA @289  	#Armazena o valor do acumulador em HEX1
		tmp(243) := x"5"&'1'&x"22";	-- STA @290  	#Armazena o valor do acumulador em HEX2
		tmp(244) := x"5"&'1'&x"23";	-- STA @291  	#Armazena o valor do acumulador em HEX3
		tmp(245) := x"5"&'1'&x"24";	-- STA @292  	#Armazena o valor do acumulador em HEX4
		tmp(246) := x"5"&'1'&x"25";	-- STA @293  	#Armazena o valor do acumulador em HEX5
		tmp(247) := x"5"&'1'&x"00";	-- STA @256  	#Armazena o valor do bit0 do acumulador no LDR0 ~ LEDR7
		tmp(248) := x"5"&'1'&x"01";	-- STA @257  	#Armazena o valor do bit0 do acumulador no LDR8
		tmp(249) := x"5"&'1'&x"02";	-- STA @258  	#Armazena o valor do bit0 do acumulador no LDR9
		tmp(250) := x"5"&'0'&x"08";	-- STA @8  	#Armazena o valor 0 em MEM[8], eq à flag para contagem
		tmp(251) := x"5"&'0'&x"09";	-- STA @9  	#Armazena o valor 0 em MEM[9], eq à flag de overflow centenas de milhares
		tmp(252) := x"5"&'0'&x"0A";	-- STA @10  	#Armazena o valor 0 em MEM[10], equivalente à HEX0 - unidades
		tmp(253) := x"5"&'0'&x"0B";	-- STA @11  	#Armazena o valor 0 em MEM[11], equivalente à HEX1 - dezenas
		tmp(254) := x"5"&'0'&x"0C";	-- STA @12  	#Armazena o valor 0 em MEM[12], equivalente à HEX2 - centenas
		tmp(255) := x"5"&'0'&x"0D";	-- STA @13  	#Armazena o valor 0 em MEM[13], equivalente à HEX3 - milhares
		tmp(256) := x"5"&'0'&x"0E";	-- STA @14  	#Armazena o valor 0 em MEM[14], equivalente à HEX4 - dezenas de milhar
		tmp(257) := x"5"&'0'&x"0F";	-- STA @15  	#Armazena o valor 0 em MEM[15], equivalente à HEX5 - centenas de milhar



		
      return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;