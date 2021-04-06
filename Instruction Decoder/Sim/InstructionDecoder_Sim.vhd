----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/08/2018 02:17:46 PM
-- Design Name: 
-- Module Name: InstructionDecoder_Sim - Behavioral
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
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY InstructionDecoder_Sim IS
END InstructionDecoder_Sim;

ARCHITECTURE Behavioral OF InstructionDecoder_Sim IS

   COMPONENT InstructionDecoder
      PORT (
         X : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
         JUMP_CHECK : IN STD_LOGIC;
         REG_EN : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
         REG_SEL_0 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
         REG_SEL_1 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
         IM_VALUE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
         SUB : OUT STD_LOGIC;
         LOAD_SEL : OUT STD_LOGIC;
         JUMP_FLAG : OUT STD_LOGIC;
         JUMP_TO : OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
   END COMPONENT;

   SIGNAL JUMP_CHECK : STD_LOGIC;
   SIGNAL SUB : STD_LOGIC;
   SIGNAL LOAD_SEL : STD_LOGIC;
   SIGNAL JUMP_FLAG : STD_LOGIC;
   SIGNAL JUMP_TO : STD_LOGIC_VECTOR(2 DOWNTO 0);
   SIGNAL REG_EN : STD_LOGIC_VECTOR(2 DOWNTO 0);
   SIGNAL X : STD_LOGIC_VECTOR (11 DOWNTO 0);
   SIGNAL REG_SEL_0 : STD_LOGIC_VECTOR (2 DOWNTO 0);
   SIGNAL REG_SEL_1 : STD_LOGIC_VECTOR (2 DOWNTO 0);
   --SIGNAL ZERO	: STD_LOGIC;
   SIGNAL IM_VALUE : STD_LOGIC_VECTOR(3 DOWNTO 0);

BEGIN

   UUT : InstructionDecoder PORT MAP(

      IM_VALUE => IM_VALUE,
      SUB => SUB,
      LOAD_SEL => LOAD_SEL,
      JUMP_FLAG => JUMP_FLAG,
      JUMP_TO => JUMP_TO,
      X => X,
      JUMP_CHECK => JUMP_CHECK,
      REG_EN => REG_EN,
      REG_SEL_0 => REG_SEL_0,
      REG_SEL_1 => REG_SEL_1);

   PROCESS

   BEGIN

      JUMP_CHECK <= '0';
      --		X <= "101110000000";
      X <= "110010000100";
      WAIT FOR 200 ns;

      --		X <= "101100000011";
      X <= "100000000000";
      WAIT FOR 200 ns;

      X <= "101010000001";
      WAIT FOR 200 ns;

      JUMP_CHECK <= '1';
      X <= "011010000000";
      WAIT FOR 100 ns;

      X <= "001111100000";
      WAIT FOR 100 ns;

      X <= "001101010000";
      WAIT;

   END PROCESS;

END Behavioral;