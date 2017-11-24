-- jepalza, sustituidos esquemas por IPCORE

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY VRAM_Amstrad IS
	 port ( vga_A    : in    std_logic_vector (13 downto 0); 
			  vga_CLK  : in    std_logic; 
			  vram_A   : in    std_logic_vector (13 downto 0); 
			  vram_CLK : in    std_logic; 
			  vram_D   : in    std_logic_vector (7 downto 0);  
			  vram_W   : in    std_logic; 
			  vga_D    : out   std_logic_vector (7 downto 0)
			  );
END VRAM_Amstrad;


ARCHITECTURE Behavioral OF VRAM_Amstrad IS
BEGIN

u0: entity work.xilinx_syncram_dp
  port map (
    clka  => vram_CLK,
	 addra => vram_A,
	 dina  => vram_D,
	 douta => open,
	 wea(0)=> vram_W,
	 
    clkb  => vga_CLK,
	 addrb => vga_A,
    dinb  => "00000000",
	 doutb => vga_D,
	 web(0)=> '0'
	 );

END Behavioral;
