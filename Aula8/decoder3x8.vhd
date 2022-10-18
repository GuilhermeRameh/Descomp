library ieee;
use ieee.std_logic_1164.all;

entity decoder3x8 is
  port ( entrada : in std_logic_vector(2 downto 0);
         saida : out std_logic_vector(7 downto 0)
  );
end entity;

architecture comportamento of decoder3x8 is

begin
	saida <= "00000001" when entrada = "000" else --s0
				"00000010" when entrada = "001" else --s1
				"00000100" when entrada = "010" else --s2
				"00001000" when entrada = "011" else --s3
				"00010000" when entrada = "100" else --s4
				"00100000" when entrada = "101" else --s5
				"01000000" when entrada = "110" else --s6
				"10000000" when entrada = "111" else --s7
				"00000000"; -- para entradas não programadas

end architecture;