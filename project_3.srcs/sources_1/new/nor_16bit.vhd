----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.09.2020 12:09:10
-- Design Name: 
-- Module Name: nor_16bit - Behavioral
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

entity nor_16bit is
    Port ( A : in STD_LOGIC_VECTOR (15 downto 0);
           O : out STD_LOGIC);
end nor_16bit;

architecture Behavioral of nor_16bit is

begin

    process (A)
    begin
        if (A = x"0000") then
            O <= '1';
        else
            O <= '0';
        end if;
    end process;

end Behavioral;
