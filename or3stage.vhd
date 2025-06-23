----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.06.2025 19:16:18
-- Design Name: 
-- Module Name: or3stage - Behavioral
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

entity or3stage is
  Port (
  a: in std_logic_vector(9 downto 0);
  s: out std_logic);
end or3stage;

architecture Behavioral of or3stage is
component or4in is
    Port (
    a,b,c,d: in std_logic;
    o: out std_logic );
end component;

signal s0, s1: std_logic;

begin
z1:or4in port map(a(0),a(1),a(2),a(3),s0);
z2:or4in port map(a(4),a(5),a(6),a(7),s1);
z3:or4in port map(a(8),a(9),s0,s1,s);

end Behavioral;
