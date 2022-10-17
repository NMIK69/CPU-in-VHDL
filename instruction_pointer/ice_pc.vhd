----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.12.2021 10:22:30
-- Design Name: 
-- Module Name: ice_pc - behaviour
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

entity ice_pc is
port (clk, reset, load, inc : in std_logic;
      imm : in std_logic_vector(11 downto 0);
      pc : out std_logic_vector(11 downto 0));
      
end ice_pc;


architecture behaviour of ice_pc is

signal temp_pc : std_logic_vector(11 downto 0) := (others => '0');

begin

process(clk, reset) begin
    
    if(reset = '1') then
        temp_pc <= (others => '0');
    
    elsif(clk'event and clk = '1') then
        
        if(inc = '1') then
            
            if(load = '1') then
                temp_pc <= imm;
            
            else
                temp_pc <= std_logic_vector(unsigned(temp_pc) + 1);
                
            end if;
            
        end if;
        
    end if;
    
end process;

pc <= temp_pc;
                

end behaviour;
