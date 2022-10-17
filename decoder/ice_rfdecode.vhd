----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.11.2021 09:57:48
-- Design Name: 
-- Module Name: ice_rfdecode - Behavioral
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

entity ice_rfdecode is

port(addr : in std_logic_vector(3 downto 0);
    en : in std_logic;
    sel : out std_logic_vector(15 downto 0));
    
end ice_rfdecode;

architecture behaviour of ice_rfdecode is
begin

    process(addr, en) begin
        sel <= "0000000000000000";
        
        if(en = '1') then
            case addr is 
                when "0000" => sel(0) <= '1';
                when "0001" => sel(1) <= '1';
                when "0010" => sel(2) <= '1';
                when "0011" => sel(3) <= '1';
                when "0100" => sel(4) <= '1';
                when "0101" => sel(5) <= '1';
                when "0110" => sel(6) <= '1';
                when "0111" => sel(7) <= '1';
                when "1000" => sel(8) <= '1';
                when "1001" => sel(9) <= '1';
                when "1010" => sel(10) <= '1';
                when "1011" => sel(11) <= '1';
                when "1100" => sel(12) <= '1';
                when "1101" => sel(13) <= '1';
                when "1110" => sel(14) <= '1';
                when others => sel(15) <= '1';
            end case;
        end if;
    end process;
            
end behaviour;
