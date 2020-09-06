----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.09.2020 17:46:33
-- Design Name: 
-- Module Name: bcd_corrector - Behavioral
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

entity bcd_corrector is
    Port ( Cin  : in  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out STD_LOGIC_VECTOR (3 downto 0));
end bcd_corrector;

architecture Behavioral of bcd_corrector is

begin

    process (Cin)
    begin
        if (Cin > 9) then
            Cout <= x"6";
        else
            Cout <= x"0";
        end if;
    end process;
    
end Behavioral;
