--    {@{@{@{@{@{@
--  {@{@{@{@{@{@{@{@  This code is covered by CoreAmstrad synthesis r004
--  {@    {@{@    {@  A core of Amstrad CPC 6128 running on MiST-board platform
--  {@{@{@{@{@{@{@{@
--  {@  {@{@{@{@  {@  CoreAmstrad is implementation of FPGAmstrad on MiST-board
--  {@{@        {@{@   Contact : renaudhelias@gmail.com
--  {@{@{@{@{@{@{@{@   @see http://code.google.com/p/mist-board/
--    {@{@{@{@{@{@     @see FPGAmstrad at CPCWiki
--
--
--------------------------------------------------------------------------------
-- FPGAmstrad_bootloader_sd.SDRAM_FAT32_LOADER
-- Fill RAM with content, at boot.
-- FAT32 protocol
-- see SDRAM_SPIMASTER.vhd
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Address wire between fat32_loader and spi_master is done in bytes, so we are limited to 4GB
-- There is no data buffer on fat32_loader, the buffer does exist on spi_master
entity SDRAM_FAT32_LOADER is
	Generic (
		-- SPI seems speak only with 512 byte blocks
		-- Windows do not format in 512 block
		ROM_COUNT:integer:=4; -- attention ya du code en dur : "if files_loaded="11111" then"
		DSK_OFF:std_logic:='0'; -- si 1 alors ne cherche pas de disquette, si 0 alors cherche une disquette
		SPI_ADDRESS_FAT32:integer:=23; -- 32 if FAT32 normaly
		BLOCK_SIZE_MAXIMUM:integer:=65536; --4096; -- bytes
		BLOCK_SQRT:integer:=9; -- 2^BLOCK_SQRT=BLOCK_SIZE_MAXIMUM (=512 :P)
		MAX_DSK_NUMBER_SQRT:integer:=8; -- ZXUNO_DSK_SELECT
		SDRAM_ASYNC_DELTA:integer:=0; -- 0 or more : go more and more slower with SDRAM_ASYNC access delays. More a problem of AUTO-REFRESH I think...
		CARAC_END_OF_NAME:std_logic_vector(7 downto 0):=x"01"
		--FAT32_SECTOR0_OFFSET:STD_LOGIC_VECTOR (SPI_ADDRESS_FAT32-1 downto 0):=x"00400C00" -- in byte
		--FAT32_SECTOR0_OFFSET:STD_LOGIC_VECTOR (SPI_ADDRESS_FAT32-1 downto 0):=x"00400000" -- in byte
		-- CLK : @4MHz
	);
    Port ( CLK4MHz:in STD_LOGIC;
           file_select:in std_logic_vector(MAX_DSK_NUMBER_SQRT-1 downto 0);
           ram_A : out  STD_LOGIC_VECTOR (20 downto 0):=(others=>'0');
           ram_D : inout  STD_LOGIC_VECTOR (7 downto 0):=(others=>'Z'); -- for sim
           ram_W : out  STD_LOGIC:='0';
           spi_A : out  STD_LOGIC_VECTOR (SPI_ADDRESS_FAT32-1 downto 0);
			  spi_A_block : out  STD_LOGIC_VECTOR (8 downto 0);
           spi_Din : in  STD_LOGIC_VECTOR (7 downto 0);
           spi_Rdo : out  STD_LOGIC;
           spi_Rdone : in  STD_LOGIC;
			  spi_init_done : in STD_LOGIC;
			  --leds:out STD_LOGIC_VECTOR(7 downto 0);
			  load_init_done:out std_logic;
			  key_reset:in std_logic
			  --ZDSK_doSelect : in  STD_LOGIC; -- no Wait_n needed by here
           --ZDSK_CARAC : out  STD_LOGIC_VECTOR (7 downto 0);
           --ZDSK_doCarac : out  STD_LOGIC;
           --ZDSK_doneCarac : in  STD_LOGIC;
			  --ZDSK_doInsert : in  STD_LOGIC
			  );
			  	attribute keep : string;
				attribute keep of file_select : signal is "TRUE";

			  
end SDRAM_FAT32_LOADER;

architecture Behavioral of SDRAM_FAT32_LOADER is

	--constant PREFIX:std_logic_vector(8 downto 0):="0" & x"00";

	constant ATTR_ARCHIVE:std_logic_vector(7 downto 0):=x"20";
	constant file_dsk_extention:std_logic_vector((4)*8-1 downto 0):=x"44534B" & ATTR_ARCHIVE; -- DSK & ATTR_ARCHIVE
	constant file_dsk_address:std_logic_vector((4)*8-1 downto 0):=x"00040000";
	subtype name_type is std_logic_vector(11*8-1 downto 0);
	type file_rom_name_type is array(ROM_COUNT-1 downto 0) of name_type;
	constant file_rom_name: file_rom_name_type:=
--		(x"4F53343634202020524F4D", -- OS464.ROM
--		x"4241534943312D30524F4D", -- BASIC1-0.ROM
--		x"414D53444F532020524F4D"); -- AMSDOS.ROM
		(x"4F53363132382020524F4D", -- OS6128.ROM
		 x"4241534943312D31524F4D", -- BASIC1-1.ROM
		x"414D53444F532020524F4D", -- AMSDOS.ROM
		--x"4D4158414D202020524F4D", -- MAXAM.ROM
		x"53435245454E2020524F4D"  --SCREEN.ROM
		); 
	subtype address_type is std_logic_vector(31 downto 0);
	type file_rom_address_type is array(ROM_COUNT-1 downto 0) of address_type;
	constant file_rom_address: file_rom_address_type:=
		(x"00000000",
		x"00004000",
		x"00008000",
		--x"0000C000",
		 x"00" & "00000010" & "11000000" & x"00" -- &C000
		);
	
	
	
	-- following English Wiki : file allocation table
	constant BPB_RsvdSecCnt_addr:STD_LOGIC_VECTOR(SPI_ADDRESS_FAT32+9-1 downto 0):=x"0000000e";
	constant BPB_NumFATs_addr:STD_LOGIC_VECTOR(SPI_ADDRESS_FAT32+9-1 downto 0):=x"00000010";
	constant BPB_FATSz32_addr:STD_LOGIC_VECTOR(SPI_ADDRESS_FAT32+9-1 downto 0):=x"00000024";
	constant BPB_SecPerClus_addr:STD_LOGIC_VECTOR(SPI_ADDRESS_FAT32+9-1 downto 0):=x"0000000d";
	constant BPB_RootClus_addr:STD_LOGIC_VECTOR(SPI_ADDRESS_FAT32+9-1 downto 0):=x"0000002c"; 
	constant BPB_TotSec32_addr:STD_LOGIC_VECTOR(SPI_ADDRESS_FAT32+9-1 downto 0):=x"00000020";
	constant BPB_BytsPerSec_addr:STD_LOGIC_VECTOR(SPI_ADDRESS_FAT32+9-1 downto 0):=x"0000000B";
	
	signal data_reader1:STD_LOGIC_VECTOR(7 downto 0);
	signal data_reader2:STD_LOGIC_VECTOR(15 downto 0);
	signal data_reader4:STD_LOGIC_VECTOR(31 downto 0);
	
	signal data_Rdo:boolean:=false;
	signal data_addr:STD_LOGIC_VECTOR(SPI_ADDRESS_FAT32+9-1 downto 0); -- data is used in order to load BR values
	signal data_length:integer range 1 to 4:=1;
	signal data_RWdone:boolean:=true;
	signal data_spi_A:STD_LOGIC_VECTOR(SPI_ADDRESS_FAT32+9-1 downto 0);
	signal data_spi_Rdo:std_logic:='0';
	
	signal compare_to12:STD_LOGIC_VECTOR(8*12-1 downto 0);
	
	signal compare_length : integer range 3 to 12:=3;
	signal compare_result :boolean;
	signal compare_address:STD_LOGIC_VECTOR(SPI_ADDRESS_FAT32+9-1 downto 0);
	signal compare_do :boolean:=false;
	signal compare_done :boolean:=true;
	signal compare_spi_A:STD_LOGIC_VECTOR(SPI_ADDRESS_FAT32+9-1 downto 0);
	signal compare_spi_Rdo:std_logic:='0';

	signal transmit_address_from:STD_LOGIC_VECTOR(SPI_ADDRESS_FAT32+9-1 downto 0);
	signal transmit_address_to:STD_LOGIC_VECTOR(SPI_ADDRESS_FAT32+9-1 downto 0);
	signal transmit_length:integer range 0 to BLOCK_SIZE_MAXIMUM;
	signal transmit_do:boolean:=false;
	signal transmit_done:boolean:=true;
	signal transmit_spi_A:STD_LOGIC_VECTOR(SPI_ADDRESS_FAT32+9-1 downto 0);
	signal transmit_spi_Rdo:std_logic:='0';
	
	constant SWITCH_NONE:integer:=0;
	constant SWITCH_TRANSMIT:integer:=1;
	constant SWITCH_COMPARE:integer:=2;
	constant SWITCH_BR:integer:=3;
	
	signal switch_br_compare_transmit_dump_mecashark:integer range 0 to 3:=SWITCH_NONE;
	
	constant SWITCH_GRIPSOU:integer:=2;
	signal switch_transmit_gripsou:integer range 0 to 2:=SWITCH_NONE;

	signal transmit_ram_A:std_logic_vector(ram_A'range):=(others=>'0');
	signal transmit_ram_D:std_logic_vector(ram_D'range):=(others=>'Z');
	signal transmit_ram_W:std_logic:='0';
	signal gripsou_ram_A:std_logic_vector(ram_A'range):=(others=>'0');
	signal gripsou_ram_D:std_logic_vector(ram_D'range):=(others=>'Z');
	signal gripsou_ram_W:std_logic:='0';
	--signal gripsou_address:std_logic_vector(ram_A'range):=(others=>'0');
	signal gripsou_data:std_logic_vector(ram_D'range):=(others=>'Z');
	signal gripsou_write:std_logic:='0';
	

begin

	ram_A<= gripsou_ram_A when switch_transmit_gripsou=SWITCH_GRIPSOU else transmit_ram_A when switch_transmit_gripsou=SWITCH_TRANSMIT else (others=>'0');
	ram_D<= gripsou_ram_D when switch_transmit_gripsou=SWITCH_GRIPSOU else transmit_ram_D when switch_transmit_gripsou=SWITCH_TRANSMIT else (others=>'Z');
	ram_W<= gripsou_ram_W when switch_transmit_gripsou=SWITCH_GRIPSOU else transmit_ram_W when switch_transmit_gripsou=SWITCH_TRANSMIT else '0';
	
	spi_A(SPI_ADDRESS_FAT32-1 downto 0)<=data_spi_A(SPI_ADDRESS_FAT32+9-1 downto 9) when switch_br_compare_transmit_dump_mecashark=SWITCH_BR
		else compare_spi_A(SPI_ADDRESS_FAT32+9-1 downto 9) when switch_br_compare_transmit_dump_mecashark=SWITCH_COMPARE
		else transmit_spi_A(SPI_ADDRESS_FAT32+9-1 downto 9) when switch_br_compare_transmit_dump_mecashark=SWITCH_TRANSMIT
		else (others=>'0');
	spi_A_block(8 downto 0)<=data_spi_A(8 downto 0) when switch_br_compare_transmit_dump_mecashark=SWITCH_BR
		else compare_spi_A(8 downto 0) when switch_br_compare_transmit_dump_mecashark=SWITCH_COMPARE
		else transmit_spi_A(8 downto 0) when switch_br_compare_transmit_dump_mecashark=SWITCH_TRANSMIT
		else (others=>'0');

	spi_Rdo<=data_spi_Rdo when switch_br_compare_transmit_dump_mecashark=SWITCH_BR
		else compare_spi_Rdo when switch_br_compare_transmit_dump_mecashark=SWITCH_COMPARE
		else transmit_spi_Rdo when switch_br_compare_transmit_dump_mecashark=SWITCH_TRANSMIT
		else '0';

	-- Permit to load BR values, and also some others variables
	spi_to_loader: process(CLK4MHz) is
		variable data_step:integer range 0 to 6:=0;
		variable data_cursor:integer range 0 to 3:=0;
		variable data_reader1_mem:std_logic_vector(7 downto 0):=(others=>'0');
		variable data_reader2_mem:std_logic_vector(15 downto 0):=(others=>'0');
		variable data_reader4_mem:std_logic_vector(31 downto 0):=(others=>'0');

	begin
		if rising_edge(CLK4MHz) then
			data_reader1<=data_reader1_mem;
			data_reader2<=data_reader2_mem;
			data_reader4<=data_reader4_mem;
			
			if data_Rdo then
				data_RWdone<=false;
				data_step:=0;
				if not (data_RWdone) then
					data_step:=6; -- over run
				end if;
			end if;
			
			data_spi_Rdo<='0';
			--leds<='1' & conv_std_logic_vector(data_step,7);
			if not data_RWdone then
				if not(data_spi_Rdo='1') and spi_Rdone='1' then
					case data_step is
						when 0=>
							data_cursor:=0;
							data_spi_A<=data_addr +data_cursor;
							data_step:=1;
							data_spi_Rdo<='1';
						when 1=>
							case data_length is
								when 1 => -- 1 byte
									data_reader1_mem(7 downto 0):=spi_Din(7 downto 0);
									data_step:=5;
								when 2 => -- 2 byte
									data_reader2_mem(15 downto 8):=spi_Din(7 downto 0);
									data_cursor:=1;
									data_spi_A<=data_addr +data_cursor;
									data_step:=2;
									data_spi_Rdo<='1';
								when 4 => -- 4 byte
									data_reader4_mem(31 downto 24):=spi_Din(7 downto 0);
									data_cursor:=1;
									data_spi_A<=data_addr +data_cursor;
									data_step:=2;
									data_spi_Rdo<='1';
								when 03 =>
									NULL;
							end case;
						when 2 =>
							case data_length is
								when 2 => -- 2 byte
									data_reader2_mem(7 downto 0):=spi_Din(7 downto 0);
									data_step:=5;
								when 4 => -- 4 byte
									data_reader4_mem(23 downto 16):=spi_Din(7 downto 0);
									data_cursor:=2;
									data_spi_A<=data_addr +data_cursor;
									data_step:=3;
									data_spi_Rdo<='1';
								when 1 => NULL;
								when 3 => NULL;
							end case;
						when 3 =>
							case data_length is
								when 4 => -- 4 byte
									data_reader4_mem(15 downto 8):=spi_Din(7 downto 0);
									data_cursor:=3;
									data_spi_A<=data_addr +data_cursor;
									data_step:=4;
									data_spi_Rdo<='1';
								when 1 => NULL;
								when 2 => NULL;
								when 3 => NULL;
							end case;
						when 4 =>
							case data_length is
								when 4 => -- 4 byte
									data_reader4_mem(7 downto 0):=spi_Din(7 downto 0);
									data_step:=5;
								when 1 => NULL;
								when 2 => NULL;
								when 3 => NULL;
							end case;
						when 5 => -- variable transfert completed
							data_RWdone<=true;
							-- STOP HERE that's all folks !
						when 6=>NULL; -- over run
					end case;
				end if;
			end if;
		end if;
	end process;

	-- compare 8bytes ou 3 bytes
	comparator:process(CLK4MHz) is
		variable compare_step:integer range 0 to 3:=0;
		variable cursor:integer range 0 to 12:=0;

	begin
		if rising_edge(CLK4MHz) then
			compare_spi_Rdo<='0';
			if compare_do then
				compare_done<=false;
				if not compare_done then
					compare_step:=2;-- overrun
				else
					compare_step:=0;
				end if;
			end if;
			if not compare_done then
				compare_spi_A<=compare_address+cursor;
				if not(compare_spi_Rdo='1') and spi_Rdone='1' then
					case compare_step is
						when 0=>
							cursor:=0;
							compare_spi_Rdo<='1';
							compare_spi_A<=compare_address+cursor;
							compare_step:=1;
						when 1=>
							if compare_to12((12-cursor)*8-1 downto (12-cursor-1)*8) /= spi_Din then
								compare_result<=false;
								compare_done<=true;
								compare_step:=3;
							else
								cursor:=cursor+1;
								if cursor=compare_length then
									compare_result<=true;
									compare_done<=true;
									compare_step:=3;
								else
									compare_spi_Rdo<='1';
									compare_spi_A<=compare_address+cursor;
								end if;
							end if;
						when 2=>NULL; -- over run
						when 3=>NULL; -- that's all folks
					end case;
				end if;
			end if;
		end if;
	end process;
	
	-- Filling RAM
	transmiter:process(CLK4MHz) is
		variable cursor:integer range 0 to BLOCK_SIZE_MAXIMUM;
		variable transmit_step:integer range 0 to 5;
		variable data_mem:std_logic_vector(7 downto 0);
		--variable address_mem:std_logic_vector(ram_A'range);
		variable transmit_sdram_wait: integer range 0 to SDRAM_ASYNC_DELTA;
	begin
		if rising_edge(CLK4MHz) then
			if transmit_do then
				transmit_done<=false;
				cursor:=0;
				if not transmit_done then
					transmit_step:=4;--overrun
				else
					transmit_step:=0;
				end if;
			end if;
			transmit_spi_Rdo<='0';
			transmit_ram_W<='0';gripsou_write<='0';
			if not transmit_done then
				-- read byte
				-- write byte
				transmit_spi_A<=transmit_address_from+cursor;
				transmit_ram_A<=transmit_address_to(ram_A'range)+cursor;
				case transmit_step is
					when 0=>
						if not(transmit_spi_Rdo='1') and spi_Rdone='1' then
							transmit_spi_Rdo<='1';
							transmit_step:=1;
						end if;
					when 1=>
						if not(transmit_spi_Rdo='1') and spi_Rdone='1' then
							data_mem:=spi_Din;
							transmit_ram_D<=data_mem;gripsou_data<=data_mem;
							--address_mem:=transmit_address_to(ram_A'range)+cursor;
							--gripsou_address<=address_mem;
							transmit_ram_W<='1';gripsou_write<='1';
							transmit_sdram_wait:=0;
							if transmit_sdram_wait = SDRAM_ASYNC_DELTA then
								transmit_step:=2;
							else
								transmit_sdram_wait:=transmit_sdram_wait+1;
								transmit_step:=5;
							end if;
						end if;
					when 5=>
						transmit_ram_W<='1';
						if transmit_sdram_wait = SDRAM_ASYNC_DELTA then
							transmit_step:=2;
						else
							transmit_sdram_wait:=transmit_sdram_wait+1;
						end if;
					when 2=>
						transmit_ram_W<='0';gripsou_write<='0';
						transmit_step:=0;
						cursor:=cursor+1;
						if cursor>=transmit_length then
							transmit_ram_D<=(others=>'Z');gripsou_data<=(others=>'Z');
							transmit_done<=true;
							transmit_step:=3;
						end if;
					when 3=>NULL; -- that's all folks
					when 4=>NULL; -- over run
				end case;
			end if;
		end if;
	end process;
	

	--tortue_geniale : the main process, using FAT32 protocol
	tortue_geniale:process (CLK4MHz) is
	   variable FAT32_SECTOR0_OFFSET:STD_LOGIC_VECTOR (SPI_ADDRESS_FAT32+9-1 downto 0):=x"00400000"; -- in byte
		variable BPB_FATSz32:STD_LOGIC_VECTOR(31 downto 0);
		variable BPB_TotSec32:STD_LOGIC_VECTOR(31 downto 0);
		variable BPB_BytsPerSec:STD_LOGIC_VECTOR(15 downto 0);
		variable BPB_SecPerClus:STD_LOGIC_VECTOR(7 downto 0);
		variable BPB_RootClus:STD_LOGIC_VECTOR(31 downto 0);
		variable BPB_RsvdSecCnt:STD_LOGIC_VECTOR(15 downto 0);
		variable BPB_NumFATs:STD_LOGIC_VECTOR(7 downto 0);
	
		variable FATSz:integer;
		variable TotSec:integer;
		variable FirstDataSector:integer;
		variable FirstSectorofCluster:integer;
		variable FirstRootDirSecNum:integer;
		
-- The 1st parameter is just here to check variable size before synthesis
--procedure get_var1(var_name: in STD_LOGIC_VECTOR(7 downto 0);var_addr:STD_LOGIC_VECTOR(31 downto 0)) is
--begin
--	data_length<=1;
--	data_addr<=PREFIX & var_addr;
--	data_Rdo<=true;
--	switch_br_compare_transmit_dump_mecashark<=SWITCH_BR;
--end;
procedure get_var1b(var_name: in STD_LOGIC_VECTOR(7 downto 0);var_addr_b:STD_LOGIC_VECTOR(SPI_ADDRESS_FAT32+9-1 downto 0)) is
begin
	data_length<=1;
	data_addr<=var_addr_b;
	data_Rdo<=true;
	switch_br_compare_transmit_dump_mecashark<=SWITCH_BR;
end;
--procedure get_var2(var_name: in STD_LOGIC_VECTOR(15 downto 0);var_addr:STD_LOGIC_VECTOR(31 downto 0)) is
--begin
--	data_length<=2;
--	data_addr<=PREFIX & var_addr;
--	data_Rdo<=true;
--	switch_br_compare_transmit_dump_mecashark<=SWITCH_BR;
--end;
procedure get_var2b(var_name: in STD_LOGIC_VECTOR(15 downto 0);var_addr_b:STD_LOGIC_VECTOR(SPI_ADDRESS_FAT32+9-1 downto 0)) is
begin
	data_length<=2;
	data_addr<=var_addr_b;
	data_Rdo<=true;
	switch_br_compare_transmit_dump_mecashark<=SWITCH_BR;
end;
--procedure get_var4(var_name: in STD_LOGIC_VECTOR(31 downto 0);var_addr:STD_LOGIC_VECTOR(31 downto 0)) is
--begin
--	data_length<=4;
--	data_addr<=PREFIX & var_addr;
--	data_Rdo<=true;
--	switch_br_compare_transmit_dump_mecashark<=SWITCH_BR;
--end;
procedure get_var4b(var_name: in STD_LOGIC_VECTOR(31 downto 0);var_addr_b:STD_LOGIC_VECTOR(SPI_ADDRESS_FAT32+9-1 downto 0)) is
begin
	data_length<=4;
	data_addr<=var_addr_b;
	data_Rdo<=true;
	switch_br_compare_transmit_dump_mecashark<=SWITCH_BR;
end;


function fix_big_endian1(var_name: in STD_LOGIC_VECTOR(7 downto 0)) return STD_LOGIC_VECTOR is
begin
	return var_name;
end;
function fix_big_endian2(var_name: in STD_LOGIC_VECTOR(15 downto 0)) return STD_LOGIC_VECTOR is
	variable cache:STD_LOGIC_VECTOR(15 downto 0); -- protect a=f(a)
begin
	cache:=var_name(7 downto 0) & var_name(15 downto 8);
	return cache;
end;
function fix_big_endian4(var_name: in STD_LOGIC_VECTOR(31 downto 0)) return STD_LOGIC_VECTOR is
	variable cache:STD_LOGIC_VECTOR(31 downto 0); -- protect a=f(a)
begin
	cache:=var_name(7 downto 0) & var_name(15 downto 8) & var_name(23 downto 16) & var_name(31 downto 24);
	return cache;
end;

procedure compare12(name:std_logic_vector(8*12-1 downto 0);address:std_logic_vector(SPI_ADDRESS_FAT32+9-1 downto 0)) is
begin
	compare_address<=address;
	compare_to12<=name;
	compare_length<=12;
	compare_do<=true;
	switch_br_compare_transmit_dump_mecashark<=SWITCH_COMPARE;
end procedure;
procedure compare4(name:std_logic_vector(8*4-1 downto 0);address:std_logic_vector(SPI_ADDRESS_FAT32+9-1 downto 0)) is
begin
	compare_address<=address;
	compare_to12<=name & x"0000000000000000";
	compare_length<=4;
	compare_do<=true;
	switch_br_compare_transmit_dump_mecashark<=SWITCH_COMPARE;
end procedure;

procedure fillRAM(address_from:std_logic_vector(SPI_ADDRESS_FAT32+9-1 downto 0);address_to:std_logic_vector(SPI_ADDRESS_FAT32+9-1 downto 0);size:integer) is
begin
	transmit_address_from<=address_from;
	transmit_address_to<=address_to;
	transmit_length<=size;
	transmit_do<=true;
	switch_br_compare_transmit_dump_mecashark<=SWITCH_TRANSMIT;
end;

-- return : memory address targeting sector start
subtype address_type is std_logic_vector(SPI_ADDRESS_FAT32+9-1 downto 0);
impure function getSector(cluster:std_logic_vector(31 downto 0)) return address_type is
	--variable cluster41:std_logic_vector(SPI_ADDRESS_FAT32+9-1 downto 0):=(others=>'0');
	--variable deux41:std_logic_vector(SPI_ADDRESS_FAT32+9-1 downto 0):=(others=>'0');
	--variable BPB_SecPerClus41:std_logic_vector(SPI_ADDRESS_FAT32+9-1 downto 0):=(others=>'0');
	--variable FirstDataSector41:std_logic_vector(SPI_ADDRESS_FAT32+9-1 downto 0):=(others=>'0');
	--variable BPB_BytsPerSec41:std_logic_vector(SPI_ADDRESS_FAT32+9-1 downto 0):=(others=>'0');
	--variable tmp_result:std_logic_vector(95 downto 0);
begin
	--BPB_SecPerClus41(BPB_SecPerClus'range):=BPB_SecPerClus;
	--FirstDataSector41:=conv_std_logic_vector(FirstDataSector,SPI_ADDRESS_FAT32+9);
	--BPB_BytsPerSec41(BPB_BytsPerSec'range):=BPB_BytsPerSec;
	--deux41:=conv_std_logic_vector(2,SPI_ADDRESS_FAT32+9);
	--cluster41(31 downto 0):=cluster(31 downto 0);
	--tmp_result:=((((cluster41-deux41)*BPB_SecPerClus41)+FirstDataSector41)*BPB_BytsPerSec41+FAT32_SECTOR0_OFFSET);
	--return tmp_result(SPI_ADDRESS_FAT32+9-1 downto 0);
	-- lost of precision conv_integer (32bits vs 41bits)
	return (conv_std_logic_vector((((conv_integer(cluster)-2)*conv_integer(BPB_SecPerClus))+FirstDataSector)*conv_integer(BPB_BytsPerSec),32)+FAT32_SECTOR0_OFFSET);
end function;
-- return : memory address targeting next cluster start
impure function getFAT(cluster:std_logic_vector(31 downto 0)) return address_type is
	--variable cluster41:std_logic_vector(SPI_ADDRESS_FAT32+9-1 downto 0):=(others=>'0');
	--variable quatre41:std_logic_vector(SPI_ADDRESS_FAT32+9-1 downto 0):=(others=>'0');
	--variable BPB_RsvdSecCnt41:std_logic_vector(SPI_ADDRESS_FAT32+9-1 downto 0):=(others=>'0');
	--variable BPB_BytsPerSec41:std_logic_vector(SPI_ADDRESS_FAT32+9-1 downto 0):=(others=>'0');
	--variable tmp_result:std_logic_vector(63 downto 0);
begin
	--cluster41(31 downto 0):=cluster(31 downto 0);
	--quatre41:=conv_std_logic_vector(4,SPI_ADDRESS_FAT32+9);
	--BPB_RsvdSecCnt41(BPB_RsvdSecCnt'range):=BPB_RsvdSecCnt;
	--BPB_BytsPerSec41(BPB_BytsPerSec'range):=BPB_BytsPerSec;
	--tmp_result:=BPB_RsvdSecCnt41*BPB_BytsPerSec41+cluster41*quatre41+FAT32_SECTOR0_OFFSET;
	--return tmp_result(SPI_ADDRESS_FAT32+9-1 downto 0);
	-- lost of precision conv_integer (32bits vs 41bits)
	--each cluster has 4 bytes
	return conv_std_logic_vector(conv_integer(BPB_RsvdSecCnt)*conv_integer(BPB_BytsPerSec)+conv_integer(cluster)*4,32)+FAT32_SECTOR0_OFFSET;
end function;

-- Cluster values http://en.wikipedia.org/wiki/Design_of_the_FAT_file_system
-- 0x?XXXXXXX Despite its name FAT32 uses only 28 bits of the 32 possible bits...must not rely on the upper 4 bits to be zero and it must strip them off before evaluating the cluster number

-- free cluster (root folder "..")
function fc(cluster:std_logic_vector(31 downto 0)) return boolean is
begin
	return cluster(27 downto 0) = x"0000000";
end function;

-- reserved cluster -- If this value occurs in on-disk cluster chains, file system implementations should treat this like an end-of-chain marker.
-- only seen on disk if there is a crash or power failure in the middle of this process
function rc(cluster:std_logic_vector(31 downto 0)) return boolean is
begin
    -- What are the two reserved clusters at the start of the FAT for? (00000000 and 00000001)
	return cluster(27 downto 0) = x"0000001";
end function;

-- FFFFFF0 - FFFFFF5 the file system must treat them as normal data clusters in cluster-chains 
-- FFFFFF6 if this value occurs in existing volumes, the file system must treat it as normal data cluster in cluster-chains
-- FFFFFF7 Bad sector can be part of a valid cluster chain
function rc2(cluster:std_logic_vector(31 downto 0)) return boolean is
begin
	return (cluster(27 downto 0) >= x"FFFFFF0" and cluster(27 downto 0) <= x"FFFFFF5") or cluster(27 downto 0) = x"FFFFFF6" or cluster(27 downto 0) = x"FFFFFF7";
end function;

-- end of cluster
function eoc(cluster:std_logic_vector(31 downto 0)) return boolean is
begin
	--} else if (FATType == FAT32) {
	--If(FATContent >= 0x0FFFFFF8)
	--IsEOF = TRUE;
	--}
	return (cluster(27 downto 0) >= x"FFFFFF8" and cluster(27 downto 0) <= x"FFFFFFF") or fc(cluster) or rc(cluster);
end function;

-- out of range cluster (not in standard range)
function oc(cluster:std_logic_vector(31 downto 0)) return boolean is
begin
    -- see eoc()
	return (cluster(27 downto 0) <= x"0000002" and cluster(27 downto 0) > x"FFFFFEF") or rc2(cluster);
end function;

-- general bad/useless cluster : not physical sectors by here
function bc(cluster:std_logic_vector(31 downto 0)) return boolean is
begin
	return eoc(cluster) or oc(cluster);
end function;

		variable step_var:integer range 0 to 31:=0;
		variable load_done:std_logic:='0';
		
		variable folder_cluster_pointer:std_logic_vector(31 downto 0); -- number
		variable file_cluster_pointer:std_logic_vector(31 downto 0); -- number
		variable file_cluster_pointer_H:std_logic_vector(15 downto 0);
		variable file_cluster_pointer_L:std_logic_vector(15 downto 0);
		variable folder_sector_pointer:std_logic_vector(SPI_ADDRESS_FAT32+9-1 downto 0);
		variable file_sector_pointer:std_logic_vector(SPI_ADDRESS_FAT32+9-1 downto 0);
		
		variable rom_number:integer range 0 to ROM_COUNT:=0;
		variable dsk_number:std_logic_vector(MAX_DSK_NUMBER_SQRT-1 downto 0):=(others=>'0');
		
		variable file_address:std_logic_vector(31 downto 0);
		variable folder_DirStruct_number:integer;
		
		variable file_size:std_logic_vector(31 downto 0);
		
	--files_loaded(0) : dsk loaded
	--files_loaded(1:3) : rom 1 2 3 loaded
	variable files_loaded:std_logic_vector((1+ROM_COUNT)-1 downto 0):="0000" & DSK_OFF; -- méchant doute(DSK_OFF,others=>'0');

		--variable ZDSK_doneCarac_old_mem:std_logic:='0';
		--variable file_search_do:boolean := false;
		--variable file_search_done:boolean := false;
		--variable file_search_offset:integer range 0 to 12 := 0;
	begin

		load_init_done<=load_done;
		
		if falling_edge(CLK4MHz) then
			
			
			--leds<=files_loaded & "111";
			--leds<=conv_std_logic_vector(step_var,8);
			
			if spi_init_done='1' then
			
				data_Rdo<=false;
				compare_do<=false;
				transmit_do<=false;
				
if not(data_Rdo) and data_RWdone and not(transmit_do) and transmit_done and not(compare_do) and compare_done then
				
				
				
				case step_var is
					when 0 =>
						--============================================
						--==  MBR : isFAT32 + FAT32_SECTOR0_OFFSET  ==
						--============================================
--						-- MiST
--						--get_var1(data_reader1,x"000001FE");
--						-- ZX-Uno
--						get_var1b(data_reader1,x"000001FE");
--						--get_var1(data_reader1,x"00000000"); -- same result for SD and SDHC, x"BA"
--						step_var:=32;
--					when 32 =>
--						-- check data(1FE)=55 (fixed value)
--						if data_reader1 = x"55" then
--							step_var:=33;
--							-- MiST
--							--get_var1(data_reader1,x"000001FF");
--							-- ZX-Uno
--							get_var1b(data_reader1,x"000001FF");
--							--get_var1(data_reader1,x"00400003"); -- 4D
--						end if;
--					when 33 =>
--						-- check data(1FF)=AA (fixed value)
--						if data_reader1 = x"AA" then
--							step_var:=34;
--							--1BE+4=1C2
--							-- MiST
--							--get_var1(data_reader1,x"000001C2");
--							-- ZX-Uno
--							get_var1b(data_reader1,x"000001C2");
--						end if;
--					when 34 =>
--						-- check data(1BE+4)=0B ou 0C (is_FAT32)
--						if data_reader1 = x"0B" or data_reader1 = x"0C" then
							step_var:=28;
							-- 1BE+8=1C6
							-- MiST
							--get_var4(data_reader4,x"000001C6");
							-- ZX-Uno
							get_var4b(data_reader4,x"000001C6");
--						end if;
					when 28 =>
						-- load data4Bytes(1BE+8) little endian, x512(=200h) = FAT32_SECTOR0_OFFSET
						-- * 512 (=200h)
					   FAT32_SECTOR0_OFFSET:=fix_big_endian4(data_reader4)(SPI_ADDRESS_FAT32-1 downto 0) & "0" & x"00";
						--=======================
						--==  FAT32 VARIABLES  ==
						--=======================
						get_var4b(BPB_FATSz32,BPB_FATSz32_addr+FAT32_SECTOR0_OFFSET);
						step_var:=1;
					when 1 =>
						BPB_FATSz32:=fix_big_endian4(data_reader4);
--						if BPB_FATSz32=x"00003AA9" then --x"000003B0" then -- debug
							get_var4b(BPB_TotSec32,BPB_TotSec32_addr+FAT32_SECTOR0_OFFSET);
							step_var:=2;
--						end if;
					when 2=>
						BPB_TotSec32:=fix_big_endian4(data_reader4);
--						if BPB_TotSec32=x"0075D000" then --x"00760000" then --debug
							get_var1b(BPB_SecPerClus,BPB_SecPerClus_addr+FAT32_SECTOR0_OFFSET);
							step_var:=3;
--						end if;
					when 3=>
						BPB_SecPerClus:=fix_big_endian1(data_reader1);
--						if BPB_SecPerClus=x"04" then--x"40" then --debug
							get_var4b(BPB_RootClus,BPB_RootClus_addr+FAT32_SECTOR0_OFFSET);
							step_var:=4;
--						end if;
					when 4=>
						BPB_RootClus:=fix_big_endian4(data_reader4);
--						if BPB_RootClus=x"00000002" then --x"00000002" then --debug
							get_var2b(BPB_RsvdSecCnt,BPB_RsvdSecCnt_addr+FAT32_SECTOR0_OFFSET);
							step_var:=5;
--						end if;
					when 5=>
						BPB_RsvdSecCnt:=fix_big_endian2(data_reader2);
--						if BPB_RsvdSecCnt=x"0AAE" then--x"18A0" then --debug
							get_var1b(BPB_NumFATs,BPB_NumFATs_addr+FAT32_SECTOR0_OFFSET);
							step_var:=6;
--						end if;
					when 6=>
						BPB_NumFATs:=fix_big_endian1(data_reader1);
--						if BPB_NumFATs=x"02" then--x"02" then -- debug
							get_var2b(BPB_BytsPerSec,BPB_BytsPerSec_addr+FAT32_SECTOR0_OFFSET);
							step_var:=7;
--						end if;
					when 7=>
						--=========================================
						--== END OF BR VARIABLES LOADING PROCESS ==
						--=========================================
						BPB_BytsPerSec:=fix_big_endian2(data_reader2);
						FATSz := conv_integer(BPB_FATSz32); -- 15017 --944
						TotSec := conv_integer(BPB_TotSec32); -- 7720960 --7733248
						FirstDataSector:=conv_integer(BPB_RsvdSecCnt)+(conv_integer(BPB_NumFATs)*FATSz) + 0;
						folder_cluster_pointer:=BPB_RootClus; --2
						step_var:=25;
					when 25=> -- impure variable setted, so impure function are now usable...
						folder_sector_pointer:=getSector(folder_cluster_pointer);
						if bc(folder_cluster_pointer) then
							-- no more next FileEntry... so. (root case)
							-- STOP HERE step_var:=27;
						else
							step_var:=8;
							folder_DirStruct_number:=0;
						end if;
					when 8=> -- stepping DIRStruct
						--========================================================
						--== STEPING DIRSTRUCT LIST OF A FOLDER_SECTOR_POINTER ==
						--========================================================
						if folder_DirStruct_number=conv_integer(BPB_SecPerClus)*(conv_integer(BPB_BytsPerSec)/32) then
							-- last DataStruct of all sectors of current cluster done
							step_var:=9;
						else
							folder_DirStruct_number:=folder_DirStruct_number+1;
							rom_number:=0;
							step_var:=30;
						end if;
					when 9=>
						--=========================
						--== NEXT FOLDER CLUSTER ==
						--=========================
						if bc(folder_cluster_pointer) then
							-- that's all sucks
							load_done:='0';
							switch_transmit_gripsou<=SWITCH_NONE;
						else
							get_var4b(folder_cluster_pointer,getFAT(folder_cluster_pointer));
							step_var:=12;
						end if;
					when 30=>
						--================================
						--== END OF DIRSTRUCT DETECTION ==
						--================================
						compare12(x"000000000000000000000000",folder_sector_pointer+(folder_DirStruct_number-1)*32);
						step_var:=31;
					when 31=>
						if compare_result then
							-- true real nicely hidden file ?
							compare12(x"000000000000000000000000",10+folder_sector_pointer+(folder_DirStruct_number-1)*32);
							step_var:=27;
						else
							step_var:=10;
						end if;



					when 27=>
						if compare_result then
							-- true real nicely hidden file ?
							compare12(x"000000000000000000000000",20+folder_sector_pointer+(folder_DirStruct_number-1)*32);
							step_var:=29;
						else
							-- strange, perhaps a nice hidden file, go to next file then...
							step_var:=8;
						end if;
					when 29=>
						if compare_result then
							step_var:=26; --end of DIRSTRUCT stepping
						else
							-- strange, perhaps a nice hidden file, go to next file then...
							step_var:=8;
						end if;



					when 10=>
						--=======================
						--== LOOKING ABOUT ROM ==
						--=======================
						switch_transmit_gripsou<=SWITCH_TRANSMIT;
						if rom_number=ROM_COUNT then
							step_var:=11;
						else
							if files_loaded(rom_number+1)='1' then
								rom_number:=rom_number+1;
								step_var:=10;
							else
								file_address:=file_rom_address(rom_number);
								compare12(file_rom_name(rom_number) & ATTR_ARCHIVE,folder_sector_pointer+(folder_DirStruct_number-1)*32);
								step_var:=13;
							end if;
						end if;
					when 11=>
						--=======================
						--== LOOKING ABOUT DSK ==
						--=======================
						switch_transmit_gripsou<=SWITCH_GRIPSOU;
						if files_loaded(0)='1' then --not(file_search_do) and 
							if files_loaded="11111" then
								load_done:='1';
								switch_transmit_gripsou<=SWITCH_NONE;
								step_var:=26; -- load done
							else
								step_var:=8; -- next DIRStruct
							end if;
						else
							file_address:=file_dsk_address;
							compare4(file_dsk_extention,folder_sector_pointer+(folder_DirStruct_number-1)*32+8);
							step_var:=21;
						end if;
					when 12=> -- next folder cluster
						folder_cluster_pointer:=fix_big_endian4(data_reader4);
						step_var:=23;
					when 23=>
						folder_sector_pointer:=getSector(folder_cluster_pointer);
						if bc(folder_cluster_pointer) then
							-- last FAT pointer : no more next FileEntry. (case root for me)
							-- end of DIRSTRUCT stepping
							-- STOP HERE step_var:=28;
						else
							folder_DirStruct_number:=0;
							step_var:=8;
						end if;
					when 13=> -- search ROM
						if compare_result then
							-- same file extension found
							files_loaded(rom_number+1):='1';
								get_var4b(file_size,folder_sector_pointer+(folder_DirStruct_number-1)*32+28);
							step_var:=14;
						else
							rom_number:=rom_number+1;
							step_var:=10;
						end if;
					when 14=>
						file_size:=fix_big_endian4(data_reader4);
						get_var2b(file_cluster_pointer_H,folder_sector_pointer+(folder_DirStruct_number-1)*32+20);
						step_var:=15;
					when 15=>
						file_cluster_pointer_H:=fix_big_endian2(data_reader2);
						get_var2b(file_cluster_pointer_L,folder_sector_pointer+(folder_DirStruct_number-1)*32+26);
						step_var:=16;
					when 16=>
						file_cluster_pointer_L:=fix_big_endian2(data_reader2);
						file_cluster_pointer:=file_cluster_pointer_H & file_cluster_pointer_L;
						step_var:=24;
					when 24=>
						file_sector_pointer:=getSector(file_cluster_pointer);
						if bc(file_cluster_pointer) then
							-- STOP HERE step_var:=29;
						else
							step_var:=17;
						end if;
					when 17=>
						-- transmit in progress
							if file_size>conv_std_logic_vector(conv_integer(BPB_SecPerClus)*conv_integer(BPB_BytsPerSec),32) then
								fillRAM(file_sector_pointer,file_address,conv_integer(BPB_SecPerClus)*conv_integer(BPB_BytsPerSec));
								file_size:=file_size-conv_std_logic_vector(conv_integer(BPB_SecPerClus)*conv_integer(BPB_BytsPerSec),32);
								step_var:=19;
							else
								fillRAM(file_sector_pointer,file_address,conv_integer(file_size));
								step_var:=18;
								-- that's all folk
							end if;
					when 18=>
						-- that's all folk
if files_loaded="11111" then
	load_done:='1';
	switch_transmit_gripsou<=SWITCH_NONE;
	step_var:=26; -- load done
else
						step_var:=8; -- next DIRStruct
end if;
					when 19=>
						get_var4b(file_cluster_pointer,getFAT(file_cluster_pointer));
						step_var:=20;
					when 20=>
						file_cluster_pointer:=fix_big_endian4(data_reader4);
						step_var:=22;
					when 22=>
						file_sector_pointer:=getSector(file_cluster_pointer);
						file_address:=file_address+conv_std_logic_vector(conv_integer(BPB_SecPerClus)*conv_integer(BPB_BytsPerSec),SPI_ADDRESS_FAT32+9);
						if bc(file_cluster_pointer) then
							step_var:=18; -- that's all folk
						else
							step_var:=17; -- transmit next block to RAM
						end if;
					when 21=> -- search DSK
						if compare_result then
							-- nom et extention de fichier identique
							if dsk_number>=file_select then
								files_loaded(0):='1';
--								if file_search_do then
--									file_search_do:=false;
--									file_search_done:=true;
--									file_search_offset:=0;
--									get_var1b(data_reader1,folder_sector_pointer+(folder_DirStruct_number-1)*32+file_search_offset);
--									step_var:=26;
--								else
									get_var4b(file_size,folder_sector_pointer+(folder_DirStruct_number-1)*32+28);
									step_var:=14;
--								end if;
							else
								dsk_number:=dsk_number+1;
								step_var:=8;
							end if;
						else
							step_var:=8;
						end if;
						
						
					when 26=> -- load done
						if key_reset='1' then
							files_loaded:=(others=>'0');
							dsk_number:=(others=>'0');
							load_done:='0';
							step_var:=0;
						end if;
--						if ZDSK_doInsert='1' then
--							files_loaded(0):='0';
--							dsk_number:=(others=>'0');
--							load_done:='0';
--							step_var:=0;
--						elsif ZDSK_doSelect='1' then
--							ZDSK_doCarac<='0';
--							-- place cursor front of file with nice number
--							file_search_do:=true;
--							file_search_done:=false;
--							file_search_offset:=0;
--							dsk_number:=(others=>'0');
--							step_var:=0;
--						elsif ZDSK_doneCarac='1' and ZDSK_doneCarac_old_mem='0' then
--							-- a char has been readen, go to next char.
--							ZDSK_doCarac<='0';
--							-- next CARAC or else CARAC_END_OF_NAME
--							if file_search_done then
--								file_search_offset:=file_search_offset+1;
--								if file_search_offset=12 then
--									file_search_done:=false;
--								else
--									get_var1b(data_reader1,folder_sector_pointer+(folder_DirStruct_number-1)*32+file_search_offset);
--								end if;
--							else
--								ZDSK_CARAC<=CARAC_END_OF_NAME;
--								ZDSK_doCarac<='1';
--							end if;
--						elsif file_search_done and ZDSK_doneCarac='0' then
--							if file_search_done then
--								-- I'm front of file with nice number, exhibit a char !
--								ZDSK_CARAC<=data_reader1;
--								ZDSK_doCarac<='1';
--							else
--								ZDSK_CARAC<=CARAC_END_OF_NAME;
--								ZDSK_doCarac<='1';
--							end if;
--						end if;
--						ZDSK_doneCarac_old_mem:=ZDSK_doneCarac;
					--when 27=>NULL; -- bad root folder cluster
					--when 28=>NULL; -- bad next folder cluster
					--when 29=>NULL; -- bad file cluster

				end case;
end if;
			end if;
		end if;
	end process tortue_geniale;
	
	gripsou:process(CLK4MHz) is
		variable gripsou_step:integer range 0 to 25:=0;
		variable input_A:std_logic_vector(SPI_ADDRESS_FAT32-1 downto 0):=(others=>'0');
		variable data_mem:std_logic_vector(7 downto 0);
		variable winape_offs:std_logic_vector(SPI_ADDRESS_FAT32-1 downto 0):=(others=>'0');
		variable extended:boolean:=false;
		variable winape:boolean:=false;
		variable nb_tracks:integer range 0 to 63:=0; -- super cauldron has 42 tracks !!!
		variable no_track:integer range 0 to 63:=0; -- force simple face
		variable nb_sides:integer range 0 to 3:=1;
		variable no_side:integer range 0 to 3:=0;
		variable nb_sects:integer range 0 to 14:=9; -- super cauldron has 10 sectors !!
		--variable sectID:std_logic_vector(7 downto 0);
		variable no_sect:integer range 0 to 14;
		--type track_size_type is array(0 to 39) of std_logic_vector(15 downto 0);
		--variable track_size:track_size_type;
		variable track_size:std_logic_vector(15 downto 0);
		--variable ucpm:std_logic:='0';
		type sector_sizes_type is array(0 to 6) of std_logic_vector(15 downto 0);
		constant SECTOR_SIZE:std_logic_vector(15 downto 0):=x"0200";
		variable sectSize:std_logic_vector(15 downto 0);
		variable sector_countdown:integer range 0 to 9;
		variable track_countdown:integer range 0 to 40*2;
		variable gripsou_ram_A_mem:std_logic_vector(gripsou_ram_A'range);
		type sector_order_type is array(0 to 8) of integer range 0 to 8;
		variable sector_order:sector_order_type;
	begin
		if falling_edge(CLK4MHz) then
			gripsou_ram_D<=(others=>'Z');
			gripsou_ram_W<='0';
			
			if switch_transmit_gripsou/=SWITCH_GRIPSOU then
				-- ready for another disk insertion...
				gripsou_step:=0;
				input_A:="000" & x"00000";
			elsif gripsou_write='1' then -- and switch_transmit_gripsou=SWITCH_GRIPSOU then
				data_mem:=gripsou_data;
				case gripsou_step is
					when 0=> -- disk ID
						if input_A="000" & x"00000" then
							if data_mem=x"45" then
								extended:=true;
							elsif data_mem=x"4D" then
								extended:=false;
							end if;
						end if;
						input_A:=input_A+1;
						if input_A>"000" & x"00021" then
							gripsou_step:=1;
						end if;
					when 1=> -- disk creator
						if input_A="000" & x"00022" then
							if data_mem=x"57" then
								winape:=true;
							else
								winape:=false;
							end if;
						end if;
						input_A:=input_A+1;
						if input_A>"000" & x"0002f" then
							gripsou_step:=2;
						end if;
					when 2=>
						nb_tracks:=conv_integer(data_mem);
						input_A:=input_A+1;
						gripsou_step:=3;
					when 3=>
						if input_A="000" & x"00031" then
							nb_sides:=conv_integer(data_mem);
						end if;
						input_A:=input_A+1;
						gripsou_step:=4;
        			when 4=>
						if input_A="000" & x"00032" then
							track_size(7 downto 0):=data_mem;
						elsif input_A="000" & x"00033" then
							track_size(15 downto 8):=data_mem;
						end if;
						input_A:=input_A+1;
						if input_A>"000" & x"00033" then
							if extended then
								gripsou_step:=5;
								no_track:=0;
							else
								gripsou_step:=6;
							end if;
						end if;
					when 5=>
						track_size:=data_mem & x"00";
						no_track:=no_track+1;
						input_A:=input_A+1;
						if no_track>=nb_tracks then
							gripsou_step:=6;
						end if;
					when 6=> -- avancer jusqu'au début track-info
						input_A:=input_A+1;
						if input_A>"000" & x"000FF" then --==============================================
							gripsou_step:=7;
							no_track:=0;
							input_A:=(others=>'0'); -- rembobine
							winape_offs:=(others=>'0'); -- rembobine
						end if;
					when 7=> -- pour chaque track
						input_A:=input_A+1;
						if input_A>"000" & x"0000F" then
							gripsou_step:=10;
						end if;
					when 8=>NULL;
					when 9=>NULL;
					when 10=>
						input_A:=input_A+1;
						if input_A>"000" & x"00014" then
							gripsou_step:=11;
						end if;
					when 11=>
						nb_sects:=conv_integer(data_mem);
						input_A:=input_A+1;
						gripsou_step:=12;
					when 12=>
						input_A:=input_A+1;
						if input_A>"000" & x"00017" then --===============================================
							gripsou_step:=13;
							no_sect:=0;
						end if;
					when 13=> -- first sector info of sector info list
						-- C
						input_A:=input_A+1;
						if conv_integer(data_mem)/=no_track then -- deraillage
							gripsou_step:=25;
						else
							gripsou_step:=14;
						end if;
					when 14=>
						-- H
						no_side:=conv_integer(data_mem);
						input_A:=input_A+1;
						gripsou_step:=15;
					when 15=>
						-- R
						sector_order(no_sect):=conv_integer(data_mem(3 downto 0))-1;
						input_A:=input_A+1;
						gripsou_step:=16;
					when 16=>
						-- N
						sectSize:=SECTOR_SIZE; --(conv_integer(data_mem)); -- must be 2 then 512
						input_A:=input_A+1;
						gripsou_step:=21;	
					when 21=>
						input_A:=input_A+1;
						gripsou_step:=22;
					when 22=>
						input_A:=input_A+1;
						gripsou_step:=23;
					when 23=>
						input_A:=input_A+1;
						gripsou_step:=24;
					when 24=>
						input_A:=input_A+1;
						no_sect:=no_sect+1;
						if no_sect>=nb_sects then
							gripsou_step:=17;
						else
							gripsou_step:=13;
						end if;
						
						
						
					when 17=>
						input_A:=input_A+1;
						if input_A>"000" & x"000FF" then --=============================================
							gripsou_step:=18;
							no_sect:=0;
							no_side:=0;
							--no_track:=0;
							winape_offs:=winape_offs+input_A;
							input_A:=(others=>'0');
						end if;
					when 18=> -- data transmit
						gripsou_ram_A_mem:= "1" & conv_std_logic_vector(no_track,6) & conv_std_logic_vector(no_side,1) & conv_std_logic_vector(sector_order(no_sect),4) & input_A(8 downto 0);
						gripsou_ram_A<=gripsou_ram_A_mem;
						gripsou_ram_W<='1';
						gripsou_ram_D<=data_mem;
						
						input_A:=input_A+1;
						if input_A>=sectSize then
							no_sect:=no_sect+1;
							winape_offs:=winape_offs+input_A;
							input_A:=(others=>'0');
							if	no_sect=nb_sects then
								no_track:=no_track+1;
								no_sect:=0;
								if	no_track=nb_tracks then
									gripsou_step:=20;
								else
									if winape then
										gripsou_step:=7;
									else
										if winape_offs=track_size then
											winape_offs:=(others=>'0');
											gripsou_step:=7;
										else
											gripsou_step:=19;
										end if;
									end if;
								end if;
							else
								gripsou_step:=18;
							end if;
						end if;
					when 19=> -- not winape
						winape_offs:=winape_offs+1;
						if winape_offs=track_size then
							winape_offs:=(others=>'0');
							input_A:=(others=>'0');
							gripsou_step:=7;
						end if;
					when 20=>NULL; -- fin
					when 25=>NULL; -- deraillage : no_track incorrect
				end case;
			end if;
		end if;
	end process gripsou;
end Behavioral;