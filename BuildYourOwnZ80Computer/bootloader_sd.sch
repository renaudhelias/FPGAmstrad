<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="MISO" />
        <signal name="XLXN_45" />
        <signal name="MOSI" />
        <signal name="XLXN_49" />
        <signal name="INV_PHA" />
        <signal name="FILE_SELECT(7:0)" />
        <signal name="XLXN_52(7:0)" />
        <signal name="XLXN_55(31:0)" />
        <signal name="ram_D(7:0)" />
        <signal name="ram_A(22:0)" />
        <signal name="ram_W" />
        <signal name="XLXN_57" />
        <signal name="INIT_DONE" />
        <signal name="XLXN_61" />
        <signal name="SCLK_pha" />
        <signal name="SCLK" />
        <signal name="ram_W_n" />
        <signal name="LEDS(7:0)" />
        <signal name="SS_n" />
        <signal name="XLXN_76" />
        <signal name="DO_STOP" />
        <signal name="CLK50MHz" />
        <signal name="is_ucpm" />
        <signal name="XLXN_80" />
        <signal name="FILE_LOADED" />
        <signal name="XLXN_86" />
        <signal name="XLXN_89" />
        <signal name="XLXN_90" />
        <signal name="XLXN_91" />
        <signal name="zero,zero,zero,zero,zero,zero,zero,zero" />
        <signal name="zero" />
        <port polarity="Input" name="MISO" />
        <port polarity="Output" name="MOSI" />
        <port polarity="Input" name="FILE_SELECT(7:0)" />
        <port polarity="BiDirectional" name="ram_D(7:0)" />
        <port polarity="Output" name="ram_A(22:0)" />
        <port polarity="Output" name="SCLK" />
        <port polarity="Output" name="ram_W_n" />
        <port polarity="Output" name="LEDS(7:0)" />
        <port polarity="Output" name="SS_n" />
        <port polarity="Input" name="CLK50MHz" />
        <port polarity="Output" name="is_ucpm" />
        <port polarity="Output" name="FILE_LOADED" />
        <blockdef name="SDRAM_SPIMASTER">
            <timestamp>2011-11-7T9:45:10</timestamp>
            <line x2="384" y1="160" y2="160" x1="320" />
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="256" x="64" y="-256" height="496" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="0" y1="224" y2="224" x1="64" />
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
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <blockdef name="SDRAM_FAT32_LOADER">
            <timestamp>2011-11-7T10:4:40</timestamp>
            <line x2="432" y1="480" y2="480" x1="368" />
            <line x2="0" y1="416" y2="416" x1="64" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <line x2="432" y1="224" y2="224" x1="368" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="432" y1="96" y2="96" x1="368" />
            <rect width="64" x="368" y="20" height="24" />
            <line x2="432" y1="32" y2="32" x1="368" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-76" height="24" />
            <line x2="0" y1="-64" y2="-64" x1="64" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <rect width="64" x="368" y="-172" height="24" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <rect width="64" x="368" y="-108" height="24" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
            <rect width="304" x="64" y="-384" height="896" />
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
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <block symbolname="SDRAM_SPIMASTER" name="XLXI_1">
            <blockpin signalname="SCLK_pha" name="SCLK" />
            <blockpin signalname="XLXN_45" name="MISO" />
            <blockpin signalname="XLXN_55(31:0)" name="address(31:0)" />
            <blockpin signalname="XLXN_49" name="MOSI" />
            <blockpin signalname="INIT_DONE" name="spi_init_done" />
            <blockpin name="leds(7:0)" />
            <blockpin signalname="XLXN_61" name="spi_R" />
            <blockpin signalname="XLXN_52(7:0)" name="data_out(7:0)" />
            <blockpin signalname="XLXN_57" name="spi_Rdone" />
            <blockpin name="spi_Wdone" />
            <blockpin name="SS_n" />
            <blockpin signalname="zero,zero,zero,zero,zero,zero,zero,zero" name="data_in(7:0)" />
            <blockpin signalname="XLXN_89" name="CD_n" />
            <blockpin signalname="XLXN_90" name="spi_W" />
            <blockpin signalname="XLXN_91" name="special_W" />
        </block>
        <block symbolname="xor2" name="XLXI_5">
            <blockpin signalname="MISO" name="I0" />
            <blockpin signalname="XLXN_86" name="I1" />
            <blockpin signalname="XLXN_45" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_6">
            <blockpin signalname="XLXN_49" name="I0" />
            <blockpin signalname="XLXN_86" name="I1" />
            <blockpin signalname="MOSI" name="O" />
        </block>
        <block symbolname="SDRAM_FAT32_LOADER" name="XLXI_7">
            <blockpin signalname="SCLK_pha" name="CLK" />
            <blockpin signalname="XLXN_57" name="spi_done" />
            <blockpin signalname="INIT_DONE" name="spi_init_done" />
            <blockpin signalname="DO_STOP" name="stop" />
            <blockpin signalname="FILE_SELECT(7:0)" name="file_select(7:0)" />
            <blockpin signalname="XLXN_52(7:0)" name="spi_D(7:0)" />
            <blockpin signalname="ram_D(7:0)" name="ram_D(7:0)" />
            <blockpin signalname="ram_W" name="ram_W" />
            <blockpin signalname="XLXN_61" name="spi_do" />
            <blockpin signalname="FILE_LOADED" name="load_init_done" />
            <blockpin signalname="is_ucpm" name="is_ucpm" />
            <blockpin signalname="ram_A(22:0)" name="ram_A(22:0)" />
            <blockpin signalname="XLXN_55(31:0)" name="spi_A(31:0)" />
            <blockpin signalname="LEDS(7:0)" name="leds(7:0)" />
        </block>
        <block symbolname="xor2" name="XLXI_8">
            <blockpin signalname="SCLK" name="I0" />
            <blockpin signalname="INV_PHA" name="I1" />
            <blockpin signalname="SCLK_pha" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_26">
            <blockpin signalname="ram_W" name="I" />
            <blockpin signalname="ram_W_n" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_40">
            <blockpin signalname="XLXN_76" name="I" />
            <blockpin signalname="SS_n" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_41">
            <blockpin signalname="XLXN_76" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_43">
            <blockpin signalname="DO_STOP" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_44">
            <blockpin signalname="INV_PHA" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_52">
            <blockpin signalname="XLXN_89" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_53">
            <blockpin signalname="XLXN_90" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_54">
            <blockpin signalname="XLXN_91" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_55">
            <blockpin signalname="zero" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_56">
            <blockpin signalname="XLXN_86" name="G" />
        </block>
        <block symbolname="buf" name="XLXI_46">
            <blockpin signalname="CLK50MHz" name="I" />
            <blockpin signalname="SCLK" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="MISO">
            <wire x2="400" y1="752" y2="752" x1="320" />
        </branch>
        <instance x="336" y="752" name="XLXI_5" orien="R90" />
        <branch name="XLXN_45">
            <wire x2="432" y1="1008" y2="1024" x1="432" />
            <wire x2="672" y1="1024" y2="1024" x1="432" />
        </branch>
        <instance x="1376" y="880" name="XLXI_6" orien="R0" />
        <branch name="MOSI">
            <wire x2="1680" y1="784" y2="784" x1="1632" />
        </branch>
        <branch name="XLXN_49">
            <wire x2="1136" y1="960" y2="960" x1="1056" />
            <wire x2="1360" y1="768" y2="768" x1="1136" />
            <wire x2="1360" y1="768" y2="816" x1="1360" />
            <wire x2="1376" y1="816" y2="816" x1="1360" />
            <wire x2="1136" y1="768" y2="960" x1="1136" />
        </branch>
        <branch name="INV_PHA">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="864" y="320" type="branch" />
            <wire x2="864" y1="320" y2="384" x1="864" />
            <wire x2="928" y1="320" y2="320" x1="864" />
            <wire x2="928" y1="240" y2="320" x1="928" />
        </branch>
        <instance x="2160" y="768" name="XLXI_7" orien="R0">
        </instance>
        <branch name="FILE_SELECT(7:0)">
            <wire x2="2160" y1="608" y2="608" x1="2096" />
        </branch>
        <branch name="ram_D(7:0)">
            <wire x2="2704" y1="672" y2="672" x1="2592" />
        </branch>
        <branch name="ram_A(22:0)">
            <wire x2="2704" y1="608" y2="608" x1="2592" />
        </branch>
        <branch name="ram_W">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2688" y="416" type="branch" />
            <wire x2="2624" y1="416" y2="416" x1="2592" />
            <wire x2="2624" y1="416" y2="496" x1="2624" />
            <wire x2="2640" y1="496" y2="496" x1="2624" />
            <wire x2="2688" y1="416" y2="416" x1="2624" />
        </branch>
        <branch name="INIT_DONE">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1664" y="1344" type="branch" />
            <wire x2="1600" y1="1344" y2="1344" x1="1056" />
            <wire x2="1664" y1="1344" y2="1344" x1="1600" />
            <wire x2="1600" y1="992" y2="1344" x1="1600" />
            <wire x2="2160" y1="992" y2="992" x1="1600" />
        </branch>
        <branch name="SCLK">
            <wire x2="704" y1="320" y2="320" x1="656" />
            <wire x2="704" y1="320" y2="544" x1="704" />
            <wire x2="768" y1="544" y2="544" x1="704" />
            <wire x2="768" y1="544" y2="640" x1="768" />
            <wire x2="800" y1="320" y2="320" x1="704" />
            <wire x2="800" y1="320" y2="384" x1="800" />
            <wire x2="768" y1="640" y2="640" x1="752" />
        </branch>
        <instance x="736" y="384" name="XLXI_8" orien="R90" />
        <instance x="2640" y="528" name="XLXI_26" orien="R0" />
        <branch name="ram_W_n">
            <wire x2="2880" y1="496" y2="496" x1="2864" />
            <wire x2="2880" y1="448" y2="496" x1="2880" />
        </branch>
        <branch name="LEDS(7:0)">
            <wire x2="2736" y1="800" y2="800" x1="2592" />
        </branch>
        <instance x="1968" y="1280" name="XLXI_40" orien="R0" />
        <branch name="SS_n">
            <wire x2="2192" y1="1248" y2="1312" x1="2192" />
        </branch>
        <instance x="1840" y="1248" name="XLXI_41" orien="R0" />
        <branch name="XLXN_76">
            <wire x2="1904" y1="1248" y2="1312" x1="1904" />
            <wire x2="1952" y1="1312" y2="1312" x1="1904" />
            <wire x2="1952" y1="1248" y2="1312" x1="1952" />
            <wire x2="1968" y1="1248" y2="1248" x1="1952" />
        </branch>
        <branch name="DO_STOP">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="2112" y="1104" type="branch" />
            <wire x2="2016" y1="1056" y2="1072" x1="2016" />
            <wire x2="2112" y1="1056" y2="1056" x1="2016" />
            <wire x2="2112" y1="1056" y2="1104" x1="2112" />
            <wire x2="2112" y1="1104" y2="1184" x1="2112" />
            <wire x2="2160" y1="1184" y2="1184" x1="2112" />
        </branch>
        <iomarker fontsize="28" x="320" y="752" name="MISO" orien="R180" />
        <iomarker fontsize="28" x="1680" y="784" name="MOSI" orien="R0" />
        <iomarker fontsize="28" x="2096" y="608" name="FILE_SELECT(7:0)" orien="R180" />
        <iomarker fontsize="28" x="2704" y="672" name="ram_D(7:0)" orien="R0" />
        <iomarker fontsize="28" x="2704" y="608" name="ram_A(22:0)" orien="R0" />
        <iomarker fontsize="28" x="656" y="320" name="SCLK" orien="R180" />
        <iomarker fontsize="28" x="2880" y="448" name="ram_W_n" orien="R270" />
        <iomarker fontsize="28" x="2736" y="800" name="LEDS(7:0)" orien="R0" />
        <iomarker fontsize="28" x="2192" y="1312" name="SS_n" orien="R90" />
        <instance x="1952" y="1200" name="XLXI_43" orien="R0" />
        <instance x="864" y="240" name="XLXI_44" orien="R0" />
        <branch name="CLK50MHz">
            <wire x2="528" y1="640" y2="640" x1="480" />
        </branch>
        <iomarker fontsize="28" x="480" y="640" name="CLK50MHz" orien="R180" />
        <branch name="is_ucpm">
            <wire x2="2752" y1="1248" y2="1248" x1="2592" />
        </branch>
        <iomarker fontsize="28" x="2752" y="1248" name="is_ucpm" orien="R0" />
        <branch name="FILE_LOADED">
            <wire x2="2624" y1="1360" y2="1360" x1="2512" />
            <wire x2="2512" y1="1360" y2="1680" x1="2512" />
            <wire x2="2848" y1="1680" y2="1680" x1="2512" />
            <wire x2="2848" y1="1680" y2="1712" x1="2848" />
            <wire x2="2960" y1="1712" y2="1712" x1="2848" />
            <wire x2="2624" y1="992" y2="992" x1="2592" />
            <wire x2="2624" y1="992" y2="1360" x1="2624" />
        </branch>
        <iomarker fontsize="28" x="2960" y="1712" name="FILE_LOADED" orien="R0" />
        <branch name="XLXN_89">
            <wire x2="672" y1="1280" y2="1280" x1="640" />
        </branch>
        <instance x="512" y="1216" name="XLXI_52" orien="R90" />
        <branch name="XLXN_90">
            <wire x2="672" y1="1344" y2="1344" x1="640" />
        </branch>
        <instance x="512" y="1280" name="XLXI_53" orien="R90" />
        <branch name="XLXN_91">
            <wire x2="672" y1="1408" y2="1408" x1="640" />
        </branch>
        <instance x="512" y="1344" name="XLXI_54" orien="R90" />
        <branch name="zero,zero,zero,zero,zero,zero,zero,zero">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="528" y="1216" type="branch" />
            <wire x2="672" y1="1216" y2="1216" x1="528" />
        </branch>
        <instance x="432" y="1600" name="XLXI_55" orien="R90" />
        <branch name="zero">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="608" y="1664" type="branch" />
            <wire x2="608" y1="1664" y2="1664" x1="560" />
        </branch>
        <branch name="XLXN_52(7:0)">
            <wire x2="1856" y1="1152" y2="1152" x1="1056" />
            <wire x2="1856" y1="704" y2="1152" x1="1856" />
            <wire x2="2160" y1="704" y2="704" x1="1856" />
        </branch>
        <branch name="XLXN_57">
            <wire x2="1648" y1="1088" y2="1088" x1="1056" />
            <wire x2="1648" y1="864" y2="1088" x1="1648" />
            <wire x2="2160" y1="864" y2="864" x1="1648" />
        </branch>
        <branch name="XLXN_55(31:0)">
            <wire x2="656" y1="1152" y2="1488" x1="656" />
            <wire x2="2656" y1="1488" y2="1488" x1="656" />
            <wire x2="672" y1="1152" y2="1152" x1="656" />
            <wire x2="2656" y1="736" y2="736" x1="2592" />
            <wire x2="2656" y1="736" y2="1488" x1="2656" />
        </branch>
        <branch name="XLXN_61">
            <wire x2="368" y1="1088" y2="1472" x1="368" />
            <wire x2="2640" y1="1472" y2="1472" x1="368" />
            <wire x2="672" y1="1088" y2="1088" x1="368" />
            <wire x2="2640" y1="864" y2="864" x1="2592" />
            <wire x2="2640" y1="864" y2="1472" x1="2640" />
        </branch>
        <branch name="SCLK_pha">
            <wire x2="832" y1="864" y2="864" x1="592" />
            <wire x2="592" y1="864" y2="960" x1="592" />
            <wire x2="672" y1="960" y2="960" x1="592" />
            <wire x2="832" y1="640" y2="688" x1="832" />
            <wire x2="896" y1="688" y2="688" x1="832" />
            <wire x2="896" y1="688" y2="912" x1="896" />
            <wire x2="1664" y1="912" y2="912" x1="896" />
            <wire x2="832" y1="688" y2="864" x1="832" />
            <wire x2="2160" y1="416" y2="416" x1="1664" />
            <wire x2="1664" y1="416" y2="912" x1="1664" />
        </branch>
        <instance x="672" y="1184" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_86">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="464" y="736" type="branch" />
            <wire x2="736" y1="688" y2="688" x1="464" />
            <wire x2="736" y1="688" y2="752" x1="736" />
            <wire x2="1312" y1="752" y2="752" x1="736" />
            <wire x2="1376" y1="752" y2="752" x1="1312" />
            <wire x2="464" y1="688" y2="736" x1="464" />
            <wire x2="464" y1="736" y2="752" x1="464" />
            <wire x2="736" y1="752" y2="752" x1="544" />
            <wire x2="544" y1="752" y2="784" x1="544" />
        </branch>
        <instance x="480" y="912" name="XLXI_56" orien="R0" />
        <instance x="528" y="672" name="XLXI_46" orien="R0" />
    </sheet>
</drawing>