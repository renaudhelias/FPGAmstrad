<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="CLK50MHz" />
        <signal name="XLXN_7" />
        <signal name="LEDS(7:0)" />
        <signal name="USB_DATA(1:0)" />
        <signal name="USB_DATA(0)" />
        <signal name="USB_DATA(1)" />
        <port polarity="Input" name="CLK50MHz" />
        <port polarity="Output" name="LEDS(7:0)" />
        <port polarity="BiDirectional" name="USB_DATA(1:0)" />
        <blockdef name="USB_snifer">
            <timestamp>2011-9-16T15:27:40</timestamp>
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-64" height="120" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="20" height="24" />
        </blockdef>
        <blockdef name="pulldown">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-160" y2="-128" x1="64" />
            <line x2="60" y1="0" y2="0" x1="68" />
            <line x2="52" y1="-16" y2="-16" x1="76" />
            <line x2="40" y1="-32" y2="-32" x1="88" />
            <line x2="64" y1="-108" y2="-128" x1="64" />
            <line x2="64" y1="-104" y2="-108" x1="80" />
            <line x2="80" y1="-88" y2="-104" x1="48" />
            <line x2="48" y1="-72" y2="-88" x1="80" />
            <line x2="80" y1="-56" y2="-72" x1="48" />
            <line x2="48" y1="-48" y2="-56" x1="64" />
            <line x2="64" y1="-32" y2="-48" x1="64" />
        </blockdef>
        <blockdef name="pullup">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-108" y2="-128" x1="64" />
            <line x2="64" y1="-104" y2="-108" x1="80" />
            <line x2="80" y1="-88" y2="-104" x1="48" />
            <line x2="48" y1="-72" y2="-88" x1="80" />
            <line x2="80" y1="-56" y2="-72" x1="48" />
            <line x2="48" y1="-48" y2="-56" x1="64" />
            <line x2="64" y1="-32" y2="-48" x1="64" />
            <line x2="64" y1="-56" y2="-48" x1="48" />
            <line x2="48" y1="-72" y2="-56" x1="80" />
            <line x2="80" y1="-88" y2="-72" x1="48" />
            <line x2="48" y1="-104" y2="-88" x1="80" />
            <line x2="80" y1="-108" y2="-104" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-128" y2="-128" x1="96" />
        </blockdef>
        <blockdef name="dcm_sp">
            <timestamp>2007-4-11T22:49:47</timestamp>
            <line x2="0" y1="-832" y2="-832" x1="64" />
            <rect width="256" x="64" y="-1024" height="960" />
            <line x2="320" y1="-960" y2="-960" x1="384" />
            <line x2="320" y1="-896" y2="-896" x1="384" />
            <line x2="320" y1="-832" y2="-832" x1="384" />
            <line x2="320" y1="-576" y2="-576" x1="384" />
            <line x2="320" y1="-768" y2="-768" x1="384" />
            <line x2="320" y1="-640" y2="-640" x1="384" />
            <line x2="320" y1="-704" y2="-704" x1="384" />
            <line x2="320" y1="-512" y2="-512" x1="384" />
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="64" y1="-960" y2="-960" x1="0" />
            <line x2="64" y1="-896" y2="-896" x1="0" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <rect width="64" x="320" y="-336" height="32" />
            <line x2="80" y1="-944" y2="-960" x1="64" />
            <line x2="64" y1="-960" y2="-976" x1="80" />
            <line x2="64" y1="-288" y2="-288" x1="320" />
            <line x2="80" y1="-880" y2="-896" x1="64" />
            <line x2="64" y1="-896" y2="-912" x1="80" />
        </blockdef>
        <blockdef name="bufg">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="0" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <block symbolname="dcm_sp" name="XLXI_5">
            <attr value="2" name="CLKFX_MULTIPLY">
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="Integer 1 32" />
            </attr>
            <blockpin signalname="XLXN_2" name="CLKFB" />
            <blockpin signalname="CLK50MHz" name="CLKIN" />
            <blockpin name="DSSEN" />
            <blockpin name="PSCLK" />
            <blockpin name="PSEN" />
            <blockpin name="PSINCDEC" />
            <blockpin name="RST" />
            <blockpin signalname="XLXN_1" name="CLK0" />
            <blockpin name="CLK180" />
            <blockpin name="CLK270" />
            <blockpin name="CLK2X" />
            <blockpin name="CLK2X180" />
            <blockpin name="CLK90" />
            <blockpin name="CLKDV" />
            <blockpin signalname="XLXN_7" name="CLKFX" />
            <blockpin name="CLKFX180" />
            <blockpin name="LOCKED" />
            <blockpin name="PSDONE" />
            <blockpin name="STATUS(7:0)" />
        </block>
        <block symbolname="bufg" name="XLXI_6">
            <blockpin signalname="XLXN_1" name="I" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="USB_snifer" name="XLXI_1">
            <blockpin signalname="USB_DATA(1:0)" name="USB_DATA(1:0)" />
            <blockpin signalname="XLXN_7" name="CLK" />
            <blockpin signalname="LEDS(7:0)" name="leds(7:0)" />
        </block>
        <block symbolname="pullup" name="XLXI_4">
            <blockpin signalname="USB_DATA(1)" name="O" />
        </block>
        <block symbolname="pulldown" name="XLXI_3">
            <blockpin signalname="USB_DATA(0)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="432" y="1744" name="XLXI_5" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="CLKFX_MULTIPLY" x="0" y="-1112" type="instance" />
        </instance>
        <instance x="752" y="512" name="XLXI_6" orien="R180" />
        <branch name="XLXN_1">
            <wire x2="832" y1="544" y2="544" x1="752" />
            <wire x2="832" y1="544" y2="784" x1="832" />
            <wire x2="832" y1="784" y2="784" x1="816" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="528" y1="544" y2="544" x1="320" />
            <wire x2="320" y1="544" y2="848" x1="320" />
            <wire x2="432" y1="848" y2="848" x1="320" />
        </branch>
        <branch name="CLK50MHz">
            <wire x2="384" y1="752" y2="784" x1="384" />
            <wire x2="432" y1="784" y2="784" x1="384" />
        </branch>
        <iomarker fontsize="28" x="384" y="752" name="CLK50MHz" orien="R270" />
        <branch name="LEDS(7:0)">
            <wire x2="464" y1="1904" y2="1904" x1="432" />
        </branch>
        <bustap x2="976" y1="2032" y2="2032" x1="880" />
        <bustap x2="976" y1="1984" y2="1984" x1="880" />
        <branch name="USB_DATA(1:0)">
            <wire x2="880" y1="1840" y2="1840" x1="848" />
            <wire x2="880" y1="1840" y2="1984" x1="880" />
            <wire x2="880" y1="1984" y2="2032" x1="880" />
            <wire x2="944" y1="1840" y2="1840" x1="880" />
        </branch>
        <branch name="USB_DATA(1)">
            <wire x2="1216" y1="2032" y2="2032" x1="976" />
        </branch>
        <instance x="464" y="1872" name="XLXI_1" orien="R0">
        </instance>
        <iomarker fontsize="28" x="944" y="1840" name="USB_DATA(1:0)" orien="R0" />
        <iomarker fontsize="28" x="432" y="1904" name="LEDS(7:0)" orien="R180" />
        <branch name="XLXN_7">
            <wire x2="928" y1="1712" y2="1712" x1="384" />
            <wire x2="384" y1="1712" y2="1840" x1="384" />
            <wire x2="464" y1="1840" y2="1840" x1="384" />
            <wire x2="928" y1="1232" y2="1232" x1="816" />
            <wire x2="928" y1="1232" y2="1712" x1="928" />
        </branch>
        <branch name="USB_DATA(0)">
            <wire x2="1200" y1="1984" y2="1984" x1="976" />
            <wire x2="1200" y1="1872" y2="1984" x1="1200" />
            <wire x2="1392" y1="1872" y2="1872" x1="1200" />
        </branch>
        <instance x="1216" y="1968" name="XLXI_4" orien="R90" />
        <instance x="1552" y="1936" name="XLXI_3" orien="R270" />
    </sheet>
</drawing>