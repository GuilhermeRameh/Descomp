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
		tmp(14) := x"5"&'0'&x"00";	-- STA @0  	#Armazena em MEM[0] com o valor 0
		tmp(15) := x"4"&'0'&x"09";	-- LDI $9
		tmp(16) := x"5"&'0'&x"0B";	-- STA @11  	#Armazena o valor 0 em MEM[11], equivalente à HEX1 - dezenas
		tmp(17) := x"5"&'0'&x"0C";	-- STA @12  	#Armazena o valor 0 em MEM[12], equivalente à HEX2 - centenas
		tmp(18) := x"5"&'0'&x"0D";	-- STA @13  	#Armazena o valor 0 em MEM[13], equivalente à HEX3 - milhares
		tmp(19) := x"5"&'0'&x"0E";	-- STA @14  	#Armazena o valor 0 em MEM[14], equivalente à HEX4 - dezenas de milhar
		tmp(20) := x"5"&'0'&x"0F";	-- STA @15  	#Armazena o valor 0 em MEM[15], equivalente à HEX5 - centenas de milhar
		tmp(21) := x"4"&'0'&x"01";	-- LDI $1  	#Carrega acumulador com valor 1
		tmp(22) := x"5"&'0'&x"01";	-- STA @1  	#Armazena em MEM[1] com o valor 0
		tmp(23) := x"5"&'1'&x"FF";	-- STA @511 	#Armazena em ResetKEY0Reg como 1
		tmp(24) := x"5"&'1'&x"FE";	-- STA @510 	#Armazena em ResetKEY1Reg como 1
		tmp(25) := x"4"&'1'&x"0A";	-- LDI $10  	#Carrega acumulador com valor 10
		tmp(26) := x"5"&'0'&x"14";	-- STA @20  	#Armazena o valor 0 em MEM[20], equivalente à limite de contagem unidades
		tmp(27) := x"5"&'0'&x"15";	-- STA @21  	#Armazena o valor 0 em MEM[21], equivalente à limite de contagem dezenas
		tmp(28) := x"5"&'0'&x"16";	-- STA @22  	#Armazena o valor 0 em MEM[22], equivalente à limite de contagem centenas
		tmp(29) := x"5"&'0'&x"17";	-- STA @23  	#Armazena o valor 0 em MEM[23], equivalente à limite de contagem milhares
		tmp(30) := x"5"&'0'&x"18";	-- STA @24  	#Armazena o valor 0 em MEM[24], equivalente à limite de contagem dezenas de milhares
		tmp(31) := x"5"&'0'&x"19";	-- STA @25  	#Armazena o valor 0 em MEM[25], equivalente à limite de contagem centenas de milhares
		tmp(32) := x"5"&'0'&x"02";	-- STA @2  	#Armazena em MEM[2] com o valor 10
		tmp(33) := x"0"&'0'&x"00";	-- MAINLOOP  	#Começo do loop principal
		tmp(34) := x"4"&'0'&x"01";	-- LDI $1  	#Carrega o valor 1 para o acumulador
		tmp(35) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com 0, deve fazer FlagIgual ser 0
		tmp(36) := x"1"&'1'&x"60";	-- LDA @352  	#Carrega o valor de KEY[0] - Incremento de contagem
		tmp(37) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com o valor 0
		tmp(38) := x"7"&'0'&x"28";	-- JEQ @40 	#Desvia se igual a 0 (botao nao foi pressionado) TODO: Checar se é esse valor da mem mesmo
		tmp(39) := x"9"&'0'&x"4E";	-- JSR @INCREMENTAVALOR  	#Botao foi pressionado, vai para a SubRotina INCREMENTAVALOR
		tmp(40) := x"0"&'0'&x"00";	-- NOP  	#Retorno da subrotina INCREMENTAVALOR
		tmp(41) := x"4"&'0'&x"01";	-- LDI $1  	#Carrega o valor 1 para o acumulador
		tmp(42) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com 0, deve fazer FlagIgual ser 0
		tmp(43) := x"1"&'0'&x"0A";	-- LDA @10  	#Carrega o acumulador com MEM[10] - unidades
		tmp(44) := x"5"&'1'&x"20";	-- STA @288  	#Armazena "unidades" em HEX0
		tmp(45) := x"1"&'0'&x"0B";	-- LDA @11  	#Carrega o acumulador com MEM[11] - dezenas
		tmp(46) := x"5"&'1'&x"21";	-- STA @289  	#Armazena "unidades" em HEX1
		tmp(47) := x"1"&'0'&x"0C";	-- LDA @12  	#Carrega o acumulador com MEM[12] - centenas
		tmp(48) := x"5"&'1'&x"22";	-- STA @290  	#Armazena "unidades" em HEX2
		tmp(49) := x"1"&'0'&x"0D";	-- LDA @13  	#Carrega o acumulador com MEM[13] - milhares
		tmp(50) := x"5"&'1'&x"23";	-- STA @291  	#Armazena "unidades" em HEX3
		tmp(51) := x"1"&'0'&x"0E";	-- LDA @14  	#Carrega o acumulador com MEM[14] - dezenas milhares
		tmp(52) := x"5"&'1'&x"24";	-- STA @292  	#Armazena "unidades" em HEX4
		tmp(53) := x"1"&'0'&x"0F";	-- LDA @15  	#Carrega o acumulador com MEM[15] - centenas milhares
		tmp(54) := x"5"&'1'&x"25";	-- STA @293  	#Armazena "unidades" em HEX5
		tmp(55) := x"1"&'1'&x"61";	-- LDA @353  	#Carrega o valor de KEY[1] - Configuração de limite de incremento
		tmp(56) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com o valor 0
		tmp(57) := x"7"&'0'&x"3B";	-- JEQ @59  	#Desvia se igual a 0 (botao nao foi pressionado) TODO: Checar se é esse valor da mem mesmo
		tmp(58) := x"9"&'0'&x"A4";	-- JSR @LIMITAINCREMENTO  	#Botao foi pressionado, vai para a subrotina LIMITAINCREMENTO
		tmp(59) := x"0"&'0'&x"00";	-- NOP  	#Retorno da subrotina LIMITAINCREMENTO
		tmp(60) := x"4"&'0'&x"01";	-- LDI $1  	#Carrega o valor 1 para o acumulador
		tmp(61) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com 0, deve fazer FlagIgual ser 0
		tmp(62) := x"9"&'0'&x"D9";	-- JSR @VERIFICALIMITE
		tmp(63) := x"0"&'0'&x"00";	-- NOP  	#Retorno da subrotina VERIFICALIMITE
		tmp(64) := x"4"&'0'&x"01";	-- LDI $1  	#Carrega o valor 1 para o acumulador
		tmp(65) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com 0, deve fazer FlagIgual ser 0
		tmp(66) := x"1"&'1'&x"64";	-- LDA @356  	#Carrega o valor de FPGA_RESET - Reseta a contagem
		tmp(67) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com o valor 0
		tmp(68) := x"7"&'0'&x"46";	-- JEQ @70  	#Desvia se igual a 0 (botao nao foi pressionado) TODO: Checar se é esse valor da mem mesmo
		tmp(69) := x"9"&'0'&x"FE";	-- JSR @REINCONTAGEM  	#Botao foi pressionado, vai para a subrotina REINCONTAGEM
		tmp(70) := x"0"&'0'&x"00";	-- NOP  	#Retorno da subrotina REINCONTAGEM
		tmp(71) := x"1"&'0'&x"08";	-- LDA @8  	#Carerga acumulador com PARA Contagem
		tmp(72) := x"5"&'1'&x"01";	-- STA @257  	#Guarda em LED8
		tmp(73) := x"1"&'0'&x"09";	-- LDA @9  	#Carrega o acumulador com bit de overflow
		tmp(74) := x"5"&'1'&x"02";	-- STA @258  	#armazena em LED9
		tmp(75) := x"4"&'1'&x"01";	-- LDI $1  	#Carrega o valor 1 para o acumulador
		tmp(76) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com 0, deve fazer FlagIgual ser 0
		tmp(77) := x"6"&'0'&x"21";	-- JMP @MAINLOOP  	#Volta para o começo do loop principal
		tmp(78) := x"0"&'0'&x"00";	-- INCREMENTAVALOR
		tmp(79) := x"4"&'0'&x"01";	-- LDI $1  	#Carrega o valor 1 para o acumulador
		tmp(80) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com 0, deve fazer FlagIgual ser 0
		tmp(81) := x"1"&'0'&x"08";	-- LDA @8  	#Carrega o acumulador com o valor da flag de parar contagem
		tmp(82) := x"8"&'0'&x"01";	-- CEQ @1  	#Compara com 1
		tmp(83) := x"7"&'0'&x"A1";	-- JEQ @161   	#Se for 1, pula pro final da subrotina TODO: Checar se é esse o valor mesmo
		tmp(84) := x"4"&'0'&x"01";	-- LDI $1  	#Carrega o valor 1 para o acumulador
		tmp(85) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com 0, deve fazer FlagIgual ser 0
		tmp(86) := x"1"&'0'&x"0A";	-- LDA @10  	#Carrega acumulador com MEM[10] - unidades
		tmp(87) := x"2"&'0'&x"01";	-- SOMA @1  	#Soma com MEM[1] - valor 1
		tmp(88) := x"5"&'0'&x"0A";	-- STA @10  	#Armazena soma
		tmp(89) := x"8"&'0'&x"02";	-- CEQ @2  	#Compara com 10
		tmp(90) := x"7"&'0'&x"5D";	-- JEQ @OFU  	#Se igual, pula para OverFlow Unidades (OFU)
		tmp(91) := x"5"&'1'&x"FF";	-- STA @511
		tmp(92) := x"A"&'0'&x"00";	-- RET
		tmp(93) := x"0"&'0'&x"00";	-- OFU
		tmp(94) := x"4"&'0'&x"01";	-- LDI $1  	#Carrega o valor 1 para o acumulador
		tmp(95) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com 0, deve fazer FlagIgual ser 0
		tmp(96) := x"1"&'0'&x"00";	-- LDA @0  	#Carrega acumulador com o valor 0
		tmp(97) := x"5"&'0'&x"0A";	-- STA @10  	#Armazena em MEM[10] valor 0 - unidades
		tmp(98) := x"1"&'0'&x"0B";	-- LDA @11  	#Carrega acumulador com MEM[11] - dezenas
		tmp(99) := x"2"&'0'&x"01";	-- SOMA @1  	#Soma com MEM[1] - valor 1
		tmp(100) := x"5"&'0'&x"0B";	-- STA @11  	#Armazena soma
		tmp(101) := x"8"&'0'&x"02";	-- CEQ @2  	#Compara com 10
		tmp(102) := x"7"&'0'&x"69";	-- JEQ @OFD  	#Se igual, pula para OverFlow Dezenas (OFD)
		tmp(103) := x"5"&'1'&x"FF";	-- STA @511
		tmp(104) := x"A"&'0'&x"00";	-- RET
		tmp(105) := x"0"&'0'&x"00";	-- OFD
		tmp(106) := x"4"&'0'&x"01";	-- LDI $1  	#Carrega o valor 1 para o acumulador
		tmp(107) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com 0, deve fazer FlagIgual ser 0
		tmp(108) := x"1"&'0'&x"00";	-- LDA @0  	#Carrega acumulador com o valor 0
		tmp(109) := x"5"&'0'&x"0B";	-- STA @11  	#Armazena em MEM[11] valor 0 - dezenas
		tmp(110) := x"1"&'0'&x"0C";	-- LDA @12  	#Carrega acumulador com MEM[12] - centenas
		tmp(111) := x"2"&'0'&x"01";	-- SOMA @1  	#Soma com MEM[1] - valor 1
		tmp(112) := x"5"&'0'&x"0C";	-- STA @12  	#Armazena soma
		tmp(113) := x"8"&'0'&x"02";	-- CEQ @2  	#Compara com 10
		tmp(114) := x"7"&'0'&x"75";	-- JEQ @OFC  	#Se igual, pula para OverFlow Centenas (OFC)
		tmp(115) := x"5"&'1'&x"FF";	-- STA @511
		tmp(116) := x"A"&'0'&x"00";	-- RET
		tmp(117) := x"0"&'0'&x"00";	-- OFC
		tmp(118) := x"4"&'0'&x"01";	-- LDI $1  	#Carrega o valor 1 para o acumulador
		tmp(119) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com 0, deve fazer FlagIgual ser 0
		tmp(120) := x"1"&'0'&x"00";	-- LDA @0  	#Carrega acumulador com o valor 0
		tmp(121) := x"5"&'0'&x"0C";	-- STA @12  	#Armazena em MEM[12] valor 0 - centenas
		tmp(122) := x"1"&'0'&x"0D";	-- LDA @13  	#Carrega acumulador com MEM[13] - milhares
		tmp(123) := x"2"&'0'&x"01";	-- SOMA @1  	#Soma com MEM[1] - valor 1
		tmp(124) := x"5"&'0'&x"0D";	-- STA @13  	#armazena soma
		tmp(125) := x"8"&'0'&x"02";	-- CEQ @2  	#Compara com 10
		tmp(126) := x"7"&'0'&x"81";	-- JEQ @OFM  	#Se igual, pula para OverFlow Milhares (OFM)
		tmp(127) := x"5"&'1'&x"FF";	-- STA @511
		tmp(128) := x"A"&'0'&x"00";	-- RET
		tmp(129) := x"0"&'0'&x"00";	-- OFM
		tmp(130) := x"4"&'0'&x"01";	-- LDI $1  	#Carrega o valor 1 para o acumulador
		tmp(131) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com 0, deve fazer FlagIgual ser 0
		tmp(132) := x"1"&'0'&x"00";	-- LDA @0  	#Carrega acumulador com o valor 0
		tmp(133) := x"5"&'0'&x"0D";	-- STA @13  	#Armazena em MEM[13] valor 0 - milhares
		tmp(134) := x"1"&'0'&x"0E";	-- LDA @14  	#Carrega acumulador com MEM[14] - dezenas milhares
		tmp(135) := x"2"&'0'&x"01";	-- SOMA @1  	#Soma com MEM[1] - valor 1
		tmp(136) := x"5"&'0'&x"0E";	-- STA @14  	#armazena soma
		tmp(137) := x"8"&'0'&x"02";	-- CEQ @2  	#Compara com 10
		tmp(138) := x"7"&'0'&x"8D";	-- JEQ @OFDM  	#Se igual, pula para OverFlow dezenas milhares (OFDM)
		tmp(139) := x"5"&'1'&x"FF";	-- STA @511
		tmp(140) := x"A"&'0'&x"00";	-- RET
		tmp(141) := x"0"&'0'&x"00";	-- OFDM
		tmp(142) := x"4"&'0'&x"01";	-- LDI $1  	#Carrega o valor 1 para o acumulador
		tmp(143) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com 0, deve fazer FlagIgual ser 0
		tmp(144) := x"1"&'0'&x"00";	-- LDA @0  	#Carrega acumulador com o valor 0
		tmp(145) := x"5"&'0'&x"0E";	-- STA @14  	#Armazena em MEM[14] valor 0 - dezenas milhares
		tmp(146) := x"1"&'0'&x"0F";	-- LDA @15  	#Carrega acumulador com MEM[15] - Centenas milhares
		tmp(147) := x"2"&'0'&x"01";	-- SOMA @1  	#Soma com MEM[1] - valor 1
		tmp(148) := x"5"&'0'&x"0F";	-- STA @15  	#armazena soma
		tmp(149) := x"8"&'0'&x"02";	-- CEQ @2  	#Compara com 10
		tmp(150) := x"7"&'0'&x"99";	-- JEQ @OFCM  	#Se igual, pula para OverFlow dezenas milhares (OFDM)
		tmp(151) := x"5"&'1'&x"FF";	-- STA @511
		tmp(152) := x"A"&'0'&x"00";	-- RET
		tmp(153) := x"0"&'0'&x"00";	-- OFCM
		tmp(154) := x"4"&'0'&x"01";	-- LDI $1  	#Carrega o valor 1 para o acumulador
		tmp(155) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com 0, deve fazer FlagIgual ser 0
		tmp(156) := x"1"&'0'&x"00";	-- LDA @0  	#Carrega acumulador com o valor 0
		tmp(157) := x"5"&'0'&x"0F";	-- STA @15  	#Armazena em MEM[15] valor 0 - centenas milhares
		tmp(158) := x"1"&'0'&x"01";	-- LDA @1  	#Carrega o acumulador com 1
		tmp(159) := x"5"&'0'&x"09";	-- STA @9  	#Armazena 1 na MEM[9] - Bit de overflow
		tmp(160) := x"5"&'0'&x"08";	-- STA @8  	#Armazena 1 na MEM[8] - Flag Para Contagem
		tmp(161) := x"0"&'0'&x"00";	-- NOP
		tmp(162) := x"5"&'1'&x"FF";	-- STA @511
		tmp(163) := x"A"&'0'&x"00";	-- RET 
		tmp(164) := x"0"&'0'&x"00";	-- LIMITAINCREMENTO
		tmp(165) := x"1"&'1'&x"40";	-- LDA @320  	#Le os valores de SW0 ~ SW7
		tmp(166) := x"5"&'0'&x"14";	-- STA @20  	#Guarda na Mem[21] - Limita valor unidades
		tmp(167) := x"1"&'0'&x"01";	-- LDA @1  	#Carrega 1 para o acumulador
		tmp(168) := x"5"&'1'&x"FE";	-- STA @510  	#Reseta o Reg do KEY1
		tmp(169) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com 0, deve fazer FlagIgual ser 0
		tmp(170) := x"0"&'0'&x"00";	-- DEZENAS
		tmp(171) := x"1"&'1'&x"61";	-- LDA @353  	#Carrega o valor do KEY[1]
		tmp(172) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com o valor 0
		tmp(173) := x"7"&'0'&x"AA";	-- JEQ @DEZENAS  	#Volta se o botão nao foi pressionado
		tmp(174) := x"1"&'1'&x"40";	-- LDA @320  	#Le os valores de SW0 ~ SW7
		tmp(175) := x"5"&'0'&x"15";	-- STA @21  	#Guarda na Mem[21] - Limita valor dezenas
		tmp(176) := x"1"&'0'&x"01";	-- LDA @1  	#Carrega 1 para o acumulador
		tmp(177) := x"5"&'1'&x"FE";	-- STA @510  	#Reseta o Reg do KEY1
		tmp(178) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com 0, deve fazer FlagIgual ser 0
		tmp(179) := x"0"&'0'&x"00";	-- CENTENAS
		tmp(180) := x"1"&'1'&x"61";	-- LDA @353  	#Carrega o valor do KEY[1]
		tmp(181) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com o valor 0
		tmp(182) := x"7"&'0'&x"B3";	-- JEQ @CENTENAS  	#Volta se o botão nao foi pressionado
		tmp(183) := x"1"&'1'&x"40";	-- LDA @320  	#Le os valores de SW0 ~ SW7
		tmp(184) := x"5"&'0'&x"16";	-- STA @22  	#Guarda na Mem[21] - Limita valor centenas
		tmp(185) := x"1"&'0'&x"01";	-- LDA @1  	#Carrega 1 para o acumulador
		tmp(186) := x"5"&'1'&x"FE";	-- STA @510  	#Reseta o Reg do KEY1
		tmp(187) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com 0, deve fazer FlagIgual ser 0
		tmp(188) := x"0"&'0'&x"00";	-- MILHARES
		tmp(189) := x"1"&'1'&x"61";	-- LDA @353  	#Carrega o valor do KEY[1]
		tmp(190) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com o valor 0
		tmp(191) := x"7"&'0'&x"BC";	-- JEQ @MILHARES  	#Volta se o botão nao foi pressionado
		tmp(192) := x"1"&'1'&x"40";	-- LDA @320  	#Le os valores de SW0 ~ SW7
		tmp(193) := x"5"&'0'&x"17";	-- STA @23  	#Guarda na Mem[21] - Limita valor milhares
		tmp(194) := x"1"&'0'&x"01";	-- LDA @1  	#Carrega 1 para o acumulador
		tmp(195) := x"5"&'1'&x"FE";	-- STA @510  	#Reseta o Reg do KEY1
		tmp(196) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com 0, deve fazer FlagIgual ser 0
		tmp(197) := x"0"&'0'&x"00";	-- DEZMILHARES
		tmp(198) := x"1"&'1'&x"61";	-- LDA @353  	#Carrega o valor do KEY[1]
		tmp(199) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com o valor 0
		tmp(200) := x"7"&'0'&x"C5";	-- JEQ @DEZMILHARES  	#Volta se o botão nao foi pressionado
		tmp(201) := x"1"&'1'&x"40";	-- LDA @320  	#Le os valores de SW0 ~ SW7
		tmp(202) := x"5"&'0'&x"18";	-- STA @24  	#Guarda na Mem[21] - Limita valor dezenas de milhares
		tmp(203) := x"1"&'0'&x"01";	-- LDA @1  	#Carrega 1 para o acumulador
		tmp(204) := x"5"&'1'&x"FE";	-- STA @510  	#Reseta o Reg do KEY1
		tmp(205) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com 0, deve fazer FlagIgual ser 0
		tmp(206) := x"0"&'0'&x"00";	-- CEMMILHARES
		tmp(207) := x"1"&'1'&x"61";	-- LDA @353  	#Carrega o valor do KEY[1]
		tmp(208) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com o valor 0
		tmp(209) := x"7"&'0'&x"CE";	-- JEQ @CEMMILHARES  	#Volta se o botão nao foi pressionado
		tmp(210) := x"1"&'1'&x"40";	-- LDA @320  	#Le os valores de SW0 ~ SW7
		tmp(211) := x"5"&'0'&x"19";	-- STA @25  	#Guarda na Mem[21] - Limita valor dezenas de milhares
		tmp(212) := x"0"&'0'&x"00";	-- NOP
		tmp(213) := x"1"&'0'&x"01";	-- LDA @1  	#Carrega 1 para o acumulador
		tmp(214) := x"5"&'1'&x"FE";	-- STA @510  	#Reseta o Reg do KEY1
		tmp(215) := x"8"&'0'&x"00";	-- CEQ @0  	#Compara com 0, deve fazer FlagIgual ser 0
		tmp(216) := x"A"&'0'&x"00";	-- RET
		tmp(217) := x"0"&'0'&x"00";	-- VERIFICALIMITE
		tmp(218) := x"1"&'0'&x"00";	-- LDA @0
		tmp(219) := x"5"&'0'&x"08";	-- STA @8
		tmp(220) := x"1"&'0'&x"0A";	-- LDA @10  	#Carrega acumulador com MEM[10] - unidades
		tmp(221) := x"8"&'0'&x"14";	-- CEQ @20  	#Compara com MEM[20] - limite unidades
		tmp(222) := x"7"&'0'&x"E0";	-- JEQ @CON1
		tmp(223) := x"A"&'0'&x"00";	-- RET
		tmp(224) := x"0"&'0'&x"00";	-- CON1
		tmp(225) := x"1"&'0'&x"0B";	-- LDA @11  	#Carrega acumulador com MEM[10] - unidades
		tmp(226) := x"8"&'0'&x"15";	-- CEQ @21  	#Compara com MEM[20] - limite unidades
		tmp(227) := x"7"&'0'&x"E5";	-- JEQ @CON2
		tmp(228) := x"A"&'0'&x"00";	-- RET
		tmp(229) := x"0"&'0'&x"00";	-- CON2
		tmp(230) := x"1"&'0'&x"0C";	-- LDA @12  	#Carrega acumulador com MEM[10] - unidades
		tmp(231) := x"8"&'0'&x"16";	-- CEQ @22  	#Compara com MEM[20] - limite unidades
		tmp(232) := x"7"&'0'&x"EA";	-- JEQ @CON3
		tmp(233) := x"A"&'0'&x"00";	-- RET
		tmp(234) := x"0"&'0'&x"00";	-- CON3
		tmp(235) := x"1"&'0'&x"0D";	-- LDA @13  	#Carrega acumulador com MEM[10] - unidades
		tmp(236) := x"8"&'0'&x"17";	-- CEQ @23  	#Compara com MEM[20] - limite unidades
		tmp(237) := x"7"&'0'&x"EF";	-- JEQ @CON4
		tmp(238) := x"A"&'0'&x"00";	-- RET
		tmp(239) := x"0"&'0'&x"00";	-- CON4
		tmp(240) := x"1"&'0'&x"0E";	-- LDA @14  	#Carrega acumulador com MEM[10] - unidades
		tmp(241) := x"8"&'0'&x"18";	-- CEQ @24  	#Compara com MEM[20] - limite unidades
		tmp(242) := x"7"&'0'&x"F4";	-- JEQ @CON5
		tmp(243) := x"A"&'0'&x"00";	-- RET
		tmp(244) := x"0"&'0'&x"00";	-- CON5
		tmp(245) := x"1"&'0'&x"0F";	-- LDA @15  	#Carrega acumulador com MEM[10] - unidades
		tmp(246) := x"8"&'0'&x"19";	-- CEQ @25  	#Compara com MEM[20] - limite unidades
		tmp(247) := x"7"&'0'&x"F9";	-- JEQ @CON6
		tmp(248) := x"A"&'0'&x"00";	-- RET
		tmp(249) := x"0"&'0'&x"00";	-- CON6
		tmp(250) := x"1"&'0'&x"01";	-- LDA @1  	#Carrega o acumulador com 1
		tmp(251) := x"5"&'0'&x"08";	-- STA @8  	#Armazena o valor 1 em MEM[8] - Flag Para Contagem
		tmp(252) := x"0"&'0'&x"00";	-- LIMITERETURN
		tmp(253) := x"A"&'0'&x"00";	-- RET
		tmp(254) := x"0"&'0'&x"00";	-- REINCONTAGEM
		tmp(255) := x"4"&'0'&x"00";	-- LDI $0  	#Carrega o acumulador com o valor 0
		tmp(256) := x"5"&'1'&x"20";	-- STA @288  	#Armazena o valor do acumulador em HEX0
		tmp(257) := x"5"&'1'&x"21";	-- STA @289  	#Armazena o valor do acumulador em HEX1
		tmp(258) := x"5"&'1'&x"22";	-- STA @290  	#Armazena o valor do acumulador em HEX2
		tmp(259) := x"5"&'1'&x"23";	-- STA @291  	#Armazena o valor do acumulador em HEX3
		tmp(260) := x"5"&'1'&x"24";	-- STA @292  	#Armazena o valor do acumulador em HEX4
		tmp(261) := x"5"&'1'&x"25";	-- STA @293  	#Armazena o valor do acumulador em HEX5
		tmp(262) := x"5"&'1'&x"00";	-- STA @256  	#Armazena o valor do bit0 do acumulador no LDR0 ~ LEDR7
		tmp(263) := x"5"&'1'&x"01";	-- STA @257  	#Armazena o valor do bit0 do acumulador no LDR8
		tmp(264) := x"5"&'1'&x"02";	-- STA @258  	#Armazena o valor do bit0 do acumulador no LDR9
		tmp(265) := x"5"&'0'&x"08";	-- STA @8  	#Armazena o valor 0 em MEM[8], eq à flag para contagem
		tmp(266) := x"5"&'0'&x"09";	-- STA @9  	#Armazena o valor 0 em MEM[9], eq à flag de overflow centenas de milhares
		tmp(267) := x"5"&'0'&x"0A";	-- STA @10  	#Armazena o valor 0 em MEM[10], equivalente à HEX0 - unidades
		tmp(268) := x"5"&'0'&x"0B";	-- STA @11  	#Armazena o valor 0 em MEM[11], equivalente à HEX1 - dezenas
		tmp(269) := x"5"&'0'&x"0C";	-- STA @12  	#Armazena o valor 0 em MEM[12], equivalente à HEX2 - centenas
		tmp(270) := x"5"&'0'&x"0D";	-- STA @13  	#Armazena o valor 0 em MEM[13], equivalente à HEX3 - milhares
		tmp(271) := x"5"&'0'&x"0E";	-- STA @14  	#Armazena o valor 0 em MEM[14], equivalente à HEX4 - dezenas de milhar
		tmp(272) := x"5"&'0'&x"0F";	-- STA @15  	#Armazena o valor 0 em MEM[15], equivalente à HEX5 - centenas de milhar
		tmp(273) := x"5"&'1'&x"FD";	-- STA @509  	#Reseta o botao FPGA_RESET
		tmp(274) := x"A"&'0'&x"00";	-- RET




		
      return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;