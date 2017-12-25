<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="crtc_W" />
        <signal name="crtc_D(7:0)" />
        <signal name="crtc_A(14:0)" />
        <signal name="CLK4MHz" />
        <signal name="CLK25MHz" />
        <signal name="HSYNC" />
        <signal name="VSYNC" />
        <signal name="XLXN_693(14:0)" />
        <signal name="RED3(2:0)" />
        <signal name="GREEN3(2:0)" />
        <signal name="BLUE3(2:0)" />
        <signal name="XLXN_701(1:0)" />
        <signal name="XLXN_702(2:0)" />
        <signal name="XLXN_703(1:0)" />
        <signal name="debug_leds(7:0)" />
        <signal name="XLXN_704(7:0)" />
        <port polarity="Input" name="crtc_W" />
        <port polarity="Input" name="crtc_D(7:0)" />
        <port polarity="Input" name="crtc_A(14:0)" />
        <port polarity="Input" name="CLK4MHz" />
        <port polarity="Input" name="CLK25MHz" />
        <port polarity="Output" name="HSYNC" />
        <port polarity="Output" name="VSYNC" />
        <port polarity="Output" name="RED3(2:0)" />
        <port polarity="Output" name="GREEN3(2:0)" />
        <port polarity="Output" name="BLUE3(2:0)" />
        <port polarity="Input" name="debug_leds(7:0)" />
        <blockdef name="NEXUS_RGB">
            <timestamp>2017-11-19T6:8:8</timestamp>
            <rect width="64" x="320" y="-428" height="24" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <rect width="64" x="0" y="-396" height="24" />
            <line x2="0" y1="-384" y2="-384" x1="64" />
            <rect width="256" x="64" y="-448" height="236" />
            <rect width="64" x="320" y="-364" height="24" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="64" x="0" y="-332" height="24" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="-240" y2="-240" x1="64" />
            <rect width="64" x="0" y="-252" height="24" />
            <rect width="64" x="320" y="-284" height="24" />
            <line x2="384" y1="-272" y2="-272" x1="320" />
        </blockdef>
        <blockdef name="VRAM32Ko_Amstrad">
            <timestamp>2011-11-26T15:19:44</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-364" height="24" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
        </blockdef>
        <blockdef name="aZRaEL_vram2vgaAmstradMiaow">
            <timestamp>2017-12-24T16:37:47</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="512" y1="-416" y2="-416" x1="448" />
            <line x2="512" y1="-352" y2="-352" x1="448" />
            <rect width="64" x="448" y="-300" height="24" />
            <line x2="512" y1="-288" y2="-288" x1="448" />
            <rect width="64" x="448" y="-172" height="24" />
            <line x2="512" y1="-160" y2="-160" x1="448" />
            <rect width="64" x="448" y="-108" height="24" />
            <line x2="512" y1="-96" y2="-96" x1="448" />
            <rect width="64" x="448" y="-44" height="24" />
            <line x2="512" y1="-32" y2="-32" x1="448" />
            <rect width="384" x="64" y="-448" height="512" />
        </blockdef>
        <block symbolname="VRAM32Ko_Amstrad" name="XLXI_474">
            <blockpin signalname="CLK4MHz" name="vram_CLK" />
            <blockpin signalname="CLK25MHz" name="vga_CLK" />
            <blockpin signalname="crtc_A(14:0)" name="vram_A(14:0)" />
            <blockpin signalname="XLXN_693(14:0)" name="vga_A(14:0)" />
            <blockpin signalname="crtc_W" name="vram_W" />
            <blockpin signalname="crtc_D(7:0)" name="vram_D(7:0)" />
            <blockpin signalname="XLXN_704(7:0)" name="vga_D(7:0)" />
        </block>
        <block symbolname="aZRaEL_vram2vgaAmstradMiaow" name="joe_dalton">
            <blockpin signalname="CLK25MHz" name="CLK_25MHz" />
            <blockpin signalname="XLXN_704(7:0)" name="DATA(7:0)" />
            <blockpin signalname="debug_leds(7:0)" name="debug_leds(7:0)" />
            <blockpin signalname="VSYNC" name="VSYNC" />
            <blockpin signalname="HSYNC" name="HSYNC" />
            <blockpin signalname="XLXN_693(14:0)" name="ADDRESS(14:0)" />
            <blockpin signalname="XLXN_701(1:0)" name="RED(1:0)" />
            <blockpin signalname="XLXN_702(2:0)" name="GREEN(2:0)" />
            <blockpin signalname="XLXN_703(1:0)" name="BLUE(1:0)" />
        </block>
        <block symbolname="NEXUS_RGB" name="XLXI_418">
            <blockpin signalname="XLXN_701(1:0)" name="RED_FF(1:0)" />
            <blockpin signalname="RED3(2:0)" name="RED3(2:0)" />
            <blockpin signalname="GREEN3(2:0)" name="GREEN3(2:0)" />
            <blockpin signalname="XLXN_702(2:0)" name="GREEN_FFF(2:0)" />
            <blockpin signalname="XLXN_703(1:0)" name="BLUE_FF(1:0)" />
            <blockpin signalname="BLUE3(2:0)" name="BLUE3(2:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="crtc_W">
            <wire x2="544" y1="1136" y2="1136" x1="336" />
        </branch>
        <branch name="crtc_A(14:0)">
            <wire x2="544" y1="1008" y2="1008" x1="368" />
        </branch>
        <branch name="crtc_D(7:0)">
            <wire x2="544" y1="1200" y2="1200" x1="352" />
        </branch>
        <iomarker fontsize="28" x="336" y="1136" name="crtc_W" orien="R180" />
        <iomarker fontsize="28" x="368" y="1008" name="crtc_A(14:0)" orien="R180" />
        <iomarker fontsize="28" x="352" y="1200" name="crtc_D(7:0)" orien="R180" />
        <iomarker fontsize="28" x="224" y="672" name="CLK4MHz" orien="R180" />
        <branch name="CLK25MHz">
            <wire x2="32" y1="224" y2="624" x1="32" />
            <wire x2="32" y1="624" y2="944" x1="32" />
            <wire x2="544" y1="944" y2="944" x1="32" />
            <wire x2="1472" y1="624" y2="624" x1="32" />
        </branch>
        <iomarker fontsize="28" x="32" y="224" name="CLK25MHz" orien="R270" />
        <instance x="544" y="1232" name="XLXI_474" orien="R0">
        </instance>
        <branch name="HSYNC">
            <wire x2="2096" y1="688" y2="688" x1="1984" />
        </branch>
        <branch name="VSYNC">
            <wire x2="2096" y1="624" y2="624" x1="1984" />
        </branch>
        <instance x="1472" y="1040" name="joe_dalton" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2096" y="624" name="VSYNC" orien="R0" />
        <iomarker fontsize="28" x="2096" y="688" name="HSYNC" orien="R0" />
        <branch name="XLXN_693(14:0)">
            <wire x2="544" y1="1072" y2="1072" x1="480" />
            <wire x2="480" y1="1072" y2="1296" x1="480" />
            <wire x2="2064" y1="1296" y2="1296" x1="480" />
            <wire x2="2064" y1="752" y2="752" x1="1984" />
            <wire x2="2064" y1="752" y2="1296" x1="2064" />
        </branch>
        <branch name="RED3(2:0)">
            <wire x2="2640" y1="928" y2="928" x1="2576" />
        </branch>
        <instance x="2192" y="1344" name="XLXI_418" orien="R0">
        </instance>
        <branch name="GREEN3(2:0)">
            <wire x2="2640" y1="992" y2="992" x1="2576" />
        </branch>
        <branch name="BLUE3(2:0)">
            <wire x2="2640" y1="1072" y2="1072" x1="2576" />
        </branch>
        <iomarker fontsize="28" x="2640" y="928" name="RED3(2:0)" orien="R0" />
        <iomarker fontsize="28" x="2640" y="992" name="GREEN3(2:0)" orien="R0" />
        <iomarker fontsize="28" x="2640" y="1072" name="BLUE3(2:0)" orien="R0" />
        <branch name="XLXN_701(1:0)">
            <wire x2="2080" y1="880" y2="880" x1="1984" />
            <wire x2="2080" y1="880" y2="960" x1="2080" />
            <wire x2="2192" y1="960" y2="960" x1="2080" />
        </branch>
        <branch name="XLXN_702(2:0)">
            <wire x2="2048" y1="944" y2="944" x1="1984" />
            <wire x2="2048" y1="944" y2="1024" x1="2048" />
            <wire x2="2192" y1="1024" y2="1024" x1="2048" />
        </branch>
        <branch name="XLXN_703(1:0)">
            <wire x2="2032" y1="1008" y2="1008" x1="1984" />
            <wire x2="2032" y1="1008" y2="1104" x1="2032" />
            <wire x2="2192" y1="1104" y2="1104" x1="2032" />
        </branch>
        <branch name="CLK4MHz">
            <wire x2="320" y1="672" y2="672" x1="224" />
            <wire x2="320" y1="672" y2="880" x1="320" />
            <wire x2="544" y1="880" y2="880" x1="320" />
        </branch>
        <branch name="debug_leds(7:0)">
            <wire x2="1472" y1="1072" y2="1072" x1="1440" />
        </branch>
        <iomarker fontsize="28" x="1440" y="1072" name="debug_leds(7:0)" orien="R180" />
        <branch name="XLXN_704(7:0)">
            <wire x2="1200" y1="880" y2="880" x1="928" />
            <wire x2="1200" y1="816" y2="880" x1="1200" />
            <wire x2="1472" y1="816" y2="816" x1="1200" />
        </branch>
    </sheet>
</drawing>