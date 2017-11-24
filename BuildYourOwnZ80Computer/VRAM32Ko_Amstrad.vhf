--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : VRAM32Ko_Amstrad.vhf
-- /___/   /\     Timestamp : 11/22/2017 20:09:17
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath E:/fpga/ZXUNO/V4/8bit/CPC/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl E:/fpga/ZXUNO/V4/8bit/CPC/VRAM32Ko_Amstrad.vhf -w E:/fpga/ZXUNO/V4/8bit/CPC/VRAM32Ko_Amstrad.sch
--Design Name: VRAM32Ko_Amstrad
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity VRAM32Ko_Amstrad is
   port ( vga_A    : in    std_logic_vector (14 downto 0); 
          vga_CLK  : in    std_logic; 
          vram_A   : in    std_logic_vector (14 downto 0); 
          vram_CLK : in    std_logic; 
          vram_D   : in    std_logic_vector (7 downto 0); 
          vram_W   : in    std_logic; 
          vga_D    : out   std_logic_vector (7 downto 0));
end VRAM32Ko_Amstrad;

architecture BEHAVIORAL of VRAM32Ko_Amstrad is
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


