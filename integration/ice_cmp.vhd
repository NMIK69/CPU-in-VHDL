----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.01.2022 10:54:31
-- Design Name: 
-- Module Name: ice_cmp - behaviour
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

entity ice_cmp is
    generic(width : positive := 16);
    port(a, b : in std_logic_vector(width - 1 downto 0);
         opc : in std_logic_vector(3 downto 0);
         z, nz : out std_logic;
         y : out std_logic_vector(width - 1 downto 0));
end ice_cmp;

architecture behaviour of ice_cmp is

signal lt, eq, gt : std_logic;

begin

lt <= '1' when (to_integer(signed(a)) < to_integer(signed(b))) else '0';
eq <= '1' when (to_integer(signed(a)) = to_integer(signed(b))) else '0';
gt <= '1' when (to_integer(signed(a)) > to_integer(signed(b))) else '0';

nz <= '0' when (to_integer(signed(a)) = 0) else '1';
z <= '1' when (to_integer(signed(a)) = 0) else '0';


y((width - 1) downto 1) <= (others => '0');
y(0) <= (lt and not eq and not gt) when opc = "0000" else 
        ( (lt or eq) and not gt) when opc = "0001" else
        ( not lt and  not eq and gt) when opc = "0010" else
        ( not lt and (eq or gt) ) when opc = "0011" else
        ( not lt and eq and not gt) when opc = "0100" else
        ( ( (lt and not gt) or ( not lt and gt) ) and not eq);

end behaviour;
