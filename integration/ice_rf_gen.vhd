----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.02.2022 10:47:23
-- Design Name: 
-- Module Name: ice_rf_gen - Behavioral
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

entity ice_rf_gen is

generic(width : positive := 16);
port (clk, reset, wp_en : in std_logic;
      rp0_addr, rp1_addr, wp_addr : in std_logic_vector(3 downto 0);
      rp0_data, rp1_data : out std_logic_vector(width - 1 downto 0);
      wp_data : in std_logic_vector(width - 1 downto 0));
      
end ice_rf_gen;

architecture Behavioral of ice_rf_gen is

type vector_field is array (15 downto 0) of std_logic_vector(15 downto 0);
signal s_rf : vector_field;
signal sel : std_logic_vector(15 downto 0);

component ice_rfdecode
    port(addr : in std_logic_vector(3 downto 0);
        en : in std_logic;
        sel : out std_logic_vector(15 downto 0));
end component;

component ice_reg
    generic (width : positive := 16);
    port (clk, reset, en : in std_logic;
      D : in std_logic_vector(width - 1 downto 0);
      Q : out std_logic_vector(width -1 downto 0));
end component;

begin
    
dec: ice_rfdecode
    port map(addr => wp_addr, en => wp_en, sel => sel);
    
    
GEN_REG: 
    for I in 0 to 15 generate
      REGX : ice_reg port map
        (clk => clk, reset => reset, en => sel(i), D => wp_data, Q => s_rf(i));
   end generate GEN_REG;

rp0_data <= s_rf(to_integer(unsigned(rp0_addr)));
rp1_data <= s_rf(to_integer(unsigned(rp1_addr)));

end Behavioral;
