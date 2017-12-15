-- jepalza, sustituidos esquemas por IPCORE

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY PALETTE_RAM IS
	 port ( AI    : in    std_logic_vector (12 downto 0); 
			  CLKI  : in    std_logic; 
			  AO    : in    std_logic_vector (12 downto 0); 
			  CLKO  : in    std_logic; 
			  DI    : in    std_logic_vector (7 downto 0); 
			  WR    : in    std_logic; 
			  DO    : out   std_logic_vector (7 downto 0)
			  );
END PALETTE_RAM;


ARCHITECTURE Behavioral OF PALETTE_RAM IS
BEGIN

u1: entity work.palette_ram2
  port map (
    clka  => CLKO,
	 addra => AO,
	 dina  => "00000000",
	 douta => DO,
	 wea(0)=> '0',
	 
    clkb  => not CLKI,
	 addrb => AI,
    dinb  => DI,
    doutb => open,
	 web(0)=> WR
	 );

END Behavioral;
