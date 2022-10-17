----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.11.2021 11:00:42
-- Design Name: 
-- Module Name: ice_rfdecode_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ice_rfdecode_tb is
--  Port ( );
end ice_rfdecode_tb;

architecture Behavioral of ice_rfdecode_tb is

signal addr : std_logic_vector(3 downto 0);
signal en : std_logic;
signal sel : std_logic_vector(15 downto 0);

begin
DUT: entity work.ice_rfdecode
    port map(addr => addr, en => en, sel => sel);
    
en <= '1', '0' after 200 ns;
addr <= "0000", "0001" after 10 ns, "0010" after 20 ns, "0011" after 30 ns, "0100" after 40 ns, "0101" after 50 ns, "0110" after 60 ns, "0111" after 70 ns,
"1000" after 80 ns, "1001" after 90 ns, "1010" after 100 ns, "1011" after 110 ns, "1100" after 120 ns, "1101" after 130 ns, "1110" after 140 ns, "1111" after 150 ns;


--process
--variable j : integer := 0;
--begin 
    
--    while(j < 16) loop
    
--        addr <= std_logic_vector(to_unsigned(j, addr'length));
--        j := j + 1;
        
--        wait for 20ns;
--     end loop;  
--end process;

end Behavioral;