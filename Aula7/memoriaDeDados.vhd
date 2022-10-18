library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaDeDados is
   generic (
          dataWidth: natural := 8;
          addrWidth: natural := 6
    );
   port (
			 Habilita : in std_logic;
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          DadoIn : in std_logic_vector (dataWidth-1 DOWNTO 0);
			 DadoOut : out std_logic_vector (dataWidth-1 downto 0);
			 habLeitura : in std_logic;
			 habEscrita : in std_logic;
			 clk      : in std_logic
    );
end entity;

architecture assincrona of memoriaDeDados is

   -- Build a 2-D array type for the RAM
    subtype word_t is std_logic_vector(dataWidth-1 downto 0);
    type memory_t is array((2**addrWidth-1) downto 0) of word_t;

    -- Declare the RAM signal.
    signal ram : memory_t;
begin
    process(clk)
    begin
        if(rising_edge(clk)) then
            if(habEscrita = '1' and Habilita='1') then
                ram(to_integer(unsigned(Endereco))) <= DadoIn;
            end if;
        end if;
    end process;

    -- A leitura é sempre assincrona e quando houver habilitacao:
    DadoOut <= ram(to_integer(unsigned(Endereco))) when (habLeitura = '1' and Habilita='1') else (others => 'Z');
end architecture;