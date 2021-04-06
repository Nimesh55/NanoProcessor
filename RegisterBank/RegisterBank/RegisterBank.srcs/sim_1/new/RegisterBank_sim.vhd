library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RegisterBank_sim is
--  Port ( );
end RegisterBank_sim;

architecture Behavioral of RegisterBank_sim is

    component RegisterBank
    Port (
        D : in STD_LOGIC_VECTOR (3 downto 0);
        I : in STD_LOGIC_VECTOR (2 downto 0);
        Clk : in STD_LOGIC;
        Enable : in STD_LOGIC;
        Res : in STD_LOGIC;
        R0 : out STD_LOGIC_VECTOR (3 downto 0);
        R1 : out STD_LOGIC_VECTOR (3 downto 0);
        R2 : out STD_LOGIC_VECTOR (3 downto 0);
        R3 : out STD_LOGIC_VECTOR (3 downto 0);
        R4 : out STD_LOGIC_VECTOR (3 downto 0);
        R5: out STD_LOGIC_VECTOR (3 downto 0);
        R6 : out STD_LOGIC_VECTOR (3 downto 0);
        R7 : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
        
        Signal D    :   STD_LOGIC_VECTOR (3 downto 0);
        signal Clk  :   std_logic;
        signal Res  :   std_logic;
        signal Enable      :   STD_LOGIC;
        signal I    :  STD_LOGIC_VECTOR (2 downto 0);
        signal R0   :  STD_LOGIC_VECTOR (3 downto 0);
        signal R1   :  STD_LOGIC_VECTOR (3 downto 0);
        signal R2   :  STD_LOGIC_VECTOR (3 downto 0);
        signal R3   :  STD_LOGIC_VECTOR (3 downto 0);
        signal R4   :  STD_LOGIC_VECTOR (3 downto 0);
        signal R5   :  STD_LOGIC_VECTOR (3 downto 0);
        signal R6   :  STD_LOGIC_VECTOR (3 downto 0);
        signal R7   :  STD_LOGIC_VECTOR (3 downto 0);
begin
    uut:RegisterBank port map(
        D=>D,
        I=>I,
        Clk=>Clk,
        Res=>Res,
        R0=>R0,
        R1=>R1,
        R2=>R2,
        R3=>R3,
        R4=>R4,
        R5=>R5,
        R6=>R6,
        R7=>R7,
        Enable=>Enable
    );

PROCESS 
begin
        D<="1001";
        Enable<='1';
        Res<='1';
        WAIT FOR 30 ns;

		CLK <= '1';
		WAIT FOR 30 ns;

		I <= "001";
		CLK <= '0';
		WAIT FOR 30 ns;

		CLK <= '1';
		WAIT FOR 30 ns;

		I <= "010";
		CLK <= '0';
		WAIT FOR 30 ns;

		CLK <= '1';
		WAIT FOR 30 ns;

		I <= "011";
		CLK <= '0';
		WAIT FOR 30 ns;

		CLK <= '1';
		WAIT FOR 30 ns;

		I <= "100";
		CLK <= '0';
		WAIT FOR 30 ns;

		CLK <= '1';
		WAIT FOR 30 ns;

		I <= "101";
		CLK <= '0';
		WAIT FOR 30 ns;

		CLK <= '1';
		WAIT FOR 30 ns;

		I <= "110";
		CLK <= '0';
		WAIT FOR 30 ns;

		CLK <= '1';
		WAIT FOR 30 ns;

		I <= "111";
		CLK <= '0';
		WAIT FOR 30 ns;

		CLK <= '1';
		Res<='1';
		D<="0000";
        WAIT FOR 30ns;

        CLK<='0';
        Res<='1';
        WAIT FOR 30ns;

        CLK<='1';
        Res<='0';
        WAIT; 
end process;
end Behavioral;
