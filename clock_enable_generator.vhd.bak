library ieee;
use ieee.std_logic_1164.all;

entity clock_enable_generator is
	generic(
		MAX_COUNT: integer:= 50000000
	);
	port(
		reset: in std_logic,
		clk: in std_logic,
		tick: out std_logic,
	);
end entity clock_enable_generator;


architecture rtl of clock_enable_generator is

	signal counter: unsigned (25 to 0);
	
begin
	if rising_edge(clk) then
		 if reset = '1' then
			  counter <= (others => '0');
			  tick <= '0';

		 elsif counter = MAX_COUNT then
			  counter <= (others => '0');
			  tick <= '1';

		 else
			  counter <= counter + 1;
			  tick <= '0';
		 end if;
	end if;
	
end architecture rtl;
	