library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity seven_seg_driver is
    port (
        data_in    : in  std_logic_vector(7 downto 0);  -- 8-bit input (2 hex digits)
        decimal_en : in  std_logic;                     -- reserved, unused for now
        lamps      : out std_logic_vector(13 downto 0)  -- 2 digits x 7 segments
    );
end entity;
 
architecture rtl of seven_seg_driver is
 
    signal digit0, digit1 : std_logic_vector(3 downto 0);
 
    -- 7-segment decoder (common anode: '0' lights segment)
    function seven_seg_decode(
        digit : std_logic_vector(3 downto 0)
    ) return std_logic_vector is
        variable seg : std_logic_vector(6 downto 0);
    begin
        case digit is
            when "0000" => seg := "1000000"; -- 0
            when "0001" => seg := "1111001"; -- 1
            when "0010" => seg := "0100100"; -- 2
            when "0011" => seg := "0110000"; -- 3
            when "0100" => seg := "0011001"; -- 4
            when "0101" => seg := "0010010"; -- 5
            when "0110" => seg := "0000010"; -- 6
            when "0111" => seg := "1111000"; -- 7
            when "1000" => seg := "0000000"; -- 8
            when "1001" => seg := "0010000"; -- 9
            when "1010" => seg := "0001000"; -- A
            when "1011" => seg := "0000011"; -- b
            when "1100" => seg := "1000110"; -- C
            when "1101" => seg := "0100001"; -- d
            when "1110" => seg := "0000110"; -- E
            when "1111" => seg := "0001110"; -- F
            when others => seg := "1111111"; -- OFF
        end case;
        return seg;
    end function;
 
begin
 
    -- Split 8-bit input into two hex digits
    digit0 <= data_in(3 downto 0);  -- lower nibble -> HEX0
    digit1 <= data_in(7 downto 4);  -- upper nibble -> HEX1
 
    lamps(6  downto 0)  <= seven_seg_decode(digit0);
    lamps(13 downto 7)  <= seven_seg_decode(digit1);
 
end architecture rtl;