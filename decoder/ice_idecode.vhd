----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.11.2021 10:36:00
-- Design Name: 
-- Module Name: ice_idecode - behaviour
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

entity ice_idecode is

port(imm : in std_logic;
     grp : in std_logic_vector(2 downto 0);
     opc : in std_logic_vector(3 downto 0);
     pc_inc : out std_logic;
     pc_load : out std_logic);
     
end ice_idecode;

architecture behaviour of ice_idecode is

begin
-- for jump imm = 1, opc = 1, grp = 0, pc_inc = 1, pc_load = 1
-- in der aufgabe steht ja, "Implementieren Sie eine Architektur behaviour des Befehlsdekoders ice_idecode, der die Steuersignale f�r den Befehlsdekoder in Abh�ngigkeit von Operationscode und Gruppen code generiert."
-- es ist aber nicht angegeben welcher Operationscode fuer den Unbedingten JUMP genutzt wird. In der Uebung am Montag haben sie den OPC "0001" genutzt.

    process(opc, grp) begin
    
        pc_inc <= '1';
        pc_load <= '0';
        
        case grp is 
            when "000" =>
            
                case opc is
                    when "0001" =>
                        pc_inc <= '1';
                        pc_load <= '1';
                        
                    when others => null;
                 
                end case;
                
            when others => null;
            
        end case;
        
    end process; 
            

end behaviour;
