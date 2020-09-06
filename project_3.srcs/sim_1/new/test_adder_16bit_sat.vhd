----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.09.2020 15:18:37
-- Design Name: 
-- Module Name: test_adder_16bit_sat - Behavioral
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

entity test_adder_16bit_sat is
--  Port ( );
end test_adder_16bit_sat;

architecture Behavioral of test_adder_16bit_sat is

    component adder_16bit_sat Port ( 
        A   : in  STD_LOGIC_VECTOR (15 downto 0);
        B   : in  STD_LOGIC_VECTOR (15 downto 0);
        Cin : in  STD_LOGIC;
        SAT : in  STD_LOGIC;
        SUM : out STD_LOGIC_VECTOR (15 downto 0);
        Z   : out STD_LOGIC;
        N   : out STD_LOGIC;
        C   : out STD_LOGIC;
        V   : out STD_LOGIC);
    end component;

    signal A   : STD_LOGIC_VECTOR (15 downto 0);
    signal B   : STD_LOGIC_VECTOR (15 downto 0);
    signal Cin : STD_LOGIC;
    signal SAT : STD_LOGIC;
    signal SUM : STD_LOGIC_VECTOR (15 downto 0);
    signal Z   : STD_LOGIC;
    signal N   : STD_LOGIC;
    signal C   : STD_LOGIC;
    signal V   : STD_LOGIC;

begin

    u1 : adder_16bit_sat port map (
        A   => A,
        B   => B,
        Cin => Cin,
        SAT => SAT,
        SUM => SUM,
        Z   => Z,
        N   => N,
        C   => C,
        V   => V);

    input_gen : process
    begin
    

        
        -- STANDARD TEST
        --Cin <= '0';
        --SAT <= '0';
        
        --A <= x"0000";
        --B <= x"0000";
        --wait for 1ps;
        --for j in 1 to 6 loop
        --    A <= std_logic_vector(to_unsigned(j, A'length));
        --    wait for 1ps;
        --end loop;
        --Cin <= '1';
        --wait for 1ps;
        --for j in 1 to 6 loop
        --    B <= std_logic_vector(to_unsigned(j, B'length));
        --    wait for 1ps;
        --end loop;       
        
        --Cin <= '0';
        --A <= x"0000";
        --for j in 1 to 6 loop
        --    B <= ((std_logic_vector(to_unsigned(j, B'length)) xor x"FFFF") + 1);
        --    wait for 1ps;
        --end loop;


        -- NON-SATURATING OVERFLOW TEST
        Cin <= '0';
        SAT <= '0';
        
        A <= x"3FFF";
        B <= x"3FFF";
        wait for 1ps;
        B <= x"4000";
        wait for 1ps;
        B <= x"4001";
        wait for 1ps;
        B <= x"4000";
        wait for 1ps;
        B <= x"3FFF";
        wait for 1ps;
        
        A <= x"C001";
        B <= x"C000";
        wait for 1ps;
        B <= x"BFFF";
        wait for 1ps;
        B <= x"BFFE";
        wait for 1ps;











        -- SATURATION TEST
        --Cin <= '0';
        --SAT <= '1';
        
        --A <= x"3FFF";
        --B <= x"3FFF";
        --wait for 1ps;
        --B <= x"4000";
        --wait for 1ps;
        --B <= x"4001";
        --wait for 1ps;
        --B <= x"4000";
        --wait for 1ps;
        --B <= x"3FFF";
        --wait for 1ps;
        
        --A <= x"C001";
        --B <= x"C000";
        --wait for 1ps;
        --B <= x"BFFF";
        --wait for 1ps;
        --B <= x"BFFE";
        --wait for 1ps;






        std.env.finish;
        
        wait;
    end process;

end Behavioral;
