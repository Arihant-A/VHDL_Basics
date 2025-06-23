----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.06.2025 01:19:19
-- Design Name: 
-- Module Name: RS_ff - Behavioral
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

entity RS_ff is
  Port ( R : in STD_LOGIC;
S : in STD_LOGIC;
CLK : in STD_LOGIC;
Q : inout STD_LOGIC;
Qbar : inout STD_LOGIC);  
end RS_ff;

architecture Behavioral of RS_ff is

begin
process(CLK) 
    begin 
        if rising_edge(CLK) then
            if R = '1' and S = '0' then
                Q <= '0';
                Qbar <= '1'; 
            elsif R = '0' and S = '1' then
                Q <= '1';
                Qbar <= '0'; 
            elsif R = '0' and S = '0' then
                Q <= Q;
                Qbar <= Qbar; 
            elsif R = '1' and S = '1' then
                Q <= '0';
                Qbar <= '0'; -- Invalid state in some implementations end if;
                end if;
            end if;
   end process;
end Behavioral;
