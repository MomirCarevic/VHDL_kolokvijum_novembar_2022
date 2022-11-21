----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/21/2022 05:47:45 PM
-- Design Name: 
-- Module Name: zad1 - Behavioral
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

entity zad1 is
  Port (Cin: in std_logic;
        A: in std_logic;
        OP: in std_logic_vector(3 downto 0);
        x: in std_logic;
        y: in std_logic;
        z: in std_logic;
        S: out std_logic;
        Zero: out std_logic;
        Cout: out std_logic );
end zad1;

architecture Behavioral of zad1 is
    signal xor1out, xor2out,xor3out,and1out,and2out,or1out,nor1out,muxout: std_logic;
    signal encoderout: std_logic_vector(1 downto 0);
begin
    S <= xor3out;
    Cout <= or1out;
    encoder: entity work.coder4to2(Behavioral)
        port map( in1=>OP,
                  out1=>encoderout);
    mux: entity work.mux4to1(Behavioral)
        port map( x1=>x,
                  x2=>y,
                  x3=>z,
                  x4=>xor1out,
                  sel=>encoderout,
                  out1=>muxout);              
    xor1: entity work.xor_gate(Behavioral)
        port map( in1 => z,
                  in2 => '1',
                  out1 => xor1out);
    xor2: entity work.xor_gate(Behavioral)
        port map( in1 => A,
                  in2 => muxout,
                  out1 => xor2out);
    xor3: entity work.xor_gate(Behavioral)
        port map( in1 => xor2out,
                  in2 => Cin,
                  out1 => xor3out);
    and1: entity work.and_gate(Behavioral)
        port map( in1 => xor2out,
                  in2 => Cin,
                  out1 => and1out);
    and2: entity work.and_gate(Behavioral)
        port map( in1 => A,
                  in2 => muxout,
                  out1 => and2out);
    or1: entity work.or_gate(Behavioral)
        port map( in1 => and1out,
                  in2 => and2out,
                  out1 => or1out);
    nor1: entity work.nor_gate(Behavioral)
        port map( x1 => xor3out,
                  x2 => or1out,
                  out1 => Zero);              

end Behavioral;
