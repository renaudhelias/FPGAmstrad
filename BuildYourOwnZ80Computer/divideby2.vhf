--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : divideby2.vhf
-- /___/   /\     Timestamp : 11/22/2017 20:09:15
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath E:/fpga/ZXUNO/V4/8bit/CPC/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl E:/fpga/ZXUNO/V4/8bit/CPC/divideby2.vhf -w E:/fpga/ZXUNO/V4/8bit/CPC/divideby2.sch
--Design Name: divideby2
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL CB2CE_HXILINX_divideby2 -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB2CE_HXILINX_divideby2 is
  
port (
    CEO  : out STD_LOGIC;
    Q0   : out STD_LOGIC;
    Q1   : out STD_LOGIC;
    TC   : out STD_LOGIC;
    C    : in STD_LOGIC;
    CE   : in STD_LOGIC;
    CLR  : in STD_LOGIC
    );
end CB2CE_HXILINX_divideby2;

architecture Behavioral of CB2CE_HXILINX_divideby2 is

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

entity divideby2 is
   port ( CLKin  : in    std_logic; 
          CLKout : out   std_logic);
end divideby2;

architecture BEHAVIORAL of divideby2 is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_34 : std_logic;
   signal XLXN_35 : std_logic;
   component CB2CE_HXILINX_divideby2
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
   
   attribute HU_SET of XLXI_24 : label is "XLXI_24_0";
begin
   XLXI_24 : CB2CE_HXILINX_divideby2
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


