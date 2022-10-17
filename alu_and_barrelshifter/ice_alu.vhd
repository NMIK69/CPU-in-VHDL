----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.11.2021 10:08:49
-- Design Name: 
-- Module Name: ice_alu - Behavioral
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

entity ice_alu is

    generic (width : positive := 16);

    port(a : in std_logic_vector(width - 1 downto 0);
        b : in std_logic_vector(width - 1 downto 0);
        y : out std_logic_vector(width - 1 downto 0);
        opc : in std_logic_vector(3 downto 0);
        anl : in std_logic);
    
end ice_alu;

architecture behaviour of ice_alu is

begin
    with opc select 
    y <= (a and b) when "0000",
         (a or b) when "0001",
         (a nand b) when "0010",
         (a nor b) when "0011",
         (a xor b) when "0100",
         (a xnor b) when "0101",
         (not a) when others;
 
end behaviour;
