<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="ram_D(7:0)" />
        <signal name="FILE_LOADED" />
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
        <signal name="JOYSTICK1(5:0)" />
        <signal name="XLXN_731" />
        <signal name="XLXN_732(7:0)" />
        <signal name="crtc_A(14:0)" />
        <signal name="XLXN_736" />
        <signal name="XLXN_737(20:0)" />
        <signal name="CLK8(2)" />
        <signal name="CLK8(2:0)" />
        <signal name="crtc_A(15:0)" />
        <signal name="AUDIO_L" />
        <signal name="AUDIO_R" />
        <signal name="XLXN_749(15:0)" />
        <signal name="XLXN_753" />
        <signal name="XLXN_755" />
        <signal name="XLXN_756" />
        <signal name="XLXN_757(7:0)" />
        <signal name="XLXN_760" />
        <signal name="XLXN_762" />
        <signal name="XLXN_763" />
        <signal name="XLXN_764(7:0)" />
        <port polarity="BiDirectional" name="ram_D(7:0)" />
        <port polarity="Output" name="FILE_LOADED" />
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
        <port polarity="Output" name="ram_A(20:0)" />
        <port polarity="Input" name="PS2_DATA" />
        <port polarity="Input" name="PS2_CLK" />
        <port polarity="BiDirectional" name="JOYSTICK1(5:0)" />
        <port polarity="Output" name="AUDIO_L" />
        <port polarity="Output" name="AUDIO_R" />
        <blockdef name="bootloader_sd">
            <timestamp>2017-12-25T19:32:44</timestamp>
            <rect width="64" x="496" y="212" height="24" />
            <line x2="560" y1="224" y2="224" x1="496" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="560" y1="160" y2="160" x1="496" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="-464" y2="-464" x1="64" />
            <rect width="64" x="0" y="-268" height="24" />
            <line x2="0" y1="-256" y2="-256" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="560" y1="32" y2="32" x1="496" />
            <rect width="64" x="496" y="84" height="24" />
            <line x2="560" y1="96" y2="96" x1="496" />
            <line x2="560" y1="-608" y2="-608" x1="496" />
            <rect width="64" x="496" y="-556" height="24" />
            <line x2="560" y1="-544" y2="-544" x1="496" />
            <rect width="64" x="496" y="-492" height="24" />
            <line x2="560" y1="-480" y2="-480" x1="496" />
            <line x2="560" y1="-288" y2="-288" x1="496" />
            <line x2="560" y1="-224" y2="-224" x1="496" />
            <line x2="560" y1="-160" y2="-160" x1="496" />
            <line x2="560" y1="-32" y2="-32" x1="496" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="432" x="64" y="-704" height="952" />
        </blockdef>
        <blockdef name="amstrad_video">
            <timestamp>2017-12-25T19:32:40</timestamp>
            <rect width="64" x="0" y="212" height="24" />
            <line x2="0" y1="224" y2="224" x1="64" />
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
            <rect width="336" x="64" y="-640" height="944" />
        </blockdef>
        <blockdef name="amstrad_motherboard">
            <timestamp>2017-12-25T19:32:34</timestamp>
            <rect width="64" x="384" y="452" height="24" />
            <line x2="448" y1="464" y2="464" x1="384" />
            <line x2="448" y1="528" y2="528" x1="384" />
            <line x2="448" y1="592" y2="592" x1="384" />
            <line x2="448" y1="656" y2="656" x1="384" />
            <rect width="64" x="0" y="-748" height="24" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <line x2="0" y1="-640" y2="-640" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-256" y2="-256" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="448" y1="-736" y2="-736" x1="384" />
            <rect width="64" x="384" y="-620" height="24" />
            <line x2="448" y1="-608" y2="-608" x1="384" />
            <line x2="448" y1="-544" y2="-544" x1="384" />
            <rect width="64" x="384" y="-492" height="24" />
            <line x2="448" y1="-480" y2="-480" x1="384" />
            <line x2="448" y1="-352" y2="-352" x1="384" />
            <rect width="64" x="384" y="-300" height="24" />
            <line x2="448" y1="-288" y2="-288" x1="384" />
            <rect width="64" x="384" y="-172" height="24" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <rect width="64" x="384" y="-108" height="24" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <line x2="448" y1="32" y2="32" x1="384" />
            <line x2="448" y1="96" y2="96" x1="384" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="704" y2="704" x1="64" />
            <rect width="64" x="0" y="756" height="24" />
            <line x2="0" y1="768" y2="768" x1="64" />
            <line x2="448" y1="720" y2="720" x1="384" />
            <rect width="320" x="64" y="-768" height="1568" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="divideby3_bastard">
            <timestamp>2017-12-23T15:51:4</timestamp>
            <rect width="256" x="64" y="-256" height="120" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <block symbolname="amstrad_video" name="XLXI_511">
            <blockpin signalname="XLXN_731" name="crtc_W" />
            <blockpin signalname="XLXN_732(7:0)" name="crtc_D(7:0)" />
            <blockpin signalname="crtc_A(14:0)" name="crtc_A(14:0)" />
            <blockpin signalname="CLK8(2)" name="CLK4MHz" />
            <blockpin signalname="XLXN_646" name="CLK25MHz" />
            <blockpin signalname="XLXN_764(7:0)" name="debug_leds(7:0)" />
            <blockpin signalname="HSYNC" name="HSYNC" />
            <blockpin signalname="VSYNC" name="VSYNC" />
            <blockpin signalname="RED3(2:0)" name="RED3(2:0)" />
            <blockpin signalname="GREEN3(2:0)" name="GREEN3(2:0)" />
            <blockpin signalname="BLUE3(2:0)" name="BLUE3(2:0)" />
        </block>
        <block symbolname="amstrad_motherboard" name="XLXI_512">
            <blockpin signalname="XLXN_737(20:0)" name="init_A(20:0)" />
            <blockpin signalname="XLXN_736" name="init_W_n" />
            <blockpin signalname="XLXN_717" name="CLK16MHz" />
            <blockpin signalname="PS2_CLK" name="PS2_CLK" />
            <blockpin signalname="PS2_DATA" name="PS2_DATA" />
            <blockpin signalname="FILE_LOADED" name="RESET_n" />
            <blockpin signalname="XLXN_717" name="PWM_CLK" />
            <blockpin signalname="XLXN_757(7:0)" name="ZDSK_CARAC(7:0)" />
            <blockpin signalname="XLXN_762" name="pause" />
            <blockpin signalname="XLXN_760" name="ZDSK_doCarac" />
            <blockpin signalname="ram_D(7:0)" name="ram_D(7:0)" />
            <blockpin signalname="JOYSTICK1(5:0)" name="JOYSTICK1(5:0)" />
            <blockpin signalname="CLK8(2:0)" name="CLK8(2:0)" />
            <blockpin signalname="ram_A(20:0)" name="ram_A(20:0)" />
            <blockpin signalname="crtc_A(15:0)" name="crtc_A(15:0)" />
            <blockpin signalname="XLXN_731" name="crtc_W" />
            <blockpin signalname="ram_W_n" name="ram_W_n" />
            <blockpin signalname="XLXN_732(7:0)" name="crtc_D(7:0)" />
            <blockpin signalname="AUDIO_R" name="audio_bc" />
            <blockpin signalname="AUDIO_L" name="audio_ab" />
            <blockpin signalname="XLXN_753" name="key_reset" />
            <blockpin signalname="XLXN_755" name="ZDSK_doSelect" />
            <blockpin signalname="XLXN_749(15:0)" name="ZDSK_NUMBER(15:0)" />
            <blockpin signalname="XLXN_756" name="ZDSK_doneCarac" />
            <blockpin signalname="XLXN_763" name="ZDSK_doInsert" />
        </block>
        <block symbolname="bootloader_sd" name="XLXI_462">
            <blockpin signalname="MISO" name="MISO" />
            <blockpin signalname="CLK8(2)" name="CLK4MHz" />
            <blockpin signalname="XLXN_753" name="key_reset" />
            <blockpin signalname="XLXN_749(15:0)" name="FILE_SELECT(15:0)" />
            <blockpin signalname="XLXN_755" name="ZDSK_doSelect" />
            <blockpin signalname="XLXN_756" name="ZDSK_doneCarac" />
            <blockpin signalname="XLXN_763" name="ZDSK_doInsert" />
            <blockpin signalname="ram_D(7:0)" name="ram_D(7:0)" />
            <blockpin signalname="MOSI" name="MOSI" />
            <blockpin signalname="XLXN_737(20:0)" name="ram_A(20:0)" />
            <blockpin signalname="SCLK" name="SCLK" />
            <blockpin signalname="XLXN_736" name="ram_W_n" />
            <blockpin signalname="SS_n" name="SS_n" />
            <blockpin signalname="FILE_LOADED" name="FILE_LOADED" />
            <blockpin signalname="XLXN_760" name="ZDSK_doCarac" />
            <blockpin signalname="XLXN_757(7:0)" name="ZDSK_CARAC(7:0)" />
            <blockpin signalname="XLXN_762" name="pause" />
            <blockpin signalname="XLXN_764(7:0)" name="debug_leds(7:0)" />
        </block>
        <block symbolname="divideby3_bastard" name="XLXI_513">
            <blockpin signalname="CLK50MHz" name="CLK50MHz" />
            <blockpin signalname="XLXN_646" name="CLK25MHz" />
            <blockpin signalname="XLXN_717" name="CLK16MHz" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <iomarker fontsize="28" x="48" y="960" name="CLK50MHz" orien="R270" />
        <branch name="MISO">
            <wire x2="6080" y1="272" y2="272" x1="5872" />
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
            <wire x2="6880" y1="1840" y2="1840" x1="2400" />
            <wire x2="2400" y1="1760" y2="1840" x1="2400" />
            <wire x2="6880" y1="192" y2="192" x1="6640" />
            <wire x2="6880" y1="192" y2="1840" x1="6880" />
        </branch>
        <branch name="FILE_LOADED">
            <wire x2="1424" y1="1840" y2="1840" x1="1168" />
            <wire x2="1168" y1="1840" y2="2944" x1="1168" />
            <wire x2="6928" y1="2944" y2="2944" x1="1168" />
            <wire x2="6928" y1="448" y2="448" x1="6640" />
            <wire x2="6928" y1="448" y2="2944" x1="6928" />
            <wire x2="6928" y1="400" y2="448" x1="6928" />
        </branch>
        <branch name="CLK50MHz">
            <wire x2="48" y1="960" y2="1168" x1="48" />
            <wire x2="144" y1="1168" y2="1168" x1="48" />
        </branch>
        <instance x="1424" y="2000" name="XLXI_512" orien="R0">
        </instance>
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
        <branch name="JOYSTICK1(5:0)">
            <wire x2="1904" y1="1904" y2="1904" x1="1872" />
        </branch>
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
        <branch name="XLXN_736">
            <wire x2="1424" y1="1360" y2="1360" x1="1136" />
            <wire x2="1136" y1="1360" y2="3024" x1="1136" />
            <wire x2="6960" y1="3024" y2="3024" x1="1136" />
            <wire x2="6960" y1="576" y2="576" x1="6640" />
            <wire x2="6960" y1="576" y2="3024" x1="6960" />
        </branch>
        <branch name="XLXN_737(20:0)">
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
        <branch name="CLK8(2)">
            <wire x2="2480" y1="1328" y2="1360" x1="2480" />
            <wire x2="2592" y1="1328" y2="1328" x1="2480" />
            <wire x2="2592" y1="1328" y2="1392" x1="2592" />
            <wire x2="4320" y1="1392" y2="1392" x1="2592" />
            <wire x2="2592" y1="704" y2="1328" x1="2592" />
            <wire x2="6080" y1="704" y2="704" x1="2592" />
        </branch>
        <branch name="AUDIO_L">
            <wire x2="1904" y1="2032" y2="2032" x1="1872" />
        </branch>
        <iomarker fontsize="28" x="1904" y="2032" name="AUDIO_L" orien="R0" />
        <branch name="AUDIO_R">
            <wire x2="1904" y1="2096" y2="2096" x1="1872" />
        </branch>
        <iomarker fontsize="28" x="1904" y="2096" name="AUDIO_R" orien="R0" />
        <iomarker fontsize="28" x="6928" y="400" name="FILE_LOADED" orien="R270" />
        <iomarker fontsize="28" x="1904" y="1904" name="JOYSTICK1(5:0)" orien="R0" />
        <branch name="XLXN_749(15:0)">
            <wire x2="5600" y1="2464" y2="2464" x1="1872" />
            <wire x2="5600" y1="480" y2="2464" x1="5600" />
            <wire x2="6080" y1="480" y2="480" x1="5600" />
        </branch>
        <branch name="XLXN_753">
            <wire x2="5536" y1="2720" y2="2720" x1="1872" />
            <wire x2="5536" y1="416" y2="2720" x1="5536" />
            <wire x2="6080" y1="416" y2="416" x1="5536" />
        </branch>
        <iomarker fontsize="28" x="5872" y="272" name="MISO" orien="R180" />
        <instance x="6080" y="736" name="XLXI_462" orien="R0">
        </instance>
        <branch name="XLXN_755">
            <wire x2="5344" y1="2528" y2="2528" x1="1872" />
            <wire x2="6080" y1="768" y2="768" x1="5344" />
            <wire x2="5344" y1="768" y2="2528" x1="5344" />
        </branch>
        <branch name="XLXN_756">
            <wire x2="5408" y1="2656" y2="2656" x1="1872" />
            <wire x2="6080" y1="832" y2="832" x1="5408" />
            <wire x2="5408" y1="832" y2="2656" x1="5408" />
        </branch>
        <branch name="XLXN_757(7:0)">
            <wire x2="1424" y1="2768" y2="2768" x1="1328" />
            <wire x2="1328" y1="2768" y2="2864" x1="1328" />
            <wire x2="6784" y1="2864" y2="2864" x1="1328" />
            <wire x2="6784" y1="832" y2="832" x1="6640" />
            <wire x2="6784" y1="832" y2="2864" x1="6784" />
        </branch>
        <branch name="XLXN_760">
            <wire x2="1424" y1="2704" y2="2704" x1="1232" />
            <wire x2="1232" y1="2704" y2="2896" x1="1232" />
            <wire x2="6832" y1="2896" y2="2896" x1="1232" />
            <wire x2="6832" y1="768" y2="768" x1="6640" />
            <wire x2="6832" y1="768" y2="2896" x1="6832" />
        </branch>
        <branch name="XLXN_762">
            <wire x2="1424" y1="1904" y2="1904" x1="1376" />
            <wire x2="1376" y1="1904" y2="2832" x1="1376" />
            <wire x2="6736" y1="2832" y2="2832" x1="1376" />
            <wire x2="6736" y1="896" y2="896" x1="6640" />
            <wire x2="6736" y1="896" y2="2832" x1="6736" />
        </branch>
        <branch name="XLXN_763">
            <wire x2="5456" y1="2592" y2="2592" x1="1872" />
            <wire x2="6080" y1="896" y2="896" x1="5456" />
            <wire x2="5456" y1="896" y2="2592" x1="5456" />
        </branch>
        <branch name="XLXN_764(7:0)">
            <wire x2="4320" y1="1712" y2="1712" x1="4256" />
            <wire x2="4256" y1="1712" y2="1872" x1="4256" />
            <wire x2="6688" y1="1872" y2="1872" x1="4256" />
            <wire x2="6688" y1="960" y2="960" x1="6640" />
            <wire x2="6688" y1="960" y2="1872" x1="6688" />
        </branch>
        <branch name="XLXN_646">
            <wire x2="4304" y1="1168" y2="1168" x1="528" />
            <wire x2="4304" y1="1168" y2="1456" x1="4304" />
            <wire x2="4320" y1="1456" y2="1456" x1="4304" />
        </branch>
        <instance x="144" y="1392" name="XLXI_513" orien="R0">
        </instance>
        <branch name="XLXN_717">
            <wire x2="688" y1="1232" y2="1232" x1="528" />
            <wire x2="688" y1="1232" y2="1552" x1="688" />
            <wire x2="864" y1="1552" y2="1552" x1="688" />
            <wire x2="864" y1="1552" y2="2032" x1="864" />
            <wire x2="1424" y1="2032" y2="2032" x1="864" />
            <wire x2="1424" y1="1456" y2="1456" x1="864" />
            <wire x2="864" y1="1456" y2="1552" x1="864" />
        </branch>
    </sheet>
</drawing>