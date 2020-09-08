----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.09.2020 17:56:51
-- Design Name: 
-- Module Name: onebit_bcdadd - Behavioral
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
--use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity onebit_bcdadd is
    Port ( A      : in STD_LOGIC_VECTOR (3 downto 0);
           B      : in STD_LOGIC_VECTOR (3 downto 0);
           Cin    : in STD_LOGIC;
           Cout   : out STD_LOGIC;
           ERRout : out STD_LOGIC;
           S      : out STD_LOGIC_VECTOR (3 downto 0));
end onebit_bcdadd;

architecture Behavioral of onebit_bcdadd is

    signal S_internal_A : STD_LOGIC_VECTOR(3 downto 0);
    signal S_internal_B : STD_LOGIC_VECTOR(3 downto 0);
    signal C_internal   : STD_LOGIC;
    
    signal t1 : STD_LOGIC_VECTOR(4 downto 0);
    signal t2 : STD_LOGIC_VECTOR(4 downto 0);
    signal t3 : STD_LOGIC_VECTOR(4 downto 0);

begin

    process(A, B, Cin)
    
    -- We need a vector with one extra bit in MSB for "carry out" checking
    variable S_temp : STD_LOGIC_VECTOR(4 downto 0);

    begin
        if (A > 9 or B > 9) then
            -- Invalid digits going on somewhere, display all 0's
            Cout <= '0';
            S <= x"0";
            ERRout <= '1';
        else    
            -- Prepend 0 to A, B, and carry in, turn them into 5-bit numbers to prevent undetected overflow
            S_temp := ('0' & a) + ('0' & b) + ("0000" & Cin);
            ERRout <= '0';

            if(S_temp > 9) then
                Cout <= '1';
                -- Chop off MSB as it's not needed anymore
                -- However, as described in the spec, we must add 6 if we have a carry out
                S <= STD_LOGIC_VECTOR(RESIZE(UNSIGNED(S_temp + x"6"), S'length));
            else
                Cout <= '0';
                -- Chop off MSB as it's not needed anymore
                S <= S_temp(3 downto 0);
            end if;
        end if;
    end process;

end Behavioral;
