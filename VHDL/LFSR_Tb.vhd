library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LFSR_Tb is
--  Port ( );
end LFSR_Tb;

architecture Behavioral of LFSR_Tb is
COMPONENT LFSR IS
    PORT (Clk, Rst: IN std_logic;
          Output: OUT std_logic_vector (15 DOWNTO 0));
END COMPONENT;

signal Clk_s, Rst_s: std_logic;
signal Output_s: std_logic_vector(15 DOWNTO 0);

begin

Test: LFSR PORT MAP (Clk_s, Rst_s, output_s);
   
  Clk_proc: PROCESS
  BEGIN
    Clk_s <= '1';
    WAIT FOR 10 ns;
    Clk_s <= '0';
    WAIT FOR 10 ns;
  END PROCESS clk_proc;
                      
  Vector_proc: PROCESS
  BEGIN
    Rst_s <= '1';
    WAIT FOR 5 NS;
    Rst_s <= '0';
    FOR index IN 0 To 3 LOOP
      WAIT UNTIL Clk_s='1' AND Clk_s'EVENT;
    END LOOP;
    WAIT FOR 5 NS;
    ASSERT output_s = X"88" REPORT "Failed output=88";
    WAIT;
  END PROCESS Vector_proc;

end Behavioral;
