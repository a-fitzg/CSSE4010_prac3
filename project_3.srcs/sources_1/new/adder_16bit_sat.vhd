----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.09.2020 12:40:04
-- Design Name: 
-- Module Name: adder_16bit_sat - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder_16bit_sat is
    Port ( A   : in  STD_LOGIC_VECTOR (15 downto 0);
           B   : in  STD_LOGIC_VECTOR (15 downto 0);
           Cin : in  STD_LOGIC;
           SAT : in  STD_LOGIC;
           SUM : out STD_LOGIC_VECTOR (15 downto 0);
           Z   : out STD_LOGIC;
           N   : out STD_LOGIC;
           C   : out STD_LOGIC;
           V   : out STD_LOGIC);
end adder_16bit_sat;

architecture Behavioral of adder_16bit_sat is

    ---------- BUSES ----------
    
    ----- Outputs from the adders -----
    signal internal_outputs : STD_LOGIC_VECTOR (15 downto 0);
    
    ----- Input to the "overflow flag detection" xor gate
    signal overflow_xor_input : STD_LOGIC_VECTOR (1 downto 0);
    
    ----- Output from the saturation sign mux (sent to input 2 of the output mux)
    signal saturation_mux_output : STD_LOGIC_VECTOR (15 downto 0);
    
    ----- Output from the "saturation detect" and gate
    signal saturation_and_output : STD_LOGIC;
    
    ----- Output for overflow flag -----
    signal overflow_bus : STD_LOGIC;
    
    ----- Carrys between adders -----
    signal carry0, carry1, carry2, carry3, carry4, carry5, carry6, carry7, 
            carry8, carry9, carry10, carry11, carry12, carry13, carry14, carry_out : STD_LOGIC;


    ---------- COMPONENTS ----------
    
    component full_adder Port ( 
           A : in STD_LOGIC;
           B : in STD_LOGIC;
           S : out STD_LOGIC;
           Cin : in STD_LOGIC;
           Cout : out STD_LOGIC);
    end component;
    
    component mux_16bit Port ( 
           A : in  STD_LOGIC_VECTOR (15 downto 0);
           B : in  STD_LOGIC_VECTOR (15 downto 0);
           S : out STD_LOGIC_VECTOR (15 downto 0);
           C : in  STD_LOGIC);
    end component;

    component nor_16bit Port ( 
           A : in STD_LOGIC_VECTOR (15 downto 0);
           O : out STD_LOGIC);
    end component;
    
    component xor_1bit Port ( 
           A : in STD_LOGIC_VECTOR (1 downto 0);
           S : out STD_LOGIC);
    end component;    
    
    component and_1bit Port ( 
           A : in STD_LOGIC_VECTOR (1 downto 0);
           S : out STD_LOGIC);
    end component;

begin

    V <= overflow_bus;
    C <= carry_out;

    ----- CASCADING ADDERS -----
    adder15 : full_adder port map (
        A => A(15),
        B => B(15),
        S => internal_outputs(15),
        Cin => carry14,
        Cout => carry_out);

    adder14 : full_adder port map (
        A => A(14),
        B => B(14),
        S => internal_outputs(14),
        Cin => carry13,
        Cout => carry14);

    adder13 : full_adder port map (
        A => A(13),
        B => B(13),
        S => internal_outputs(13),
        Cin => carry12,
        Cout => carry13);

    adder12 : full_adder port map (
        A => A(12),
        B => B(12),
        S => internal_outputs(12),
        Cin => carry11,
        Cout => carry12);

    adder11 : full_adder port map (
        A => A(11),
        B => B(11),
        S => internal_outputs(11),
        Cin => carry10,
        Cout => carry11);

    adder10 : full_adder port map (
        A => A(10),
        B => B(10),
        S => internal_outputs(10),
        Cin => carry9,
        Cout => carry10);

    adder9 : full_adder port map (
        A => A(9),
        B => B(9),
        S => internal_outputs(9),
        Cin => carry8,
        Cout => carry9);

    adder8 : full_adder port map (
        A => A(8),
        B => B(8),
        S => internal_outputs(8),
        Cin => carry7,
        Cout => carry8);

    adder7 : full_adder port map (
        A => A(7),
        B => B(7),
        S => internal_outputs(7),
        Cin => carry6,
        Cout => carry7);

    adder6 : full_adder port map (
        A => A(6),
        B => B(6),
        S => internal_outputs(6),
        Cin => carry5,
        Cout => carry6);

    adder5 : full_adder port map (
        A => A(5),
        B => B(5),
        S => internal_outputs(5),
        Cin => carry4,
        Cout => carry5);

    adder4 : full_adder port map (
        A => A(4),
        B => B(4),
        S => internal_outputs(4),
        Cin => carry3,
        Cout => carry4);

    adder3 : full_adder port map (
        A => A(3),
        B => B(3),
        S => internal_outputs(3),
        Cin => carry2,
        Cout => carry3);

    adder2 : full_adder port map (
        A => A(2),
        B => B(2),
        S => internal_outputs(2),
        Cin => carry1,
        Cout => carry2);

    adder1 : full_adder port map (
        A => A(1),
        B => B(1),
        S => internal_outputs(1),
        Cin => carry0,
        Cout => carry1);

    adder0 : full_adder port map (
        A => A(0),
        B => B(0),
        S => internal_outputs(0),
        Cin => Cin,
        Cout => carry0);


    -------------------------------------

    -- MSB carry overflow detection
    overflow_check : xor_1bit port map (
        A(0) => carry_out,
        A(1) => carry14,
        S => overflow_bus);

    -- Saturation "activate" detection
    saturate_check : and_1bit port map (
        A(0) => overflow_bus,
        A(1) => SAT,
        S => saturation_and_output);

    -- Zero detection
    zero_check : nor_16bit port map (
        A => internal_outputs,
        O => Z);

    -- When saturation is activated (and saturation occurs), the negative flag will show the wrong value
    -- We will use a XOR gate to correct for this 
    saturate_neg_inv : xor_1bit port map (
        A(0) => internal_outputs(15),
        A(1) => saturation_and_output,
        S    => N);

    -- Detecting and setting the saturation "ceiling"
    -- If the (pre-corrected) negative flag is 1, saturate to ceiling (32767)
    -- If the (pre-corrected) negative flag is 0, saturate to floor (-32768)
    saturation_direction : mux_16bit port map (
        -- Input A tied to min value (-32768)
        A => x"8000",
        -- Input B tied to max value (32767)
        B => x"7FFF",
        S => saturation_mux_output,
        C => internal_outputs(15));

    -- Output multiplexer
    output_mux : mux_16bit port map (
        A => internal_outputs,
        B => saturation_mux_output,
        S => SUM,
        C => saturation_and_output);


end Behavioral;