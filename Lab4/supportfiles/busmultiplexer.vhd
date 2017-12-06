
LIBRARY ieee;
USE ieee.std_logic_1164.all;
-- Title "Bus multiplexer";
-- File: busmux.vhd
ENTITY busmultiplexer IS
PORT (	Sel		: IN  STD_LOGIC_VECTOR (2 DOWNTO 0);
		D0		: IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
		D1		: IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
		D2		: IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
		D3		: IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
		D4		: IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
		D5		: IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
		D6		: IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
		D7		: IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
		Y		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
END busmultiplexer;
ARCHITECTURE busmuxarch OF busmultiplexer IS
BEGIN
Y <=  D0 WHEN Sel = "000" ELSE
	  D1 WHEN Sel = "001" ELSE
	  D2 WHEN Sel = "010" ELSE
	  D3 WHEN Sel = "011" ELSE
	  D4 WHEN Sel = "100" ELSE
	  D5 WHEN Sel = "101" ELSE
	  D6 WHEN Sel = "110" ELSE
	  D7;                    
END busmuxarch;

