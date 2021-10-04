library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity jkff is
	port( J, K, clk, rst : in std_logic;
		Q, Qbar : out std_logic);
end jkff;

architecture behavioral of jkff is
begin
process(clk, rst)
variable qn : std_logic;
begin
if(rst = '1')then
qn := '0';
elsif(clk'event and clk = '1')then
if(J='0' and K='0')then
qn := qn;
elsif(J='0' and K='1')then
qn := '0';
elsif(J='1' and K='0')then
qn := '1';
elsif(J='1' and K='1')then
qn := not qn;
else
null;
end if;
else
null;
end if;
Q <= qn;
Qbar <= not qn;

end process;
end behavioral;