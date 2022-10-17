----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.02.2022 09:47:51
-- Design Name: 
-- Module Name: ice_cmp_tb - Behavioral
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

entity ice_cmp_tb is
--  Port ( );
end ice_cmp_tb;

architecture Behavioral of ice_cmp_tb is

signal z, nz : std_logic;
signal opc : std_logic_vector(3 downto 0);
signal a, b, y : std_logic_vector(3 downto 0);

begin

DUT: entity work.ice_cmp
port map(a => a, b => b, z => z, nz => nz, opc => opc, y => y);


a <= "0000", "0000" after 10 ns, "0100" after 20 ns, "1001" after 30 ns, "1011" after 40 ns;
b <= "0001", "1001" after 10 ns, "0000" after 20 ns, "0100" after 30 ns, "1011" after 40 ns;
opc <= "0101"; -- hier habe ich manuell immer die opc geaendert und mit jedem opc einmal simuliert.

end Behavioral;
