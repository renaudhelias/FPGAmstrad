<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="ram_D(7:0)" />
        <signal name="RESET_n" />
        <signal name="CLK50MHz" />
        <signal name="MISO" />
        <signal name="MOSI" />
        <signal name="SCLK" />
        <signal name="SS_n" />
        <signal name="BLUE3(2:0)" />
        <signal name="GREEN3(2:0)" />
        <signal name="RED3(2:0)" />
        <signal name="VSYNC" />
        <signal name="HSYNC" />
        <signal name="XLXN_646" />
        <signal name="XLXN_717" />
        <signal name="ram_W_n" />
        <signal name="ram_A(20:0)" />
        <signal name="PS2_DATA" />
        <signal name="PS2_CLK" />
        <signal name="XLXN_726" />
        <signal name="JOYSTICK1(5:0)" />
        <signal name="XLXN_731" />
        <signal name="XLXN_732(7:0)" />
        <signal name="crtc_A(14:0)" />
        <signal name="AUDIO" />
        <signal name="XLXN_736" />
        <signal name="XLXN_737(22:0)" />
        <signal name="CLK8(2)" />
        <signal name="CLK8(2:0)" />
        <signal name="crtc_A(15:0)" />
        <signal name="XLXN_744" />
        <signal name="XLXN_745(12:0)" />
        <signal name="XLXN_746(7:0)" />
        <signal name="cero,cero,cero,cero,cero,uno,uno,uno" />
        <signal name="cero" />
        <signal name="uno" />
        <signal name="DEBUG_LEDS(7:0)" />
        <signal name="DEBUG_LEDS2(7:0)" />
        <port polarity="BiDirectional" name="ram_D(7:0)" />
        <port polarity="Input" name="CLK50MHz" />
        <port polarity="Input" name="MISO" />
        <port polarity="Output" name="MOSI" />
        <port polarity="Output" name="SCLK" />
        <port polarity="Output" name="SS_n" />
        <port polarity="Output" name="BLUE3(2:0)" />
        <port polarity="Output" name="GREEN3(2:0)" />
        <port polarity="Output" name="RED3(2:0)" />
        <port polarity="Output" name="VSYNC" />
        <port polarity="Output" name="HSYNC" />
        <port polarity="Output" name="ram_W_n" />
        <port polarity="BiDirectional" name="ram_A(20:0)" />
        <port polarity="Input" name="PS2_DATA" />
        <port polarity="Input" name="PS2_CLK" />
        <port polarity="BiDirectional" name="JOYSTICK1(5:0)" />
        <port polarity="Output" name="AUDIO" />
        <port polarity="Output" name="DEBUG_LEDS(7:0)" />
        <port polarity="Output" name="DEBUG_LEDS2(7:0)" />
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="bootloader_sd">
            <timestamp>2017-12-27T17:27:7</timestamp>
            <line x2="496" y1="32" y2="32" x1="432" />
            <line x2="0" y1="-464" y2="-464" x1="64" />
            <rect width="64" x="0" y="-268" height="24" />
            <line x2="0" y1="-256" y2="-256" x1="64" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <line x2="496" y1="-608" y2="-608" x1="432" />
            <rect width="64" x="432" y="-556" height="24" />
            <line x2="496" y1="-544" y2="-544" x1="432" />
            <rect width="64" x="432" y="-492" height="24" />
            <line x2="496" y1="-480" y2="-480" x1="432" />
            <line x2="496" y1="-288" y2="-288" x1="432" />
            <line x2="496" y1="-224" y2="-224" x1="432" />
            <line x2="496" y1="-160" y2="-160" x1="432" />
            <rect width="64" x="432" y="-108" height="24" />
            <line x2="496" y1="-96" y2="-96" x1="432" />
            <line x2="496" y1="-32" y2="-32" x1="432" />
            <rect width="368" x="64" y="-704" height="760" />
            <rect width="64" x="432" y="-364" height="24" />
            <line x2="496" y1="-352" y2="-352" x1="432" />
        </blockdef>
        <blockdef name="amstrad_video">
            <timestamp>2011-12-13T8:44:53</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="464" y1="-608" y2="-608" x1="400" />
            <line x2="464" y1="-496" y2="-496" x1="400" />
            <rect width="64" x="400" y="-284" height="24" />
            <line x2="464" y1="-272" y2="-272" x1="400" />
            <rect width="64" x="400" y="-172" height="24" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <rect width="64" x="400" y="-60" height="24" />
            <line x2="464" y1="-48" y2="-48" x1="400" />
            <rect width="336" x="64" y="-640" height="816" />
        </blockdef>
        <blockdef name="amstrad_motherboard">
            <timestamp>2017-12-27T17:30:39</timestamp>
            <line x2="448" y1="272" y2="272" x1="384" />
            <rect width="64" x="384" y="324" height="24" />
            <line x2="448" y1="336" y2="336" x1="384" />
            <rect width="64" x="384" y="388" height="24" />
            <line x2="448" y1="400" y2="400" x1="384" />
            <rect width="64" x="0" y="-748" height="24" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <line x2="0" y1="-640" y2="-640" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-448" y2="-448" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-256" y2="-256" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="448" y1="-736" y2="-736" x1="384" />
            <rect width="64" x="384" y="-620" height="24" />
            <line x2="448" y1="-608" y2="-608" x1="384" />
            <line x2="448" y1="-544" y2="-544" x1="384" />
            <rect width="64" x="384" y="-492" height="24" />
            <line x2="448" y1="-480" y2="-480" x1="384" />
            <line x2="448" y1="-416" y2="-416" x1="384" />
            <line x2="448" y1="-352" y2="-352" x1="384" />
            <rect width="64" x="384" y="-300" height="24" />
            <line x2="448" y1="-288" y2="-288" x1="384" />
            <rect width="64" x="384" y="-172" height="24" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <rect width="64" x="384" y="-108" height="24" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <rect width="320" x="64" y="-768" height="1196" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="divideby3_bastard">
            <timestamp>2017-12-27T15:33:27</timestamp>
            <rect width="256" x="64" y="-256" height="120" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <block symbolname="bootloader_sd" name="XLXI_462">
            <blockpin signalname="MISO" name="MISO" />
            <blockpin signalname="cero,cero,cero,cero,cero,uno,uno,uno" name="FILE_SELECT(7:0)" />
            <blockpin signalname="CLK8(2)" name="CLK50MHz" />
            <blockpin signalname="ram_D(7:0)" name="ram_D(7:0)" />
            <blockpin signalname="MOSI" name="MOSI" />
            <blockpin signalname="XLXN_737(22:0)" name="ram_A(22:0)" />
            <blockpin signalname="SCLK" name="SCLK" />
            <blockpin signalname="XLXN_736" name="ram_W_n" />
            <blockpin signalname="DEBUG_LEDS(7:0)" name="LEDS(7:0)" />
            <blockpin signalname="SS_n" name="SS_n" />
            <blockpin signalname="XLXN_726" name="is_ucpm" />
            <blockpin signalname="RESET_n" name="FILE_LOADED" />
            <blockpin signalname="DEBUG_LEDS2(7:0)" name="LEDS2(7:0)" />
        </block>
        <block symbolname="amstrad_video" name="XLXI_511">
            <blockpin signalname="XLXN_731" name="crtc_W" />
            <blockpin signalname="XLXN_732(7:0)" name="crtc_D(7:0)" />
            <blockpin signalname="crtc_A(14:0)" name="crtc_A(14:0)" />
            <blockpin signalname="CLK8(2)" name="CLK4MHz" />
            <blockpin signalname="XLXN_646" name="CLK25MHz" />
            <blockpin signalname="XLXN_746(7:0)" name="palette_D(7:0)" />
            <blockpin signalname="XLXN_745(12:0)" name="palette_A(12:0)" />
            <blockpin signalname="XLXN_744" name="palette_W" />
            <blockpin signalname="HSYNC" name="HSYNC" />
            <blockpin signalname="VSYNC" name="VSYNC" />
            <blockpin signalname="RED3(2:0)" name="RED3(2:0)" />
            <blockpin signalname="GREEN3(2:0)" name="GREEN3(2:0)" />
            <blockpin signalname="BLUE3(2:0)" name="BLUE3(2:0)" />
        </block>
        <block symbolname="amstrad_motherboard" name="XLXI_512">
            <blockpin signalname="XLXN_737(22:0)" name="init_A(22:0)" />
            <blockpin signalname="XLXN_736" name="init_W_n" />
            <blockpin signalname="XLXN_717" name="CLK16MHz" />
            <blockpin signalname="XLXN_726" name="is_ucpm" />
            <blockpin signalname="PS2_CLK" name="PS2_CLK" />
            <blockpin signalname="PS2_DATA" name="PS2_DATA" />
            <blockpin signalname="RESET_n" name="RESET_n" />
            <blockpin signalname="ram_D(7:0)" name="ram_D(7:0)" />
            <blockpin signalname="JOYSTICK1(5:0)" name="JOYSTICK1(5:0)" />
            <blockpin signalname="CLK8(2:0)" name="CLK8(2:0)" />
            <blockpin signalname="ram_A(20:0)" name="ram_A(20:0)" />
            <blockpin signalname="AUDIO" name="audio" />
            <blockpin signalname="crtc_A(15:0)" name="crtc_A(15:0)" />
            <blockpin signalname="XLXN_731" name="crtc_W" />
            <blockpin signalname="ram_W_n" name="ram_W_n" />
            <blockpin signalname="XLXN_732(7:0)" name="crtc_D(7:0)" />
            <blockpin signalname="XLXN_744" name="palette_W" />
            <blockpin signalname="XLXN_745(12:0)" name="palette_A(12:0)" />
            <blockpin signalname="XLXN_746(7:0)" name="palette_D(7:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_253">
            <blockpin signalname="cero" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_256">
            <blockpin signalname="uno" name="P" />
        </block>
        <block symbolname="divideby3_bastard" name="XLXI_513">
            <blockpin signalname="CLK50MHz" name="CLK50MHz" />
            <blockpin signalname="XLXN_646" name="CLK25MHz" />
            <blockpin signalname="XLXN_717" name="CLK16MHz" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <instance x="6144" y="736" name="XLXI_462" orien="R0">
        </instance>
        <branch name="MISO">
            <wire x2="6144" y1="272" y2="272" x1="6064" />
        </branch>
        <branch name="MOSI">
            <wire x2="6688" y1="128" y2="128" x1="6640" />
        </branch>
        <branch name="SCLK">
            <wire x2="6672" y1="512" y2="512" x1="6640" />
        </branch>
        <branch name="SS_n">
            <wire x2="6688" y1="704" y2="704" x1="6640" />
        </branch>
        <iomarker fontsize="28" x="6064" y="272" name="MISO" orien="R180" />
        <iomarker fontsize="28" x="6688" y="704" name="SS_n" orien="R0" />
        <iomarker fontsize="28" x="6672" y="512" name="SCLK" orien="R0" />
        <iomarker fontsize="28" x="6688" y="128" name="MOSI" orien="R0" />
        <instance x="4320" y="1488" name="XLXI_511" orien="R0">
        </instance>
        <branch name="BLUE3(2:0)">
            <wire x2="4848" y1="1440" y2="1440" x1="4784" />
        </branch>
        <iomarker fontsize="28" x="4848" y="1440" name="BLUE3(2:0)" orien="R0" />
        <branch name="GREEN3(2:0)">
            <wire x2="4848" y1="1328" y2="1328" x1="4784" />
        </branch>
        <iomarker fontsize="28" x="4848" y="1328" name="GREEN3(2:0)" orien="R0" />
        <branch name="RED3(2:0)">
            <wire x2="4848" y1="1216" y2="1216" x1="4784" />
        </branch>
        <iomarker fontsize="28" x="4848" y="1216" name="RED3(2:0)" orien="R0" />
        <branch name="VSYNC">
            <wire x2="4848" y1="880" y2="880" x1="4784" />
        </branch>
        <branch name="HSYNC">
            <wire x2="4832" y1="992" y2="992" x1="4784" />
        </branch>
        <iomarker fontsize="28" x="4848" y="880" name="VSYNC" orien="R0" />
        <iomarker fontsize="28" x="4832" y="992" name="HSYNC" orien="R0" />
        <branch name="ram_D(7:0)">
            <wire x2="2400" y1="1840" y2="1840" x1="1872" />
            <wire x2="5840" y1="1840" y2="1840" x1="2400" />
            <wire x2="5840" y1="1840" y2="2720" x1="5840" />
            <wire x2="6880" y1="2720" y2="2720" x1="5840" />
            <wire x2="2400" y1="1760" y2="1840" x1="2400" />
            <wire x2="6880" y1="192" y2="192" x1="6640" />
            <wire x2="6880" y1="192" y2="2720" x1="6880" />
        </branch>
        <branch name="RESET_n">
            <wire x2="1424" y1="1840" y2="1840" x1="1168" />
            <wire x2="1168" y1="1840" y2="2800" x1="1168" />
            <wire x2="6928" y1="2800" y2="2800" x1="1168" />
            <wire x2="6928" y1="448" y2="448" x1="6640" />
            <wire x2="6928" y1="448" y2="2800" x1="6928" />
        </branch>
        <branch name="XLXN_646">
            <wire x2="1200" y1="1152" y2="1152" x1="992" />
            <wire x2="3840" y1="928" y2="928" x1="1200" />
            <wire x2="3840" y1="928" y2="1456" x1="3840" />
            <wire x2="4320" y1="1456" y2="1456" x1="3840" />
            <wire x2="1200" y1="928" y2="1152" x1="1200" />
        </branch>
        <branch name="CLK50MHz">
            <wire x2="608" y1="1152" y2="1152" x1="384" />
        </branch>
        <instance x="1424" y="2000" name="XLXI_512" orien="R0">
        </instance>
        <branch name="XLXN_717">
            <wire x2="1056" y1="1216" y2="1216" x1="992" />
            <wire x2="1056" y1="1216" y2="1456" x1="1056" />
            <wire x2="1424" y1="1456" y2="1456" x1="1056" />
        </branch>
        <branch name="ram_W_n">
            <wire x2="1936" y1="1264" y2="1264" x1="1872" />
        </branch>
        <iomarker fontsize="28" x="1936" y="1264" name="ram_W_n" orien="R0" />
        <branch name="ram_A(20:0)">
            <wire x2="1904" y1="1392" y2="1392" x1="1872" />
        </branch>
        <iomarker fontsize="28" x="1904" y="1392" name="ram_A(20:0)" orien="R0" />
        <iomarker fontsize="28" x="2400" y="1760" name="ram_D(7:0)" orien="R270" />
        <branch name="PS2_DATA">
            <wire x2="1424" y1="1744" y2="1744" x1="1392" />
        </branch>
        <iomarker fontsize="28" x="1392" y="1744" name="PS2_DATA" orien="R180" />
        <branch name="PS2_CLK">
            <wire x2="1424" y1="1648" y2="1648" x1="1392" />
        </branch>
        <iomarker fontsize="28" x="1392" y="1648" name="PS2_CLK" orien="R180" />
        <branch name="XLXN_726">
            <wire x2="1344" y1="832" y2="1552" x1="1344" />
            <wire x2="1424" y1="1552" y2="1552" x1="1344" />
            <wire x2="6640" y1="832" y2="832" x1="1344" />
            <wire x2="6736" y1="832" y2="832" x1="6640" />
            <wire x2="6736" y1="768" y2="768" x1="6640" />
            <wire x2="6736" y1="768" y2="832" x1="6736" />
        </branch>
        <branch name="JOYSTICK1(5:0)">
            <wire x2="1904" y1="1904" y2="1904" x1="1872" />
        </branch>
        <iomarker fontsize="28" x="1904" y="1904" name="JOYSTICK1(5:0)" orien="R0" />
        <branch name="XLXN_731">
            <wire x2="2160" y1="1648" y2="1648" x1="1872" />
            <wire x2="2160" y1="1008" y2="1648" x1="2160" />
            <wire x2="4320" y1="1008" y2="1008" x1="2160" />
        </branch>
        <branch name="XLXN_732(7:0)">
            <wire x2="3072" y1="1520" y2="1520" x1="1872" />
            <wire x2="3072" y1="1072" y2="1520" x1="3072" />
            <wire x2="4320" y1="1072" y2="1072" x1="3072" />
        </branch>
        <branch name="AUDIO">
            <wire x2="1904" y1="1584" y2="1584" x1="1872" />
        </branch>
        <iomarker fontsize="28" x="1904" y="1584" name="AUDIO" orien="R0" />
        <branch name="XLXN_736">
            <wire x2="1424" y1="1360" y2="1360" x1="1136" />
            <wire x2="1136" y1="1360" y2="2880" x1="1136" />
            <wire x2="6960" y1="2880" y2="2880" x1="1136" />
            <wire x2="6960" y1="576" y2="576" x1="6640" />
            <wire x2="6960" y1="576" y2="2880" x1="6960" />
        </branch>
        <branch name="XLXN_737(22:0)">
            <wire x2="1360" y1="16" y2="1264" x1="1360" />
            <wire x2="1424" y1="1264" y2="1264" x1="1360" />
            <wire x2="6672" y1="16" y2="16" x1="1360" />
            <wire x2="6672" y1="16" y2="256" x1="6672" />
            <wire x2="6672" y1="256" y2="256" x1="6640" />
        </branch>
        <branch name="CLK8(2:0)">
            <wire x2="2480" y1="1456" y2="1456" x1="1872" />
        </branch>
        <bustap x2="2480" y1="1456" y2="1360" x1="2480" />
        <branch name="crtc_A(14:0)">
            <wire x2="2128" y1="1136" y2="1616" x1="2128" />
            <wire x2="4320" y1="1136" y2="1136" x1="2128" />
        </branch>
        <branch name="crtc_A(15:0)">
            <wire x2="2128" y1="1712" y2="1712" x1="1872" />
        </branch>
        <bustap x2="2128" y1="1712" y2="1616" x1="2128" />
        <branch name="XLXN_744">
            <wire x2="3360" y1="2272" y2="2272" x1="1872" />
            <wire x2="4320" y1="1648" y2="1648" x1="3360" />
            <wire x2="3360" y1="1648" y2="2272" x1="3360" />
        </branch>
        <branch name="XLXN_745(12:0)">
            <wire x2="3424" y1="2336" y2="2336" x1="1872" />
            <wire x2="4320" y1="1584" y2="1584" x1="3424" />
            <wire x2="3424" y1="1584" y2="2336" x1="3424" />
        </branch>
        <branch name="XLXN_746(7:0)">
            <wire x2="3504" y1="2400" y2="2400" x1="1872" />
            <wire x2="4320" y1="1520" y2="1520" x1="3504" />
            <wire x2="3504" y1="1520" y2="2400" x1="3504" />
        </branch>
        <branch name="CLK8(2)">
            <wire x2="2480" y1="1328" y2="1360" x1="2480" />
            <wire x2="2592" y1="1328" y2="1328" x1="2480" />
            <wire x2="2592" y1="1328" y2="1456" x1="2592" />
            <wire x2="3056" y1="1456" y2="1456" x1="2592" />
            <wire x2="6144" y1="688" y2="688" x1="2592" />
            <wire x2="2592" y1="688" y2="1328" x1="2592" />
            <wire x2="4320" y1="1392" y2="1392" x1="3056" />
            <wire x2="3056" y1="1392" y2="1456" x1="3056" />
        </branch>
        <branch name="cero,cero,cero,cero,cero,uno,uno,uno">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="5968" y="480" type="branch" />
            <wire x2="6144" y1="480" y2="480" x1="5968" />
        </branch>
        <branch name="cero">
            <attrtext style="alignment:SOFT-VLEFT" attrname="Name" x="5408" y="480" type="branch" />
            <wire x2="5408" y1="480" y2="512" x1="5408" />
        </branch>
        <instance x="5344" y="640" name="XLXI_253" orien="R0" />
        <branch name="uno">
            <attrtext style="alignment:SOFT-VRIGHT" attrname="Name" x="5392" y="368" type="branch" />
            <wire x2="5392" y1="320" y2="368" x1="5392" />
        </branch>
        <instance x="5328" y="320" name="XLXI_256" orien="R0" />
        <instance x="608" y="1376" name="XLXI_513" orien="R0">
        </instance>
        <iomarker fontsize="28" x="384" y="1152" name="CLK50MHz" orien="R180" />
        <branch name="DEBUG_LEDS(7:0)">
            <wire x2="6464" y1="960" y2="1056" x1="6464" />
            <wire x2="6544" y1="1056" y2="1056" x1="6464" />
            <wire x2="6832" y1="960" y2="960" x1="6464" />
            <wire x2="6832" y1="640" y2="640" x1="6640" />
            <wire x2="6832" y1="640" y2="960" x1="6832" />
        </branch>
        <iomarker fontsize="28" x="6544" y="1056" name="DEBUG_LEDS(7:0)" orien="R0" />
        <branch name="DEBUG_LEDS2(7:0)">
            <wire x2="6656" y1="384" y2="384" x1="6640" />
            <wire x2="6976" y1="384" y2="384" x1="6656" />
            <wire x2="6976" y1="304" y2="384" x1="6976" />
        </branch>
        <iomarker fontsize="28" x="6976" y="304" name="DEBUG_LEDS2(7:0)" orien="R270" />
    </sheet>
</drawing>