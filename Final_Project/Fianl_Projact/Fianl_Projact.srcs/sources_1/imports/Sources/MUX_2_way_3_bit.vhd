library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_2_way_3_bit is
    Port ( Adder_3 : in STD_LOGIC_VECTOR (2 downto 0);
           JUMP_TO : in STD_LOGIC_VECTOR (2 downto 0);
           Selector : in STD_LOGIC;
           Out_put : out std_logic_vector(2 downto 0));
end MUX_2_way_3_bit;

architecture Behavioral of MUX_2_way_3_bit is

component Decoder_1_to_2 
    Port ( I : in STD_LOGIC;
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR(1 downto 0));
end component;

component tri_state_buffer_3bit
    port ( inputTri : in STD_LOGIC_VECTOR (2 downto 0);
           outputTri : out STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC);
end component; 

signal RegSel :STD_LOGIC_VECTOR (1 downto 0);

begin

Decoder: Decoder_1_to_2
        port map (
            I => Selector,
            EN => '1',
            Y => RegSel );  
        

tri_state_buffer_3bit_0 :tri_state_buffer_3bit
port map(   inputTri=> Adder_3,
            outputTri => Out_put,
            EN=> RegSel(0));
            
           
tri_state_buffer_3bit_1: tri_state_buffer_3bit
port map(   inputTri=> JUMP_TO,
            outputTri =>Out_put,
            EN=>RegSel(1));



end Behavioral;
