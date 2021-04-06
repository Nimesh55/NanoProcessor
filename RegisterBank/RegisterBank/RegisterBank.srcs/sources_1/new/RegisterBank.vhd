library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RegisterBank is
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
        R7 : out STD_LOGIC_VECTOR (3 downto 0);
        R8 : out STD_LOGIC_VECTOR (3 downto 0));
        
        
end RegisterBank;

architecture Behavioral of RegisterBank is

-- Add Registers to the Program counter
component Reg
Port (
        D : in STD_LOGIC_VECTOR (3 downto 0);
        Enable : in STD_LOGIC;
        Clk : in STD_LOGIC;
        Res : in STD_LOGIC;
        Q : out STD_LOGIC_VECTOR (3 downto 0));
end component;

-- Add Slow Clock to the program counter
component Slow_Clock
port(
    Clk_In : in std_logic;
    Clk_Out : out std_logic
    );
end component;

component Decoder_3_to_8
    PORT(
        I : in std_logic_vector(2 downto 0);
        Y : out std_logic_vector(7 downto 0);
        Enable: in std_logic);
end component;

signal Clk_slow:std_logic;
signal Y :  std_logic_vector(7 downto 0);

begin
    Decoder_3_to_8_0:Decoder_3_to_8
    port map(
        I=>I,
        Enable=>Enable,
        Y=>Y
    );
    Slow_clock0:Slow_Clock
    port map(
        Clk_In=>Clk,
        Clk_Out=>Clk_slow
    );
    Reg0: Reg
    port map(
        D=>"0000",
        Enable=>Y(0),
        Clk=>Clk_slow,
        Res=>Res,
        Q=>R0
    );
    Reg1: Reg
    port map(
        D=>D,
        Enable=>Y(1),
        Clk=>Clk_slow,
        Res=>Res,
        Q=>R1
    );
    Reg2: Reg
    port map(
        D=>D,
        Enable=>Y(2),
        Clk=>Clk_slow,
        Res=>Res,
        Q=>R2
    );
    Reg3: Reg
    port map(
        D=>D,
        Enable=>Y(3),
        Clk=>Clk_slow,
        Res=>Res,
        Q=>R3
    );
    Reg4: Reg
    port map(
        D=>D,
        Enable=>Y(4),
        Clk=>Clk_slow,
        Res=>Res,
        Q=>R4
    );
    Reg5: Reg
    port map(
        D=>D,
        Enable=>Y(5),
        Clk=>Clk_slow,
        Res=>Res,
        Q=>R5
    );
    Reg6: Reg
    port map(
        D=>D,
        Enable=>Y(6),
        Clk=>Clk_slow,
        Res=>Res,
        Q=>R6
    );
    Reg7: Reg
    port map(
        D=>D,
        Enable=>Y(7),
        Clk=>Clk_slow,
        Res=>Res,
        Q=>R7
    );

end Behavioral;
