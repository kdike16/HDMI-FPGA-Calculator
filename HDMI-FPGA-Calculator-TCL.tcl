# -------------------------------------------------------------------------
# HDMI FPGA Calculator and Graphics System
# Phase 1 Pin Assignments - HEX0 and HEX1 only
# Cyclone V GX Starter Kit (5CGXFC5C6F27C7)
# -------------------------------------------------------------------------

set_global_assignment -name FAMILY "Cyclone V"
set_global_assignment -name DEVICE 5CGXFC5C6F27C7

# =========================
# Clock (50MHz)
# =========================
set_location_assignment PIN_R20 -to clk
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to clk

# =========================
# Reset (KEY0, active-low)
# =========================
set_location_assignment PIN_P11 -to reset_n
set_instance_assignment -name IO_STANDARD "1.2 V" -to reset_n

# =========================
# Button (KEY1, active-low)
# =========================
set_location_assignment PIN_P12 -to button_n
set_instance_assignment -name IO_STANDARD "1.2 V" -to button_n

# =========================
# HEX0 (lower nibble of count)
# =========================
set_location_assignment PIN_V19 -to HEX0[0]
set_location_assignment PIN_V18 -to HEX0[1]
set_location_assignment PIN_V17 -to HEX0[2]
set_location_assignment PIN_W18 -to HEX0[3]
set_location_assignment PIN_Y20 -to HEX0[4]
set_location_assignment PIN_Y19 -to HEX0[5]
set_location_assignment PIN_Y18 -to HEX0[6]
set_instance_assignment -name IO_STANDARD "1.2 V" -to HEX0[*]

# =========================
# HEX1 (upper nibble of count)
# =========================
set_location_assignment PIN_AA18 -to HEX1[0]
set_location_assignment PIN_AD26 -to HEX1[1]
set_location_assignment PIN_AB19 -to HEX1[2]
set_location_assignment PIN_AE26 -to HEX1[3]
set_location_assignment PIN_AE25 -to HEX1[4]
set_location_assignment PIN_AC19 -to HEX1[5]
set_location_assignment PIN_AF24 -to HEX1[6]
set_instance_assignment -name IO_STANDARD "1.2 V" -to HEX1[*]

export_assignments
