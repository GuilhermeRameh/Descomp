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

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
		-- SETUP:
		tmp(0):= "0100000000000011";	-- LDI R[0] $3
		tmp(1):= "0101000000000011";	-- STA R[0] @3
		tmp(2):= "0100000000000001";	-- LDI R[0] $1
		tmp(3):= "0101000000000001";	-- STA R[0] @1
		tmp(4):= "0100000000000000";	-- LDI R[0] $0
		tmp(5):= "0101000000000000";	-- STA R[0] @0
		tmp(6):= "1100000000000011";	-- CLT R[0] @3
		tmp(7):= "1101000000001001";	-- JLT @T1
		tmp(8):= "0110000000001111";	-- JMP @END
		-- T1:
		tmp(9):= "0001000000000001";	-- LDA R[0] @1
		tmp(10):= "1100000000000000";	-- CLT R[0] @0
		tmp(11):= "1101000000001111";	-- JLT @END
		tmp(12):= "0000000000000000";	-- NOP
		tmp(13):= "0000000000000000";	-- NOP
		tmp(14):= "0000000000000000";	-- NOP
		-- END:
		tmp(15):= "0110000000001111";	-- JMP @END



		return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;