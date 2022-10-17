----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.11.2021 10:44:15
-- Design Name: 
-- Module Name: ice_shifter - Behavioral
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
--use IEEE.NUMERIC_STD.All;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ice_shifter is
    
    port (a : in std_logic_vector(15 downto 0);
          pos : in std_logic_vector(3 downto 0);
          y : out std_logic_vector(15 downto 0);
          opc : in std_logic_vector(3 downto 0));
          
end ice_shifter;

architecture behaviour of ice_shifter is

begin

    with opc select
    y <= std_logic_vector(shift_left(unsigned(a), to_integer(unsigned(pos)))) when "0000",
    
    std_logic_vector(shift_right(unsigned(a), to_integer(unsigned(pos)))) when others;
    
--    std_logic_vector(shift_right(signed(a), to_integer(unsigned(pos)))) when "0010",
    
--    std_logic_vector(rotate_left(unsigned(a), to_integer(unsigned(pos)))) when "0011",
    
--    std_logic_vector(rotate_right(unsigned(a), to_integer(unsigned(pos)))) when others;
    


end behaviour;
