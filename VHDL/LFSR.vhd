library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity LFSR is

PORT (Clk, Rst: IN std_logic;
      Output: OUT std_logic_vector (15 DOWNTO 0));
        
end LFSR;

architecture Behavioral of LFSR is

signal Currstate, Nextstate: std_logic_vector (15 DOWNTO 0);
signal feedback: std_logic;

begin

StateReg: PROCESS (Clk,Rst)
begin

IF (Rst = '1') THEN
  Currstate <= x"D008";
ELSIF (Clk = '1' AND Clk'EVENT) THEN
  Currstate <= Nextstate;
END IF;
END PROCESS;

feedback <= Currstate(15) XNOR Currstate(14) XNOR Currstate(12) XNOR Currstate(3);
Nextstate <= feedback & Currstate(15 DOWNTO 1);
Output <= Currstate;

end Behavioral;
