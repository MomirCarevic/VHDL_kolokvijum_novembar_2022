----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/21/2022 05:23:39 PM
-- Design Name: 
-- Module Name: mux4to1 - Behavioral
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

entity mux4to1 is
    Port ( x1 : in STD_LOGIC;
           x2 : in STD_LOGIC;
           x3 : in STD_LOGIC;
           x4 : in STD_LOGIC;
           sel : in std_logic_vector(1 downto 0);
           out1 : out STD_LOGIC);
end mux4to1;

architecture Behavioral of mux4to1 is

begin
    mux4to1: process(x1,x2,x3,x4,sel)
    begin  
        if(sel = "00") then
            out1 <= x1;
        elsif(sel = "01") then
            out1 <= x2;
        elsif(sel = "10") then
            out1 <= x3;
        elsif(sel = "11") then
            out1 <= x4;    
        end if;
    end process;
end Behavioral;
