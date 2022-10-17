----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.11.2021 11:30:16
-- Design Name: 
-- Module Name: ice_shifter_tb - Behavioral
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

entity ice_shifter_tb is
--  Port ( );
end ice_shifter_tb;

architecture Behavioral of ice_shifter_tb is

signal a : std_logic_vector(15 downto 0);
signal pos : std_logic_vector(3 downto 0);
signal y : std_logic_vector(15 downto 0);
signal opc : std_logic_vector(3 downto 0);

begin
DUT: entity work.ice_shifter
port map (a => a, pos => pos, y => y, opc => opc);

a <= "0000000000001100";
pos <= "0010", "0011" after 20 ns, "0100" after 40 ns;
opc <= "0000", "0001" after 10 ns, "0000" after 20 ns, "0001" after 30 ns, "0000" after 40 ns, "0001" after 50 ns;


end Behavioral;
