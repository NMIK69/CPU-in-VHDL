----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.12.2021 10:48:47
-- Design Name: 
-- Module Name: ice_pc_tb - Behavioral
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

entity ice_pc_tb is
--  Port ( );
end ice_pc_tb;

architecture Behavioral of ice_pc_tb is
signal clk, reset, load, inc : std_logic;
signal imm, pc : std_logic_vector(11 downto 0);

begin
DUT: entity work.ice_pc
    port map(clk => clk, reset => reset, load => load, inc => inc, imm => imm, pc => pc);
    
reset <= '1', '0' after 10 ns, '1' after 205 ns, '0' after 215 ns;

clk <= '0', '1' after 20 ns, '0' after 30 ns, '1' after 40 ns, '0' after 50 ns, '1' after 60 ns, '0' after 70 ns, '1' after 80 ns, '0' after 90 ns, '1' after 100 ns,
'0' after 110 ns, '1' after 120 ns, '0' after 130 ns, '1' after 140 ns, '0' after 150 ns, '1' after 160 ns, '0' after 170 ns, '1' after 180 ns, '0' after 190 ns, '1' after 200 ns,
'0' after 210 ns, '1' after 220 ns, '0' after 230 ns, '1' after 240 ns, '0' after 250 ns, '1' after 260 ns, '0' after 270 ns, '1' after 280 ns, '0' after 290 ns, '1' after 300 ns;

inc <= '1', '0' after 80 ns, '1' after 115 ns, '0' after 125 ns, '1' after 180 ns;
imm <= "000000010000", "000010000000" after 85 ns;
load <= '0', '1' after 90 ns, '0' after 130 ns;

end Behavioral;
