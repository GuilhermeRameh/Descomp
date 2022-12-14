library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULASomaSub is
    generic ( larguraDados : natural := 4 );
    port (
      entradaA, entradaB:  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      seletor:  in STD_LOGIC_VECTOR (1 downto 0);
      saida:    out STD_LOGIC_VECTOR((larguraDados-1) downto 0);
		saida_cmp: out STD_LOGIC
    );
end entity;

architecture comportamento of ULASomaSub is
   signal soma :      STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal subtracao : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal pass : STD_LOGIC_VECTOR ((larguraDados-1) downto 0);
	signal comparacao : STD_LOGIC;
    begin
      soma      <= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
      subtracao <= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));
		pass <= STD_LOGIC_VECTOR(unsigned(entradaB));
		comparacao <= '1' when unsigned(subtracao) = 0 else '0';
      saida <= soma when (seletor = "01") else
					subtracao when (seletor = "00") else
					pass when (seletor = "10");
		saida_cmp <= comparacao when (seletor = "11");
end architecture;