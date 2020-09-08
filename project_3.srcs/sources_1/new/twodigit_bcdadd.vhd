----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.09.2020 23:01:58
-- Design Name: 
-- Module Name: twodigit_bcdadd - Behavioral
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

entity twodigit_bcdadd is
    Port ( A0 : in STD_LOGIC_VECTOR (3 downto 0);
           A1 : in STD_LOGIC_VECTOR (3 downto 0);
           B0 : in STD_LOGIC_VECTOR (3 downto 0);
           B1 : in STD_LOGIC_VECTOR (3 downto 0);
           Cin : in STD_LOGIC;
           S0 : out STD_LOGIC_VECTOR (3 downto 0);
           S1 : out STD_LOGIC_VECTOR (3 downto 0);
           S2 : out STD_LOGIC_VECTOR (3 downto 0));
end twodigit_bcdadd;

architecture Behavioral of twodigit_bcdadd is

    signal internal_carry0 : STD_LOGIC;
    signal internal_carry1 : STD_LOGIC;
    signal internal_digit0 : STD_LOGIC_VECTOR (3 downto 0);
    signal internal_digit1 : STD_LOGIC_VECTOR (3 downto 0);
    signal internal_digit2 : STD_LOGIC_VECTOR (3 downto 0);
    signal errors          : STD_LOGIC_VECTOR (1 downto 0);
    signal error           : STD_LOGIC;
    
    component onebit_bcdadd Port ( 
           A      : in  STD_LOGIC_VECTOR (3 downto 0);
           B      : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin    : in  STD_LOGIC;
           Cout   : out STD_LOGIC;
           ERRout : out STD_LOGIC;
           S      : out STD_LOGIC_VECTOR (3 downto 0));
    end component;

    component mux_3digit is Port ( 
           A0 : in  STD_LOGIC_VECTOR (3 downto 0);
           A1 : in  STD_LOGIC_VECTOR (3 downto 0);
           A2 : in  STD_LOGIC_VECTOR (3 downto 0);
           B0 : in  STD_LOGIC_VECTOR (3 downto 0);
           B1 : in  STD_LOGIC_VECTOR (3 downto 0);
           B2 : in  STD_LOGIC_VECTOR (3 downto 0);
           S  : in  STD_LOGIC;
           X0 : out STD_LOGIC_VECTOR (3 downto 0);
           X1 : out STD_LOGIC_VECTOR (3 downto 0);
           X2 : out STD_LOGIC_VECTOR (3 downto 0));
    end component;

    component or_1bit Port ( 
           A : in STD_LOGIC_VECTOR (1 downto 0);
           S : out STD_LOGIC);
    end component;

begin

    add0 : onebit_bcdadd port map (
        A      => A0,
        B      => B0,
        Cin    => Cin,
        Cout   => internal_carry0,
        ERRout => errors(0),
        S      => internal_digit0);

    add1 : onebit_bcdadd port map (
        A      => A1,
        B      => B1,
        Cin    => internal_carry0,
        Cout   => internal_carry1,
        ERRout => errors(1),
        S      => internal_digit1);
    
    add2 : onebit_bcdadd port map (
        A      => x"0",
        B      => x"0",
        Cin    => internal_carry1,
        Cout   => open,
        ERRout => open,
        S      => internal_digit2);

    err_check : or_1bit port map (
        A(0)   => errors(0),
        A(1)   => errors(1),
        S      => error);

    output_mux : mux_3digit port map (
        A0 => internal_digit0,
        A1 => internal_digit1,
        A2 => internal_digit2,
        B0 => x"0",
        B1 => x"0",
        B2 => x"0",
        S  => error,
        X0 => S0,
        X1 => S1,
        X2 => S2);

end Behavioral;
