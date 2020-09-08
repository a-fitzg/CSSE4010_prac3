----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.09.2020 14:41:16
-- Design Name: 
-- Module Name: mux_3digit - Behavioral
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

entity mux_3digit is
    Port ( A0 : in STD_LOGIC_VECTOR (3 downto 0);
           A1 : in STD_LOGIC_VECTOR (3 downto 0);
           A2 : in STD_LOGIC_VECTOR (3 downto 0);
           B0 : in STD_LOGIC_VECTOR (3 downto 0);
           B1 : in STD_LOGIC_VECTOR (3 downto 0);
           B2 : in STD_LOGIC_VECTOR (3 downto 0);
           S : in STD_LOGIC;
           X0 : out STD_LOGIC_VECTOR (3 downto 0);
           X1 : out STD_LOGIC_VECTOR (3 downto 0);
           X2 : out STD_LOGIC_VECTOR (3 downto 0));
end mux_3digit;

architecture Behavioral of mux_3digit is

begin

    process(S, A0, A1, A2, B0, B1, B2)
    begin
    
        if (S = '1') then
            X0 <= B0;
            X1 <= B1;
            X2 <= B2;
        else
            X0 <= A0;
            X1 <= A1;
            X2 <= A2;
        end if;
        
    end process;

end Behavioral;
