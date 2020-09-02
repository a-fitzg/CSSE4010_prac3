----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.09.2020 15:01:20
-- Design Name: 
-- Module Name: test_full_adder - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test_full_adder is
--  Port ( );
end test_full_adder;

architecture Behavioral of test_full_adder is

    component full_adder port (
        A    : in  STD_LOGIC;
        B    : in  STD_LOGIC;
        S    : out STD_LOGIC;
        Cin  : in  STD_LOGIC;
        Cout : out STD_LOGIC);
    end component;
    
    signal inputs : STD_LOGIC_VECTOR( 2 downto 0);
        
    signal S      : STD_LOGIC;
    signal Cout   : STD_LOGIC;

begin
    
    u1 : full_adder port map (
        A    => inputs(2),
        B    => inputs(1),
        S    => S,
        Cin  => inputs(0),
        Cout => Cout);

    input_gen : process
    begin
        inputs <= "000";
        for i in 0 to 7 loop
            inputs <= CONV_STD_LOGIC_VECTOR(i, inputs'length);
            wait for 1ps;
        end loop;
        wait;
    end process;

end Behavioral;
