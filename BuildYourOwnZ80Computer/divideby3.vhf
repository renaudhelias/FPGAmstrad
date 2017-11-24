--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : divideby3.vhf
-- /___/   /\     Timestamp : 11/23/2017 14:13:30
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath E:/fpga/ZXUNO/V4/8bit/CPC/ipcore_dir -intstyle ise -family spartan6 -flat -suppress -vhdl E:/fpga/ZXUNO/V4/8bit/CPC/divideby3.vhf -w E:/fpga/ZXUNO/V4/8bit/CPC/divideby3.sch
--Design Name: divideby3
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

entity divideby3 is
   port ( CLKin  : in    std_logic; 
          CLKout : out   std_logic);
end divideby3;

architecture BEHAVIORAL of divideby3 is
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


