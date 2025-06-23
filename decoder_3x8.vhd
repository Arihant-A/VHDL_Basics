----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.06.2025 21:10:25
-- Design Name: 
-- Module Name: decoder_3x8 - Behavioral
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

entity decoder_3x8 is
  Port (
    a : in STD_LOGIC_VECTOR(2 downto 0);
    en: in std_logic;
    y : out STD_LOGIC_VECTOR(7 downto 0) 
    );
end decoder_3x8;

architecture Behavioral of decoder_3x8 is

begin
y(7) <= en and(a(2) and a(1) and a(0));
y(6) <= en and(a(2) and a(1) and (not a(0)));
y (5) <= en and(a(2) and (not a(1)) and a(0));
y (4) <= en and(a(2) and (not a(1)) and (not a(0)));
y (3) <= en and((not a(2)) and a(1) and a(0));
y (2) <= en and ((not a(2)) and a(1) and (not a(0)));
y(1) <= en and ((not a(2)) and (not a(1)) and (not a(0)));
y (0) <= en and (not a(2) and (not a(1)) and (not a(0)));

end Behavioral;
