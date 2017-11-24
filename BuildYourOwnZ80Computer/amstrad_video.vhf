--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : amstrad_video.vhf
-- /___/   /\     Timestamp : 11/22/2017 20:09:16
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath E:/fpga/ZXUNO/V4/8bit/CPC/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl E:/fpga/ZXUNO/V4/8bit/CPC/amstrad_video.vhf -w E:/fpga/ZXUNO/V4/8bit/CPC/amstrad_video.sch
--Design Name: amstrad_video
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL FD8CE_HXILINX_amstrad_video -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FD8CE_HXILINX_amstrad_video is
port (
    Q   : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');

    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC;
    D   : in STD_LOGIC_VECTOR(7 downto 0)
    );
end FD8CE_HXILINX_amstrad_video;

architecture Behavioral of FD8CE_HXILINX_amstrad_video is

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


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity VRAM32Ko_Amstrad_MUSER_amstrad_video is
   port ( vga_A    : in    std_logic_vector (14 downto 0); 
          vga_CLK  : in    std_logic; 
          vram_A   : in    std_logic_vector (14 downto 0); 
          vram_CLK : in    std_logic; 
          vram_D   : in    std_logic_vector (7 downto 0); 
          vram_W   : in    std_logic; 
          vga_D    : out   std_logic_vector (7 downto 0));
end VRAM32Ko_Amstrad_MUSER_amstrad_video;

architecture BEHAVIORAL of VRAM32Ko_Amstrad_MUSER_amstrad_video is
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

entity amstrad_video is
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
end amstrad_video;

architecture BEHAVIORAL of amstrad_video is
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
   
   component FD8CE_HXILINX_amstrad_video
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
   
   component VRAM32Ko_Amstrad_MUSER_amstrad_video
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
   
   attribute HU_SET of XLXI_321 : label is "XLXI_321_7";
   attribute HU_SET of XLXI_324 : label is "XLXI_324_6";
begin
   XLXI_320 : INV
      port map (I=>XLXN_627,
                O=>XLXN_337);
   
   XLXI_321 : FD8CE_HXILINX_amstrad_video
      port map (C=>XLXN_549,
                CE=>XLXN_338,
                CLR=>XLXN_339,
                D(7 downto 0)=>XLXN_340(7 downto 0),
                Q(7 downto 0)=>XLXN_344(7 downto 0));
   
   XLXI_322 : VCC
      port map (P=>XLXN_338);
   
   XLXI_323 : GND
      port map (G=>XLXN_339);
   
   XLXI_324 : FD8CE_HXILINX_amstrad_video
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
   
   XLXI_474 : VRAM32Ko_Amstrad_MUSER_amstrad_video
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


