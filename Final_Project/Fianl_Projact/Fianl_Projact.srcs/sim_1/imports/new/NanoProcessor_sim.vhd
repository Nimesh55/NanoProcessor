LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY NanoProcessor_sim IS
    --  Port ( );
END NanoProcessor_sim;

ARCHITECTURE Behavioral OF NanoProcessor_sim IS
    COMPONENT NanoProcessor
        PORT (
            Reset : IN STD_LOGIC;
            Clk : IN STD_LOGIC;
            Zero_Flag : OUT STD_LOGIC;
            Overflow_Flag : OUT STD_LOGIC;
            Carry_Flag : OUT STD_LOGIC;
            Negative_Flag : OUT STD_LOGIC;
            jmp_flag : OUT STD_LOGIC;
            Reg0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
            Reg1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
            Reg2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
            Reg3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
            Reg4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
            Reg5 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
            Reg6 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
            Reg7 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
            Num1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
            Num2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
            Instruction_next : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
            Instruction_Current: OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
            --------------------------
            Address_to_jump_check : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
            Adder_3_value_check : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
            Register_receiving_value_check : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
            AddSubTotal_check : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
            
            instructions : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
            SD_7_display : OUT STD_LOGIC_VECTOR(6 DOWNTO 0));

    END COMPONENT;

    SIGNAL Reset, Clk, jmp_flag, Negative_Flag, Carry_Flag, Overflow_Flag, Zero_Flag : STD_LOGIC;
    SIGNAL Num2, Num1, Reg7, Reg6, Reg5, Reg4, Reg3, Reg2, Reg1, Reg0,AddSubTotal_check,Register_receiving_value_check : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL Instruction_next,Instruction_Current,Address_to_jump_check,Adder_3_value_check : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL instructions : STD_LOGIC_VECTOR(11 DOWNTO 0);
    SIGNAL SD_7_display : STD_LOGIC_VECTOR(6 DOWNTO 0);
    CONSTANT clock_period : TIME := 10ns;
BEGIN
    uut : NanoProcessor PORT MAP(
        Reset => Reset,
        Clk => Clk,
        Zero_Flag => Zero_Flag,
        Overflow_Flag => Overflow_Flag,
        Carry_Flag => Carry_Flag,
        Negative_Flag => Negative_Flag,
        jmp_flag => jmp_flag,
        Reg0 => Reg0,
        Reg1 => Reg1,
        Reg2 => Reg2,
        Reg3 => Reg3,
        Reg4 => Reg4,
        Reg5 => Reg5,
        Reg6 => Reg6,
        Reg7 => Reg7,
        Num1 => Num1,
        Num2 => Num2,
        Instruction_next => Instruction_next,
        Instruction_Current=>Instruction_Current,
        Address_to_jump_check =>Address_to_jump_check,
        Adder_3_value_check => Adder_3_value_check,
        instructions => instructions,
        Register_receiving_value_check => Register_receiving_value_check,
        AddSubTotal_check => AddSubTotal_check,
        SD_7_display => SD_7_display
    );
    clock_process : PROCESS
    BEGIN
        Clk <= '0';
        WAIT FOR clock_period/2;
        Clk <= '1';
        WAIT FOR clock_period/2;
    END PROCESS;

    sim : PROCESS
    BEGIN

        Reset <= '1';
        WAIT FOR 100ns;

        Reset <= '0';
        WAIT;
    END PROCESS;

END Behavioral;