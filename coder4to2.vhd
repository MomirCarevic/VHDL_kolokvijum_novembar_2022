----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/21/2022 05:23:39 PM
-- Design Name: 
-- Module Name: coder4to2 - Behavioral
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

entity coder4to2 is
    Port ( in1: in std_logic_vector(3 downto 0);
           out1 : out std_logic_vector(1 downto 0));
end coder4to2;

architecture Behavioral of coder4to2 is

begin
    encoder: process(in1)
    begin
        if(in1 = "0001") then
            out1 <= "00";
        elsif(in1 = "0010") then
            out1 <= "01";
        elsif(in1 = "0100") then
            out1 <= "10";
        elsif(in1 = "1000") then
            out1 <= "11";
        end if;
    end process;
end Behavioral;
