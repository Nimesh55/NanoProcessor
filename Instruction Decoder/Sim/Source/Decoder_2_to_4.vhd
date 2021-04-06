----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/04/2018 01:49:12 PM
-- Design Name: 
-- Module Name: Decoder_2_to_4 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Using 2 to 4 decoder, at instance only one output will be ebabled of 4
-- used what we implemented in previous lab

entity Decoder_2_to_4 is 
Port (  I : in STD_LOGIC_VECTOR (1 downto 0);
        EN : in STD_LOGIC;
        Y : out STD_LOGIC_VECTOR (3 downto 0));
end Decoder_2_to_4;

architecture Behavioral of Decoder_2_to_4 is

begin

    Y(0)<= not(I(0)) and not(I(1)) and EN;
    Y(1)<= I(0) and not(I(1)) and EN;
    Y(2)<= not(I(0)) and I(1) and EN;
    Y(3)<= I(0) and I(1) and EN;

end Behavioral;
