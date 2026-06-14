library ieee;
use ieee.std_logic_1164.all;
 
entity edge_detector is
    port(
        clk        : in  std_logic;
        reset      : in  std_logic;  -- active high
        signal_in  : in  std_logic;
        pulse_out  : out std_logic
    );
end entity edge_detector;
 
architecture rtl of edge_detector is
    signal signal_d : std_logic := '0';
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then                         -- active-high reset
                signal_d <= '0';
            else
                signal_d <= signal_in;                  -- delayed version of input
            end if;
        end if;
    end process;
 
    -- combinatorial: rising edge detection, no extra latency
    pulse_out <= signal_in and not signal_d;
 
end architecture rtl;