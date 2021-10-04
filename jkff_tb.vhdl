library ieee;
use ieee.std_logic_1164.all;

entity jkff_tb is
end jkff_tb;

architecture testbench of jkff_tb is

component jkff is
port(J, K, clk, rst : in std_logic;
Q, Qbar : out std_logic
);
end component;

signal J, K, clk, rst : std_logic;
signal Q, Qbar : std_logic;

begin
uut: jkff port map(
J => J,
K => K,
clk => clk,
rst => rst,
Q => Q,
Qbar => Qbar);

clock: process
begin
clk <= '1';
wait for 1 ns;
clk <= '0';
wait for 1 ns;
end process;

Force: process
begin
J <= '0';
K <= '0';
rst <= '0';
wait for 1 ns;

J <= '0';
K <= '1';
rst <= '0';
wait for 1 ns;

J <= '1';
K <= '0';
rst <= '0';
wait for 1 ns;

J <= '1';
K <= '1';
rst <= '0';
wait for 1 ns;

J <= '1';
K <= '1';
rst <= '0';
wait for 1 ns;

J <= '0';
K <= '0';
rst <= '0';
wait for 1 ns;

J <= '0';
K <= '0';
rst <= '1';
wait for 1 ns;
end process;
end testbench;