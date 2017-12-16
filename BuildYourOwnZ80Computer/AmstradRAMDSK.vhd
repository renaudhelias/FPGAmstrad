----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:14:01 01/26/2011 
-- Design Name: 
-- Module Name:    AmstradRAMDSK - Behavioral 
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

entity AmstradRAMDSK is
    Port ( A : in  STD_LOGIC_VECTOR (17 downto 0);
           dsk_A : in  STD_LOGIC_VECTOR (19 downto 0);
			  init_A : in  STD_LOGIC_VECTOR (20 downto 0);
			  crtc_A : in  STD_LOGIC_VECTOR (15 downto 0);
           transmit : in  STD_LOGIC;
			  crtc_transmit : in  STD_LOGIC;
			  init_done : in  STD_LOGIC;
           ram_A : out  STD_LOGIC_VECTOR (20 downto 0)
			  );
end AmstradRAMDSK;

architecture Behavioral of AmstradRAMDSK is

begin

ram_A(13 downto 0)<= init_A(13 downto 0) when init_done='0' else dsk_A(13 downto 0) when transmit='1' else crtc_A(13 downto 0) when crtc_transmit='1' else A(13 downto 0); -- address is solving
ram_A(17 downto 14)<= init_A(17 downto 14) when init_done='0' else dsk_A(17 downto 14) when transmit='1' else "10" & crtc_A(15 downto 14) when crtc_transmit='1' else A(17 downto 14); -- address is solving
ram_A(19 downto 18)<= init_A(19 downto 18) when init_done='0' else dsk_A(19 downto 18) when transmit='1' else (others=>'0'); -- address is solving
ram_A(20)<=init_A(20) when init_done='0' else '1' when transmit='1' else '0';

end Behavioral;

