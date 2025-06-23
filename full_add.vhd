----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.06.2025 22:29:51
-- Design Name: 
-- Module Name: full_add - Behavioral
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

entity full_add is
  Port (
  a: in std_logic;
  b: in std_logic;
  c: in std_logic;
  sum: out std_logic;
  carry: out std_logic
   );
end full_add;

architecture Behavioral of full_add is
component half_add is
  Port (
  a: in std_logic;
  b: in std_logic;
  sum: out std_logic;
  carry: out std_logic );
end component;
signal s1,c1,c2: std_logic;

begin
x1: half_add port map(a,b,s1,c1);
x2: half_add port map(s1,c,sum,c2);
carry<=c1 or c2;

end Behavioral;
