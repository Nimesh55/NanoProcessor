
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Using 2 to 4 decoder, at instance only one output will be ebabled of 4
-- used what we implemented in previous lab

entity Decoder_2_to_4 is
    Port ( I : in STD_LOGIC_VECTOR (1 downto 0);
           Enable : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (3 downto 0));
end Decoder_2_to_4;

architecture Behavioral of Decoder_2_to_4 is
     --Given relevant boolean equations for each bus line in Y
begin
    Y(0)<=Enable and not(I(0)) and not(I(1));
    Y(1)<=Enable and I(0) and not(I(1));
    Y(2)<=Enable and not(I(0)) and I(1);
    Y(3)<=Enable and I(0) and I(1);
    
end Behavioral;
