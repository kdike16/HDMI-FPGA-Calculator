library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_toplevel_P1 is
end entity;

architecture sim of tb_toplevel_P1 is

    --------------------------------------------------------------------
    -- DUT signals
    --------------------------------------------------------------------
    signal clk        : std_logic := '0';
    signal reset_n    : std_logic := '0';
    signal button_n   : std_logic := '1';

    signal HEX0, HEX1, HEX2, HEX3 : std_logic_vector(6 downto 0);

    --------------------------------------------------------------------
    -- Clock period (50 MHz)
    --------------------------------------------------------------------
    constant CLK_PERIOD : time := 20 ns;

begin

    --------------------------------------------------------------------
    -- Instantiate DUT
    --------------------------------------------------------------------
    dut : entity work.toplevel_P1
        port map (
            clk     => clk,
            reset_n => reset_n,
            button_n => button_n,
            HEX0    => HEX0,
            HEX1    => HEX1,
            HEX2    => HEX2,
            HEX3    => HEX3
        );

    --------------------------------------------------------------------
    -- Clock generator
    --------------------------------------------------------------------
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for CLK_PERIOD / 2;
            clk <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

    --------------------------------------------------------------------
    -- Stimulus process
    --------------------------------------------------------------------
    stim_process : process
    begin
        ----------------------------------------------------------------
        -- RESET PHASE
        ----------------------------------------------------------------
        reset_n <= '0';
        button_n <= '1';
        wait for 200 ns;

        reset_n <= '1';  -- release reset
        wait for 200 ns;

        ----------------------------------------------------------------
        -- BUTTON PRESS #1
        -- active-low button: press = 0
        ----------------------------------------------------------------
        button_n <= '0';
        wait for 5 ms;

        button_n <= '1';
        wait for 5 ms;

        ----------------------------------------------------------------
        -- BUTTON PRESS #2
        ----------------------------------------------------------------
        button_n <= '0';
        wait for 5 ms;

        button_n <= '1';
        wait for 5 ms;

        ----------------------------------------------------------------
        -- BUTTON PRESS #3
        ----------------------------------------------------------------
        button_n <= '0';
        wait for 5 ms;

        button_n <= '1';
        wait for 10 ms;

        ----------------------------------------------------------------
        -- END SIMULATION
        ----------------------------------------------------------------
        wait;

    end process;

end architecture;