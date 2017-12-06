
LIBRARY ieee;
USE ieee.std_logic_1164.all;
-- Title "7 segment display driver circuit";
-- File: seg7.vhd
ENTITY seg7 IS
PORT (D       : IN  STD_LOGIC_VECTOR (3 DOWNTO 0);  -- BCD input
      S       : OUT STD_LOGIC_VECTOR (6 DOWNTO 0)); -- 7 segment outputs
END seg7;
ARCHITECTURE display OF SEG7 IS
BEGIN
s <=  "1000000" WHEN d = "0000" ELSE -- H"40"
      "1111001" WHEN d = "0001" ELSE -- H"79"
      "0100100" WHEN d = "0010" ELSE -- H"24"
      "0110000" WHEN d = "0011" ELSE -- H"30"
      "0011001" WHEN d = "0100" ELSE -- H"19"
      "0010010" WHEN d = "0101" ELSE -- H"12"
      "0000010" WHEN d = "0110" ELSE -- H"02"
      "1111000" WHEN d = "0111" ELSE -- H"78"
      "0000000" WHEN d = "1000" ELSE -- H"00"
      "0010000" WHEN d = "1001" ELSE -- H"10"
      "0001000" WHEN d = "1010" ELSE -- H"08"
      "0000011" WHEN d = "1011" ELSE -- H"03"
      "1000110" WHEN d = "1100" ELSE -- H"46"
      "0100001" WHEN d = "1101" ELSE -- H"21"
      "0000110" WHEN d = "1110" ELSE -- H"06"
      "0001110";                     -- H"0E"
END display;

