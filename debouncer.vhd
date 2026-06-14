library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity debouncer is
    generic(
        DEBOUNCE_TIME : integer := 20  -- in tick periods (e.g. 20ms if tick = 1kHz)
    );
    port(
        clk          : in  std_logic;
        reset        : in  std_logic;  -- active high
        tick         : in  std_logic;  -- enable pulse
        button_raw   : in  std_logic;  -- active low (FPGA button)
        button_clean : out std_logic   -- active high (pressed = '1')
    );
end entity debouncer;

architecture rtl of debouncer is
    signal counter : integer range 0 to DEBOUNCE_TIME := DEBOUNCE_TIME;
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then                         -- active-high reset
                counter <= DEBOUNCE_TIME;
            elsif tick = '1' then
                if button_raw = '0' then                -- active-low: '0' = pressed
                    if counter > 0 then
                        counter <= counter - 1;         -- count down while held
                    end if;
                else                                    -- button released
                    counter <= DEBOUNCE_TIME;           -- reset counter
                end if;
            end if;
        end if;
    end process;

    -- combinatorial output: active-high, clean pressed signal
    button_clean <= '1' when counter = 0 and button_raw = '0' else '0';

end architecture rtl;