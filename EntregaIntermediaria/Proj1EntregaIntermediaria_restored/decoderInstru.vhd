library ieee;
use ieee.std_logic_1164.all;

entity decoderInstru is
  port ( opcode : in std_logic_vector(3 downto 0);
         saida : out std_logic_vector(14 downto 0)
  );
end entity;

architecture comportamento of decoderInstru is

  constant NOP   : std_logic_vector(3 downto 0) := "0000";
  constant LDA   : std_logic_vector(3 downto 0) := "0001";
  constant SOMA  : std_logic_vector(3 downto 0) := "0010";
  constant SUB   : std_logic_vector(3 downto 0) := "0011";
  constant LDI   : std_logic_vector(3 downto 0) := "0100";
  constant STA   : std_logic_vector(3 downto 0) := "0101";
  constant JMP   : std_logic_vector(3 downto 0) := "0110";
  constant JEQ   : std_logic_vector(3 downto 0) := "0111";
  constant CEQ   : std_logic_vector(3 downto 0) := "1000";
  constant JSR   : std_logic_vector(3 downto 0) := "1001";
  constant RET   : std_logic_vector(3 downto 0) := "1010";
  constant OPAND : std_logic_vector(3 downto 0) := "1011";
  constant CLT   : std_logic_vector(3 downto 0) := "1100";
  constant JLT   : std_logic_vector(3 downto 0) := "1101";

  begin
saida <= "000000000011000" when opcode = NOP   else
         "000000000111010" when opcode = LDA   else
         "000000000101010" when opcode = SOMA  else
         "000000000100010" when opcode = SUB   else
         "000000001111000" when opcode = LDI   else
			"000000000011001" when opcode = STA   else
			"000010000011000" when opcode = JMP   else
			"000000010011000" when opcode = JEQ   else
			"000000000011110" when opcode = CEQ   else
			"000100100011000" when opcode = JSR   else
			"000001000011000" when opcode = RET   else
			"000000000110010" when opcode = OPAND else
			"010000000011010" when opcode = CLT   else
			"100000000011000" when opcode = JLT   else	
         "000000000000000";  -- NOP para os opcodes Indefinidos
end architecture;