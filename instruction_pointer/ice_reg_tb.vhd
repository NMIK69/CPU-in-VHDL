----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.12.2021 10:48:31
-- Design Name: 
-- Module Name: ice_reg_tb - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ice_reg_tb is
--  Port ( );
end ice_reg_tb;

architecture Behavioral of ice_reg_tb is

constant width : positive := 16;
signal clk, reset, en : std_logic;
signal d, q : std_logic_vector(15 downto 0);

begin
DUT: entity work.ice_reg
    generic map (width => width)
    port map (clk => clk, reset => reset, en => en, D => d, Q => q);

reset <= '1', '0' after 10 ns, '1' after 115 ns, '0' after 125 ns;

clk <= '0', '1' after 20 ns, '0' after 30 ns, '1' after 40 ns, '0' after 50 ns, '1' after 60 ns, '0' after 70 ns, '1' after 80 ns, '0' after 90 ns, '1' after 100 ns, '0' after 110 ns, '1' after 120 ns,
'0' after 130 ns, '1' after 140 ns, '0' after 150 ns;
 
en <= '0', '1' after 30 ns, '0' after 75 ns, '1' after 90 ns, '0' after 130 ns;
d <= "0000000000000001" , "0000000000001001" after 20 ns, "0000000000001111" after 60 ns, "0000001000000001" after 70 ns, "0000000000001101" after 80 ns;

end Behavioral;
