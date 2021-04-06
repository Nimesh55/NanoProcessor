library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity ProgramRom is
    Port ( Memory_select  : in STD_LOGIC_VECTOR (2 downto 0); -- Memory selection 
           Instruction : out STD_LOGIC_VECTOR (11 downto 0)); -- Instruction
end ProgramRom;

architecture Behavioral of ProgramRom is

type rom_type is array (0 to 7) of STD_LOGIC_VECTOR(11 downto 0);

SIGNAL programRom:rom_type:=(
    "101110000000",
    "101100000011",
    "101010001111",
    "001111100000",
    "001101010000",
    "111100000111",
    "110000000011",
    "000000000000");

begin

Instruction<= programRom(to_integer(unsigned(Memory_select)));

end Behavioral;