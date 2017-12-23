----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:42:39 12/23/2017 
-- Design Name: 
-- Module Name:    divideby3_bastard - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity divideby3_bastard is
    Port ( CLK50MHz : in  STD_LOGIC;
           CLK25MHz : out  STD_LOGIC;
           CLK16MHz : out  STD_LOGIC
--           CLK8MHz : out  STD_LOGIC;
--           CLK4MHz : out  STD_LOGIC
			  );
end divideby3_bastard;

architecture Behavioral of divideby3_bastard is

begin
	process(CLK50MHz) is
	--variable CLK25MHz_mem:std_logic:='0';
	variable counter3 : integer range 0 to 2:=0;
	variable counter2_1 : std_logic:='0';
	variable counter2_2 : std_logic:='0';
	begin
		if rising_edge(CLK50MHz) then
			--CLK25MHz_mem:=not(CLK25MHz_mem);
			--CLK25MHz<=CLK25MHz_mem;
			counter3:=counter3+1;
			if counter3=0 then
				CLK16MHz<='1';
				counter2_1:=not(counter2_1);
			else
				CLK16MHz<='0';
			end if;
--			if counter2_1='0' then
--				CLK8MHz<='1';
--				counter2_2:=not(counter2_2);
--			else
--				CLK8MHz<='0';
--			end if;
--			if counter2_2='0' then
--				CLK4MHz<='1';
--			else
--				CLK4MHz<='0';
--			end if;
		end if;
	end process;
	
	process(CLK50MHz) is
	variable CLK25MHz_mem:std_logic:='0';
	begin
		if falling_edge(CLK50MHz) then
			CLK25MHz_mem:=not(CLK25MHz_mem);
			CLK25MHz<=CLK25MHz_mem;
		end if;
	end process;
end Behavioral;

