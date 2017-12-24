<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="MISO" />
        <signal name="MOSI" />
        <signal name="XLXN_55(22:0)" />
        <signal name="ram_D(7:0)" />
        <signal name="ram_A(20:0)" />
        <signal name="ram_W" />
        <signal name="XLXN_57" />
        <signal name="INIT_DONE" />
        <signal name="SCLK" />
        <signal name="ram_W_n" />
        <signal name="SS_n" />
        <signal name="CLK4MHz" />
        <signal name="FILE_LOADED" />
        <signal name="XLXN_52(7:0)" />
        <signal name="XLXN_94(8:0)" />
        <signal name="XLXN_95" />
        <signal name="key_reset" />
        <signal name="FILE_SELECT(15:0)" />
        <signal name="ZDSK_doSelect" />
        <signal name="ZDSK_doneCarac" />
        <signal name="ZDSK_doCarac" />
        <signal name="ZDSK_CARAC(7:0)" />
        <signal name="ZDSK_doInsert" />
        <signal name="pause" />
        <signal name="debug_leds(7:0)" />
        <port polarity="Input" name="MISO" />
        <port polarity="Output" name="MOSI" />
        <port polarity="BiDirectional" name="ram_D(7:0)" />
        <port polarity="Output" name="ram_A(20:0)" />
        <port polarity="Output" name="SCLK" />
        <port polarity="Output" name="ram_W_n" />
        <port polarity="Output" name="SS_n" />
        <port polarity="Input" name="CLK4MHz" />
        <port polarity="Output" name="FILE_LOADED" />
        <port polarity="Input" name="key_reset" />
        <port polarity="Input" name="FILE_SELECT(15:0)" />
        <port polarity="Input" name="ZDSK_doSelect" />
        <port polarity="Input" name="ZDSK_doneCarac" />
        <port polarity="Output" name="ZDSK_doCarac" />
        <port polarity="Output" name="ZDSK_CARAC(7:0)" />
        <port polarity="Input" name="ZDSK_doInsert" />
        <port polarity="Output" name="pause" />
        <port polarity="Output" name="debug_leds(7:0)" />
        <blockdef name="SDRAM_SPIMASTER">
            <timestamp>2017-12-24T13:48:29</timestamp>
            <line x2="384" y1="160" y2="160" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="256" x="64" y="-256" height="512" />
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
        <blockdef name="SDRAM_FAT32_LOADER">
            <timestamp>2017-12-24T14:2:30</timestamp>
            <rect width="64" x="496" y="468" height="24" />
            <line x2="560" y1="480" y2="480" x1="496" />
            <line x2="0" y1="416" y2="416" x1="64" />
            <line x2="560" y1="416" y2="416" x1="496" />
            <line x2="0" y1="288" y2="288" x1="64" />
            <line x2="0" y1="352" y2="352" x1="64" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-272" y2="-272" x1="64" />
            <line x2="560" y1="288" y2="288" x1="496" />
            <rect width="64" x="496" y="340" height="24" />
            <line x2="560" y1="352" y2="352" x1="496" />
            <line x2="560" y1="224" y2="224" x1="496" />
            <line x2="560" y1="-352" y2="-352" x1="496" />
            <rect width="64" x="496" y="-172" height="24" />
            <line x2="560" y1="-160" y2="-160" x1="496" />
            <rect width="64" x="496" y="-108" height="24" />
            <line x2="560" y1="-96" y2="-96" x1="496" />
            <rect width="64" x="496" y="-44" height="24" />
            <line x2="560" y1="-32" y2="-32" x1="496" />
            <rect width="64" x="496" y="20" height="24" />
            <line x2="560" y1="32" y2="32" x1="496" />
            <line x2="560" y1="96" y2="96" x1="496" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="432" x="64" y="-384" height="884" />
        </blockdef>
        <block symbolname="SDRAM_SPIMASTER" name="XLXI_1">
            <blockpin signalname="CLK4MHz" name="SCLK" />
            <blockpin signalname="MISO" name="MISO" />
            <blockpin signalname="XLXN_95" name="spi_R" />
            <blockpin signalname="XLXN_55(22:0)" name="address(22:0)" />
            <blockpin signalname="XLXN_94(8:0)" name="address_block(8:0)" />
            <blockpin signalname="MOSI" name="MOSI" />
            <blockpin signalname="SS_n" name="SS_n" />
            <blockpin signalname="XLXN_57" name="spi_Rdone" />
            <blockpin signalname="INIT_DONE" name="spi_init_done" />
            <blockpin signalname="XLXN_52(7:0)" name="data_out(7:0)" />
        </block>
        <block symbolname="inv" name="XLXI_26">
            <blockpin signalname="ram_W" name="I" />
            <blockpin signalname="ram_W_n" name="O" />
        </block>
        <block symbolname="SDRAM_FAT32_LOADER" name="XLXI_7">
            <blockpin signalname="CLK4MHz" name="CLK4MHz" />
            <blockpin signalname="XLXN_57" name="spi_Rdone" />
            <blockpin signalname="INIT_DONE" name="spi_init_done" />
            <blockpin signalname="key_reset" name="key_reset" />
            <blockpin signalname="ZDSK_doSelect" name="ZDSK_doSelect" />
            <blockpin signalname="ZDSK_doneCarac" name="ZDSK_doneCarac" />
            <blockpin signalname="ZDSK_doInsert" name="ZDSK_doInsert" />
            <blockpin signalname="FILE_SELECT(15:0)" name="file_select(15:0)" />
            <blockpin signalname="XLXN_52(7:0)" name="spi_Din(7:0)" />
            <blockpin signalname="ram_D(7:0)" name="ram_D(7:0)" />
            <blockpin signalname="ram_W" name="ram_W" />
            <blockpin signalname="XLXN_95" name="spi_Rdo" />
            <blockpin signalname="FILE_LOADED" name="load_init_done" />
            <blockpin signalname="ZDSK_doCarac" name="ZDSK_doCarac" />
            <blockpin signalname="pause" name="pause" />
            <blockpin signalname="ram_A(20:0)" name="ram_A(20:0)" />
            <blockpin signalname="XLXN_55(22:0)" name="spi_A(22:0)" />
            <blockpin signalname="XLXN_94(8:0)" name="spi_A_block(8:0)" />
            <blockpin signalname="debug_leds(7:0)" name="leds(7:0)" />
            <blockpin signalname="ZDSK_CARAC(7:0)" name="ZDSK_CARAC(7:0)" />
        </block>
        <block symbolname="inv" name="XLXI_47">
            <blockpin signalname="CLK4MHz" name="I" />
            <blockpin signalname="SCLK" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="672" y="1184" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_55(22:0)">
            <wire x2="672" y1="1152" y2="1152" x1="192" />
            <wire x2="192" y1="1152" y2="1584" x1="192" />
            <wire x2="3040" y1="1584" y2="1584" x1="192" />
            <wire x2="3040" y1="736" y2="736" x1="2592" />
            <wire x2="3040" y1="736" y2="1584" x1="3040" />
        </branch>
        <branch name="ram_D(7:0)">
            <wire x2="2704" y1="672" y2="672" x1="2592" />
        </branch>
        <branch name="ram_A(20:0)">
            <wire x2="2704" y1="608" y2="608" x1="2592" />
        </branch>
        <branch name="ram_W">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2688" y="416" type="branch" />
            <wire x2="2624" y1="416" y2="416" x1="2592" />
            <wire x2="2624" y1="416" y2="496" x1="2624" />
            <wire x2="2640" y1="496" y2="496" x1="2624" />
            <wire x2="2688" y1="416" y2="416" x1="2624" />
        </branch>
        <branch name="XLXN_57">
            <wire x2="1456" y1="1088" y2="1088" x1="1056" />
            <wire x2="1456" y1="864" y2="1088" x1="1456" />
            <wire x2="2032" y1="864" y2="864" x1="1456" />
        </branch>
        <branch name="INIT_DONE">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1664" y="1344" type="branch" />
            <wire x2="1600" y1="1344" y2="1344" x1="1056" />
            <wire x2="1664" y1="1344" y2="1344" x1="1600" />
            <wire x2="1600" y1="992" y2="1344" x1="1600" />
            <wire x2="2032" y1="992" y2="992" x1="1600" />
        </branch>
        <instance x="2640" y="528" name="XLXI_26" orien="R0" />
        <branch name="ram_W_n">
            <wire x2="2880" y1="496" y2="496" x1="2864" />
            <wire x2="2880" y1="448" y2="496" x1="2880" />
        </branch>
        <iomarker fontsize="28" x="2704" y="672" name="ram_D(7:0)" orien="R0" />
        <iomarker fontsize="28" x="2704" y="608" name="ram_A(20:0)" orien="R0" />
        <iomarker fontsize="28" x="2880" y="448" name="ram_W_n" orien="R270" />
        <branch name="CLK4MHz">
            <wire x2="528" y1="640" y2="640" x1="400" />
            <wire x2="704" y1="640" y2="640" x1="528" />
            <wire x2="1360" y1="640" y2="640" x1="704" />
            <wire x2="528" y1="640" y2="960" x1="528" />
            <wire x2="672" y1="960" y2="960" x1="528" />
            <wire x2="704" y1="608" y2="640" x1="704" />
            <wire x2="1360" y1="416" y2="640" x1="1360" />
            <wire x2="2032" y1="416" y2="416" x1="1360" />
        </branch>
        <branch name="FILE_LOADED">
            <wire x2="2704" y1="992" y2="992" x1="2592" />
        </branch>
        <branch name="XLXN_52(7:0)">
            <wire x2="1536" y1="1152" y2="1152" x1="1056" />
            <wire x2="1536" y1="736" y2="1152" x1="1536" />
            <wire x2="2032" y1="736" y2="736" x1="1536" />
        </branch>
        <branch name="XLXN_94(8:0)">
            <wire x2="672" y1="1280" y2="1280" x1="224" />
            <wire x2="224" y1="1280" y2="1552" x1="224" />
            <wire x2="3008" y1="1552" y2="1552" x1="224" />
            <wire x2="3008" y1="800" y2="800" x1="2592" />
            <wire x2="3008" y1="800" y2="1552" x1="3008" />
        </branch>
        <branch name="XLXN_95">
            <wire x2="144" y1="1088" y2="1520" x1="144" />
            <wire x2="2976" y1="1520" y2="1520" x1="144" />
            <wire x2="672" y1="1088" y2="1088" x1="144" />
            <wire x2="2976" y1="864" y2="864" x1="2592" />
            <wire x2="2976" y1="864" y2="1520" x1="2976" />
        </branch>
        <branch name="MISO">
            <wire x2="672" y1="1024" y2="1024" x1="544" />
        </branch>
        <branch name="MOSI">
            <wire x2="1152" y1="960" y2="960" x1="1056" />
        </branch>
        <iomarker fontsize="28" x="1152" y="960" name="MOSI" orien="R0" />
        <iomarker fontsize="28" x="544" y="1024" name="MISO" orien="R180" />
        <iomarker fontsize="28" x="400" y="640" name="CLK4MHz" orien="R180" />
        <iomarker fontsize="28" x="576" y="320" name="SCLK" orien="R180" />
        <branch name="SS_n">
            <wire x2="1152" y1="1216" y2="1216" x1="1056" />
        </branch>
        <iomarker fontsize="28" x="1152" y="1216" name="SS_n" orien="R0" />
        <branch name="key_reset">
            <wire x2="2032" y1="496" y2="496" x1="1840" />
        </branch>
        <branch name="FILE_SELECT(15:0)">
            <wire x2="2032" y1="608" y2="608" x1="1984" />
        </branch>
        <instance x="2032" y="768" name="XLXI_7" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1984" y="608" name="FILE_SELECT(15:0)" orien="R180" />
        <iomarker fontsize="28" x="1840" y="496" name="key_reset" orien="R180" />
        <iomarker fontsize="28" x="2704" y="992" name="FILE_LOADED" orien="R0" />
        <branch name="ZDSK_doSelect">
            <wire x2="2016" y1="1056" y2="1056" x1="1920" />
            <wire x2="2032" y1="1056" y2="1056" x1="2016" />
        </branch>
        <branch name="ZDSK_doneCarac">
            <wire x2="2016" y1="1120" y2="1120" x1="1952" />
            <wire x2="2032" y1="1120" y2="1120" x1="2016" />
        </branch>
        <branch name="ZDSK_doCarac">
            <wire x2="2608" y1="1056" y2="1056" x1="2592" />
            <wire x2="2704" y1="1056" y2="1056" x1="2608" />
        </branch>
        <branch name="ZDSK_CARAC(7:0)">
            <wire x2="2608" y1="1120" y2="1120" x1="2592" />
            <wire x2="2656" y1="1120" y2="1120" x1="2608" />
        </branch>
        <iomarker fontsize="28" x="2704" y="1056" name="ZDSK_doCarac" orien="R0" />
        <iomarker fontsize="28" x="2656" y="1120" name="ZDSK_CARAC(7:0)" orien="R0" />
        <iomarker fontsize="28" x="1952" y="1120" name="ZDSK_doneCarac" orien="R180" />
        <iomarker fontsize="28" x="1920" y="1056" name="ZDSK_doSelect" orien="R180" />
        <branch name="ZDSK_doInsert">
            <wire x2="2016" y1="1184" y2="1184" x1="1920" />
            <wire x2="2032" y1="1184" y2="1184" x1="2016" />
        </branch>
        <branch name="pause">
            <wire x2="2608" y1="1184" y2="1184" x1="2592" />
            <wire x2="2656" y1="1184" y2="1184" x1="2608" />
        </branch>
        <iomarker fontsize="28" x="2656" y="1184" name="pause" orien="R0" />
        <iomarker fontsize="28" x="1920" y="1184" name="ZDSK_doInsert" orien="R180" />
        <branch name="SCLK">
            <wire x2="704" y1="320" y2="320" x1="576" />
            <wire x2="704" y1="320" y2="384" x1="704" />
        </branch>
        <instance x="736" y="608" name="XLXI_47" orien="R270" />
        <branch name="debug_leds(7:0)">
            <wire x2="2624" y1="1248" y2="1248" x1="2592" />
        </branch>
        <iomarker fontsize="28" x="2624" y="1248" name="debug_leds(7:0)" orien="R0" />
    </sheet>
</drawing>