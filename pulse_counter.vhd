library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity pulse_counter is
    port(
        clk      : in  std_logic;
        reset    : in  std_logic;  -- active high
        pulse_in : in  std_logic;
        count    : out std_logic_vector(7 downto 0)  -- 8-bit: fits 2 hex digits
    );
end entity pulse_counter;
 
architecture rtl of pulse_counter is
    signal rw_count : unsigned(7 downto 0) := (others => '0');
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                rw_count <= (others => '0');
            elsif pulse_in = '1' then
                rw_count <= rw_count + 1;
            end if;
        end if;
    end process;
 
    count <= std_logic_vector(rw_count);
 
end architecture rtl;
 