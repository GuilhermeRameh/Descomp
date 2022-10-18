library ieee;
use ieee.std_logic_1164.all;

entity logicaDeDesvio is
  port ( opcode : in std_logic_vector(4 downto 0);
         saida : out std_logic_vector(1 downto 0)
  );
end entity;

architecture comportamento of logicaDeDesvio is


  begin
saida <= "01" when opcode(4) = '1' else
			"00" when opcode (1 downto 0) = "10" else
			"01" when opcode (1 downto 0) = "11" else
			"01" when opcode (3 downto 2) = "01" else
			"10" when opcode (3 downto 2) = "10" else
			"00"; -- para operações não definidas
end architecture;