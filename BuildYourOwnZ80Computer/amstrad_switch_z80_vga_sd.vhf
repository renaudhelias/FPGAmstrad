--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : amstrad_switch_z80_vga_sd.vhf
-- /___/   /\     Timestamp : 11/23/2017 14:13:31
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath E:/fpga/ZXUNO/V4/8bit/CPC/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl E:/fpga/ZXUNO/V4/8bit/CPC/amstrad_switch_z80_vga_sd.vhf -w E:/fpga/ZXUNO/V4/8bit/CPC/amstrad_switch_z80_vga_sd.sch
--Design Name: amstrad_switch_z80_vga_sd
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL FD8CE_HXILINX_amstrad_switch_z80_vga_sd -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FD8CE_HXILINX_amstrad_switch_z80_vga_sd is
port (
    Q   : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');

    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC;
    D   : in STD_LOGIC_VECTOR(7 downto 0)
    );
end FD8CE_HXILINX_amstrad_switch_z80_vga_sd;

architecture Behavioral of FD8CE_HXILINX_amstrad_switch_z80_vga_sd is

begin

process(C, CLR)
begin
  if (CLR='1') then
    Q <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 
      Q <= D;
    end if;
  end if;
end process;


end Behavioral;

----- CELL CB4CE_HXILINX_amstrad_switch_z80_vga_sd -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB4CE_HXILINX_amstrad_switch_z80_vga_sd is
  
port (
    CEO  : out STD_LOGIC;
    Q0   : out STD_LOGIC;
    Q1   : out STD_LOGIC;
    Q2   : out STD_LOGIC;
    Q3   : out STD_LOGIC;
    TC   : out STD_LOGIC;
    C    : in STD_LOGIC;
    CE   : in STD_LOGIC;
    CLR  : in STD_LOGIC
    );
end CB4CE_HXILINX_amstrad_switch_z80_vga_sd;

architecture Behavioral of CB4CE_HXILINX_amstrad_switch_z80_vga_sd is

  signal COUNT : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(3 downto 0) := (others => '1');
  
begin

process(C, CLR)
begin
  if (CLR='1') then
    COUNT <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 
      COUNT <= COUNT+1;
    end if;
  end if;
end process;

TC   <= '1' when (COUNT = TERMINAL_COUNT) else '0';
CEO  <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0';

Q3 <= COUNT(3);
Q2 <= COUNT(2);
Q1 <= COUNT(1);
Q0 <= COUNT(0);

end Behavioral;

----- CELL CB2CE_HXILINX_amstrad_switch_z80_vga_sd -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB2CE_HXILINX_amstrad_switch_z80_vga_sd is
  
port (
    CEO  : out STD_LOGIC;
    Q0   : out STD_LOGIC;
    Q1   : out STD_LOGIC;
    TC   : out STD_LOGIC;
    C    : in STD_LOGIC;
    CE   : in STD_LOGIC;
    CLR  : in STD_LOGIC
    );
end CB2CE_HXILINX_amstrad_switch_z80_vga_sd;

architecture Behavioral of CB2CE_HXILINX_amstrad_switch_z80_vga_sd is

  signal COUNT : STD_LOGIC_VECTOR(1 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(1 downto 0) := (others => '1');
  
begin

process(C, CLR)
begin
  if (CLR='1') then
    COUNT <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 
      COUNT <= COUNT+1;
    end if;
  end if;
end process;

TC   <= '1' when (COUNT = TERMINAL_COUNT) else '0';
CEO  <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0';

Q1 <= COUNT(1);
Q0 <= COUNT(0);

end Behavioral;


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity joybuf_MUSER_amstrad_switch_z80_vga_sd is
   port ( JOY_OUT : out   std_logic_vector (7 downto 0); 
          JOY_IN  : inout std_logic_vector (7 downto 0));
end joybuf_MUSER_amstrad_switch_z80_vga_sd;

architecture BEHAVIORAL of joybuf_MUSER_amstrad_switch_z80_vga_sd is
   attribute BOX_TYPE   : string ;
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component PULLDOWN
      port ( O : out   std_logic);
   end component;
   attribute BOX_TYPE of PULLDOWN : component is "BLACK_BOX";
   
begin
   XLXI_1 : BUF
      port map (I=>JOY_IN(0),
                O=>JOY_OUT(0));
   
   XLXI_2 : PULLDOWN
      port map (O=>JOY_IN(0));
   
   XLXI_5 : BUF
      port map (I=>JOY_IN(1),
                O=>JOY_OUT(1));
   
   XLXI_6 : PULLDOWN
      port map (O=>JOY_IN(1));
   
   XLXI_7 : BUF
      port map (I=>JOY_IN(2),
                O=>JOY_OUT(2));
   
   XLXI_8 : PULLDOWN
      port map (O=>JOY_IN(2));
   
   XLXI_9 : BUF
      port map (I=>JOY_IN(3),
                O=>JOY_OUT(3));
   
   XLXI_10 : PULLDOWN
      port map (O=>JOY_IN(3));
   
   XLXI_11 : BUF
      port map (I=>JOY_IN(4),
                O=>JOY_OUT(4));
   
   XLXI_12 : PULLDOWN
      port map (O=>JOY_IN(4));
   
   XLXI_13 : BUF
      port map (I=>JOY_IN(5),
                O=>JOY_OUT(5));
   
   XLXI_14 : PULLDOWN
      port map (O=>JOY_IN(5));
   
   XLXI_15 : BUF
      port map (I=>JOY_IN(6),
                O=>JOY_OUT(6));
   
   XLXI_16 : PULLDOWN
      port map (O=>JOY_IN(6));
   
   XLXI_17 : BUF
      port map (I=>JOY_IN(7),
                O=>JOY_OUT(7));
   
   XLXI_18 : PULLDOWN
      port map (O=>JOY_IN(7));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity joykeyb_MUSER_amstrad_switch_z80_vga_sd is
   port ( CLK4MHz   : in    std_logic; 
          joystick1 : in    std_logic_vector (7 downto 0); 
          joystick2 : in    std_logic_vector (7 downto 0); 
          PPI_portC : in    std_logic_vector (3 downto 0); 
          PS2_CLK   : in    std_logic; 
          PS2_DATA  : in    std_logic; 
          reset     : in    std_logic; 
          PPI_portA : out   std_logic_vector (7 downto 0));
end joykeyb_MUSER_amstrad_switch_z80_vga_sd;

architecture BEHAVIORAL of joykeyb_MUSER_amstrad_switch_z80_vga_sd is
   attribute BOX_TYPE   : string ;
   signal PPI_enable : std_logic;
   signal XLXN_27    : std_logic_vector (9 downto 0);
   signal XLXN_28    : std_logic;
   signal XLXN_29    : std_logic_vector (7 downto 0);
   signal XLXN_30    : std_logic;
   signal XLXN_31    : std_logic;
   component Keyboard
      port ( datain   : in    std_logic; 
             clkin    : in    std_logic; 
             fclk     : in    std_logic; 
             rst      : in    std_logic; 
             fok      : out   std_logic; 
             scancode : out   std_logic_vector (7 downto 0));
   end component;
   
   component KEYBOARD_driver
      port ( CLK       : in    std_logic; 
             enable    : in    std_logic; 
             press     : in    std_logic; 
             unpress   : in    std_logic; 
             portC     : in    std_logic_vector (3 downto 0); 
             joystick1 : in    std_logic_vector (7 downto 0); 
             joystick2 : in    std_logic_vector (7 downto 0); 
             keycode   : in    std_logic_vector (9 downto 0); 
             portA     : out   std_logic_vector (7 downto 0));
   end component;
   
   component KEYBOARD_controller
      port ( CLK         : in    std_logic; 
             fok         : in    std_logic; 
             scancode_in : in    std_logic_vector (7 downto 0); 
             press       : out   std_logic; 
             unpress     : out   std_logic; 
             keycode     : out   std_logic_vector (9 downto 0));
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
begin
   XLXI_1 : Keyboard
      port map (clkin=>PS2_CLK,
                datain=>PS2_DATA,
                fclk=>CLK4MHz,
                rst=>reset,
                fok=>XLXN_28,
                scancode(7 downto 0)=>XLXN_29(7 downto 0));
   
   XLXI_2 : KEYBOARD_driver
      port map (CLK=>CLK4MHz,
                enable=>PPI_enable,
                joystick1(7 downto 0)=>joystick1(7 downto 0),
                joystick2(7 downto 0)=>joystick2(7 downto 0),
                keycode(9 downto 0)=>XLXN_27(9 downto 0),
                portC(3 downto 0)=>PPI_portC(3 downto 0),
                press=>XLXN_30,
                unpress=>XLXN_31,
                portA(7 downto 0)=>PPI_portA(7 downto 0));
   
   XLXI_3 : KEYBOARD_controller
      port map (CLK=>CLK4MHz,
                fok=>XLXN_28,
                scancode_in(7 downto 0)=>XLXN_29(7 downto 0),
                keycode(9 downto 0)=>XLXN_27(9 downto 0),
                press=>XLXN_30,
                unpress=>XLXN_31);
   
   XLXI_4 : VCC
      port map (P=>PPI_enable);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity amstrad_motherboard_MUSER_amstrad_switch_z80_vga_sd is
   port ( CLK16MHz  : in    std_logic; 
          init_A    : in    std_logic_vector (22 downto 0); 
          init_W_n  : in    std_logic; 
          is_ucpm   : in    std_logic; 
          PS2_CLK   : in    std_logic; 
          PS2_DATA  : in    std_logic; 
          RESET_n   : in    std_logic; 
          audio     : out   std_logic; 
          CLK8      : out   std_logic_vector (2 downto 0); 
          crtc_A    : out   std_logic_vector (15 downto 0); 
          crtc_D    : out   std_logic_vector (7 downto 0); 
          crtc_W    : out   std_logic; 
          OE1_n     : out   std_logic; 
          palette_A : out   std_logic_vector (12 downto 0); 
          palette_D : out   std_logic_vector (7 downto 0); 
          palette_W : out   std_logic; 
          ram_A     : out   std_logic_vector (22 downto 0); 
          ram_W_n   : out   std_logic; 
          JOYSTICK1 : inout std_logic_vector (7 downto 0); 
          JOYSTICK2 : inout std_logic_vector (7 downto 0); 
          ram_D     : inout std_logic_vector (7 downto 0));
end amstrad_motherboard_MUSER_amstrad_switch_z80_vga_sd;

architecture BEHAVIORAL of amstrad_motherboard_MUSER_amstrad_switch_z80_vga_sd 
      is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal A            : std_logic_vector (15 downto 0);
   signal D            : std_logic_vector (7 downto 0);
   signal IO_RD        : std_logic;
   signal IO_REQ       : std_logic;
   signal IO_WR        : std_logic;
   signal LED1         : std_logic;
   signal LED2         : std_logic;
   signal MEM_RD       : std_logic;
   signal MEM_WR       : std_logic;
   signal n_crtc_vsync : std_logic;
   signal portC        : std_logic_vector (7 downto 0);
   signal RAMBank      : std_logic_vector (2 downto 0);
   signal ROMbank      : std_logic_vector (3 downto 0);
   signal un           : std_logic;
   signal vram_A       : std_logic_vector (17 downto 0);
   signal XLXN_16      : std_logic;
   signal XLXN_38      : std_logic;
   signal XLXN_58      : std_logic;
   signal XLXN_75      : std_logic;
   signal XLXN_86      : std_logic;
   signal XLXN_118     : std_logic;
   signal XLXN_180     : std_logic;
   signal XLXN_283     : std_logic_vector (7 downto 0);
   signal XLXN_301     : std_logic;
   signal XLXN_303     : std_logic;
   signal XLXN_427     : std_logic_vector (19 downto 0);
   signal XLXN_435     : std_logic;
   signal XLXN_451     : std_logic;
   signal XLXN_462     : std_logic_vector (7 downto 0);
   signal XLXN_464     : std_logic;
   signal XLXN_470     : std_logic;
   signal XLXN_473     : std_logic;
   signal XLXN_474     : std_logic;
   signal XLXN_475     : std_logic;
   signal XLXN_486     : std_logic_vector (7 downto 0);
   signal XLXN_498     : std_logic;
   signal XLXN_499     : std_logic;
   signal XLXN_518     : std_logic_vector (7 downto 0);
   signal XLXN_519     : std_logic_vector (7 downto 0);
   signal XLXN_542     : std_logic;
   signal XLXN_551     : std_logic;
   signal XLXN_555     : std_logic;
   signal XLXN_556     : std_logic;
   signal XLXN_621     : std_logic;
   signal XLXN_633     : std_logic;
   signal XLXN_735     : std_logic;
   signal XLXN_785     : std_logic;
   signal XLXN_786     : std_logic;
   signal XLXN_787     : std_logic;
   signal XLXN_798     : std_logic_vector (7 downto 0);
   signal XLXN_799     : std_logic_vector (7 downto 0);
   signal XLXN_802     : std_logic;
   signal XLXN_806     : std_logic;
   signal XLXN_807     : std_logic;
   signal XLXN_814     : std_logic;
   signal XLXN_824     : std_logic;
   signal XLXN_826     : std_logic;
   signal XLXN_830     : std_logic;
   signal XLXN_832     : std_logic;
   signal XLXN_835     : std_logic;
   signal XLXN_845     : std_logic;
   signal XLXN_848     : std_logic;
   signal XLXN_849     : std_logic;
   signal XLXN_852     : std_logic;
   signal XLXN_854     : std_logic;
   signal XLXN_855     : std_logic;
   signal XLXN_856     : std_logic;
   signal XLXN_857     : std_logic_vector (1 downto 0);
   signal XLXN_858     : std_logic;
   signal zero         : std_logic;
   signal CLK8_DUMMY   : std_logic_vector (2 downto 0);
   signal crtc_A_DUMMY : std_logic_vector (15 downto 0);
   component T80se
      port ( RESET_n : in    std_logic; 
             CLK_n   : in    std_logic; 
             CLKEN   : in    std_logic; 
             WAIT_n  : in    std_logic; 
             INT_n   : in    std_logic; 
             NMI_n   : in    std_logic; 
             BUSRQ_n : in    std_logic; 
             DI      : in    std_logic_vector (7 downto 0); 
             M1_n    : out   std_logic; 
             MREQ_n  : out   std_logic; 
             IORQ_n  : out   std_logic; 
             RD_n    : out   std_logic; 
             WR_n    : out   std_logic; 
             RFSH_n  : out   std_logic; 
             HALT_n  : out   std_logic; 
             BUSAK_n : out   std_logic; 
             A       : out   std_logic_vector (15 downto 0); 
             DO      : out   std_logic_vector (7 downto 0));
   end component;
   
   component simple_GateArray
      port ( CLK        : in    std_logic; 
             IO_REQ_W   : in    std_logic; 
             A15_A14    : in    std_logic_vector (1 downto 0); 
             D          : in    std_logic_vector (7 downto 0); 
             lowerROMen : out   std_logic; 
             upperROMen : out   std_logic; 
             MODE       : out   std_logic_vector (1 downto 0); 
             RAMbank    : out   std_logic_vector (2 downto 0));
   end component;
   
   component simple_GateArrayInterrupt
      port ( IO_REQ_W      : in    std_logic; 
             IO_REQ_R      : in    std_logic; 
             IO_ACK        : in    std_logic; 
             M1_n          : in    std_logic; 
             MEM_WR        : in    std_logic; 
             reset         : in    std_logic; 
             CLK8          : in    std_logic_vector (2 downto 0); 
             A15_A14_A9_A8 : in    std_logic_vector (3 downto 0); 
             MODE_select   : in    std_logic_vector (1 downto 0); 
             D             : in    std_logic_vector (7 downto 0); 
             Dout          : inout std_logic_vector (7 downto 0); 
             ram_D         : inout std_logic_vector (7 downto 0); 
             crtc_VSYNC    : out   std_logic; 
             crtc_W        : out   std_logic; 
             crtc_transmit : out   std_logic; 
             int           : out   std_logic; 
             WAIT_MEM_n    : out   std_logic; 
             WAIT_n        : out   std_logic; 
             ram_R         : out   std_logic; 
             palette_W     : out   std_logic; 
             crtc_A        : out   std_logic_vector (15 downto 0); 
             crtc_D        : out   std_logic_vector (7 downto 0); 
             palette_A     : out   std_logic_vector (12 downto 0); 
             palette_D     : out   std_logic_vector (7 downto 0));
   end component;
   
   component I82C55
      port ( I_CS_L    : in    std_logic; 
             I_RD_L    : in    std_logic; 
             I_WR_L    : in    std_logic; 
             RESET     : in    std_logic; 
             ENA       : in    std_logic; 
             CLK       : in    std_logic; 
             I_ADDR    : in    std_logic_vector (1 downto 0); 
             I_DATA    : in    std_logic_vector (7 downto 0); 
             I_PA      : in    std_logic_vector (7 downto 0); 
             I_PB      : in    std_logic_vector (7 downto 0); 
             I_PC      : in    std_logic_vector (7 downto 0); 
             IO_DATA   : inout std_logic_vector (7 downto 0); 
             O_PA      : out   std_logic_vector (7 downto 0); 
             O_PA_OE_L : out   std_logic_vector (7 downto 0); 
             O_PB      : out   std_logic_vector (7 downto 0); 
             O_PB_OE_L : out   std_logic_vector (7 downto 0); 
             O_PC      : out   std_logic_vector (7 downto 0); 
             O_PC_OE_L : out   std_logic_vector (7 downto 0));
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component AmstradRAMROM
      port ( wr_z80     : in    std_logic; 
             wr_io_z80  : in    std_logic; 
             lowerROMen : in    std_logic; 
             upperROMen : in    std_logic; 
             A          : in    std_logic_vector (15 downto 0); 
             RAMbank    : in    std_logic_vector (2 downto 0); 
             ROMbank    : in    std_logic_vector (3 downto 0); 
             ram_A      : out   std_logic_vector (17 downto 0));
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component CB2CE_HXILINX_amstrad_switch_z80_vga_sd
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component RAM_driver
      port ( rd    : in    std_logic; 
             wr    : in    std_logic; 
             reset : in    std_logic; 
             CLK8  : in    std_logic_vector (2 downto 0); 
             Din   : in    std_logic_vector (7 downto 0); 
             Dout  : inout std_logic_vector (7 downto 0); 
             ram_D : inout std_logic_vector (7 downto 0); 
             ram_W : out   std_logic; 
             ram_R : out   std_logic);
   end component;
   
   component simple_DSK
      port ( CLK_bourin : in    std_logic; 
             reset      : in    std_logic; 
             A0         : in    std_logic; 
             IO_RD      : in    std_logic; 
             IO_WR      : in    std_logic; 
             M1_n       : in    std_logic; 
             is_ucpm    : in    std_logic; 
             CLK8       : in    std_logic_vector (2 downto 0); 
             A10_A8_A7  : in    std_logic_vector (2 downto 0); 
             D_command  : in    std_logic_vector (7 downto 0); 
             D_result   : inout std_logic_vector (7 downto 0); 
             dsk_info_D : inout std_logic_vector (7 downto 0); 
             dsk_W      : out   std_logic; 
             dsk_R      : out   std_logic; 
             transmit   : out   std_logic; 
             dsk_A      : out   std_logic_vector (19 downto 0));
   end component;
   
   component ROMselect
      port ( CLK     : in    std_logic; 
             A13     : in    std_logic; 
             IO_WR   : in    std_logic; 
             D       : in    std_logic_vector (7 downto 0); 
             ROMbank : out   std_logic_vector (3 downto 0));
   end component;
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component AmstradRAMDSK
      port ( transmit      : in    std_logic; 
             crtc_transmit : in    std_logic; 
             init_done     : in    std_logic; 
             A             : in    std_logic_vector (17 downto 0); 
             dsk_A         : in    std_logic_vector (19 downto 0); 
             init_A        : in    std_logic_vector (22 downto 0); 
             crtc_A        : in    std_logic_vector (15 downto 0); 
             ram_A         : out   std_logic_vector (22 downto 0));
   end component;
   
   component YM2149
      port ( I_A9_L    : in    std_logic; 
             I_A8      : in    std_logic; 
             I_BDIR    : in    std_logic; 
             I_BC2     : in    std_logic; 
             I_BC1     : in    std_logic; 
             I_SEL_L   : in    std_logic; 
             ENA       : in    std_logic; 
             RESET_L   : in    std_logic; 
             CLK       : in    std_logic; 
             I_DA      : in    std_logic_vector (7 downto 0); 
             I_IOA     : in    std_logic_vector (7 downto 0); 
             O_DA_OE_L : out   std_logic; 
             O_DA      : out   std_logic_vector (7 downto 0); 
             O_AUDIO   : out   std_logic_vector (7 downto 0));
   end component;
   
   component PWM
      port ( clk     : in    std_logic; 
             PWM_in  : in    std_logic_vector (7 downto 0); 
             PWM_out : out   std_logic);
   end component;
   
   component CB4CE_HXILINX_amstrad_switch_z80_vga_sd
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             Q2  : out   std_logic; 
             Q3  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   component joykeyb_MUSER_amstrad_switch_z80_vga_sd
      port ( reset     : in    std_logic; 
             PS2_CLK   : in    std_logic; 
             PS2_DATA  : in    std_logic; 
             CLK4MHz   : in    std_logic; 
             PPI_portC : in    std_logic_vector (3 downto 0); 
             joystick1 : in    std_logic_vector (7 downto 0); 
             joystick2 : in    std_logic_vector (7 downto 0); 
             PPI_portA : out   std_logic_vector (7 downto 0));
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component joybuf_MUSER_amstrad_switch_z80_vga_sd
      port ( JOY_OUT : out   std_logic_vector (7 downto 0); 
             JOY_IN  : inout std_logic_vector (7 downto 0));
   end component;
   
   component please_wait
      port ( CLK_n      : in    std_logic; 
             WAIT_n     : in    std_logic; 
             CLK_WAIT_n : out   std_logic; 
             CLK8       : in    std_logic_vector (2 downto 0));
   end component;
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_221 : label is "XLXI_221_5";
   attribute HU_SET of XLXI_399 : label is "XLXI_399_6";
begin
   CLK8(2 downto 0) <= CLK8_DUMMY(2 downto 0);
   crtc_A(15 downto 0) <= crtc_A_DUMMY(15 downto 0);
   AmstradT80 : T80se
      port map (BUSRQ_n=>XLXN_16,
                CLKEN=>XLXN_16,
                CLK_n=>XLXN_802,
                DI(7 downto 0)=>XLXN_283(7 downto 0),
                INT_n=>XLXN_814,
                NMI_n=>XLXN_16,
                RESET_n=>RESET_n,
                WAIT_n=>XLXN_16,
                A(15 downto 0)=>A(15 downto 0),
                BUSAK_n=>open,
                DO(7 downto 0)=>D(7 downto 0),
                HALT_n=>open,
                IORQ_n=>XLXN_75,
                MREQ_n=>XLXN_58,
                M1_n=>XLXN_845,
                RD_n=>XLXN_86,
                RFSH_n=>open,
                WR_n=>XLXN_38);
   
   GA : simple_GateArray
      port map (A15_A14(1 downto 0)=>A(15 downto 14),
                CLK=>XLXN_435,
                D(7 downto 0)=>D(7 downto 0),
                IO_REQ_W=>IO_WR,
                lowerROMen=>LED1,
                MODE(1 downto 0)=>XLXN_857(1 downto 0),
                RAMbank(2 downto 0)=>RAMBank(2 downto 0),
                upperROMen=>LED2);
   
   GA_interrupt : simple_GateArrayInterrupt
      port map (A15_A14_A9_A8(3)=>A(15),
                A15_A14_A9_A8(2)=>A(14),
                A15_A14_A9_A8(1)=>A(9),
                A15_A14_A9_A8(0)=>A(8),
                CLK8(2 downto 0)=>CLK8_DUMMY(2 downto 0),
                D(7 downto 0)=>D(7 downto 0),
                IO_ACK=>XLXN_826,
                IO_REQ_R=>IO_RD,
                IO_REQ_W=>IO_WR,
                MEM_WR=>MEM_WR,
                MODE_select(1 downto 0)=>XLXN_857(1 downto 0),
                M1_n=>XLXN_845,
                reset=>XLXN_858,
                crtc_A(15 downto 0)=>crtc_A_DUMMY(15 downto 0),
                crtc_D(7 downto 0)=>crtc_D(7 downto 0),
                crtc_transmit=>XLXN_852,
                crtc_VSYNC=>n_crtc_vsync,
                crtc_W=>crtc_W,
                int=>XLXN_835,
                palette_A(12 downto 0)=>palette_A(12 downto 0),
                palette_D(7 downto 0)=>palette_D(7 downto 0),
                palette_W=>palette_W,
                ram_R=>XLXN_854,
                WAIT_MEM_n=>XLXN_807,
                WAIT_n=>XLXN_806,
                Dout(7 downto 0)=>XLXN_283(7 downto 0),
                ram_D(7 downto 0)=>ram_D(7 downto 0));
   
   PPI : I82C55
      port map (CLK=>XLXN_832,
                ENA=>XLXN_303,
                I_ADDR(1 downto 0)=>A(9 downto 8),
                I_CS_L=>A(11),
                I_DATA(7 downto 0)=>D(7 downto 0),
                I_PA(7 downto 0)=>XLXN_519(7 downto 0),
                I_PB(7)=>zero,
                I_PB(6)=>zero,
                I_PB(5)=>zero,
                I_PB(4)=>un,
                I_PB(3)=>un,
                I_PB(2)=>un,
                I_PB(1)=>zero,
                I_PB(0)=>n_crtc_vsync,
                I_PC(7)=>zero,
                I_PC(6)=>zero,
                I_PC(5)=>zero,
                I_PC(4)=>zero,
                I_PC(3)=>zero,
                I_PC(2)=>zero,
                I_PC(1)=>zero,
                I_PC(0)=>zero,
                I_RD_L=>XLXN_301,
                I_WR_L=>XLXN_180,
                RESET=>XLXN_858,
                O_PA(7 downto 0)=>XLXN_462(7 downto 0),
                O_PA_OE_L=>open,
                O_PB=>open,
                O_PB_OE_L=>open,
                O_PC(7 downto 0)=>portC(7 downto 0),
                O_PC_OE_L=>open,
                IO_DATA(7 downto 0)=>XLXN_283(7 downto 0));
   
   XLXI_168 : VCC
      port map (P=>XLXN_16);
   
   XLXI_170 : AND2
      port map (I0=>XLXN_785,
                I1=>XLXN_786,
                O=>MEM_WR);
   
   XLXI_173 : AmstradRAMROM
      port map (A(15 downto 0)=>A(15 downto 0),
                lowerROMen=>LED1,
                RAMbank(2 downto 0)=>RAMBank(2 downto 0),
                ROMbank(3 downto 0)=>ROMbank(3 downto 0),
                upperROMen=>LED2,
                wr_io_z80=>IO_WR,
                wr_z80=>MEM_WR,
                ram_A(17 downto 0)=>vram_A(17 downto 0));
   
   XLXI_181 : INV
      port map (I=>XLXN_58,
                O=>XLXN_786);
   
   XLXI_183 : INV
      port map (I=>XLXN_75,
                O=>IO_REQ);
   
   XLXI_184 : AND2
      port map (I0=>IO_REQ,
                I1=>XLXN_785,
                O=>IO_WR);
   
   XLXI_186 : INV
      port map (I=>XLXN_86,
                O=>XLXN_787);
   
   XLXI_187 : AND2
      port map (I0=>XLXN_787,
                I1=>XLXN_786,
                O=>MEM_RD);
   
   XLXI_199 : INV
      port map (I=>XLXN_451,
                O=>OE1_n);
   
   XLXI_219 : AND2
      port map (I0=>XLXN_787,
                I1=>IO_REQ,
                O=>IO_RD);
   
   XLXI_221 : CB2CE_HXILINX_amstrad_switch_z80_vga_sd
      port map (C=>CLK16MHz,
                CE=>XLXN_542,
                CLR=>XLXN_118,
                CEO=>open,
                Q0=>CLK8_DUMMY(1),
                Q1=>CLK8_DUMMY(2),
                TC=>open);
   
   XLXI_223 : GND
      port map (G=>XLXN_118);
   
   XLXI_224 : RAM_driver
      port map (CLK8(2 downto 0)=>CLK8_DUMMY(2 downto 0),
                Din(7 downto 0)=>D(7 downto 0),
                rd=>MEM_RD,
                reset=>XLXN_858,
                wr=>MEM_WR,
                ram_R=>XLXN_855,
                ram_W=>XLXN_555,
                Dout(7 downto 0)=>XLXN_283(7 downto 0),
                ram_D(7 downto 0)=>ram_D(7 downto 0));
   
   XLXI_226 : INV
      port map (I=>XLXN_555,
                O=>XLXN_556);
   
   XLXI_243 : INV
      port map (I=>CLK8_DUMMY(2),
                O=>XLXN_435);
   
   XLXI_253 : GND
      port map (G=>zero);
   
   XLXI_256 : VCC
      port map (P=>un);
   
   XLXI_257 : INV
      port map (I=>IO_RD,
                O=>XLXN_301);
   
   XLXI_258 : INV
      port map (I=>IO_WR,
                O=>XLXN_180);
   
   XLXI_297 : INV
      port map (I=>CLK8_DUMMY(2),
                O=>XLXN_832);
   
   XLXI_306 : VCC
      port map (P=>XLXN_303);
   
   XLXI_307 : INV
      port map (I=>RESET_n,
                O=>XLXN_858);
   
   XLXI_332 : INV
      port map (I=>XLXN_835,
                O=>XLXN_814);
   
   XLXI_344 : simple_DSK
      port map (A0=>A(0),
                A10_A8_A7(2)=>A(10),
                A10_A8_A7(1)=>A(8),
                A10_A8_A7(0)=>A(7),
                CLK_bourin=>XLXN_832,
                CLK8(2 downto 0)=>CLK8_DUMMY(2 downto 0),
                D_command(7 downto 0)=>D(7 downto 0),
                IO_RD=>IO_RD,
                IO_WR=>IO_WR,
                is_ucpm=>is_ucpm,
                M1_n=>XLXN_845,
                reset=>XLXN_858,
                dsk_A(19 downto 0)=>XLXN_427(19 downto 0),
                dsk_R=>XLXN_735,
                dsk_W=>XLXN_849,
                transmit=>XLXN_621,
                dsk_info_D(7 downto 0)=>ram_D(7 downto 0),
                D_result(7 downto 0)=>XLXN_283(7 downto 0));
   
   XLXI_345 : ROMselect
      port map (A13=>A(13),
                CLK=>XLXN_435,
                D(7 downto 0)=>D(7 downto 0),
                IO_WR=>IO_WR,
                ROMbank(3 downto 0)=>ROMbank(3 downto 0));
   
   XLXI_347 : OR2
      port map (I0=>XLXN_856,
                I1=>XLXN_735,
                O=>XLXN_451);
   
   XLXI_348 : AmstradRAMDSK
      port map (A(17 downto 0)=>vram_A(17 downto 0),
                crtc_A(15 downto 0)=>crtc_A_DUMMY(15 downto 0),
                crtc_transmit=>XLXN_852,
                dsk_A(19 downto 0)=>XLXN_427(19 downto 0),
                init_A(22 downto 0)=>init_A(22 downto 0),
                init_done=>RESET_n,
                transmit=>XLXN_621,
                ram_A(22 downto 0)=>ram_A(22 downto 0));
   
   XLXI_349 : YM2149
      port map (CLK=>XLXN_551,
                ENA=>XLXN_473,
                I_A8=>XLXN_464,
                I_A9_L=>XLXN_475,
                I_BC1=>portC(6),
                I_BC2=>XLXN_470,
                I_BDIR=>portC(7),
                I_DA(7 downto 0)=>XLXN_462(7 downto 0),
                I_IOA(7 downto 0)=>XLXN_518(7 downto 0),
                I_SEL_L=>XLXN_474,
                RESET_L=>RESET_n,
                O_AUDIO(7 downto 0)=>XLXN_486(7 downto 0),
                O_DA(7 downto 0)=>XLXN_519(7 downto 0),
                O_DA_OE_L=>open);
   
   XLXI_350 : VCC
      port map (P=>XLXN_464);
   
   XLXI_351 : VCC
      port map (P=>XLXN_470);
   
   XLXI_355 : GND
      port map (G=>XLXN_475);
   
   XLXI_367 : PWM
      port map (clk=>XLXN_551,
                PWM_in(7 downto 0)=>XLXN_486(7 downto 0),
                PWM_out=>audio);
   
   XLXI_377 : VCC
      port map (P=>XLXN_473);
   
   XLXI_383 : VCC
      port map (P=>XLXN_498);
   
   XLXI_384 : GND
      port map (G=>XLXN_499);
   
   XLXI_385 : VCC
      port map (P=>XLXN_474);
   
   XLXI_399 : CB4CE_HXILINX_amstrad_switch_z80_vga_sd
      port map (C=>XLXN_832,
                CE=>XLXN_498,
                CLR=>XLXN_499,
                CEO=>open,
                Q0=>open,
                Q1=>XLXN_551,
                Q2=>open,
                Q3=>open,
                TC=>open);
   
   XLXI_414 : VCC
      port map (P=>XLXN_542);
   
   XLXI_417 : INV
      port map (I=>CLK16MHz,
                O=>CLK8_DUMMY(0));
   
   XLXI_475 : AND2
      port map (I0=>XLXN_824,
                I1=>IO_REQ,
                O=>XLXN_826);
   
   XLXI_476 : INV
      port map (I=>XLXN_845,
                O=>XLXN_824);
   
   XLXI_494 : joykeyb_MUSER_amstrad_switch_z80_vga_sd
      port map (CLK4MHz=>XLXN_633,
                joystick1(7 downto 0)=>XLXN_798(7 downto 0),
                joystick2(7 downto 0)=>XLXN_799(7 downto 0),
                PPI_portC(3 downto 0)=>portC(3 downto 0),
                PS2_CLK=>PS2_CLK,
                PS2_DATA=>PS2_DATA,
                reset=>XLXN_858,
                PPI_portA(7 downto 0)=>XLXN_518(7 downto 0));
   
   XLXI_495 : BUF
      port map (I=>XLXN_832,
                O=>XLXN_633);
   
   XLXI_549 : INV
      port map (I=>XLXN_38,
                O=>XLXN_785);
   
   XLXI_566 : joybuf_MUSER_amstrad_switch_z80_vga_sd
      port map (JOY_OUT(7 downto 0)=>XLXN_798(7 downto 0),
                JOY_IN(7 downto 0)=>JOYSTICK1(7 downto 0));
   
   XLXI_567 : joybuf_MUSER_amstrad_switch_z80_vga_sd
      port map (JOY_OUT(7 downto 0)=>XLXN_799(7 downto 0),
                JOY_IN(7 downto 0)=>JOYSTICK2(7 downto 0));
   
   XLXI_568 : please_wait
      port map (CLK_n=>CLK8_DUMMY(2),
                CLK8(2 downto 0)=>CLK8_DUMMY(2 downto 0),
                WAIT_n=>XLXN_830,
                CLK_WAIT_n=>XLXN_802);
   
   XLXI_570 : AND2
      port map (I0=>XLXN_807,
                I1=>XLXN_806,
                O=>XLXN_830);
   
   XLXI_575 : AND3
      port map (I0=>XLXN_556,
                I1=>init_W_n,
                I2=>XLXN_848,
                O=>ram_W_n);
   
   XLXI_576 : INV
      port map (I=>XLXN_849,
                O=>XLXN_848);
   
   XLXI_577 : OR2
      port map (I0=>XLXN_855,
                I1=>XLXN_854,
                O=>XLXN_856);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity VRAM32Ko_Amstrad_MUSER_amstrad_switch_z80_vga_sd is
   port ( vga_A    : in    std_logic_vector (14 downto 0); 
          vga_CLK  : in    std_logic; 
          vram_A   : in    std_logic_vector (14 downto 0); 
          vram_CLK : in    std_logic; 
          vram_D   : in    std_logic_vector (7 downto 0); 
          vram_W   : in    std_logic; 
          vga_D    : out   std_logic_vector (7 downto 0));
end VRAM32Ko_Amstrad_MUSER_amstrad_switch_z80_vga_sd;

architecture BEHAVIORAL of VRAM32Ko_Amstrad_MUSER_amstrad_switch_z80_vga_sd is
   attribute BOX_TYPE   : string ;
   signal XLXN_19  : std_logic;
   signal XLXN_21  : std_logic;
   signal XLXN_23  : std_logic;
   signal XLXN_31  : std_logic;
   signal XLXN_40  : std_logic_vector (7 downto 0);
   signal XLXN_46  : std_logic_vector (7 downto 0);
   component VRAM_Amstrad
      port ( vram_CLK : in    std_logic; 
             vga_CLK  : in    std_logic; 
             vram_A   : in    std_logic_vector (13 downto 0); 
             vga_A    : in    std_logic_vector (13 downto 0); 
             vram_W   : in    std_logic; 
             vram_D   : in    std_logic_vector (7 downto 0); 
             vga_D    : out   std_logic_vector (7 downto 0));
   end component;
   
   component and_then
      port ( A : in    std_logic; 
             B : in    std_logic; 
             C : out   std_logic);
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component SELECT8
      port ( s1    : in    std_logic; 
             DATA1 : in    std_logic_vector (7 downto 0); 
             DATA2 : in    std_logic_vector (7 downto 0); 
             DATA0 : out   std_logic_vector (7 downto 0));
   end component;
   
begin
   XLXI_1 : VRAM_Amstrad
      port map (vga_A(13 downto 0)=>vga_A(13 downto 0),
                vga_CLK=>vga_CLK,
                vram_A(13 downto 0)=>vram_A(13 downto 0),
                vram_CLK=>vram_CLK,
                vram_D(7 downto 0)=>vram_D(7 downto 0),
                vram_W=>XLXN_19,
                vga_D(7 downto 0)=>XLXN_40(7 downto 0));
   
   XLXI_2 : and_then
      port map (A=>vram_W,
                B=>XLXN_21,
                C=>XLXN_19);
   
   XLXI_3 : INV
      port map (I=>vram_A(14),
                O=>XLXN_21);
   
   XLXI_4 : SELECT8
      port map (DATA1(7 downto 0)=>XLXN_40(7 downto 0),
                DATA2(7 downto 0)=>XLXN_46(7 downto 0),
                s1=>XLXN_23,
                DATA0(7 downto 0)=>vga_D(7 downto 0));
   
   XLXI_5 : INV
      port map (I=>vga_A(14),
                O=>XLXN_23);
   
   XLXI_6 : VRAM_Amstrad
      port map (vga_A(13 downto 0)=>vga_A(13 downto 0),
                vga_CLK=>vga_CLK,
                vram_A(13 downto 0)=>vram_A(13 downto 0),
                vram_CLK=>vram_CLK,
                vram_D(7 downto 0)=>vram_D(7 downto 0),
                vram_W=>XLXN_31,
                vga_D(7 downto 0)=>XLXN_46(7 downto 0));
   
   XLXI_7 : and_then
      port map (A=>vram_W,
                B=>vram_A(14),
                C=>XLXN_31);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity amstrad_video_MUSER_amstrad_switch_z80_vga_sd is
   port ( CLK4MHz   : in    std_logic; 
          CLK25MHz  : in    std_logic; 
          crtc_A    : in    std_logic_vector (14 downto 0); 
          crtc_D    : in    std_logic_vector (7 downto 0); 
          crtc_W    : in    std_logic; 
          palette_A : in    std_logic_vector (12 downto 0); 
          palette_D : in    std_logic_vector (7 downto 0); 
          palette_W : in    std_logic; 
          BLUE3     : out   std_logic_vector (2 downto 0); 
          GREEN3    : out   std_logic_vector (2 downto 0); 
          HSYNC     : out   std_logic; 
          RED3      : out   std_logic_vector (2 downto 0); 
          VSYNC     : out   std_logic);
end amstrad_video_MUSER_amstrad_switch_z80_vga_sd;

architecture BEHAVIORAL of amstrad_video_MUSER_amstrad_switch_z80_vga_sd is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal XLXN_337  : std_logic;
   signal XLXN_338  : std_logic;
   signal XLXN_339  : std_logic;
   signal XLXN_340  : std_logic_vector (7 downto 0);
   signal XLXN_342  : std_logic;
   signal XLXN_343  : std_logic;
   signal XLXN_344  : std_logic_vector (7 downto 0);
   signal XLXN_452  : std_logic_vector (7 downto 0);
   signal XLXN_549  : std_logic;
   signal XLXN_550  : std_logic;
   signal XLXN_627  : std_logic;
   signal XLXN_684  : std_logic_vector (7 downto 0);
   signal XLXN_693  : std_logic_vector (14 downto 0);
   signal XLXN_694  : std_logic_vector (12 downto 0);
   signal XLXN_701  : std_logic_vector (1 downto 0);
   signal XLXN_702  : std_logic_vector (2 downto 0);
   signal XLXN_703  : std_logic_vector (1 downto 0);
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component FD8CE_HXILINX_amstrad_switch_z80_vga_sd
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic_vector (7 downto 0); 
             Q   : out   std_logic_vector (7 downto 0));
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component NEXUS_RGB
      port ( RED_FF    : in    std_logic_vector (1 downto 0); 
             RED3      : out   std_logic_vector (2 downto 0); 
             GREEN3    : out   std_logic_vector (2 downto 0); 
             GREEN_FFF : in    std_logic_vector (2 downto 0); 
             BLUE_FF   : in    std_logic_vector (1 downto 0); 
             BLUE3     : out   std_logic_vector (2 downto 0));
   end component;
   
   component VRAM32Ko_Amstrad_MUSER_amstrad_switch_z80_vga_sd
      port ( vram_CLK : in    std_logic; 
             vga_CLK  : in    std_logic; 
             vram_A   : in    std_logic_vector (14 downto 0); 
             vga_A    : in    std_logic_vector (14 downto 0); 
             vram_W   : in    std_logic; 
             vram_D   : in    std_logic_vector (7 downto 0); 
             vga_D    : out   std_logic_vector (7 downto 0));
   end component;
   
   component PALETTE_RAM
      port ( DI   : in    std_logic_vector (7 downto 0); 
             CLKI : in    std_logic; 
             CLKO : in    std_logic; 
             WR   : in    std_logic; 
             AI   : in    std_logic_vector (12 downto 0); 
             AO   : in    std_logic_vector (12 downto 0); 
             DO   : out   std_logic_vector (7 downto 0));
   end component;
   
   component aZRaEL_vram2vgaAmstradMiaow
      port ( CLK_25MHz : in    std_logic; 
             DATA      : in    std_logic_vector (7 downto 0); 
             PALETTE_D : in    std_logic_vector (7 downto 0); 
             VSYNC     : out   std_logic; 
             HSYNC     : out   std_logic; 
             ADDRESS   : out   std_logic_vector (14 downto 0); 
             PALETTE_A : out   std_logic_vector (12 downto 0); 
             RED       : out   std_logic_vector (1 downto 0); 
             GREEN     : out   std_logic_vector (2 downto 0); 
             BLUE      : out   std_logic_vector (1 downto 0));
   end component;
   
   attribute HU_SET of XLXI_321 : label is "XLXI_321_8";
   attribute HU_SET of XLXI_324 : label is "XLXI_324_7";
begin
   XLXI_320 : INV
      port map (I=>XLXN_627,
                O=>XLXN_337);
   
   XLXI_321 : FD8CE_HXILINX_amstrad_switch_z80_vga_sd
      port map (C=>XLXN_549,
                CE=>XLXN_338,
                CLR=>XLXN_339,
                D(7 downto 0)=>XLXN_340(7 downto 0),
                Q(7 downto 0)=>XLXN_344(7 downto 0));
   
   XLXI_322 : VCC
      port map (P=>XLXN_338);
   
   XLXI_323 : GND
      port map (G=>XLXN_339);
   
   XLXI_324 : FD8CE_HXILINX_amstrad_switch_z80_vga_sd
      port map (C=>XLXN_550,
                CE=>XLXN_343,
                CLR=>XLXN_342,
                D(7 downto 0)=>XLXN_344(7 downto 0),
                Q(7 downto 0)=>XLXN_452(7 downto 0));
   
   XLXI_325 : GND
      port map (G=>XLXN_342);
   
   XLXI_326 : VCC
      port map (P=>XLXN_343);
   
   XLXI_418 : NEXUS_RGB
      port map (BLUE_FF(1 downto 0)=>XLXN_703(1 downto 0),
                GREEN_FFF(2 downto 0)=>XLXN_702(2 downto 0),
                RED_FF(1 downto 0)=>XLXN_701(1 downto 0),
                BLUE3(2 downto 0)=>BLUE3(2 downto 0),
                GREEN3(2 downto 0)=>GREEN3(2 downto 0),
                RED3(2 downto 0)=>RED3(2 downto 0));
   
   XLXI_421 : INV
      port map (I=>XLXN_627,
                O=>XLXN_549);
   
   XLXI_422 : INV
      port map (I=>XLXN_549,
                O=>XLXN_550);
   
   XLXI_470 : INV
      port map (I=>CLK25MHz,
                O=>XLXN_627);
   
   XLXI_474 : VRAM32Ko_Amstrad_MUSER_amstrad_switch_z80_vga_sd
      port map (vga_A(14 downto 0)=>XLXN_693(14 downto 0),
                vga_CLK=>XLXN_627,
                vram_A(14 downto 0)=>crtc_A(14 downto 0),
                vram_CLK=>CLK4MHz,
                vram_D(7 downto 0)=>crtc_D(7 downto 0),
                vram_W=>crtc_W,
                vga_D(7 downto 0)=>XLXN_340(7 downto 0));
   
   XLXI_475 : PALETTE_RAM
      port map (AI(12 downto 0)=>palette_A(12 downto 0),
                AO(12 downto 0)=>XLXN_694(12 downto 0),
                CLKI=>CLK4MHz,
                CLKO=>XLXN_627,
                DI(7 downto 0)=>palette_D(7 downto 0),
                WR=>palette_W,
                DO(7 downto 0)=>XLXN_684(7 downto 0));
   
   XLXI_476 : aZRaEL_vram2vgaAmstradMiaow
      port map (CLK_25MHz=>XLXN_337,
                DATA(7 downto 0)=>XLXN_452(7 downto 0),
                PALETTE_D(7 downto 0)=>XLXN_684(7 downto 0),
                ADDRESS(14 downto 0)=>XLXN_693(14 downto 0),
                BLUE(1 downto 0)=>XLXN_703(1 downto 0),
                GREEN(2 downto 0)=>XLXN_702(2 downto 0),
                HSYNC=>HSYNC,
                PALETTE_A(12 downto 0)=>XLXN_694(12 downto 0),
                RED(1 downto 0)=>XLXN_701(1 downto 0),
                VSYNC=>VSYNC);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity divideby2_MUSER_amstrad_switch_z80_vga_sd is
   port ( CLKin  : in    std_logic; 
          CLKout : out   std_logic);
end divideby2_MUSER_amstrad_switch_z80_vga_sd;

architecture BEHAVIORAL of divideby2_MUSER_amstrad_switch_z80_vga_sd is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_34 : std_logic;
   signal XLXN_35 : std_logic;
   component CB2CE_HXILINX_amstrad_switch_z80_vga_sd
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_24 : label is "XLXI_24_9";
begin
   XLXI_24 : CB2CE_HXILINX_amstrad_switch_z80_vga_sd
      port map (C=>CLKin,
                CE=>XLXN_34,
                CLR=>XLXN_35,
                CEO=>open,
                Q0=>CLKout,
                Q1=>open,
                TC=>open);
   
   XLXI_25 : VCC
      port map (P=>XLXN_34);
   
   XLXI_26 : GND
      port map (G=>XLXN_35);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity bootloader_sd_MUSER_amstrad_switch_z80_vga_sd is
   port ( CD_n        : in    std_logic; 
          CLK50MHz    : in    std_logic; 
          FILE_SELECT : in    std_logic_vector (7 downto 0); 
          MISO        : in    std_logic; 
          FILE_LOADED : out   std_logic; 
          is_ucpm     : out   std_logic; 
          LEDS        : out   std_logic_vector (7 downto 0); 
          MOSI        : out   std_logic; 
          ram_A       : out   std_logic_vector (22 downto 0); 
          ram_W_n     : out   std_logic; 
          SCLK        : out   std_logic; 
          SS_n        : out   std_logic; 
          ram_D       : inout std_logic_vector (7 downto 0));
end bootloader_sd_MUSER_amstrad_switch_z80_vga_sd;

architecture BEHAVIORAL of bootloader_sd_MUSER_amstrad_switch_z80_vga_sd is
   attribute BOX_TYPE   : string ;
   signal CD_LED      : std_logic;
   signal DO_STOP     : std_logic;
   signal INIT_DONE   : std_logic;
   signal INV_PHA     : std_logic;
   signal ram_W       : std_logic;
   signal SCLK_pha    : std_logic;
   signal SPI_ON      : std_logic;
   signal XLXN_45     : std_logic;
   signal XLXN_49     : std_logic;
   signal XLXN_52     : std_logic_vector (7 downto 0);
   signal XLXN_55     : std_logic_vector (31 downto 0);
   signal XLXN_57     : std_logic;
   signal XLXN_61     : std_logic;
   signal XLXN_76     : std_logic;
   signal XLXN_80     : std_logic;
   signal XLXN_86     : std_logic;
   signal XLXN_89     : std_logic;
   signal XLXN_90     : std_logic;
   signal XLXN_91     : std_logic;
   signal zero        : std_logic;
   signal SCLK_DUMMY  : std_logic;
   component SDRAM_SPIMASTER
      port ( SCLK          : in    std_logic; 
             MISO          : in    std_logic; 
             address       : in    std_logic_vector (31 downto 0); 
             MOSI          : out   std_logic; 
             spi_init_done : out   std_logic; 
             leds          : out   std_logic_vector (7 downto 0); 
             spi_R         : in    std_logic; 
             data_out      : out   std_logic_vector (7 downto 0); 
             spi_Rdone     : out   std_logic; 
             spi_Wdone     : out   std_logic; 
             SS_n          : out   std_logic; 
             data_in       : in    std_logic_vector (7 downto 0); 
             CD_n          : in    std_logic; 
             spi_W         : in    std_logic; 
             special_W     : in    std_logic);
   end component;
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   component SDRAM_FAT32_LOADER
      port ( CLK            : in    std_logic; 
             spi_done       : in    std_logic; 
             spi_init_done  : in    std_logic; 
             stop           : in    std_logic; 
             file_select    : in    std_logic_vector (7 downto 0); 
             spi_D          : in    std_logic_vector (7 downto 0); 
             ram_D          : inout std_logic_vector (7 downto 0); 
             ram_W          : out   std_logic; 
             spi_do         : out   std_logic; 
             load_init_done : out   std_logic; 
             is_ucpm        : out   std_logic; 
             ram_A          : out   std_logic_vector (22 downto 0); 
             spi_A          : out   std_logic_vector (31 downto 0); 
             leds           : out   std_logic_vector (7 downto 0));
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
begin
   SCLK <= SCLK_DUMMY;
   XLXI_1 : SDRAM_SPIMASTER
      port map (address(31 downto 0)=>XLXN_55(31 downto 0),
                CD_n=>XLXN_89,
                data_in(7)=>zero,
                data_in(6)=>zero,
                data_in(5)=>zero,
                data_in(4)=>zero,
                data_in(3)=>zero,
                data_in(2)=>zero,
                data_in(1)=>zero,
                data_in(0)=>zero,
                MISO=>XLXN_45,
                SCLK=>SCLK_pha,
                special_W=>XLXN_91,
                spi_R=>XLXN_61,
                spi_W=>XLXN_90,
                data_out(7 downto 0)=>XLXN_52(7 downto 0),
                leds=>open,
                MOSI=>XLXN_49,
                spi_init_done=>INIT_DONE,
                spi_Rdone=>XLXN_57,
                spi_Wdone=>open,
                SS_n=>open);
   
   XLXI_3 : AND2
      port map (I0=>SPI_ON,
                I1=>CD_LED,
                O=>XLXN_80);
   
   XLXI_4 : INV
      port map (I=>CD_n,
                O=>CD_LED);
   
   XLXI_5 : XOR2
      port map (I0=>MISO,
                I1=>XLXN_86,
                O=>XLXN_45);
   
   XLXI_6 : XOR2
      port map (I0=>XLXN_49,
                I1=>XLXN_86,
                O=>MOSI);
   
   XLXI_7 : SDRAM_FAT32_LOADER
      port map (CLK=>SCLK_pha,
                file_select(7 downto 0)=>FILE_SELECT(7 downto 0),
                spi_D(7 downto 0)=>XLXN_52(7 downto 0),
                spi_done=>XLXN_57,
                spi_init_done=>INIT_DONE,
                stop=>DO_STOP,
                is_ucpm=>is_ucpm,
                leds(7 downto 0)=>LEDS(7 downto 0),
                load_init_done=>FILE_LOADED,
                ram_A(22 downto 0)=>ram_A(22 downto 0),
                ram_W=>ram_W,
                spi_A(31 downto 0)=>XLXN_55(31 downto 0),
                spi_do=>XLXN_61,
                ram_D(7 downto 0)=>ram_D(7 downto 0));
   
   XLXI_8 : XOR2
      port map (I0=>SCLK_DUMMY,
                I1=>INV_PHA,
                O=>SCLK_pha);
   
   XLXI_26 : INV
      port map (I=>ram_W,
                O=>ram_W_n);
   
   XLXI_40 : INV
      port map (I=>XLXN_76,
                O=>SS_n);
   
   XLXI_41 : VCC
      port map (P=>XLXN_76);
   
   XLXI_42 : VCC
      port map (P=>SPI_ON);
   
   XLXI_43 : GND
      port map (G=>DO_STOP);
   
   XLXI_44 : VCC
      port map (P=>INV_PHA);
   
   XLXI_45 : GND
      port map (G=>XLXN_86);
   
   XLXI_46 : BUF
      port map (I=>CLK50MHz,
                O=>SCLK_DUMMY);
   
   XLXI_52 : GND
      port map (G=>XLXN_89);
   
   XLXI_53 : GND
      port map (G=>XLXN_90);
   
   XLXI_54 : GND
      port map (G=>XLXN_91);
   
   XLXI_55 : GND
      port map (G=>zero);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity divideby3_MUSER_amstrad_switch_z80_vga_sd is
   port ( CLKin  : in    std_logic; 
          CLKout : out   std_logic);
end divideby3_MUSER_amstrad_switch_z80_vga_sd;

architecture BEHAVIORAL of divideby3_MUSER_amstrad_switch_z80_vga_sd is
   attribute BOX_TYPE              : string ;
   attribute COMPENSATION          : string ;
   attribute BANDWIDTH             : string ;
   attribute CLKOUT0_DIVIDE        : string ;
   attribute CLKOUT0_PHASE         : string ;
   attribute CLKOUT0_DUTY_CYCLE    : string ;
   attribute CLKOUT1_DIVIDE        : string ;
   attribute CLKOUT1_PHASE         : string ;
   attribute CLKOUT1_DUTY_CYCLE    : string ;
   attribute CLKOUT2_DIVIDE        : string ;
   attribute CLKOUT2_PHASE         : string ;
   attribute CLKOUT2_DUTY_CYCLE    : string ;
   attribute CLKOUT3_DIVIDE        : string ;
   attribute CLKOUT3_PHASE         : string ;
   attribute CLKOUT3_DUTY_CYCLE    : string ;
   attribute CLKOUT4_DIVIDE        : string ;
   attribute CLKOUT4_PHASE         : string ;
   attribute CLKOUT4_DUTY_CYCLE    : string ;
   attribute CLKOUT5_DIVIDE        : string ;
   attribute CLKOUT5_PHASE         : string ;
   attribute CLKOUT5_DUTY_CYCLE    : string ;
   attribute CLKFBOUT_MULT         : string ;
   attribute CLKFBOUT_PHASE        : string ;
   attribute DIVCLK_DIVIDE         : string ;
   attribute REF_JITTER            : string ;
   attribute CLKIN_PERIOD          : string ;
   attribute RESET_ON_LOSS_OF_LOCK : string ;
   signal XLXN_26 : std_logic;
   signal XLXN_27 : std_logic;
   signal XLXN_32 : std_logic;
   component BUFG
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUFG : component is "BLACK_BOX";
   
   component PLL_BASE
      -- synopsys translate_off
      generic( COMPENSATION : string :=  "SYSTEM_SYNCHRONOUS";
               BANDWIDTH : string :=  "OPTIMIZED";
               CLKOUT0_DIVIDE : integer :=  1;
               CLKOUT0_PHASE : real :=  0.0;
               CLKOUT0_DUTY_CYCLE : real :=  0.5;
               CLKOUT1_DIVIDE : integer :=  1;
               CLKOUT1_PHASE : real :=  0.0;
               CLKOUT1_DUTY_CYCLE : real :=  0.5;
               CLKOUT2_DIVIDE : integer :=  1;
               CLKOUT2_PHASE : real :=  0.0;
               CLKOUT2_DUTY_CYCLE : real :=  0.5;
               CLKOUT3_DIVIDE : integer :=  1;
               CLKOUT3_PHASE : real :=  0.0;
               CLKOUT3_DUTY_CYCLE : real :=  0.5;
               CLKOUT4_DIVIDE : integer :=  1;
               CLKOUT4_PHASE : real :=  0.0;
               CLKOUT4_DUTY_CYCLE : real :=  0.5;
               CLKOUT5_DIVIDE : integer :=  1;
               CLKOUT5_PHASE : real :=  0.0;
               CLKOUT5_DUTY_CYCLE : real :=  0.5;
               CLKFBOUT_MULT : integer :=  1;
               CLKFBOUT_PHASE : real :=  0.0;
               DIVCLK_DIVIDE : integer :=  1;
               REF_JITTER : real :=  0.1;
               CLKIN_PERIOD : real :=  0.0;
               RESET_ON_LOSS_OF_LOCK : boolean :=  FALSE);
      -- synopsys translate_on
      port ( CLKIN    : in    std_logic; 
             CLKFBIN  : in    std_logic; 
             RST      : in    std_logic; 
             CLKOUT0  : out   std_logic; 
             CLKOUT1  : out   std_logic; 
             CLKOUT2  : out   std_logic; 
             CLKOUT3  : out   std_logic; 
             CLKOUT4  : out   std_logic; 
             CLKOUT5  : out   std_logic; 
             CLKFBOUT : out   std_logic; 
             LOCKED   : out   std_logic);
   end component;
   attribute COMPENSATION of PLL_BASE : component is "SYSTEM_SYNCHRONOUS";
   attribute BANDWIDTH of PLL_BASE : component is "OPTIMIZED";
   attribute CLKOUT0_DIVIDE of PLL_BASE : component is "1";
   attribute CLKOUT0_PHASE of PLL_BASE : component is "0.0";
   attribute CLKOUT0_DUTY_CYCLE of PLL_BASE : component is "0.5";
   attribute CLKOUT1_DIVIDE of PLL_BASE : component is "1";
   attribute CLKOUT1_PHASE of PLL_BASE : component is "0.0";
   attribute CLKOUT1_DUTY_CYCLE of PLL_BASE : component is "0.5";
   attribute CLKOUT2_DIVIDE of PLL_BASE : component is "1";
   attribute CLKOUT2_PHASE of PLL_BASE : component is "0.0";
   attribute CLKOUT2_DUTY_CYCLE of PLL_BASE : component is "0.5";
   attribute CLKOUT3_DIVIDE of PLL_BASE : component is "1";
   attribute CLKOUT3_PHASE of PLL_BASE : component is "0.0";
   attribute CLKOUT3_DUTY_CYCLE of PLL_BASE : component is "0.5";
   attribute CLKOUT4_DIVIDE of PLL_BASE : component is "1";
   attribute CLKOUT4_PHASE of PLL_BASE : component is "0.0";
   attribute CLKOUT4_DUTY_CYCLE of PLL_BASE : component is "0.5";
   attribute CLKOUT5_DIVIDE of PLL_BASE : component is "1";
   attribute CLKOUT5_PHASE of PLL_BASE : component is "0.0";
   attribute CLKOUT5_DUTY_CYCLE of PLL_BASE : component is "0.5";
   attribute CLKFBOUT_MULT of PLL_BASE : component is "1";
   attribute CLKFBOUT_PHASE of PLL_BASE : component is "0.0";
   attribute DIVCLK_DIVIDE of PLL_BASE : component is "1";
   attribute REF_JITTER of PLL_BASE : component is "0.1";
   attribute CLKIN_PERIOD of PLL_BASE : component is "0.0";
   attribute RESET_ON_LOSS_OF_LOCK of PLL_BASE : component is "FALSE";
   attribute BOX_TYPE of PLL_BASE : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   attribute CLKOUT0_DIVIDE of XLXI_24 : label is "24";
   attribute CLKIN_PERIOD of XLXI_24 : label is "20.0";
   attribute CLKFBOUT_MULT of XLXI_24 : label is "8";
   attribute REF_JITTER of XLXI_24 : label is "0.0";
   attribute COMPENSATION of XLXI_24 : label is "SOURCE_SYNCHRONOUS";
begin
   XLXI_2 : BUFG
      port map (I=>XLXN_27,
                O=>XLXN_26);
   
   XLXI_24 : PLL_BASE
   -- synopsys translate_off
   generic map( CLKOUT0_DIVIDE => 24,
            CLKIN_PERIOD => 20.0,
            CLKFBOUT_MULT => 8,
            BANDWIDTH => "OPTIMIZED",
            REF_JITTER => 0.0,
            COMPENSATION => "SOURCE_SYNCHRONOUS")
   -- synopsys translate_on
      port map (CLKFBIN=>XLXN_26,
                CLKIN=>CLKin,
                RST=>XLXN_32,
                CLKFBOUT=>XLXN_27,
                CLKOUT0=>CLKout,
                CLKOUT1=>open,
                CLKOUT2=>open,
                CLKOUT3=>open,
                CLKOUT4=>open,
                CLKOUT5=>open,
                LOCKED=>open);
   
   XLXI_425 : GND
      port map (G=>XLXN_32);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity amstrad_switch_z80_vga_sd is
   port ( CLK50MHz  : in    std_logic; 
          MISO      : in    std_logic; 
          PS2_CLK   : in    std_logic; 
          PS2_DATA  : in    std_logic; 
          ADV1_n    : out   std_logic; 
          AUDIO     : out   std_logic; 
          BLUE3     : out   std_logic_vector (2 downto 0); 
          CE1_n     : out   std_logic; 
          CLK1      : out   std_logic; 
          CRE1      : out   std_logic; 
          GREEN3    : out   std_logic_vector (2 downto 0); 
          HSYNC     : out   std_logic; 
          LB1_n     : out   std_logic; 
          LEDS      : out   std_logic_vector (7 downto 0); 
          MOSI      : out   std_logic; 
          OE1_n     : out   std_logic; 
          ram_A     : out   std_logic_vector (22 downto 0); 
          ram_W_n   : out   std_logic; 
          RED3      : out   std_logic_vector (2 downto 0); 
          SCLK      : out   std_logic; 
          SS_n      : out   std_logic; 
          UB1_n     : out   std_logic; 
          VSYNC     : out   std_logic; 
          JOYSTICK1 : inout std_logic_vector (7 downto 0); 
          JOYSTICK2 : inout std_logic_vector (7 downto 0); 
          ram_D     : inout std_logic_vector (7 downto 0); 
          ram_D_U   : inout std_logic_vector (7 downto 0));
end amstrad_switch_z80_vga_sd;

architecture BEHAVIORAL of amstrad_switch_z80_vga_sd is
   attribute BOX_TYPE   : string ;
   signal CD_n      : std_logic;
   signal cero      : std_logic;
   signal CLK8      : std_logic_vector (2 downto 0);
   signal crtc_A    : std_logic_vector (15 downto 0);
   signal RESET_n   : std_logic;
   signal uno       : std_logic;
   signal XLXN_646  : std_logic;
   signal XLXN_717  : std_logic;
   signal XLXN_726  : std_logic;
   signal XLXN_731  : std_logic;
   signal XLXN_732  : std_logic_vector (7 downto 0);
   signal XLXN_736  : std_logic;
   signal XLXN_737  : std_logic_vector (22 downto 0);
   signal XLXN_744  : std_logic;
   signal XLXN_745  : std_logic_vector (12 downto 0);
   signal XLXN_746  : std_logic_vector (7 downto 0);
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component divideby3_MUSER_amstrad_switch_z80_vga_sd
      port ( CLKin  : in    std_logic; 
             CLKout : out   std_logic);
   end component;
   
   component data_off
      port ( off : inout std_logic_vector (7 downto 0));
   end component;
   
   component bootloader_sd_MUSER_amstrad_switch_z80_vga_sd
      port ( CD_n        : in    std_logic; 
             MISO        : in    std_logic; 
             FILE_SELECT : in    std_logic_vector (7 downto 0); 
             CLK50MHz    : in    std_logic; 
             ram_D       : inout std_logic_vector (7 downto 0); 
             MOSI        : out   std_logic; 
             ram_A       : out   std_logic_vector (22 downto 0); 
             SCLK        : out   std_logic; 
             ram_W_n     : out   std_logic; 
             LEDS        : out   std_logic_vector (7 downto 0); 
             SS_n        : out   std_logic; 
             is_ucpm     : out   std_logic; 
             FILE_LOADED : out   std_logic);
   end component;
   
   component divideby2_MUSER_amstrad_switch_z80_vga_sd
      port ( CLKin  : in    std_logic; 
             CLKout : out   std_logic);
   end component;
   
   component amstrad_video_MUSER_amstrad_switch_z80_vga_sd
      port ( crtc_W    : in    std_logic; 
             crtc_D    : in    std_logic_vector (7 downto 0); 
             crtc_A    : in    std_logic_vector (14 downto 0); 
             CLK4MHz   : in    std_logic; 
             CLK25MHz  : in    std_logic; 
             palette_D : in    std_logic_vector (7 downto 0); 
             palette_A : in    std_logic_vector (12 downto 0); 
             palette_W : in    std_logic; 
             HSYNC     : out   std_logic; 
             VSYNC     : out   std_logic; 
             RED3      : out   std_logic_vector (2 downto 0); 
             GREEN3    : out   std_logic_vector (2 downto 0); 
             BLUE3     : out   std_logic_vector (2 downto 0));
   end component;
   
   component amstrad_motherboard_MUSER_amstrad_switch_z80_vga_sd
      port ( init_A    : in    std_logic_vector (22 downto 0); 
             init_W_n  : in    std_logic; 
             CLK16MHz  : in    std_logic; 
             is_ucpm   : in    std_logic; 
             PS2_CLK   : in    std_logic; 
             PS2_DATA  : in    std_logic; 
             RESET_n   : in    std_logic; 
             ram_D     : inout std_logic_vector (7 downto 0); 
             JOYSTICK2 : inout std_logic_vector (7 downto 0); 
             JOYSTICK1 : inout std_logic_vector (7 downto 0); 
             CLK8      : out   std_logic_vector (2 downto 0); 
             OE1_n     : out   std_logic; 
             ram_A     : out   std_logic_vector (22 downto 0); 
             audio     : out   std_logic; 
             crtc_A    : out   std_logic_vector (15 downto 0); 
             crtc_W    : out   std_logic; 
             ram_W_n   : out   std_logic; 
             crtc_D    : out   std_logic_vector (7 downto 0); 
             palette_W : out   std_logic; 
             palette_A : out   std_logic_vector (12 downto 0); 
             palette_D : out   std_logic_vector (7 downto 0));
   end component;
   
begin
   XLXI_163 : GND
      port map (G=>CE1_n);
   
   XLXI_253 : GND
      port map (G=>cero);
   
   XLXI_256 : VCC
      port map (P=>uno);
   
   XLXI_415 : divideby3_MUSER_amstrad_switch_z80_vga_sd
      port map (CLKin=>CLK50MHz,
                CLKout=>XLXN_717);
   
   XLXI_424 : GND
      port map (G=>LB1_n);
   
   XLXI_425 : GND
      port map (G=>UB1_n);
   
   XLXI_446 : GND
      port map (G=>CRE1);
   
   XLXI_457 : GND
      port map (G=>CLK1);
   
   XLXI_458 : GND
      port map (G=>ADV1_n);
   
   XLXI_461 : data_off
      port map (off(7 downto 0)=>ram_D_U(7 downto 0));
   
   XLXI_462 : bootloader_sd_MUSER_amstrad_switch_z80_vga_sd
      port map (CD_n=>CD_n,
                CLK50MHz=>CLK8(2),
                FILE_SELECT(7)=>cero,
                FILE_SELECT(6)=>cero,
                FILE_SELECT(5)=>cero,
                FILE_SELECT(4)=>cero,
                FILE_SELECT(3)=>cero,
                FILE_SELECT(2)=>uno,
                FILE_SELECT(1)=>uno,
                FILE_SELECT(0)=>uno,
                MISO=>MISO,
                FILE_LOADED=>RESET_n,
                is_ucpm=>XLXN_726,
                LEDS(7 downto 0)=>LEDS(7 downto 0),
                MOSI=>MOSI,
                ram_A(22 downto 0)=>XLXN_737(22 downto 0),
                ram_W_n=>XLXN_736,
                SCLK=>SCLK,
                SS_n=>SS_n,
                ram_D(7 downto 0)=>ram_D(7 downto 0));
   
   XLXI_500 : divideby2_MUSER_amstrad_switch_z80_vga_sd
      port map (CLKin=>CLK50MHz,
                CLKout=>XLXN_646);
   
   XLXI_511 : amstrad_video_MUSER_amstrad_switch_z80_vga_sd
      port map (CLK4MHz=>CLK8(2),
                CLK25MHz=>XLXN_646,
                crtc_A(14 downto 0)=>crtc_A(14 downto 0),
                crtc_D(7 downto 0)=>XLXN_732(7 downto 0),
                crtc_W=>XLXN_731,
                palette_A(12 downto 0)=>XLXN_745(12 downto 0),
                palette_D(7 downto 0)=>XLXN_746(7 downto 0),
                palette_W=>XLXN_744,
                BLUE3(2 downto 0)=>BLUE3(2 downto 0),
                GREEN3(2 downto 0)=>GREEN3(2 downto 0),
                HSYNC=>HSYNC,
                RED3(2 downto 0)=>RED3(2 downto 0),
                VSYNC=>VSYNC);
   
   XLXI_512 : amstrad_motherboard_MUSER_amstrad_switch_z80_vga_sd
      port map (CLK16MHz=>XLXN_717,
                init_A(22 downto 0)=>XLXN_737(22 downto 0),
                init_W_n=>XLXN_736,
                is_ucpm=>XLXN_726,
                PS2_CLK=>PS2_CLK,
                PS2_DATA=>PS2_DATA,
                RESET_n=>RESET_n,
                audio=>AUDIO,
                CLK8(2 downto 0)=>CLK8(2 downto 0),
                crtc_A(15 downto 0)=>crtc_A(15 downto 0),
                crtc_D(7 downto 0)=>XLXN_732(7 downto 0),
                crtc_W=>XLXN_731,
                OE1_n=>OE1_n,
                palette_A(12 downto 0)=>XLXN_745(12 downto 0),
                palette_D(7 downto 0)=>XLXN_746(7 downto 0),
                palette_W=>XLXN_744,
                ram_A(22 downto 0)=>ram_A(22 downto 0),
                ram_W_n=>ram_W_n,
                JOYSTICK1(7 downto 0)=>JOYSTICK1(7 downto 0),
                JOYSTICK2(7 downto 0)=>JOYSTICK2(7 downto 0),
                ram_D(7 downto 0)=>ram_D(7 downto 0));
   
   XLXI_513 : GND
      port map (G=>CD_n);
   
end BEHAVIORAL;


