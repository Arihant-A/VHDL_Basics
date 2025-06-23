----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.06.2025 23:17:13
-- Design Name: 
-- Module Name: half_adder - Behavioral
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

entity half_adder is
  Port (   
  a: in std_logic;
  b: in std_logic;
  sum: out std_logic;
  carry: out std_logic);
end half_adder;

architecture Behavioral of half_adder is

begin
    process (A, B)
    begin
        -- Behavioral description using if-else
        if (A = '0' and B = '0') then
            SUM   <= '0';
            CARRY <= '0';
        elsif (A = '0' and B = '1') then
            SUM   <= '1';
            CARRY <= '0';
        elsif (A = '1' and B = '0') then
            SUM   <= '1';
            CARRY <= '0';
        else -- A = '1' and B = '1'
            SUM   <= '0';
            CARRY <= '1';
        end if;
    end process; 

end Behavioral;
