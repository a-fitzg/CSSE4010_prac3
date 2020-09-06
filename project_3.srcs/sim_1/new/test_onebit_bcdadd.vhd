----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.09.2020 18:51:10
-- Design Name: 
-- Module Name: test_onebit_bcdadd - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test_onebit_bcdadd is
--  Port ( );
end test_onebit_bcdadd;

architecture Behavioral of test_onebit_bcdadd is 
    component onebit_bcdadd Port ( 
           A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Cin : in STD_LOGIC;
           Cout : out STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
    signal A    : STD_LOGIC_VECTOR (3 downto 0);
    signal B    : STD_LOGIC_VECTOR (3 downto 0);
    signal Cin  : STD_LOGIC;
    signal Cout : STD_LOGIC;
    signal S    : STD_LOGIC_VECTOR (3 downto 0);

begin

    u1 : onebit_bcdadd port map (
        A    => A,
        B    => B,
        Cin  => Cin,
        Cout => Cout,
        S    => S);
        

    input_gen : process
    begin
        Cin <= '0';
        for i in 0 to 15 loop
            for j in 0 to 15 loop
                for k in STD_LOGIC range '0' to '1' loop
                    A <= std_logic_vector(to_unsigned(j, A'length));
                    B <= std_logic_vector(to_unsigned(i, B'length));
                    --Cin <= k;
                    
                end loop;
                wait for 1ps;
            end loop;
        end loop;
    end process;

end Behavioral;
