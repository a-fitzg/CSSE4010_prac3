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
    signal error_bus       : STD_LOGIC;
    
    component onebit_bcdadd Port ( 
           A      : in STD_LOGIC_VECTOR (3 downto 0);
           B      : in STD_LOGIC_VECTOR (3 downto 0);
           Cin    : in STD_LOGIC;
           Cout   : out STD_LOGIC;
           ERRin  : in STD_LOGIC;
           ERRout : out STD_LOGIC;
           S      : out STD_LOGIC_VECTOR (3 downto 0));
    end component;

begin

    u0 : onebit_bcdadd port map (
        A      => A0,
        B      => B0,
        Cin    => Cin,
        Cout   => internal_carry0,
        ERRin  => error_bus,
        ERRout => error_bus,
        S      => S0);

    u1 : onebit_bcdadd port map (
        A      => A1,
        B      => B1,
        Cin    => internal_carry0,
        Cout   => internal_carry1,
        ERRin  => error_bus,
        ERRout => error_bus,
        S      => S1);
    
    u2 : onebit_bcdadd port map (
        A      => x"0",
        B      => x"0",
        Cin    => internal_carry1,
        Cout   => open,
        ERRin  => error_bus,
        ERRout => error_bus,
        S      => S2);

end Behavioral;
