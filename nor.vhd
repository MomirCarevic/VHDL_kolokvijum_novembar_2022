----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/21/2022 05:23:39 PM
-- Design Name: 
-- Module Name: nor - Behavioral
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

entity nor_gate is
    Port ( x1 : in STD_LOGIC;
           x2 : in STD_LOGIC;
           out1 : out STD_LOGIC);
end nor_gate;

architecture Behavioral of nor_gate is

begin
    out1 <= x1 nor x2;

end Behavioral;
