library IEEE;
use IEEE.std_logic_1164.all;

entity d_ff is
	port (	D, R, S	:	in  std_logic;
				CLK	:	in  std_logic;	
				Q	:	out std_logic);
end d_ff;

architecture my_d_ff of d_ff is
begin
	dff:	process (R, S, CLK)
	begin
		if (S = '0') then 
			Q <= '1';
		elsif (R = '0') then
			Q <= '0';
		elsif (falling_edge(CLK)) then
			Q <= D;
		end if;
	end process dff;
end my_d_ff;