----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.06.2025 16:09:39
-- Design Name: 
-- Module Name: Left_Shift_Reset - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 8-bit left shift register using D flip-flops with enable and reset.
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Left_Shift_Reset is
  Port (
    clk       : in std_logic;
    en        : in std_logic;
    serial_in : in std_logic;
    reset     : in std_logic;
    q         : out std_logic;
    qbar      : out std_logic
  );
end Left_Shift_Reset;

architecture Behavioral of Left_Shift_Reset is

  component D_ff
    Port (  
      d     : in std_logic;
      q     : out std_logic;
      qbar  : out std_logic;
      clk   : in std_logic;
      reset : in std_logic
    );
  end component;

  signal t    : std_logic_vector(6 downto 0);
  signal tbar : std_logic_vector(6 downto 0);
  signal d_in : std_logic_vector(6 downto 0);

begin

  -- Shift logic with enable
  d_in(0) <= serial_in when en = '1' else t(0);
  d_in(1) <= t(0)      when en = '1' else t(1);
  d_in(2) <= t(1)      when en = '1' else t(2);
  d_in(3) <= t(2)      when en = '1' else t(3);
  d_in(4) <= t(3)      when en = '1' else t(4);
  d_in(5) <= t(4)      when en = '1' else t(5);
  d_in(6) <= t(5)      when en = '1' else t(6);

  -- Flip-Flop instantiations
  x1: D_ff port map(d_in(0), t(0), tbar(0), clk, reset);
  x2: D_ff port map(d_in(1), t(1), tbar(1), clk, reset);
  x3: D_ff port map(d_in(2), t(2), tbar(2), clk, reset);
  x4: D_ff port map(d_in(3), t(3), tbar(3), clk, reset);
  x5: D_ff port map(d_in(4), t(4), tbar(4), clk, reset);
  x6: D_ff port map(d_in(5), t(5), tbar(5), clk, reset);
  x7: D_ff port map(d_in(6), t(6), tbar(6), clk, reset);
  x8: D_ff port map(t(6), q, qbar, clk, reset);

end Behavioral;
