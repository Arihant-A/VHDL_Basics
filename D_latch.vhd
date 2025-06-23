----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.06.2025 19:44:07
-- Design Name: 
-- Module Name: D_latch - Behavioral
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

entity D_latch is
  Port (
  d: in std_logic;
  q: inout std_logic;
  qbar: inout std_logic;
  en: in std_logic );
end D_latch;

architecture Behavioral of D_latch is

begin
    q<=((d nand en)nand qbar);
    qbar<=(((not d) nand en)nand q);

end Behavioral;
