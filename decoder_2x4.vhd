----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.06.2025 20:52:01
-- Design Name: 
-- Module Name: decoder_2x4 - Behavioral
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

entity decoder_2x4 is
  Port (
  a: in std_logic_vector(1 downto 0);
  y: out std_logic_vector(3 downto 0);
  en: in std_logic
   );
end decoder_2x4;

architecture Behavioral of decoder_2x4 is

begin
process(a,en)
    begin
        if en='1' then
            case a is
                when "00"  => y <= "0001";
                when "01"  => y <= "0010";
                when "10"  => y <= "0100";
                when "11"  => y <= "1000";
            end case;
        end if;
    end process;  
end Behavioral;
