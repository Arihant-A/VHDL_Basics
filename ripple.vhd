----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.06.2025 00:33:32
-- Design Name: 
-- Module Name: ripple - Behavioral
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

entity ripple is
  Port (
  a: in std_logic_vector(3 downto 0);
  b: in std_logic_vector(3 downto 0);
  m: in std_logic;
  sum: out std_logic_vector(3 downto 0);
  carry: out std_logic);
end ripple;

architecture Behavioral of ripple is
component full_add is
  Port (
  a: in std_logic;
  b: in std_logic;
  c: in std_logic;
  sum: out std_logic;
  carry: out std_logic
   );
end component;

signal c0,c1,c2: std_logic;
signal q0,q1,q2,q3: std_logic;

begin
    q0<=a(0) xor m;
    q1<=a(1) xor m;
    q2<=a(2) xor m;
    q3<=a(3) xor m;

    x1: full_add port map(q0,b(0),m,sum(0),c0);
    x2: full_add port map(q1,b(1),c0,sum(1),c1);
    x3: full_add port map(q2,b(2),c1,sum(2),c2);
    x4: full_add port map(q3,b(3),c2,sum(3),carry);
    
end Behavioral;
