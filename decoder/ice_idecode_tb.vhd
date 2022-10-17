----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.12.2021 15:44:28
-- Design Name: 
-- Module Name: ice_idecode_tb - Behavioral
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

entity ice_idecode_tb is
--  Port ( );
end ice_idecode_tb;

architecture Behavioral of ice_idecode_tb is
signal imm, pc_inc, pc_load : std_logic;
signal opc : std_logic_vector(3 downto 0);
signal grp : std_logic_vector(2 downto 0);

begin
DUT: entity work.ice_idecode
port map (imm => imm, grp => grp, opc => opc, pc_inc => pc_inc, pc_load => pc_load);

imm <= '1';
grp <= "111", "110" after 20 ns, "000" after 40 ns;
opc <= "1111", "0001" after 20 ns;


end Behavioral;
