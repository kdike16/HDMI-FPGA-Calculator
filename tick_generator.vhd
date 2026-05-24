library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 

entity tick_generator is 
    generic( 
        MAX_COUNT: integer := 50000000 
    ); 
    port( 
        reset : in std_logic;
        clk   : in std_logic;
        tick  : out std_logic
    ); 
end entity tick_generator; 

architecture rtl of tick_generator is 
    signal counter: unsigned (25 downto 0); 
begin

    process(clk) 
    begin 
        if rising_edge(clk) then 
            if reset = '1' then 
                counter <= (others => '0'); 
                tick <= '0'; 
            elsif counter = (MAX_COUNT - 1) then 
                counter <= (others => '0'); 
                tick <= '1'; 
            else 
                counter <= counter + 1; 
                tick <= '0'; 
            end if; 
        end if; 
    end process; 

end architecture rtl;

	