----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.11.2021 10:26:47
-- Design Name: 
-- Module Name: ice_alu_tb - Behavioral
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

entity ice_alu_tb is
--  Port ( );
end ice_alu_tb;

architecture Behavioral of ice_alu_tb is

signal a, b : std_logic_vector(15 downto 0);
signal y : std_logic_vector(15 downto 0);
signal opc : std_logic_vector(3 downto 0);
signal anl : std_logic;

begin
DUT: entity work.ice_alu 
port map ( a => a, b => b, y => y, opc => opc, anl => anl);


a <= "0000000000000001";
b <= "0000000000000011";
opc <= "0000", "0001" after 10 ns, "0010" after 20 ns, "0011" after 30 ns, "0100" after 40 ns, "0101" after 50 ns, "0111" after 60 ns;
anl <= '0';

end Behavioral;
