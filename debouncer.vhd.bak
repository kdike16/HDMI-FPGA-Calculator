library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity debouncer is
    generic(
        DEBOUNCE_TIME : integer := 1000000 
    );
    port(
        reset        : in  std_logic;
        clk          : in  std_logic;
        tick         : in  std_logic; -- Enable pulse
        button_raw   : in  std_logic;
        button_clean : out std_logic
    );
end entity debouncer;

architecture rtl of debouncer is
    signal counter : integer range 0 to DEBOUNCE_TIME;
begin
    process(clk) 
    begin
        if rising_edge(clk) then
            if reset = '1' then
                button_clean <= '0';
                counter      <= 0;
            elsif tick = '1' then
                if button_raw = '1' then
                    if counter < DEBOUNCE_TIME then
                        counter <= counter + 1;
                    else
                        button_clean <= '1'; 
                    end if;
                else
                    counter      <= 0;   
                    button_clean <= '0'; 
                end if;
            end if;
        end if;
    end process;
end architecture rtl;
