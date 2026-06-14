library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity toplevel_P1 is
    port(
        clk      : in  std_logic;
        reset_n  : in  std_logic;  -- active-low KEY0
        button_n : in  std_logic;  -- active-low KEY1
        HEX0     : out std_logic_vector(6 downto 0);  -- lower byte of count
        HEX1     : out std_logic_vector(6 downto 0)   -- upper byte of count
    );
end entity toplevel_P1;

architecture rtl of toplevel_P1 is

    signal reset        : std_logic;
    signal button_clean : std_logic;
    signal pulse_out    : std_logic;
    signal count        : std_logic_vector(7 downto 0);  -- 8-bit: 2 hex digits
    signal lamps        : std_logic_vector(13 downto 0); -- 2 digits x 7 segments

begin

    --------------------------------------------------------------------
    -- Fix polarities at boundary only
    --------------------------------------------------------------------
    reset <= not reset_n;

    --------------------------------------------------------------------
    -- Debouncer
    -- Runs on raw clock. At 50MHz, DEBOUNCE_TIME=500000 = 10ms debounce
    --------------------------------------------------------------------
    u_debouncer : entity work.debouncer
        generic map (
            DEBOUNCE_TIME => 500000
        )
        port map (
            clk          => clk,
            reset        => reset,
            tick         => '1',
            button_raw   => button_n,
            button_clean => button_clean
        );

    --------------------------------------------------------------------
    -- Edge Detector
    --------------------------------------------------------------------
    u_edge_detector : entity work.edge_detector
        port map (
            clk       => clk,
            reset     => reset,
            signal_in => button_clean,
            pulse_out => pulse_out
        );

    --------------------------------------------------------------------
    -- Pulse Counter (8-bit, counts 0x00 to 0xFF)
    --------------------------------------------------------------------
    u_pulse_counter : entity work.pulse_counter
        port map (
            clk      => clk,
            reset    => reset,
            pulse_in => pulse_out,
            count    => count
        );

    --------------------------------------------------------------------
    -- 7-Segment Driver
    --------------------------------------------------------------------
    u_seven_seg : entity work.seven_seg_driver
        port map (
            data_in    => count,
            decimal_en => '0',
            lamps      => lamps
        );

    --------------------------------------------------------------------
    -- HEX display mapping
    --------------------------------------------------------------------
    HEX0 <= lamps(6 downto 0);
    HEX1 <= lamps(13 downto 7);

end architecture rtl;