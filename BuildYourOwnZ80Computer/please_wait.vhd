----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:29:50 05/05/2011 
-- Design Name: 
-- Module Name:    please_wait - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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

entity please_wait is
    Port ( CLK_n : in  STD_LOGIC;
				pause : in  STD_LOGIC;
           WAIT_n : in  STD_LOGIC;
           CLK_WAIT_n : out  STD_LOGIC);
end please_wait;

architecture Behavioral of please_wait is
begin
CLK_WAIT_n<=CLK_n or not(WAIT_n) or pause;
end Behavioral;

