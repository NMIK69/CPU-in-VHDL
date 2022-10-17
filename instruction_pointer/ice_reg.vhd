----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.12.2021 09:57:16
-- Design Name: 
-- Module Name: ice_reg - behaviour
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

entity ice_reg is
generic (width : positive := 16);
port (clk, reset, en : in std_logic;
      D : in std_logic_vector(width - 1 downto 0);
      Q : out std_logic_vector(width -1 downto 0));
end ice_reg;

architecture behaviour of ice_reg is

begin

process(clk, reset) begin
    
    if(reset = '1') then
        Q <= (others => '0');
    
    elsif(clk'event and clk = '1') then
        if(en = '1') then
            Q <= D;
            
        end if;
        
    end if;
    
end process;

end behaviour;
