<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLKin" />
        <signal name="CLKout" />
        <signal name="XLXN_26" />
        <signal name="XLXN_32" />
        <signal name="XLXN_34" />
        <signal name="XLXN_27" />
        <port polarity="Input" name="CLKin" />
        <port polarity="Output" name="CLKout" />
        <blockdef name="bufg">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="0" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <blockdef name="pll_base">
            <timestamp>2005-6-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-288" height="288" />
            <line x2="0" y1="-256" y2="-256" x1="64" />
            <line x2="0" y1="-144" y2="-144" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-256" y2="-256" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-192" y2="-192" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-64" y2="-64" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="bufg" name="XLXI_2">
            <blockpin signalname="XLXN_27" name="I" />
            <blockpin signalname="XLXN_26" name="O" />
        </block>
        <block symbolname="pll_base" name="XLXI_24">
            <attr value="24" name="CLKOUT0_DIVIDE">
                <trait editname="all:1 sch:0" />
                <trait edittrait="all:1 sch:0" />
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="Integer 1 128" />
            </attr>
            <attr value="20" name="CLKIN_PERIOD">
                <trait editname="all:1 sch:0" />
                <trait edittrait="all:1 sch:0" />
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="Float 1 52.63" />
            </attr>
            <attr value="8" name="CLKFBOUT_MULT">
                <trait editname="all:1 sch:0" />
                <trait edittrait="all:1 sch:0" />
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="Integer 1 74" />
            </attr>
            <attr value="OPTIMIZED" name="BANDWIDTH">
                <trait editname="all:1 sch:0" />
                <trait edittrait="all:1 sch:0" />
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="StringValList OPTIMIZED HIGH LOW" />
            </attr>
            <attr value="0" name="REF_JITTER">
                <trait editname="all:1 sch:0" />
                <trait edittrait="all:1 sch:0" />
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="Float 0 0.999" />
            </attr>
            <attr value="SOURCE_SYNCHRONOUS" name="COMPENSATION">
                <trait editname="all:1 sch:0" />
                <trait edittrait="all:1 sch:0" />
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="StringValList SYSTEM_SYNCHRONOUS SOURCE_SYNCHRONOUS" />
            </attr>
            <blockpin signalname="CLKin" name="CLKIN" />
            <blockpin signalname="XLXN_26" name="CLKFBIN" />
            <blockpin signalname="XLXN_32" name="RST" />
            <blockpin signalname="CLKout" name="CLKOUT0" />
            <blockpin name="CLKOUT1" />
            <blockpin name="CLKOUT2" />
            <blockpin name="CLKOUT3" />
            <blockpin name="CLKOUT4" />
            <blockpin name="CLKOUT5" />
            <blockpin signalname="XLXN_27" name="CLKFBOUT" />
            <blockpin name="LOCKED" />
        </block>
        <block symbolname="gnd" name="XLXI_425">
            <blockpin signalname="XLXN_32" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <text style="fontsize:48;fontname:Arial" x="1676" y="840">http://www.hitequest.com/Hardware/a120.htm</text>
        <branch name="CLKin">
            <wire x2="496" y1="1552" y2="1552" x1="368" />
        </branch>
        <instance x="496" y="1808" name="XLXI_24" orien="R0">
        </instance>
        <branch name="XLXN_32">
            <wire x2="496" y1="1776" y2="1776" x1="272" />
        </branch>
        <branch name="CLKout">
            <wire x2="1584" y1="1552" y2="1552" x1="880" />
        </branch>
        <instance x="144" y="1712" name="XLXI_425" orien="R90" />
        <iomarker fontsize="28" x="368" y="1552" name="CLKin" orien="R180" />
        <iomarker fontsize="28" x="1584" y="1552" name="CLKout" orien="R0" />
        <instance x="800" y="1216" name="XLXI_2" orien="R180" />
        <branch name="XLXN_26">
            <wire x2="192" y1="1248" y2="1664" x1="192" />
            <wire x2="496" y1="1664" y2="1664" x1="192" />
            <wire x2="576" y1="1248" y2="1248" x1="192" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="928" y1="1248" y2="1248" x1="800" />
            <wire x2="1040" y1="1248" y2="1248" x1="928" />
            <wire x2="1040" y1="1248" y2="1744" x1="1040" />
            <wire x2="1008" y1="1744" y2="1744" x1="880" />
            <wire x2="1040" y1="1744" y2="1744" x1="1008" />
        </branch>
    </sheet>
</drawing>