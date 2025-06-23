library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_ff is
  Port (  
      d     : in std_logic;
      q     : out std_logic;
      qbar  : out std_logic;
      clk   : in std_logic;
      reset : in std_logic
  );
end D_ff;

architecture Behavioral of D_ff is
begin
  process(clk, reset)
  begin
    if reset = '1' then
      q <= '0';
      qbar <= '1';
    elsif rising_edge(clk) then
      q <= d;
      qbar <= not d;
    end if;
  end process;
end Behavioral;
