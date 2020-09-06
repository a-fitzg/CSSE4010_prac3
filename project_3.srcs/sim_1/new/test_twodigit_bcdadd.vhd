----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.09.2020 23:35:46
-- Design Name: 
-- Module Name: test_twodigit_bcdadd - Behavioral
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

entity test_twodigit_bcdadd is
--  Port ( );
end test_twodigit_bcdadd;

architecture Behavioral of test_twodigit_bcdadd is

    component twodigit_bcdadd is
        Port ( A0  : in STD_LOGIC_VECTOR (3 downto 0);
               A1  : in STD_LOGIC_VECTOR (3 downto 0);
               B0  : in STD_LOGIC_VECTOR (3 downto 0);
               B1  : in STD_LOGIC_VECTOR (3 downto 0);
               Cin : in STD_LOGIC;
               S0  : out STD_LOGIC_VECTOR (3 downto 0);
               S1  : out STD_LOGIC_VECTOR (3 downto 0);
               S2  : out STD_LOGIC_VECTOR (3 downto 0));
    end component;

    signal A0    : STD_LOGIC_VECTOR (3 downto 0);
    signal A1    : STD_LOGIC_VECTOR (3 downto 0);
    signal B0    : STD_LOGIC_VECTOR (3 downto 0);
    signal B1    : STD_LOGIC_VECTOR (3 downto 0);
    signal Cin   : STD_LOGIC;
    signal S0    : STD_LOGIC_VECTOR (3 downto 0);
    signal S1    : STD_LOGIC_VECTOR (3 downto 0);
    signal S2    : STD_LOGIC_VECTOR (3 downto 0);

begin

    u1 : twodigit_bcdadd port map (
        A0   => A0,
        A1   => A1,
        B0   => B0,
        B1   => B1,
        Cin  => Cin,
        S0   => S0,
        S1   => S1,
        S2   => S2);
    
    input_gen : process
    begin
        Cin <= '0';
        for i in 0 to 10 loop
            for j in 0 to 10 loop
                --for k in STD_LOGIC range '0' to '1' loop
                for k in 0 to 10 loop
                    for l in 0 to 10 loop

                        A0 <= std_logic_vector(to_unsigned(j, A0'length));
                        A1 <= std_logic_vector(to_unsigned(i, A1'length));
                        
                        B0 <= std_logic_vector(to_unsigned(l, B0'length));
                        B1 <= std_logic_vector(to_unsigned(k, B1'length));
                        --Cin <= k;
                        wait for 1ps;
                        
                    end loop;
                end loop;
            end loop;
        end loop;
    end process;
    

end Behavioral;
