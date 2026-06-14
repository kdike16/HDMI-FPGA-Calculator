-- Copyright (C) 2024  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "06/10/2026 00:17:10"

-- 
-- Device: Altera 5CGXFC5C6F27C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	toplevel_P1 IS
    PORT (
	clk : IN std_logic;
	reset_n : IN std_logic;
	button_n : IN std_logic;
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END toplevel_P1;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_V19,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_V18,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_V17,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_W18,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_Y20,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_Y19,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_Y18,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AA18,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AD26,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AB19,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AE26,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AE25,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AC19,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AF24,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- clk	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_n	=>  Location: PIN_P11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- button_n	=>  Location: PIN_P12,	 I/O Standard: 1.2 V,	 Current Strength: Default


ARCHITECTURE structure OF toplevel_P1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_button_n : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \u_pulse_counter|Add0~1_sumout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \button_n~input_o\ : std_logic;
SIGNAL \u_debouncer|Add0~61_sumout\ : std_logic;
SIGNAL \u_debouncer|counter[5]~1_combout\ : std_logic;
SIGNAL \u_debouncer|Add0~34\ : std_logic;
SIGNAL \u_debouncer|Add0~13_sumout\ : std_logic;
SIGNAL \u_debouncer|Add0~14\ : std_logic;
SIGNAL \u_debouncer|Add0~17_sumout\ : std_logic;
SIGNAL \u_debouncer|Add0~18\ : std_logic;
SIGNAL \u_debouncer|Add0~37_sumout\ : std_logic;
SIGNAL \u_debouncer|counter~3_combout\ : std_logic;
SIGNAL \u_debouncer|Add0~38\ : std_logic;
SIGNAL \u_debouncer|Add0~21_sumout\ : std_logic;
SIGNAL \u_debouncer|Add0~22\ : std_logic;
SIGNAL \u_debouncer|Add0~25_sumout\ : std_logic;
SIGNAL \u_debouncer|Add0~26\ : std_logic;
SIGNAL \u_debouncer|Add0~29_sumout\ : std_logic;
SIGNAL \u_debouncer|button_clean~1_combout\ : std_logic;
SIGNAL \u_debouncer|Add0~30\ : std_logic;
SIGNAL \u_debouncer|Add0~1_sumout\ : std_logic;
SIGNAL \u_debouncer|Add0~2\ : std_logic;
SIGNAL \u_debouncer|Add0~41_sumout\ : std_logic;
SIGNAL \u_debouncer|counter~4_combout\ : std_logic;
SIGNAL \u_debouncer|Add0~42\ : std_logic;
SIGNAL \u_debouncer|Add0~5_sumout\ : std_logic;
SIGNAL \u_debouncer|Add0~6\ : std_logic;
SIGNAL \u_debouncer|Add0~45_sumout\ : std_logic;
SIGNAL \u_debouncer|counter~5_combout\ : std_logic;
SIGNAL \u_debouncer|Add0~46\ : std_logic;
SIGNAL \u_debouncer|Add0~49_sumout\ : std_logic;
SIGNAL \u_debouncer|counter~6_combout\ : std_logic;
SIGNAL \u_debouncer|Add0~50\ : std_logic;
SIGNAL \u_debouncer|Add0~53_sumout\ : std_logic;
SIGNAL \u_debouncer|counter~7_combout\ : std_logic;
SIGNAL \u_debouncer|Add0~54\ : std_logic;
SIGNAL \u_debouncer|Add0~57_sumout\ : std_logic;
SIGNAL \u_debouncer|counter~8_combout\ : std_logic;
SIGNAL \u_debouncer|button_clean~3_combout\ : std_logic;
SIGNAL \u_debouncer|button_clean~0_combout\ : std_logic;
SIGNAL \u_debouncer|counter[5]~0_combout\ : std_logic;
SIGNAL \u_debouncer|Add0~62\ : std_logic;
SIGNAL \u_debouncer|Add0~65_sumout\ : std_logic;
SIGNAL \u_debouncer|Add0~66\ : std_logic;
SIGNAL \u_debouncer|Add0~69_sumout\ : std_logic;
SIGNAL \u_debouncer|Add0~70\ : std_logic;
SIGNAL \u_debouncer|Add0~73_sumout\ : std_logic;
SIGNAL \u_debouncer|Add0~74\ : std_logic;
SIGNAL \u_debouncer|Add0~9_sumout\ : std_logic;
SIGNAL \u_debouncer|Add0~10\ : std_logic;
SIGNAL \u_debouncer|Add0~33_sumout\ : std_logic;
SIGNAL \u_debouncer|counter~2_combout\ : std_logic;
SIGNAL \u_debouncer|button_clean~2_combout\ : std_logic;
SIGNAL \u_edge_detector|signal_d~0_combout\ : std_logic;
SIGNAL \u_edge_detector|signal_d~q\ : std_logic;
SIGNAL \u_pulse_counter|rw_count[3]~0_combout\ : std_logic;
SIGNAL \u_pulse_counter|Add0~2\ : std_logic;
SIGNAL \u_pulse_counter|Add0~5_sumout\ : std_logic;
SIGNAL \u_pulse_counter|Add0~6\ : std_logic;
SIGNAL \u_pulse_counter|Add0~9_sumout\ : std_logic;
SIGNAL \u_pulse_counter|Add0~10\ : std_logic;
SIGNAL \u_pulse_counter|Add0~13_sumout\ : std_logic;
SIGNAL \u_seven_seg|Mux6~0_combout\ : std_logic;
SIGNAL \u_seven_seg|Mux5~0_combout\ : std_logic;
SIGNAL \u_seven_seg|Mux4~0_combout\ : std_logic;
SIGNAL \u_seven_seg|Mux3~0_combout\ : std_logic;
SIGNAL \u_seven_seg|Mux2~0_combout\ : std_logic;
SIGNAL \u_seven_seg|Mux1~0_combout\ : std_logic;
SIGNAL \u_seven_seg|Mux0~0_combout\ : std_logic;
SIGNAL \u_pulse_counter|Add0~14\ : std_logic;
SIGNAL \u_pulse_counter|Add0~17_sumout\ : std_logic;
SIGNAL \u_pulse_counter|Add0~18\ : std_logic;
SIGNAL \u_pulse_counter|Add0~21_sumout\ : std_logic;
SIGNAL \u_pulse_counter|Add0~22\ : std_logic;
SIGNAL \u_pulse_counter|Add0~25_sumout\ : std_logic;
SIGNAL \u_pulse_counter|Add0~26\ : std_logic;
SIGNAL \u_pulse_counter|Add0~29_sumout\ : std_logic;
SIGNAL \u_seven_seg|Mux13~0_combout\ : std_logic;
SIGNAL \u_seven_seg|Mux12~0_combout\ : std_logic;
SIGNAL \u_seven_seg|Mux11~0_combout\ : std_logic;
SIGNAL \u_seven_seg|Mux10~0_combout\ : std_logic;
SIGNAL \u_seven_seg|Mux9~0_combout\ : std_logic;
SIGNAL \u_seven_seg|Mux8~0_combout\ : std_logic;
SIGNAL \u_seven_seg|Mux7~0_combout\ : std_logic;
SIGNAL \u_pulse_counter|rw_count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_debouncer|counter\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \u_debouncer|ALT_INV_counter\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \u_debouncer|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \u_pulse_counter|ALT_INV_rw_count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_debouncer|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \u_debouncer|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \u_debouncer|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \u_debouncer|ALT_INV_counter[5]~0_combout\ : std_logic;
SIGNAL \u_debouncer|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \u_debouncer|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \u_seven_seg|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \u_debouncer|ALT_INV_button_clean~0_combout\ : std_logic;
SIGNAL \ALT_INV_reset_n~input_o\ : std_logic;
SIGNAL \u_debouncer|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \u_edge_detector|ALT_INV_signal_d~q\ : std_logic;
SIGNAL \u_seven_seg|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_button_n~input_o\ : std_logic;
SIGNAL \u_debouncer|ALT_INV_button_clean~3_combout\ : std_logic;
SIGNAL \u_debouncer|ALT_INV_button_clean~2_combout\ : std_logic;
SIGNAL \u_debouncer|ALT_INV_button_clean~1_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset_n <= reset_n;
ww_button_n <= button_n;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\u_debouncer|ALT_INV_counter\(9) <= NOT \u_debouncer|counter\(9);
\u_debouncer|ALT_INV_counter\(12) <= NOT \u_debouncer|counter\(12);
\u_debouncer|ALT_INV_counter\(7) <= NOT \u_debouncer|counter\(7);
\u_debouncer|ALT_INV_counter\(3) <= NOT \u_debouncer|counter\(3);
\u_debouncer|ALT_INV_counter\(6) <= NOT \u_debouncer|counter\(6);
\u_debouncer|ALT_INV_Add0~37_sumout\ <= NOT \u_debouncer|Add0~37_sumout\;
\u_pulse_counter|ALT_INV_rw_count\(0) <= NOT \u_pulse_counter|rw_count\(0);
\u_pulse_counter|ALT_INV_rw_count\(3) <= NOT \u_pulse_counter|rw_count\(3);
\u_pulse_counter|ALT_INV_rw_count\(1) <= NOT \u_pulse_counter|rw_count\(1);
\u_debouncer|ALT_INV_counter\(14) <= NOT \u_debouncer|counter\(14);
\u_debouncer|ALT_INV_counter\(1) <= NOT \u_debouncer|counter\(1);
\u_debouncer|ALT_INV_Add0~33_sumout\ <= NOT \u_debouncer|Add0~33_sumout\;
\u_debouncer|ALT_INV_counter\(2) <= NOT \u_debouncer|counter\(2);
\u_debouncer|ALT_INV_Add0~41_sumout\ <= NOT \u_debouncer|Add0~41_sumout\;
\u_debouncer|ALT_INV_counter\(4) <= NOT \u_debouncer|counter\(4);
\u_pulse_counter|ALT_INV_rw_count\(5) <= NOT \u_pulse_counter|rw_count\(5);
\u_debouncer|ALT_INV_counter\(11) <= NOT \u_debouncer|counter\(11);
\u_debouncer|ALT_INV_Add0~45_sumout\ <= NOT \u_debouncer|Add0~45_sumout\;
\u_pulse_counter|ALT_INV_rw_count\(4) <= NOT \u_pulse_counter|rw_count\(4);
\u_pulse_counter|ALT_INV_rw_count\(2) <= NOT \u_pulse_counter|rw_count\(2);
\u_pulse_counter|ALT_INV_rw_count\(7) <= NOT \u_pulse_counter|rw_count\(7);
\u_debouncer|ALT_INV_counter\(0) <= NOT \u_debouncer|counter\(0);
\u_pulse_counter|ALT_INV_rw_count\(6) <= NOT \u_pulse_counter|rw_count\(6);
\u_debouncer|ALT_INV_counter\(10) <= NOT \u_debouncer|counter\(10);
\u_debouncer|ALT_INV_counter[5]~0_combout\ <= NOT \u_debouncer|counter[5]~0_combout\;
\u_debouncer|ALT_INV_Add0~49_sumout\ <= NOT \u_debouncer|Add0~49_sumout\;
\u_debouncer|ALT_INV_Add0~57_sumout\ <= NOT \u_debouncer|Add0~57_sumout\;
\u_seven_seg|ALT_INV_Mux0~0_combout\ <= NOT \u_seven_seg|Mux0~0_combout\;
\u_debouncer|ALT_INV_button_clean~0_combout\ <= NOT \u_debouncer|button_clean~0_combout\;
\ALT_INV_reset_n~input_o\ <= NOT \reset_n~input_o\;
\u_debouncer|ALT_INV_counter\(15) <= NOT \u_debouncer|counter\(15);
\u_debouncer|ALT_INV_Add0~53_sumout\ <= NOT \u_debouncer|Add0~53_sumout\;
\u_edge_detector|ALT_INV_signal_d~q\ <= NOT \u_edge_detector|signal_d~q\;
\u_debouncer|ALT_INV_counter\(17) <= NOT \u_debouncer|counter\(17);
\u_seven_seg|ALT_INV_Mux7~0_combout\ <= NOT \u_seven_seg|Mux7~0_combout\;
\ALT_INV_button_n~input_o\ <= NOT \button_n~input_o\;
\u_debouncer|ALT_INV_counter\(5) <= NOT \u_debouncer|counter\(5);
\u_debouncer|ALT_INV_button_clean~3_combout\ <= NOT \u_debouncer|button_clean~3_combout\;
\u_debouncer|ALT_INV_counter\(13) <= NOT \u_debouncer|counter\(13);
\u_debouncer|ALT_INV_counter\(8) <= NOT \u_debouncer|counter\(8);
\u_debouncer|ALT_INV_button_clean~2_combout\ <= NOT \u_debouncer|button_clean~2_combout\;
\u_debouncer|ALT_INV_counter\(18) <= NOT \u_debouncer|counter\(18);
\u_debouncer|ALT_INV_counter\(16) <= NOT \u_debouncer|counter\(16);
\u_debouncer|ALT_INV_button_clean~1_combout\ <= NOT \u_debouncer|button_clean~1_combout\;

-- Location: IOOBUF_X66_Y0_N2
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_seven_seg|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X64_Y0_N2
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_seven_seg|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X64_Y0_N19
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_seven_seg|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X66_Y0_N19
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_seven_seg|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X65_Y0_N2
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_seven_seg|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X65_Y0_N19
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_seven_seg|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X62_Y0_N42
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_seven_seg|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X62_Y0_N59
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_seven_seg|Mux13~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X64_Y0_N36
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_seven_seg|Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X65_Y0_N36
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_seven_seg|Mux11~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X64_Y0_N53
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_seven_seg|Mux10~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X62_Y0_N76
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_seven_seg|Mux9~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X65_Y0_N53
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_seven_seg|Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X62_Y0_N93
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_seven_seg|ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOIBUF_X68_Y22_N44
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: LABCELL_X59_Y3_N30
\u_pulse_counter|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_pulse_counter|Add0~1_sumout\ = SUM(( \u_pulse_counter|rw_count\(0) ) + ( VCC ) + ( !VCC ))
-- \u_pulse_counter|Add0~2\ = CARRY(( \u_pulse_counter|rw_count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_pulse_counter|ALT_INV_rw_count\(0),
	cin => GND,
	sumout => \u_pulse_counter|Add0~1_sumout\,
	cout => \u_pulse_counter|Add0~2\);

-- Location: IOIBUF_X21_Y0_N1
\reset_n~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: IOIBUF_X21_Y0_N18
\button_n~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button_n,
	o => \button_n~input_o\);

-- Location: LABCELL_X61_Y3_N0
\u_debouncer|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_debouncer|Add0~61_sumout\ = SUM(( \u_debouncer|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \u_debouncer|Add0~62\ = CARRY(( \u_debouncer|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_debouncer|ALT_INV_counter\(0),
	cin => GND,
	sumout => \u_debouncer|Add0~61_sumout\,
	cout => \u_debouncer|Add0~62\);

-- Location: MLABCELL_X60_Y3_N21
\u_debouncer|counter[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_debouncer|counter[5]~1_combout\ = ( \reset_n~input_o\ & ( \button_n~input_o\ ) ) # ( !\reset_n~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_button_n~input_o\,
	dataf => \ALT_INV_reset_n~input_o\,
	combout => \u_debouncer|counter[5]~1_combout\);

-- Location: LABCELL_X61_Y3_N15
\u_debouncer|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_debouncer|Add0~33_sumout\ = SUM(( !\u_debouncer|counter\(5) ) + ( VCC ) + ( \u_debouncer|Add0~10\ ))
-- \u_debouncer|Add0~34\ = CARRY(( !\u_debouncer|counter\(5) ) + ( VCC ) + ( \u_debouncer|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_debouncer|ALT_INV_counter\(5),
	cin => \u_debouncer|Add0~10\,
	sumout => \u_debouncer|Add0~33_sumout\,
	cout => \u_debouncer|Add0~34\);

-- Location: LABCELL_X61_Y3_N18
\u_debouncer|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_debouncer|Add0~13_sumout\ = SUM(( \u_debouncer|counter\(6) ) + ( VCC ) + ( \u_debouncer|Add0~34\ ))
-- \u_debouncer|Add0~14\ = CARRY(( \u_debouncer|counter\(6) ) + ( VCC ) + ( \u_debouncer|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_debouncer|ALT_INV_counter\(6),
	cin => \u_debouncer|Add0~34\,
	sumout => \u_debouncer|Add0~13_sumout\,
	cout => \u_debouncer|Add0~14\);

-- Location: FF_X61_Y3_N20
\u_debouncer|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_debouncer|Add0~13_sumout\,
	sclr => \u_debouncer|counter[5]~1_combout\,
	ena => \u_debouncer|counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debouncer|counter\(6));

-- Location: LABCELL_X61_Y3_N21
\u_debouncer|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_debouncer|Add0~17_sumout\ = SUM(( \u_debouncer|counter\(7) ) + ( VCC ) + ( \u_debouncer|Add0~14\ ))
-- \u_debouncer|Add0~18\ = CARRY(( \u_debouncer|counter\(7) ) + ( VCC ) + ( \u_debouncer|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_debouncer|ALT_INV_counter\(7),
	cin => \u_debouncer|Add0~14\,
	sumout => \u_debouncer|Add0~17_sumout\,
	cout => \u_debouncer|Add0~18\);

-- Location: FF_X61_Y3_N23
\u_debouncer|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_debouncer|Add0~17_sumout\,
	sclr => \u_debouncer|counter[5]~1_combout\,
	ena => \u_debouncer|counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debouncer|counter\(7));

-- Location: LABCELL_X61_Y3_N24
\u_debouncer|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_debouncer|Add0~37_sumout\ = SUM(( !\u_debouncer|counter\(8) ) + ( VCC ) + ( \u_debouncer|Add0~18\ ))
-- \u_debouncer|Add0~38\ = CARRY(( !\u_debouncer|counter\(8) ) + ( VCC ) + ( \u_debouncer|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_debouncer|ALT_INV_counter\(8),
	cin => \u_debouncer|Add0~18\,
	sumout => \u_debouncer|Add0~37_sumout\,
	cout => \u_debouncer|Add0~38\);

-- Location: MLABCELL_X60_Y3_N33
\u_debouncer|counter~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_debouncer|counter~3_combout\ = ( !\u_debouncer|Add0~37_sumout\ & ( (\reset_n~input_o\ & !\button_n~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset_n~input_o\,
	datac => \ALT_INV_button_n~input_o\,
	dataf => \u_debouncer|ALT_INV_Add0~37_sumout\,
	combout => \u_debouncer|counter~3_combout\);

-- Location: FF_X60_Y3_N35
\u_debouncer|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_debouncer|counter~3_combout\,
	ena => \u_debouncer|counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debouncer|counter\(8));

-- Location: LABCELL_X61_Y3_N27
\u_debouncer|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_debouncer|Add0~21_sumout\ = SUM(( \u_debouncer|counter\(9) ) + ( VCC ) + ( \u_debouncer|Add0~38\ ))
-- \u_debouncer|Add0~22\ = CARRY(( \u_debouncer|counter\(9) ) + ( VCC ) + ( \u_debouncer|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_debouncer|ALT_INV_counter\(9),
	cin => \u_debouncer|Add0~38\,
	sumout => \u_debouncer|Add0~21_sumout\,
	cout => \u_debouncer|Add0~22\);

-- Location: FF_X61_Y3_N29
\u_debouncer|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_debouncer|Add0~21_sumout\,
	sclr => \u_debouncer|counter[5]~1_combout\,
	ena => \u_debouncer|counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debouncer|counter\(9));

-- Location: LABCELL_X61_Y3_N30
\u_debouncer|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_debouncer|Add0~25_sumout\ = SUM(( \u_debouncer|counter\(10) ) + ( VCC ) + ( \u_debouncer|Add0~22\ ))
-- \u_debouncer|Add0~26\ = CARRY(( \u_debouncer|counter\(10) ) + ( VCC ) + ( \u_debouncer|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_debouncer|ALT_INV_counter\(10),
	cin => \u_debouncer|Add0~22\,
	sumout => \u_debouncer|Add0~25_sumout\,
	cout => \u_debouncer|Add0~26\);

-- Location: FF_X60_Y3_N59
\u_debouncer|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_debouncer|Add0~25_sumout\,
	sclr => \u_debouncer|counter[5]~1_combout\,
	sload => VCC,
	ena => \u_debouncer|counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debouncer|counter\(10));

-- Location: LABCELL_X61_Y3_N33
\u_debouncer|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_debouncer|Add0~29_sumout\ = SUM(( \u_debouncer|counter\(11) ) + ( VCC ) + ( \u_debouncer|Add0~26\ ))
-- \u_debouncer|Add0~30\ = CARRY(( \u_debouncer|counter\(11) ) + ( VCC ) + ( \u_debouncer|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_debouncer|ALT_INV_counter\(11),
	cin => \u_debouncer|Add0~26\,
	sumout => \u_debouncer|Add0~29_sumout\,
	cout => \u_debouncer|Add0~30\);

-- Location: FF_X61_Y3_N35
\u_debouncer|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_debouncer|Add0~29_sumout\,
	sclr => \u_debouncer|counter[5]~1_combout\,
	ena => \u_debouncer|counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debouncer|counter\(11));

-- Location: MLABCELL_X60_Y3_N51
\u_debouncer|button_clean~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_debouncer|button_clean~1_combout\ = ( !\u_debouncer|counter\(9) & ( !\u_debouncer|counter\(4) & ( (!\u_debouncer|counter\(11) & (!\u_debouncer|counter\(10) & (!\u_debouncer|counter\(6) & !\u_debouncer|counter\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_debouncer|ALT_INV_counter\(11),
	datab => \u_debouncer|ALT_INV_counter\(10),
	datac => \u_debouncer|ALT_INV_counter\(6),
	datad => \u_debouncer|ALT_INV_counter\(7),
	datae => \u_debouncer|ALT_INV_counter\(9),
	dataf => \u_debouncer|ALT_INV_counter\(4),
	combout => \u_debouncer|button_clean~1_combout\);

-- Location: LABCELL_X61_Y3_N36
\u_debouncer|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_debouncer|Add0~1_sumout\ = SUM(( \u_debouncer|counter\(12) ) + ( VCC ) + ( \u_debouncer|Add0~30\ ))
-- \u_debouncer|Add0~2\ = CARRY(( \u_debouncer|counter\(12) ) + ( VCC ) + ( \u_debouncer|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_debouncer|ALT_INV_counter\(12),
	cin => \u_debouncer|Add0~30\,
	sumout => \u_debouncer|Add0~1_sumout\,
	cout => \u_debouncer|Add0~2\);

-- Location: FF_X60_Y3_N20
\u_debouncer|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_debouncer|Add0~1_sumout\,
	sclr => \u_debouncer|counter[5]~1_combout\,
	sload => VCC,
	ena => \u_debouncer|counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debouncer|counter\(12));

-- Location: LABCELL_X61_Y3_N39
\u_debouncer|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_debouncer|Add0~41_sumout\ = SUM(( !\u_debouncer|counter\(13) ) + ( VCC ) + ( \u_debouncer|Add0~2\ ))
-- \u_debouncer|Add0~42\ = CARRY(( !\u_debouncer|counter\(13) ) + ( VCC ) + ( \u_debouncer|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_debouncer|ALT_INV_counter\(13),
	cin => \u_debouncer|Add0~2\,
	sumout => \u_debouncer|Add0~41_sumout\,
	cout => \u_debouncer|Add0~42\);

-- Location: MLABCELL_X60_Y3_N45
\u_debouncer|counter~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_debouncer|counter~4_combout\ = ( !\u_debouncer|Add0~41_sumout\ & ( (\reset_n~input_o\ & !\button_n~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset_n~input_o\,
	datab => \ALT_INV_button_n~input_o\,
	dataf => \u_debouncer|ALT_INV_Add0~41_sumout\,
	combout => \u_debouncer|counter~4_combout\);

-- Location: FF_X60_Y3_N47
\u_debouncer|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_debouncer|counter~4_combout\,
	ena => \u_debouncer|counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debouncer|counter\(13));

-- Location: LABCELL_X61_Y3_N42
\u_debouncer|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_debouncer|Add0~5_sumout\ = SUM(( \u_debouncer|counter\(14) ) + ( VCC ) + ( \u_debouncer|Add0~42\ ))
-- \u_debouncer|Add0~6\ = CARRY(( \u_debouncer|counter\(14) ) + ( VCC ) + ( \u_debouncer|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_debouncer|ALT_INV_counter\(14),
	cin => \u_debouncer|Add0~42\,
	sumout => \u_debouncer|Add0~5_sumout\,
	cout => \u_debouncer|Add0~6\);

-- Location: FF_X60_Y3_N50
\u_debouncer|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_debouncer|Add0~5_sumout\,
	sclr => \u_debouncer|counter[5]~1_combout\,
	sload => VCC,
	ena => \u_debouncer|counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debouncer|counter\(14));

-- Location: LABCELL_X61_Y3_N45
\u_debouncer|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_debouncer|Add0~45_sumout\ = SUM(( !\u_debouncer|counter\(15) ) + ( VCC ) + ( \u_debouncer|Add0~6\ ))
-- \u_debouncer|Add0~46\ = CARRY(( !\u_debouncer|counter\(15) ) + ( VCC ) + ( \u_debouncer|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_debouncer|ALT_INV_counter\(15),
	cin => \u_debouncer|Add0~6\,
	sumout => \u_debouncer|Add0~45_sumout\,
	cout => \u_debouncer|Add0~46\);

-- Location: MLABCELL_X60_Y3_N54
\u_debouncer|counter~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_debouncer|counter~5_combout\ = ( !\u_debouncer|Add0~45_sumout\ & ( (\reset_n~input_o\ & !\button_n~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset_n~input_o\,
	datad => \ALT_INV_button_n~input_o\,
	dataf => \u_debouncer|ALT_INV_Add0~45_sumout\,
	combout => \u_debouncer|counter~5_combout\);

-- Location: FF_X60_Y3_N56
\u_debouncer|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_debouncer|counter~5_combout\,
	ena => \u_debouncer|counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debouncer|counter\(15));

-- Location: LABCELL_X61_Y3_N48
\u_debouncer|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_debouncer|Add0~49_sumout\ = SUM(( !\u_debouncer|counter\(16) ) + ( VCC ) + ( \u_debouncer|Add0~46\ ))
-- \u_debouncer|Add0~50\ = CARRY(( !\u_debouncer|counter\(16) ) + ( VCC ) + ( \u_debouncer|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_debouncer|ALT_INV_counter\(16),
	cin => \u_debouncer|Add0~46\,
	sumout => \u_debouncer|Add0~49_sumout\,
	cout => \u_debouncer|Add0~50\);

-- Location: MLABCELL_X60_Y3_N12
\u_debouncer|counter~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_debouncer|counter~6_combout\ = ( !\u_debouncer|Add0~49_sumout\ & ( (!\button_n~input_o\ & \reset_n~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_button_n~input_o\,
	datac => \ALT_INV_reset_n~input_o\,
	dataf => \u_debouncer|ALT_INV_Add0~49_sumout\,
	combout => \u_debouncer|counter~6_combout\);

-- Location: FF_X60_Y3_N14
\u_debouncer|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_debouncer|counter~6_combout\,
	ena => \u_debouncer|counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debouncer|counter\(16));

-- Location: LABCELL_X61_Y3_N51
\u_debouncer|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_debouncer|Add0~53_sumout\ = SUM(( !\u_debouncer|counter\(17) ) + ( VCC ) + ( \u_debouncer|Add0~50\ ))
-- \u_debouncer|Add0~54\ = CARRY(( !\u_debouncer|counter\(17) ) + ( VCC ) + ( \u_debouncer|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_debouncer|ALT_INV_counter\(17),
	cin => \u_debouncer|Add0~50\,
	sumout => \u_debouncer|Add0~53_sumout\,
	cout => \u_debouncer|Add0~54\);

-- Location: MLABCELL_X60_Y3_N9
\u_debouncer|counter~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_debouncer|counter~7_combout\ = ( !\u_debouncer|Add0~53_sumout\ & ( (\reset_n~input_o\ & !\button_n~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset_n~input_o\,
	datac => \ALT_INV_button_n~input_o\,
	dataf => \u_debouncer|ALT_INV_Add0~53_sumout\,
	combout => \u_debouncer|counter~7_combout\);

-- Location: FF_X60_Y3_N11
\u_debouncer|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_debouncer|counter~7_combout\,
	ena => \u_debouncer|counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debouncer|counter\(17));

-- Location: LABCELL_X61_Y3_N54
\u_debouncer|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_debouncer|Add0~57_sumout\ = SUM(( !\u_debouncer|counter\(18) ) + ( VCC ) + ( \u_debouncer|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_debouncer|ALT_INV_counter\(18),
	cin => \u_debouncer|Add0~54\,
	sumout => \u_debouncer|Add0~57_sumout\);

-- Location: MLABCELL_X60_Y3_N27
\u_debouncer|counter~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_debouncer|counter~8_combout\ = ( !\u_debouncer|Add0~57_sumout\ & ( (\reset_n~input_o\ & !\button_n~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset_n~input_o\,
	datac => \ALT_INV_button_n~input_o\,
	dataf => \u_debouncer|ALT_INV_Add0~57_sumout\,
	combout => \u_debouncer|counter~8_combout\);

-- Location: FF_X60_Y3_N29
\u_debouncer|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_debouncer|counter~8_combout\,
	ena => \u_debouncer|counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debouncer|counter\(18));

-- Location: MLABCELL_X60_Y3_N0
\u_debouncer|button_clean~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_debouncer|button_clean~3_combout\ = ( !\u_debouncer|counter\(1) & ( !\u_debouncer|counter\(3) & ( (\u_debouncer|counter\(18) & (\u_debouncer|counter\(17) & (!\u_debouncer|counter\(0) & !\u_debouncer|counter\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_debouncer|ALT_INV_counter\(18),
	datab => \u_debouncer|ALT_INV_counter\(17),
	datac => \u_debouncer|ALT_INV_counter\(0),
	datad => \u_debouncer|ALT_INV_counter\(2),
	datae => \u_debouncer|ALT_INV_counter\(1),
	dataf => \u_debouncer|ALT_INV_counter\(3),
	combout => \u_debouncer|button_clean~3_combout\);

-- Location: MLABCELL_X60_Y3_N15
\u_debouncer|button_clean~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_debouncer|button_clean~0_combout\ = ( !\u_debouncer|counter\(14) & ( !\u_debouncer|counter\(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_debouncer|ALT_INV_counter\(12),
	dataf => \u_debouncer|ALT_INV_counter\(14),
	combout => \u_debouncer|button_clean~0_combout\);

-- Location: MLABCELL_X60_Y3_N30
\u_debouncer|counter[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_debouncer|counter[5]~0_combout\ = ( \u_debouncer|button_clean~0_combout\ & ( (!\reset_n~input_o\) # ((!\u_debouncer|button_clean~1_combout\) # ((!\u_debouncer|button_clean~3_combout\) # (!\u_debouncer|button_clean~2_combout\))) ) ) # ( 
-- !\u_debouncer|button_clean~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111101111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset_n~input_o\,
	datab => \u_debouncer|ALT_INV_button_clean~1_combout\,
	datac => \u_debouncer|ALT_INV_button_clean~3_combout\,
	datad => \u_debouncer|ALT_INV_button_clean~2_combout\,
	dataf => \u_debouncer|ALT_INV_button_clean~0_combout\,
	combout => \u_debouncer|counter[5]~0_combout\);

-- Location: FF_X61_Y3_N2
\u_debouncer|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_debouncer|Add0~61_sumout\,
	sclr => \u_debouncer|counter[5]~1_combout\,
	ena => \u_debouncer|counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debouncer|counter\(0));

-- Location: LABCELL_X61_Y3_N3
\u_debouncer|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_debouncer|Add0~65_sumout\ = SUM(( \u_debouncer|counter\(1) ) + ( VCC ) + ( \u_debouncer|Add0~62\ ))
-- \u_debouncer|Add0~66\ = CARRY(( \u_debouncer|counter\(1) ) + ( VCC ) + ( \u_debouncer|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_debouncer|ALT_INV_counter\(1),
	cin => \u_debouncer|Add0~62\,
	sumout => \u_debouncer|Add0~65_sumout\,
	cout => \u_debouncer|Add0~66\);

-- Location: FF_X61_Y3_N5
\u_debouncer|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_debouncer|Add0~65_sumout\,
	sclr => \u_debouncer|counter[5]~1_combout\,
	ena => \u_debouncer|counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debouncer|counter\(1));

-- Location: LABCELL_X61_Y3_N6
\u_debouncer|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_debouncer|Add0~69_sumout\ = SUM(( \u_debouncer|counter\(2) ) + ( VCC ) + ( \u_debouncer|Add0~66\ ))
-- \u_debouncer|Add0~70\ = CARRY(( \u_debouncer|counter\(2) ) + ( VCC ) + ( \u_debouncer|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_debouncer|ALT_INV_counter\(2),
	cin => \u_debouncer|Add0~66\,
	sumout => \u_debouncer|Add0~69_sumout\,
	cout => \u_debouncer|Add0~70\);

-- Location: FF_X61_Y3_N8
\u_debouncer|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_debouncer|Add0~69_sumout\,
	sclr => \u_debouncer|counter[5]~1_combout\,
	ena => \u_debouncer|counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debouncer|counter\(2));

-- Location: LABCELL_X61_Y3_N9
\u_debouncer|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_debouncer|Add0~73_sumout\ = SUM(( \u_debouncer|counter\(3) ) + ( VCC ) + ( \u_debouncer|Add0~70\ ))
-- \u_debouncer|Add0~74\ = CARRY(( \u_debouncer|counter\(3) ) + ( VCC ) + ( \u_debouncer|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_debouncer|ALT_INV_counter\(3),
	cin => \u_debouncer|Add0~70\,
	sumout => \u_debouncer|Add0~73_sumout\,
	cout => \u_debouncer|Add0~74\);

-- Location: FF_X61_Y3_N11
\u_debouncer|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_debouncer|Add0~73_sumout\,
	sclr => \u_debouncer|counter[5]~1_combout\,
	ena => \u_debouncer|counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debouncer|counter\(3));

-- Location: LABCELL_X61_Y3_N12
\u_debouncer|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_debouncer|Add0~9_sumout\ = SUM(( \u_debouncer|counter\(4) ) + ( VCC ) + ( \u_debouncer|Add0~74\ ))
-- \u_debouncer|Add0~10\ = CARRY(( \u_debouncer|counter\(4) ) + ( VCC ) + ( \u_debouncer|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_debouncer|ALT_INV_counter\(4),
	cin => \u_debouncer|Add0~74\,
	sumout => \u_debouncer|Add0~9_sumout\,
	cout => \u_debouncer|Add0~10\);

-- Location: FF_X61_Y3_N14
\u_debouncer|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_debouncer|Add0~9_sumout\,
	sclr => \u_debouncer|counter[5]~1_combout\,
	ena => \u_debouncer|counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debouncer|counter\(4));

-- Location: MLABCELL_X60_Y3_N42
\u_debouncer|counter~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_debouncer|counter~2_combout\ = ( !\u_debouncer|Add0~33_sumout\ & ( (\reset_n~input_o\ & !\button_n~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset_n~input_o\,
	datab => \ALT_INV_button_n~input_o\,
	dataf => \u_debouncer|ALT_INV_Add0~33_sumout\,
	combout => \u_debouncer|counter~2_combout\);

-- Location: FF_X60_Y3_N44
\u_debouncer|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_debouncer|counter~2_combout\,
	ena => \u_debouncer|counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_debouncer|counter\(5));

-- Location: MLABCELL_X60_Y3_N36
\u_debouncer|button_clean~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_debouncer|button_clean~2_combout\ = ( \u_debouncer|counter\(15) & ( \u_debouncer|counter\(16) & ( (!\button_n~input_o\ & (\u_debouncer|counter\(5) & (\u_debouncer|counter\(8) & \u_debouncer|counter\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_button_n~input_o\,
	datab => \u_debouncer|ALT_INV_counter\(5),
	datac => \u_debouncer|ALT_INV_counter\(8),
	datad => \u_debouncer|ALT_INV_counter\(13),
	datae => \u_debouncer|ALT_INV_counter\(15),
	dataf => \u_debouncer|ALT_INV_counter\(16),
	combout => \u_debouncer|button_clean~2_combout\);

-- Location: LABCELL_X59_Y3_N57
\u_edge_detector|signal_d~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_edge_detector|signal_d~0_combout\ = ( !\u_debouncer|counter[5]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_debouncer|ALT_INV_counter[5]~0_combout\,
	combout => \u_edge_detector|signal_d~0_combout\);

-- Location: FF_X59_Y3_N59
\u_edge_detector|signal_d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_edge_detector|signal_d~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_edge_detector|signal_d~q\);

-- Location: LABCELL_X59_Y3_N27
\u_pulse_counter|rw_count[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_pulse_counter|rw_count[3]~0_combout\ = ( \u_debouncer|button_clean~0_combout\ & ( \u_debouncer|button_clean~1_combout\ & ( (!\reset_n~input_o\) # ((\u_debouncer|button_clean~2_combout\ & (!\u_edge_detector|signal_d~q\ & 
-- \u_debouncer|button_clean~3_combout\))) ) ) ) # ( !\u_debouncer|button_clean~0_combout\ & ( \u_debouncer|button_clean~1_combout\ & ( !\reset_n~input_o\ ) ) ) # ( \u_debouncer|button_clean~0_combout\ & ( !\u_debouncer|button_clean~1_combout\ & ( 
-- !\reset_n~input_o\ ) ) ) # ( !\u_debouncer|button_clean~0_combout\ & ( !\u_debouncer|button_clean~1_combout\ & ( !\reset_n~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset_n~input_o\,
	datab => \u_debouncer|ALT_INV_button_clean~2_combout\,
	datac => \u_edge_detector|ALT_INV_signal_d~q\,
	datad => \u_debouncer|ALT_INV_button_clean~3_combout\,
	datae => \u_debouncer|ALT_INV_button_clean~0_combout\,
	dataf => \u_debouncer|ALT_INV_button_clean~1_combout\,
	combout => \u_pulse_counter|rw_count[3]~0_combout\);

-- Location: FF_X59_Y3_N32
\u_pulse_counter|rw_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_pulse_counter|Add0~1_sumout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \u_pulse_counter|rw_count[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_pulse_counter|rw_count\(0));

-- Location: LABCELL_X59_Y3_N33
\u_pulse_counter|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_pulse_counter|Add0~5_sumout\ = SUM(( \u_pulse_counter|rw_count\(1) ) + ( GND ) + ( \u_pulse_counter|Add0~2\ ))
-- \u_pulse_counter|Add0~6\ = CARRY(( \u_pulse_counter|rw_count\(1) ) + ( GND ) + ( \u_pulse_counter|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_pulse_counter|ALT_INV_rw_count\(1),
	cin => \u_pulse_counter|Add0~2\,
	sumout => \u_pulse_counter|Add0~5_sumout\,
	cout => \u_pulse_counter|Add0~6\);

-- Location: FF_X59_Y3_N35
\u_pulse_counter|rw_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_pulse_counter|Add0~5_sumout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \u_pulse_counter|rw_count[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_pulse_counter|rw_count\(1));

-- Location: LABCELL_X59_Y3_N36
\u_pulse_counter|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_pulse_counter|Add0~9_sumout\ = SUM(( \u_pulse_counter|rw_count\(2) ) + ( GND ) + ( \u_pulse_counter|Add0~6\ ))
-- \u_pulse_counter|Add0~10\ = CARRY(( \u_pulse_counter|rw_count\(2) ) + ( GND ) + ( \u_pulse_counter|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_pulse_counter|ALT_INV_rw_count\(2),
	cin => \u_pulse_counter|Add0~6\,
	sumout => \u_pulse_counter|Add0~9_sumout\,
	cout => \u_pulse_counter|Add0~10\);

-- Location: FF_X59_Y3_N38
\u_pulse_counter|rw_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_pulse_counter|Add0~9_sumout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \u_pulse_counter|rw_count[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_pulse_counter|rw_count\(2));

-- Location: LABCELL_X59_Y3_N39
\u_pulse_counter|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_pulse_counter|Add0~13_sumout\ = SUM(( \u_pulse_counter|rw_count\(3) ) + ( GND ) + ( \u_pulse_counter|Add0~10\ ))
-- \u_pulse_counter|Add0~14\ = CARRY(( \u_pulse_counter|rw_count\(3) ) + ( GND ) + ( \u_pulse_counter|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_pulse_counter|ALT_INV_rw_count\(3),
	cin => \u_pulse_counter|Add0~10\,
	sumout => \u_pulse_counter|Add0~13_sumout\,
	cout => \u_pulse_counter|Add0~14\);

-- Location: FF_X59_Y3_N41
\u_pulse_counter|rw_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_pulse_counter|Add0~13_sumout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \u_pulse_counter|rw_count[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_pulse_counter|rw_count\(3));

-- Location: MLABCELL_X60_Y3_N57
\u_seven_seg|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_seven_seg|Mux6~0_combout\ = ( \u_pulse_counter|rw_count\(0) & ( (!\u_pulse_counter|rw_count\(3) & (!\u_pulse_counter|rw_count\(2) & !\u_pulse_counter|rw_count\(1))) # (\u_pulse_counter|rw_count\(3) & (!\u_pulse_counter|rw_count\(2) $ 
-- (!\u_pulse_counter|rw_count\(1)))) ) ) # ( !\u_pulse_counter|rw_count\(0) & ( (!\u_pulse_counter|rw_count\(3) & (\u_pulse_counter|rw_count\(2) & !\u_pulse_counter|rw_count\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000010010100100101001001010010010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_pulse_counter|ALT_INV_rw_count\(3),
	datab => \u_pulse_counter|ALT_INV_rw_count\(2),
	datac => \u_pulse_counter|ALT_INV_rw_count\(1),
	dataf => \u_pulse_counter|ALT_INV_rw_count\(0),
	combout => \u_seven_seg|Mux6~0_combout\);

-- Location: LABCELL_X59_Y3_N12
\u_seven_seg|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_seven_seg|Mux5~0_combout\ = ( \u_pulse_counter|rw_count\(2) & ( \u_pulse_counter|rw_count\(0) & ( !\u_pulse_counter|rw_count\(3) $ (\u_pulse_counter|rw_count\(1)) ) ) ) # ( !\u_pulse_counter|rw_count\(2) & ( \u_pulse_counter|rw_count\(0) & ( 
-- (\u_pulse_counter|rw_count\(3) & \u_pulse_counter|rw_count\(1)) ) ) ) # ( \u_pulse_counter|rw_count\(2) & ( !\u_pulse_counter|rw_count\(0) & ( (\u_pulse_counter|rw_count\(1)) # (\u_pulse_counter|rw_count\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110011111100000011000000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_pulse_counter|ALT_INV_rw_count\(3),
	datac => \u_pulse_counter|ALT_INV_rw_count\(1),
	datae => \u_pulse_counter|ALT_INV_rw_count\(2),
	dataf => \u_pulse_counter|ALT_INV_rw_count\(0),
	combout => \u_seven_seg|Mux5~0_combout\);

-- Location: LABCELL_X59_Y3_N21
\u_seven_seg|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_seven_seg|Mux4~0_combout\ = ( \u_pulse_counter|rw_count\(2) & ( \u_pulse_counter|rw_count\(0) & ( (\u_pulse_counter|rw_count\(1) & \u_pulse_counter|rw_count\(3)) ) ) ) # ( \u_pulse_counter|rw_count\(2) & ( !\u_pulse_counter|rw_count\(0) & ( 
-- \u_pulse_counter|rw_count\(3) ) ) ) # ( !\u_pulse_counter|rw_count\(2) & ( !\u_pulse_counter|rw_count\(0) & ( (\u_pulse_counter|rw_count\(1) & !\u_pulse_counter|rw_count\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000011110000111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_pulse_counter|ALT_INV_rw_count\(1),
	datac => \u_pulse_counter|ALT_INV_rw_count\(3),
	datae => \u_pulse_counter|ALT_INV_rw_count\(2),
	dataf => \u_pulse_counter|ALT_INV_rw_count\(0),
	combout => \u_seven_seg|Mux4~0_combout\);

-- Location: MLABCELL_X60_Y3_N6
\u_seven_seg|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_seven_seg|Mux3~0_combout\ = ( \u_pulse_counter|rw_count\(0) & ( (!\u_pulse_counter|rw_count\(2) & (!\u_pulse_counter|rw_count\(3) & !\u_pulse_counter|rw_count\(1))) # (\u_pulse_counter|rw_count\(2) & ((\u_pulse_counter|rw_count\(1)))) ) ) # ( 
-- !\u_pulse_counter|rw_count\(0) & ( (!\u_pulse_counter|rw_count\(2) & (\u_pulse_counter|rw_count\(3) & \u_pulse_counter|rw_count\(1))) # (\u_pulse_counter|rw_count\(2) & (!\u_pulse_counter|rw_count\(3) & !\u_pulse_counter|rw_count\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000001100001100000000110011000000001100111100000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_pulse_counter|ALT_INV_rw_count\(2),
	datac => \u_pulse_counter|ALT_INV_rw_count\(3),
	datad => \u_pulse_counter|ALT_INV_rw_count\(1),
	dataf => \u_pulse_counter|ALT_INV_rw_count\(0),
	combout => \u_seven_seg|Mux3~0_combout\);

-- Location: MLABCELL_X60_Y3_N18
\u_seven_seg|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_seven_seg|Mux2~0_combout\ = ( \u_pulse_counter|rw_count\(0) & ( (!\u_pulse_counter|rw_count\(3)) # ((!\u_pulse_counter|rw_count\(2) & !\u_pulse_counter|rw_count\(1))) ) ) # ( !\u_pulse_counter|rw_count\(0) & ( (\u_pulse_counter|rw_count\(2) & 
-- (!\u_pulse_counter|rw_count\(1) & !\u_pulse_counter|rw_count\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000011111000111110001111100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_pulse_counter|ALT_INV_rw_count\(2),
	datab => \u_pulse_counter|ALT_INV_rw_count\(1),
	datac => \u_pulse_counter|ALT_INV_rw_count\(3),
	dataf => \u_pulse_counter|ALT_INV_rw_count\(0),
	combout => \u_seven_seg|Mux2~0_combout\);

-- Location: MLABCELL_X60_Y3_N24
\u_seven_seg|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_seven_seg|Mux1~0_combout\ = ( \u_pulse_counter|rw_count\(0) & ( !\u_pulse_counter|rw_count\(3) $ (((\u_pulse_counter|rw_count\(2) & !\u_pulse_counter|rw_count\(1)))) ) ) # ( !\u_pulse_counter|rw_count\(0) & ( (!\u_pulse_counter|rw_count\(2) & 
-- (!\u_pulse_counter|rw_count\(3) & \u_pulse_counter|rw_count\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011000011111100001100001111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_pulse_counter|ALT_INV_rw_count\(2),
	datac => \u_pulse_counter|ALT_INV_rw_count\(3),
	datad => \u_pulse_counter|ALT_INV_rw_count\(1),
	dataf => \u_pulse_counter|ALT_INV_rw_count\(0),
	combout => \u_seven_seg|Mux1~0_combout\);

-- Location: LABCELL_X59_Y3_N0
\u_seven_seg|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_seven_seg|Mux0~0_combout\ = ( \u_pulse_counter|rw_count\(2) & ( \u_pulse_counter|rw_count\(0) & ( (!\u_pulse_counter|rw_count\(1)) # (\u_pulse_counter|rw_count\(3)) ) ) ) # ( !\u_pulse_counter|rw_count\(2) & ( \u_pulse_counter|rw_count\(0) & ( 
-- (\u_pulse_counter|rw_count\(1)) # (\u_pulse_counter|rw_count\(3)) ) ) ) # ( \u_pulse_counter|rw_count\(2) & ( !\u_pulse_counter|rw_count\(0) & ( (!\u_pulse_counter|rw_count\(3)) # (\u_pulse_counter|rw_count\(1)) ) ) ) # ( !\u_pulse_counter|rw_count\(2) & 
-- ( !\u_pulse_counter|rw_count\(0) & ( (\u_pulse_counter|rw_count\(1)) # (\u_pulse_counter|rw_count\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111110011111100111100111111001111111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_pulse_counter|ALT_INV_rw_count\(3),
	datac => \u_pulse_counter|ALT_INV_rw_count\(1),
	datae => \u_pulse_counter|ALT_INV_rw_count\(2),
	dataf => \u_pulse_counter|ALT_INV_rw_count\(0),
	combout => \u_seven_seg|Mux0~0_combout\);

-- Location: LABCELL_X59_Y3_N42
\u_pulse_counter|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_pulse_counter|Add0~17_sumout\ = SUM(( \u_pulse_counter|rw_count\(4) ) + ( GND ) + ( \u_pulse_counter|Add0~14\ ))
-- \u_pulse_counter|Add0~18\ = CARRY(( \u_pulse_counter|rw_count\(4) ) + ( GND ) + ( \u_pulse_counter|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_pulse_counter|ALT_INV_rw_count\(4),
	cin => \u_pulse_counter|Add0~14\,
	sumout => \u_pulse_counter|Add0~17_sumout\,
	cout => \u_pulse_counter|Add0~18\);

-- Location: FF_X59_Y3_N44
\u_pulse_counter|rw_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_pulse_counter|Add0~17_sumout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \u_pulse_counter|rw_count[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_pulse_counter|rw_count\(4));

-- Location: LABCELL_X59_Y3_N45
\u_pulse_counter|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_pulse_counter|Add0~21_sumout\ = SUM(( \u_pulse_counter|rw_count\(5) ) + ( GND ) + ( \u_pulse_counter|Add0~18\ ))
-- \u_pulse_counter|Add0~22\ = CARRY(( \u_pulse_counter|rw_count\(5) ) + ( GND ) + ( \u_pulse_counter|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_pulse_counter|ALT_INV_rw_count\(5),
	cin => \u_pulse_counter|Add0~18\,
	sumout => \u_pulse_counter|Add0~21_sumout\,
	cout => \u_pulse_counter|Add0~22\);

-- Location: FF_X59_Y3_N47
\u_pulse_counter|rw_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_pulse_counter|Add0~21_sumout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \u_pulse_counter|rw_count[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_pulse_counter|rw_count\(5));

-- Location: LABCELL_X59_Y3_N48
\u_pulse_counter|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_pulse_counter|Add0~25_sumout\ = SUM(( \u_pulse_counter|rw_count\(6) ) + ( GND ) + ( \u_pulse_counter|Add0~22\ ))
-- \u_pulse_counter|Add0~26\ = CARRY(( \u_pulse_counter|rw_count\(6) ) + ( GND ) + ( \u_pulse_counter|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_pulse_counter|ALT_INV_rw_count\(6),
	cin => \u_pulse_counter|Add0~22\,
	sumout => \u_pulse_counter|Add0~25_sumout\,
	cout => \u_pulse_counter|Add0~26\);

-- Location: FF_X59_Y3_N50
\u_pulse_counter|rw_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_pulse_counter|Add0~25_sumout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \u_pulse_counter|rw_count[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_pulse_counter|rw_count\(6));

-- Location: LABCELL_X59_Y3_N51
\u_pulse_counter|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_pulse_counter|Add0~29_sumout\ = SUM(( \u_pulse_counter|rw_count\(7) ) + ( GND ) + ( \u_pulse_counter|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_pulse_counter|ALT_INV_rw_count\(7),
	cin => \u_pulse_counter|Add0~26\,
	sumout => \u_pulse_counter|Add0~29_sumout\);

-- Location: FF_X59_Y3_N53
\u_pulse_counter|rw_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_pulse_counter|Add0~29_sumout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \u_pulse_counter|rw_count[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_pulse_counter|rw_count\(7));

-- Location: LABCELL_X63_Y1_N36
\u_seven_seg|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_seven_seg|Mux13~0_combout\ = ( \u_pulse_counter|rw_count\(5) & ( (\u_pulse_counter|rw_count\(4) & (!\u_pulse_counter|rw_count\(6) & \u_pulse_counter|rw_count\(7))) ) ) # ( !\u_pulse_counter|rw_count\(5) & ( (!\u_pulse_counter|rw_count\(4) & 
-- (\u_pulse_counter|rw_count\(6) & !\u_pulse_counter|rw_count\(7))) # (\u_pulse_counter|rw_count\(4) & (!\u_pulse_counter|rw_count\(6) $ (\u_pulse_counter|rw_count\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101100001000001000000010001100001011000010000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_pulse_counter|ALT_INV_rw_count\(4),
	datab => \u_pulse_counter|ALT_INV_rw_count\(6),
	datac => \u_pulse_counter|ALT_INV_rw_count\(7),
	datae => \u_pulse_counter|ALT_INV_rw_count\(5),
	combout => \u_seven_seg|Mux13~0_combout\);

-- Location: LABCELL_X63_Y1_N45
\u_seven_seg|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_seven_seg|Mux12~0_combout\ = ( \u_pulse_counter|rw_count\(5) & ( (!\u_pulse_counter|rw_count\(4) & (\u_pulse_counter|rw_count\(6))) # (\u_pulse_counter|rw_count\(4) & ((\u_pulse_counter|rw_count\(7)))) ) ) # ( !\u_pulse_counter|rw_count\(5) & ( 
-- (\u_pulse_counter|rw_count\(6) & (!\u_pulse_counter|rw_count\(4) $ (!\u_pulse_counter|rw_count\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000010100101111100000101000010100000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_pulse_counter|ALT_INV_rw_count\(4),
	datac => \u_pulse_counter|ALT_INV_rw_count\(6),
	datad => \u_pulse_counter|ALT_INV_rw_count\(7),
	datae => \u_pulse_counter|ALT_INV_rw_count\(5),
	combout => \u_seven_seg|Mux12~0_combout\);

-- Location: LABCELL_X63_Y1_N24
\u_seven_seg|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_seven_seg|Mux11~0_combout\ = ( \u_pulse_counter|rw_count\(5) & ( (!\u_pulse_counter|rw_count\(6) & (!\u_pulse_counter|rw_count\(4) & !\u_pulse_counter|rw_count\(7))) # (\u_pulse_counter|rw_count\(6) & ((\u_pulse_counter|rw_count\(7)))) ) ) # ( 
-- !\u_pulse_counter|rw_count\(5) & ( (!\u_pulse_counter|rw_count\(4) & (\u_pulse_counter|rw_count\(6) & \u_pulse_counter|rw_count\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010100000111000001100000010000000101000001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_pulse_counter|ALT_INV_rw_count\(4),
	datab => \u_pulse_counter|ALT_INV_rw_count\(6),
	datac => \u_pulse_counter|ALT_INV_rw_count\(7),
	datae => \u_pulse_counter|ALT_INV_rw_count\(5),
	combout => \u_seven_seg|Mux11~0_combout\);

-- Location: LABCELL_X63_Y1_N33
\u_seven_seg|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_seven_seg|Mux10~0_combout\ = ( \u_pulse_counter|rw_count\(5) & ( (!\u_pulse_counter|rw_count\(4) & (!\u_pulse_counter|rw_count\(6) & \u_pulse_counter|rw_count\(7))) # (\u_pulse_counter|rw_count\(4) & (\u_pulse_counter|rw_count\(6))) ) ) # ( 
-- !\u_pulse_counter|rw_count\(5) & ( (!\u_pulse_counter|rw_count\(7) & (!\u_pulse_counter|rw_count\(4) $ (!\u_pulse_counter|rw_count\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000000000001011010010101011010000000000000010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_pulse_counter|ALT_INV_rw_count\(4),
	datac => \u_pulse_counter|ALT_INV_rw_count\(6),
	datad => \u_pulse_counter|ALT_INV_rw_count\(7),
	datae => \u_pulse_counter|ALT_INV_rw_count\(5),
	combout => \u_seven_seg|Mux10~0_combout\);

-- Location: LABCELL_X63_Y1_N15
\u_seven_seg|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_seven_seg|Mux9~0_combout\ = ( \u_pulse_counter|rw_count\(5) & ( (\u_pulse_counter|rw_count\(4) & !\u_pulse_counter|rw_count\(7)) ) ) # ( !\u_pulse_counter|rw_count\(5) & ( (!\u_pulse_counter|rw_count\(6) & (\u_pulse_counter|rw_count\(4))) # 
-- (\u_pulse_counter|rw_count\(6) & ((!\u_pulse_counter|rw_count\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101010000010101010000000001011111010100000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_pulse_counter|ALT_INV_rw_count\(4),
	datac => \u_pulse_counter|ALT_INV_rw_count\(6),
	datad => \u_pulse_counter|ALT_INV_rw_count\(7),
	datae => \u_pulse_counter|ALT_INV_rw_count\(5),
	combout => \u_seven_seg|Mux9~0_combout\);

-- Location: LABCELL_X63_Y1_N54
\u_seven_seg|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_seven_seg|Mux8~0_combout\ = ( \u_pulse_counter|rw_count\(5) & ( (!\u_pulse_counter|rw_count\(7) & ((!\u_pulse_counter|rw_count\(6)) # (\u_pulse_counter|rw_count\(4)))) ) ) # ( !\u_pulse_counter|rw_count\(5) & ( (\u_pulse_counter|rw_count\(4) & 
-- (!\u_pulse_counter|rw_count\(6) $ (\u_pulse_counter|rw_count\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000101000001110100001101000001000001010000011101000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_pulse_counter|ALT_INV_rw_count\(4),
	datab => \u_pulse_counter|ALT_INV_rw_count\(6),
	datac => \u_pulse_counter|ALT_INV_rw_count\(7),
	datae => \u_pulse_counter|ALT_INV_rw_count\(5),
	combout => \u_seven_seg|Mux8~0_combout\);

-- Location: LABCELL_X63_Y1_N0
\u_seven_seg|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_seven_seg|Mux7~0_combout\ = ( \u_pulse_counter|rw_count\(5) & ( (!\u_pulse_counter|rw_count\(4)) # ((!\u_pulse_counter|rw_count\(6)) # (\u_pulse_counter|rw_count\(7))) ) ) # ( !\u_pulse_counter|rw_count\(5) & ( (!\u_pulse_counter|rw_count\(6) & 
-- ((\u_pulse_counter|rw_count\(7)))) # (\u_pulse_counter|rw_count\(6) & ((!\u_pulse_counter|rw_count\(7)) # (\u_pulse_counter|rw_count\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110100111101111011111110111100111101001111011110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_pulse_counter|ALT_INV_rw_count\(4),
	datab => \u_pulse_counter|ALT_INV_rw_count\(6),
	datac => \u_pulse_counter|ALT_INV_rw_count\(7),
	datae => \u_pulse_counter|ALT_INV_rw_count\(5),
	combout => \u_seven_seg|Mux7~0_combout\);

-- Location: LABCELL_X58_Y53_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


