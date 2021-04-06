library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Counter is
    Port ( 
            Next_Ins : in std_logic_vector(2 downto 0);
            Res : in STD_LOGIC;
            Clk : in STD_LOGIC;
            Current_Ins : out std_logic_vector(2 downto 0));
end Counter;

architecture Behavioral of Counter is

    -- Add D Flip Flops to the Program counter
    component D_FF
        port(
        D : in std_logic;
        Res:in std_logic;
        Clk:in std_logic;
        Q : out std_logic;
        Qbar : out std_logic  
        );
    end component;

    -- Add Slow Clock to the program counter
    component Slow_Clock
        port(
            Clk_In : in std_logic;
            Clk_Out : out std_logic
            );
    end component;

    signal D0,D1,D2 : std_logic;
    signal Clk_slow:std_logic;
begin
    Slow_clock0:Slow_Clock
    port map(
        Clk_In=>Clk,
        Clk_Out=>Clk_slow
    );

    D_FF0: D_FF
    port map(
        D=>Next_Ins(0),
        Res=>Res,
        Clk=>Clk_slow,
        Q=>Current_Ins(0)
        
    );
    D_FF1: D_FF
    port map(
        D=>Next_Ins(1),
        Res=>Res,
        Clk=>Clk_slow,
        Q=>Current_Ins(1)
        
    );
    D_FF2: D_FF
    port map(
        D=>Next_Ins(2),
        Res=>Res,
        Clk=>Clk_slow,
        Q=>Current_Ins(2)
        
    );

    
    
    
end Behavioral;