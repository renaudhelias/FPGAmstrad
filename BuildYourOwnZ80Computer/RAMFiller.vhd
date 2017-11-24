library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- diff�rence entre starter kit Spartan3 et Nexys 2 :
-- le sk Spartan3 a une RAM de 1Mbyte, alors que sur le Nexys 2 c'est 16Mbyte
-- il n'est pas trop conseill� de jouer avec UB/LB sur le Nexys si on veut utiliser et la ROM et la RAM
-- sur le sk Spartan3 par contre c'est plut�t vitale
-- sur le Spartan3 la RAM asynch n'a pas de timeout CE
-- sur le Nexys la RAM asynch a un timeout CE que ce soit en lecture ou �criture
-- je conseil donc pour RAMFiller de mettre de nouveau jumper pour la version sup�rieure :
-- - RESET_COUNTER
-- - DO_FILL
-- - DO_READ      /!\ ne pas utiliser en mode RAM_NEXYS2
-- - DO_DISPLAY   /!\ ne pas utiliser en mode RAM_NEXYS2
-- - USE_UB_LB_AS_A17
-- - A17 --DSK
--
-- pour le moment RAMFiller est utilis� pour la ROM_NEXYS2 avec un patch pour d�sactiver l'alernance UB/LB puis �crire plus lentement en ROM
entity RAMFiller is
    Port ( pic_A : in  STD_LOGIC_VECTOR (18 downto 0);
           --pic_D : in  STD_LOGIC_VECTOR (7 downto 0);
           --pic_W : in  STD_LOGIC;
           DO_FILL : in  STD_LOGIC;
			  DO_READ : in  STD_LOGIC;
           pixel_A : in  STD_LOGIC_VECTOR (13 downto 0);
			  ram_A : out  STD_LOGIC_VECTOR (23 downto 0)
			  --ram_D : out  STD_LOGIC_VECTOR (7 downto 0);
			  --ram_W : out  STD_LOGIC
			  );
end RAMFiller;

architecture Behavioral of RAMFiller is

begin
--		ram_A(13 downto 0)<=pixel_A;
--		ram_A(23 downto 14)<=(others=>'0');

		ram_A(13 downto 0)<=pic_A(13 downto 0) when (DO_FILL='1' or DO_READ='1') else pixel_A;
		ram_A(18 downto 14)<=pic_A(18 downto 14) when (DO_FILL='1' or DO_READ='1') else (others=>'0');
		ram_A(23 downto 19)<=(others=>'0');
end Behavioral;

