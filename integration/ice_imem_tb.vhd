----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.01.2022 10:07:14
-- Design Name: 
-- Module Name: ice_imem_tb - Behavioral
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

entity ice_imem_tb is
--  Port ( );
end ice_imem_tb;

architecture Behavioral of ice_imem_tb is




component ice_pc is

    port (clk, reset, load, inc : in std_logic;
      imm : in std_logic_vector(11 downto 0);
      pc : out std_logic_vector(11 downto 0));
      
end component;


component ice_idecode is

    port(imm : in std_logic;
     grp : in std_logic_vector(2 downto 0);
     opc : in std_logic_vector(3 downto 0);
     pc_inc : out std_logic;
     pc_load : out std_logic);
     
end component;

signal clk, reset, load, inc : std_logic;
signal addr: std_logic_vector(11 downto 0);
signal imm_addr : std_logic_vector(11 downto 0) := (others => '0');
signal dout : std_logic_vector(23 downto 0);

begin
DUT: entity work.ice_imem
port map(clk => clk, reset => reset, addr => addr, dout => dout);

c1: ice_pc port map(clk => clk, reset => reset, load => load, inc => inc, imm => dout(11 downto 0), pc => addr);
c2: ice_idecode port map(imm => dout(23), grp => dout(22 downto 20), opc => dout(19 downto 16), pc_inc => inc, pc_load => load);


clk <= '0', '1' after 20 ns, '0' after 30 ns, '1' after 40 ns, '0' after 50 ns, '1' after 60 ns, '0' after 70 ns, '1' after 80 ns, '0' after 90 ns, '1' after 100 ns,
'0' after 110 ns, '1' after 120 ns, '0' after 130 ns, '1' after 140 ns, '0' after 150 ns, '1' after 160 ns, '0' after 170 ns, '1' after 180 ns, '0' after 190 ns, '1' after 200 ns,
'0' after 210 ns, '1' after 220 ns, '0' after 230 ns, '1' after 240 ns, '0' after 250 ns, '1' after 260 ns, '0' after 270 ns, '1' after 280 ns, '0' after 290 ns, '1' after 300 ns;

reset <= '1', '0' after 10 ns;

end Behavioral;
