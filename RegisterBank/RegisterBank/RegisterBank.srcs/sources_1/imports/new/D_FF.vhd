library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_FF is
    Port ( D : in STD_LOGIC;
           Res : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qbar : out STD_LOGIC);
end D_FF;

architecture Behavioral of D_FF is
    signal D_sig : std_logic;
begin
    process(Clk) begin
    
        if(rising_edge(Clk)) then
            D_sig<=D;
            if Res='1' then
                D_sig<='0';
                Q<='0';
                Qbar<='1';
            else
                Q<=D_sig;
                Qbar<=not D_sig;
            end if;
        end if;
    end process;
        
end Behavioral;
