<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_3" />
        <signal name="XLXN_5" />
        <signal name="CLK50MHz" />
        <signal name="CLK25MHz" />
        <signal name="CLK4MHz" />
        <signal name="CLK8(1)" />
        <signal name="CLK8(2)" />
        <signal name="CLK8(2:0)" />
        <signal name="CLK8(0)" />
        <signal name="XLXN_19" />
        <signal name="XLXN_24" />
        <signal name="XLXN_2" />
        <signal name="XLXN_26" />
        <port polarity="Input" name="CLK50MHz" />
        <port polarity="Output" name="CLK25MHz" />
        <port polarity="Output" name="CLK4MHz" />
        <port polarity="Output" name="CLK8(2:0)" />
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
        <blockdef name="bufg">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="0" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="pll_base" name="XLXI_1">
            <attr value="96" name="CLKOUT4_DIVIDE">
                <trait editname="all:1 sch:0" />
                <trait edittrait="all:1 sch:0" />
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="Integer 1 128" />
            </attr>
            <attr value="96" name="CLKOUT3_DIVIDE">
                <trait editname="all:1 sch:0" />
                <trait edittrait="all:1 sch:0" />
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="Integer 1 128" />
            </attr>
            <attr value="48" name="CLKOUT2_DIVIDE">
                <trait editname="all:1 sch:0" />
                <trait edittrait="all:1 sch:0" />
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="Integer 1 128" />
            </attr>
            <attr value="24" name="CLKOUT1_DIVIDE">
                <trait editname="all:1 sch:0" />
                <trait edittrait="all:1 sch:0" />
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="Integer 1 128" />
            </attr>
            <attr value="16" name="CLKOUT0_DIVIDE">
                <trait editname="all:1 sch:0" />
                <trait edittrait="all:1 sch:0" />
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="Integer 1 128" />
            </attr>
            <attr value="8" name="CLKFBOUT_MULT">
                <trait editname="all:1 sch:0" />
                <trait edittrait="all:1 sch:0" />
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="Integer 1 74" />
            </attr>
            <blockpin signalname="CLK50MHz" name="CLKIN" />
            <blockpin signalname="XLXN_3" name="CLKFBIN" />
            <blockpin signalname="XLXN_1" name="RST" />
            <blockpin signalname="CLK25MHz" name="CLKOUT0" />
            <blockpin signalname="XLXN_26" name="CLKOUT1" />
            <blockpin signalname="CLK8(1)" name="CLKOUT2" />
            <blockpin signalname="CLK8(2)" name="CLKOUT3" />
            <blockpin signalname="CLK4MHz" name="CLKOUT4" />
            <blockpin name="CLKOUT5" />
            <blockpin signalname="XLXN_2" name="CLKFBOUT" />
            <blockpin name="LOCKED" />
        </block>
        <block symbolname="bufg" name="XLXI_2">
            <blockpin signalname="XLXN_2" name="I" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_425">
            <blockpin signalname="XLXN_1" name="G" />
        </block>
        <block symbolname="inv" name="XLXI_426">
            <blockpin signalname="XLXN_26" name="I" />
            <blockpin signalname="CLK8(0)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1232" y="768" name="XLXI_1" orien="R0">
        </instance>
        <instance x="960" y="672" name="XLXI_425" orien="R90" />
        <branch name="XLXN_1">
            <wire x2="1232" y1="736" y2="736" x1="1088" />
        </branch>
        <branch name="CLK50MHz">
            <wire x2="1232" y1="512" y2="512" x1="1200" />
        </branch>
        <iomarker fontsize="28" x="1200" y="512" name="CLK50MHz" orien="R180" />
        <branch name="CLK25MHz">
            <wire x2="1680" y1="512" y2="512" x1="1616" />
        </branch>
        <branch name="CLK4MHz">
            <wire x2="1680" y1="640" y2="640" x1="1616" />
        </branch>
        <iomarker fontsize="28" x="1680" y="512" name="CLK25MHz" orien="R0" />
        <iomarker fontsize="28" x="1680" y="640" name="CLK4MHz" orien="R0" />
        <branch name="CLK8(1)">
            <wire x2="2384" y1="576" y2="576" x1="1616" />
        </branch>
        <branch name="CLK8(2)">
            <wire x2="1632" y1="608" y2="608" x1="1616" />
            <wire x2="1632" y1="592" y2="608" x1="1632" />
            <wire x2="1920" y1="592" y2="592" x1="1632" />
            <wire x2="1920" y1="592" y2="608" x1="1920" />
            <wire x2="2384" y1="608" y2="608" x1="1920" />
        </branch>
        <branch name="CLK8(2:0)">
            <wire x2="2480" y1="352" y2="464" x1="2480" />
            <wire x2="2480" y1="464" y2="576" x1="2480" />
            <wire x2="2480" y1="576" y2="608" x1="2480" />
        </branch>
        <bustap x2="2384" y1="576" y2="576" x1="2480" />
        <bustap x2="2384" y1="608" y2="608" x1="2480" />
        <iomarker fontsize="28" x="2480" y="352" name="CLK8(2:0)" orien="R270" />
        <branch name="CLK8(0)">
            <wire x2="2384" y1="464" y2="464" x1="2320" />
        </branch>
        <instance x="1584" y="32" name="XLXI_2" orien="R180" />
        <branch name="XLXN_3">
            <wire x2="944" y1="64" y2="624" x1="944" />
            <wire x2="1232" y1="624" y2="624" x1="944" />
            <wire x2="1360" y1="64" y2="64" x1="944" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="2672" y1="64" y2="64" x1="1584" />
            <wire x2="2672" y1="64" y2="704" x1="2672" />
            <wire x2="2672" y1="704" y2="704" x1="1616" />
        </branch>
        <instance x="2096" y="496" name="XLXI_426" orien="R0" />
        <bustap x2="2384" y1="464" y2="464" x1="2480" />
        <branch name="XLXN_26">
            <wire x2="1984" y1="544" y2="544" x1="1616" />
            <wire x2="2096" y1="464" y2="464" x1="1984" />
            <wire x2="1984" y1="464" y2="544" x1="1984" />
        </branch>
    </sheet>
</drawing>