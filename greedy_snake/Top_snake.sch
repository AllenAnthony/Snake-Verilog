<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk50mhz" />
        <signal name="BTN(3:0)" />
        <signal name="SW(7:0)" />
        <signal name="SW_OK(7:0)" />
        <signal name="button_out(3)" />
        <signal name="SW_OK(7)" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="x_dis(9:0)" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="hsync" />
        <signal name="vsync" />
        <signal name="vga_b" />
        <signal name="vga_r" />
        <signal name="vga_g" />
        <signal name="x0(5:0)" />
        <signal name="x1(5:0)" />
        <signal name="x2(5:0)" />
        <signal name="x3(5:0)" />
        <signal name="x4(5:0)" />
        <signal name="x5(5:0)" />
        <signal name="x6(5:0)" />
        <signal name="x7(5:0)" />
        <signal name="y15(5:0)" />
        <signal name="y14(5:0)" />
        <signal name="y13(5:0)" />
        <signal name="y12(5:0)" />
        <signal name="y11(5:0)" />
        <signal name="y10(5:0)" />
        <signal name="y9(5:0)" />
        <signal name="y8(5:0)" />
        <signal name="y7(5:0)" />
        <signal name="x8(5:0)" />
        <signal name="x9(5:0)" />
        <signal name="x10(5:0)" />
        <signal name="x11(5:0)" />
        <signal name="x12(5:0)" />
        <signal name="x13(5:0)" />
        <signal name="x14(5:0)" />
        <signal name="y6(5:0)" />
        <signal name="y5(5:0)" />
        <signal name="y4(5:0)" />
        <signal name="y3(5:0)" />
        <signal name="y2(5:0)" />
        <signal name="y1(5:0)" />
        <signal name="y0(5:0)" />
        <signal name="x15(5:0)" />
        <signal name="XLXN_46(9:0)" />
        <signal name="XLXN_47" />
        <signal name="XLXN_49" />
        <signal name="SW_OK(6)" />
        <signal name="button_out(3:0)" />
        <signal name="XLXN_54" />
        <signal name="button_out(2)" />
        <signal name="button_out(1)" />
        <signal name="button_out(0)" />
        <signal name="XLXN_58" />
        <signal name="XLXN_61" />
        <signal name="XLXN_62" />
        <port polarity="Input" name="clk50mhz" />
        <port polarity="Input" name="BTN(3:0)" />
        <port polarity="Input" name="SW(7:0)" />
        <port polarity="Output" name="hsync" />
        <port polarity="Output" name="vsync" />
        <port polarity="Output" name="vga_b" />
        <port polarity="Output" name="vga_r" />
        <port polarity="Output" name="vga_g" />
        <blockdef name="moving_snake">
            <timestamp>2016-1-6T3:57:52</timestamp>
            <rect width="256" x="64" y="-2176" height="2176" />
            <line x2="0" y1="-2144" y2="-2144" x1="64" />
            <line x2="0" y1="-1792" y2="-1792" x1="64" />
            <line x2="0" y1="-1440" y2="-1440" x1="64" />
            <line x2="0" y1="-1088" y2="-1088" x1="64" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <line x2="0" y1="-384" y2="-384" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-2144" y2="-2144" x1="320" />
            <line x2="384" y1="-2080" y2="-2080" x1="320" />
            <rect width="64" x="320" y="-2028" height="24" />
            <line x2="384" y1="-2016" y2="-2016" x1="320" />
            <rect width="64" x="320" y="-1964" height="24" />
            <line x2="384" y1="-1952" y2="-1952" x1="320" />
            <rect width="64" x="320" y="-1900" height="24" />
            <line x2="384" y1="-1888" y2="-1888" x1="320" />
            <rect width="64" x="320" y="-1836" height="24" />
            <line x2="384" y1="-1824" y2="-1824" x1="320" />
            <rect width="64" x="320" y="-1772" height="24" />
            <line x2="384" y1="-1760" y2="-1760" x1="320" />
            <rect width="64" x="320" y="-1708" height="24" />
            <line x2="384" y1="-1696" y2="-1696" x1="320" />
            <rect width="64" x="320" y="-1644" height="24" />
            <line x2="384" y1="-1632" y2="-1632" x1="320" />
            <rect width="64" x="320" y="-1580" height="24" />
            <line x2="384" y1="-1568" y2="-1568" x1="320" />
            <rect width="64" x="320" y="-1516" height="24" />
            <line x2="384" y1="-1504" y2="-1504" x1="320" />
            <rect width="64" x="320" y="-1452" height="24" />
            <line x2="384" y1="-1440" y2="-1440" x1="320" />
            <rect width="64" x="320" y="-1388" height="24" />
            <line x2="384" y1="-1376" y2="-1376" x1="320" />
            <rect width="64" x="320" y="-1324" height="24" />
            <line x2="384" y1="-1312" y2="-1312" x1="320" />
            <rect width="64" x="320" y="-1260" height="24" />
            <line x2="384" y1="-1248" y2="-1248" x1="320" />
            <rect width="64" x="320" y="-1196" height="24" />
            <line x2="384" y1="-1184" y2="-1184" x1="320" />
            <rect width="64" x="320" y="-1132" height="24" />
            <line x2="384" y1="-1120" y2="-1120" x1="320" />
            <rect width="64" x="320" y="-1068" height="24" />
            <line x2="384" y1="-1056" y2="-1056" x1="320" />
            <rect width="64" x="320" y="-1004" height="24" />
            <line x2="384" y1="-992" y2="-992" x1="320" />
            <rect width="64" x="320" y="-940" height="24" />
            <line x2="384" y1="-928" y2="-928" x1="320" />
            <rect width="64" x="320" y="-876" height="24" />
            <line x2="384" y1="-864" y2="-864" x1="320" />
            <rect width="64" x="320" y="-812" height="24" />
            <line x2="384" y1="-800" y2="-800" x1="320" />
            <rect width="64" x="320" y="-748" height="24" />
            <line x2="384" y1="-736" y2="-736" x1="320" />
            <rect width="64" x="320" y="-684" height="24" />
            <line x2="384" y1="-672" y2="-672" x1="320" />
            <rect width="64" x="320" y="-620" height="24" />
            <line x2="384" y1="-608" y2="-608" x1="320" />
            <rect width="64" x="320" y="-556" height="24" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <rect width="64" x="320" y="-492" height="24" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <rect width="64" x="320" y="-428" height="24" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <rect width="64" x="320" y="-364" height="24" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="transform">
            <timestamp>2016-1-6T3:57:31</timestamp>
            <rect width="256" x="64" y="-2368" height="2368" />
            <line x2="0" y1="-2336" y2="-2336" x1="64" />
            <line x2="0" y1="-2272" y2="-2272" x1="64" />
            <line x2="0" y1="-2208" y2="-2208" x1="64" />
            <rect width="64" x="0" y="-2156" height="24" />
            <line x2="0" y1="-2144" y2="-2144" x1="64" />
            <rect width="64" x="0" y="-2092" height="24" />
            <line x2="0" y1="-2080" y2="-2080" x1="64" />
            <rect width="64" x="0" y="-2028" height="24" />
            <line x2="0" y1="-2016" y2="-2016" x1="64" />
            <rect width="64" x="0" y="-1964" height="24" />
            <line x2="0" y1="-1952" y2="-1952" x1="64" />
            <rect width="64" x="0" y="-1900" height="24" />
            <line x2="0" y1="-1888" y2="-1888" x1="64" />
            <rect width="64" x="0" y="-1836" height="24" />
            <line x2="0" y1="-1824" y2="-1824" x1="64" />
            <rect width="64" x="0" y="-1772" height="24" />
            <line x2="0" y1="-1760" y2="-1760" x1="64" />
            <rect width="64" x="0" y="-1708" height="24" />
            <line x2="0" y1="-1696" y2="-1696" x1="64" />
            <rect width="64" x="0" y="-1644" height="24" />
            <line x2="0" y1="-1632" y2="-1632" x1="64" />
            <rect width="64" x="0" y="-1580" height="24" />
            <line x2="0" y1="-1568" y2="-1568" x1="64" />
            <rect width="64" x="0" y="-1516" height="24" />
            <line x2="0" y1="-1504" y2="-1504" x1="64" />
            <rect width="64" x="0" y="-1452" height="24" />
            <line x2="0" y1="-1440" y2="-1440" x1="64" />
            <rect width="64" x="0" y="-1388" height="24" />
            <line x2="0" y1="-1376" y2="-1376" x1="64" />
            <rect width="64" x="0" y="-1324" height="24" />
            <line x2="0" y1="-1312" y2="-1312" x1="64" />
            <rect width="64" x="0" y="-1260" height="24" />
            <line x2="0" y1="-1248" y2="-1248" x1="64" />
            <rect width="64" x="0" y="-1196" height="24" />
            <line x2="0" y1="-1184" y2="-1184" x1="64" />
            <rect width="64" x="0" y="-1132" height="24" />
            <line x2="0" y1="-1120" y2="-1120" x1="64" />
            <rect width="64" x="0" y="-1068" height="24" />
            <line x2="0" y1="-1056" y2="-1056" x1="64" />
            <rect width="64" x="0" y="-1004" height="24" />
            <line x2="0" y1="-992" y2="-992" x1="64" />
            <rect width="64" x="0" y="-940" height="24" />
            <line x2="0" y1="-928" y2="-928" x1="64" />
            <rect width="64" x="0" y="-876" height="24" />
            <line x2="0" y1="-864" y2="-864" x1="64" />
            <rect width="64" x="0" y="-812" height="24" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <rect width="64" x="0" y="-748" height="24" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <rect width="64" x="0" y="-684" height="24" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <rect width="64" x="0" y="-556" height="24" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-2336" y2="-2336" x1="320" />
            <line x2="384" y1="-1184" y2="-1184" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="vga_256">
            <timestamp>2016-1-6T3:57:20</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Anti_jitter">
            <timestamp>2015-11-10T6:6:0</timestamp>
            <rect style="linecolor:rgb(0,0,0);fillcolor:rgb(170,255,255);fillstyle:Solid" width="304" x="16" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="16" />
            <line x2="336" y1="-128" y2="-128" x1="320" />
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="16" />
            <line x2="0" y1="-32" y2="-32" style="linewidth:W" x1="16" />
            <line x2="320" y1="-160" y2="-160" style="linewidth:W" x1="336" />
            <line x2="320" y1="-80" y2="-80" style="linewidth:W" x1="336" />
            <line x2="320" y1="-32" y2="-32" style="linewidth:W" x1="336" />
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
        <block symbolname="transform" name="XLXI_2">
            <blockpin signalname="clk50mhz" name="clk" />
            <blockpin signalname="XLXN_21" name="over" />
            <blockpin signalname="XLXN_22" name="win" />
            <blockpin signalname="x0(5:0)" name="x0(5:0)" />
            <blockpin signalname="x1(5:0)" name="x1(5:0)" />
            <blockpin signalname="x2(5:0)" name="x2(5:0)" />
            <blockpin signalname="x3(5:0)" name="x3(5:0)" />
            <blockpin signalname="x4(5:0)" name="x4(5:0)" />
            <blockpin signalname="x5(5:0)" name="x5(5:0)" />
            <blockpin signalname="x6(5:0)" name="x6(5:0)" />
            <blockpin signalname="x7(5:0)" name="x7(5:0)" />
            <blockpin signalname="x8(5:0)" name="x8(5:0)" />
            <blockpin signalname="x9(5:0)" name="x9(5:0)" />
            <blockpin signalname="x10(5:0)" name="x10(5:0)" />
            <blockpin signalname="x11(5:0)" name="x11(5:0)" />
            <blockpin signalname="x12(5:0)" name="x12(5:0)" />
            <blockpin signalname="x13(5:0)" name="x13(5:0)" />
            <blockpin signalname="x14(5:0)" name="x14(5:0)" />
            <blockpin signalname="x15(5:0)" name="x15(5:0)" />
            <blockpin signalname="y0(5:0)" name="y0(5:0)" />
            <blockpin signalname="y1(5:0)" name="y1(5:0)" />
            <blockpin signalname="y2(5:0)" name="y2(5:0)" />
            <blockpin signalname="y3(5:0)" name="y3(5:0)" />
            <blockpin signalname="y4(5:0)" name="y4(5:0)" />
            <blockpin signalname="y5(5:0)" name="y5(5:0)" />
            <blockpin signalname="y6(5:0)" name="y6(5:0)" />
            <blockpin signalname="y7(5:0)" name="y7(5:0)" />
            <blockpin signalname="y8(5:0)" name="y8(5:0)" />
            <blockpin signalname="y9(5:0)" name="y9(5:0)" />
            <blockpin signalname="y10(5:0)" name="y10(5:0)" />
            <blockpin signalname="y11(5:0)" name="y11(5:0)" />
            <blockpin signalname="y12(5:0)" name="y12(5:0)" />
            <blockpin signalname="y13(5:0)" name="y13(5:0)" />
            <blockpin signalname="y14(5:0)" name="y14(5:0)" />
            <blockpin signalname="y15(5:0)" name="y15(5:0)" />
            <blockpin signalname="x_dis(9:0)" name="x(9:0)" />
            <blockpin signalname="XLXN_46(9:0)" name="y(9:0)" />
            <blockpin signalname="XLXN_15" name="c_red" />
            <blockpin signalname="XLXN_16" name="c_green" />
            <blockpin signalname="XLXN_17" name="c_blue" />
        </block>
        <block symbolname="vga_256" name="XLXI_3">
            <blockpin signalname="clk50mhz" name="clk" />
            <blockpin signalname="XLXN_49" name="rst" />
            <blockpin signalname="XLXN_15" name="nvga_r" />
            <blockpin signalname="XLXN_16" name="nvga_g" />
            <blockpin signalname="XLXN_17" name="nvga_b" />
            <blockpin signalname="hsync" name="hsync" />
            <blockpin signalname="vsync" name="vsync" />
            <blockpin signalname="vga_r" name="vga_r" />
            <blockpin signalname="vga_g" name="vga_g" />
            <blockpin signalname="vga_b" name="vga_b" />
            <blockpin signalname="x_dis(9:0)" name="x_dis(9:0)" />
            <blockpin signalname="XLXN_46(9:0)" name="y_dis(9:0)" />
        </block>
        <block symbolname="Anti_jitter" name="XLXI_4">
            <blockpin signalname="clk50mhz" name="clk" />
            <blockpin signalname="SW(7:0)" name="SW(7:0)" />
            <blockpin signalname="BTN(3:0)" name="button(3:0)" />
            <blockpin name="rst" />
            <blockpin signalname="button_out(3:0)" name="button_out(3:0)" />
            <blockpin signalname="SW_OK(7:0)" name="SW_OK(7:0)" />
            <blockpin name="button_pulse(3:0)" />
        </block>
        <block symbolname="inv" name="XLXI_5">
            <blockpin signalname="SW_OK(6)" name="I" />
            <blockpin signalname="XLXN_47" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="SW_OK(6)" name="I" />
            <blockpin signalname="XLXN_49" name="O" />
        </block>
        <block symbolname="moving_snake" name="XLXI_1">
            <blockpin signalname="clk50mhz" name="clk" />
            <blockpin signalname="XLXN_47" name="rst_n" />
            <blockpin signalname="XLXN_54" name="up" />
            <blockpin signalname="XLXN_58" name="down" />
            <blockpin signalname="XLXN_61" name="right" />
            <blockpin signalname="XLXN_62" name="left" />
            <blockpin signalname="SW_OK(7)" name="start" />
            <blockpin signalname="XLXN_21" name="o_over" />
            <blockpin signalname="XLXN_22" name="o_win" />
            <blockpin signalname="x0(5:0)" name="x0(5:0)" />
            <blockpin signalname="y0(5:0)" name="y0(5:0)" />
            <blockpin signalname="x1(5:0)" name="x1(5:0)" />
            <blockpin signalname="y1(5:0)" name="y1(5:0)" />
            <blockpin signalname="x2(5:0)" name="x2(5:0)" />
            <blockpin signalname="y2(5:0)" name="y2(5:0)" />
            <blockpin signalname="x3(5:0)" name="x3(5:0)" />
            <blockpin signalname="y3(5:0)" name="y3(5:0)" />
            <blockpin signalname="x4(5:0)" name="x4(5:0)" />
            <blockpin signalname="y4(5:0)" name="y4(5:0)" />
            <blockpin signalname="x5(5:0)" name="x5(5:0)" />
            <blockpin signalname="y5(5:0)" name="y5(5:0)" />
            <blockpin signalname="x6(5:0)" name="x6(5:0)" />
            <blockpin signalname="y6(5:0)" name="y6(5:0)" />
            <blockpin signalname="x7(5:0)" name="x7(5:0)" />
            <blockpin signalname="y7(5:0)" name="y7(5:0)" />
            <blockpin signalname="x8(5:0)" name="x8(5:0)" />
            <blockpin signalname="y8(5:0)" name="y8(5:0)" />
            <blockpin signalname="x9(5:0)" name="x9(5:0)" />
            <blockpin signalname="y9(5:0)" name="y9(5:0)" />
            <blockpin signalname="x10(5:0)" name="x10(5:0)" />
            <blockpin signalname="y10(5:0)" name="y10(5:0)" />
            <blockpin signalname="x11(5:0)" name="x11(5:0)" />
            <blockpin signalname="y11(5:0)" name="y11(5:0)" />
            <blockpin signalname="x12(5:0)" name="x12(5:0)" />
            <blockpin signalname="y12(5:0)" name="y12(5:0)" />
            <blockpin signalname="x13(5:0)" name="x13(5:0)" />
            <blockpin signalname="y13(5:0)" name="y13(5:0)" />
            <blockpin signalname="x14(5:0)" name="x14(5:0)" />
            <blockpin signalname="y14(5:0)" name="y14(5:0)" />
            <blockpin signalname="x15(5:0)" name="x15(5:0)" />
            <blockpin signalname="y15(5:0)" name="y15(5:0)" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="button_out(3)" name="I" />
            <blockpin signalname="XLXN_54" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_9">
            <blockpin signalname="button_out(2)" name="I" />
            <blockpin signalname="XLXN_58" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="button_out(1)" name="I" />
            <blockpin signalname="XLXN_62" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_11">
            <blockpin signalname="button_out(0)" name="I" />
            <blockpin signalname="XLXN_61" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <instance x="2400" y="832" name="XLXI_3" orien="R0">
        </instance>
        <instance x="416" y="1392" name="XLXI_4" orien="R0">
        </instance>
        <branch name="clk50mhz">
            <wire x2="320" y1="1008" y2="1008" x1="208" />
            <wire x2="320" y1="1008" y2="1232" x1="320" />
            <wire x2="416" y1="1232" y2="1232" x1="320" />
            <wire x2="2048" y1="176" y2="176" x1="320" />
            <wire x2="2048" y1="176" y2="416" x1="2048" />
            <wire x2="2400" y1="416" y2="416" x1="2048" />
            <wire x2="320" y1="176" y2="240" x1="320" />
            <wire x2="320" y1="240" y2="416" x1="320" />
            <wire x2="1008" y1="416" y2="416" x1="320" />
            <wire x2="320" y1="416" y2="1008" x1="320" />
            <wire x2="1824" y1="240" y2="240" x1="320" />
        </branch>
        <iomarker fontsize="28" x="208" y="1008" name="clk50mhz" orien="R180" />
        <branch name="BTN(3:0)">
            <wire x2="416" y1="1312" y2="1312" x1="256" />
        </branch>
        <iomarker fontsize="28" x="256" y="1312" name="BTN(3:0)" orien="R180" />
        <branch name="SW(7:0)">
            <wire x2="400" y1="1360" y2="1360" x1="256" />
            <wire x2="416" y1="1360" y2="1360" x1="400" />
        </branch>
        <iomarker fontsize="28" x="256" y="1360" name="SW(7:0)" orien="R180" />
        <branch name="SW_OK(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="816" y="1360" type="branch" />
            <wire x2="816" y1="1360" y2="1360" x1="752" />
        </branch>
        <branch name="SW_OK(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="832" y="2528" type="branch" />
            <wire x2="848" y1="2528" y2="2528" x1="832" />
            <wire x2="992" y1="2528" y2="2528" x1="848" />
            <wire x2="1008" y1="2528" y2="2528" x1="992" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="2384" y1="240" y2="240" x1="2208" />
            <wire x2="2384" y1="240" y2="608" x1="2384" />
            <wire x2="2400" y1="608" y2="608" x1="2384" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="2384" y1="2544" y2="2544" x1="2208" />
            <wire x2="2400" y1="800" y2="800" x1="2384" />
            <wire x2="2384" y1="800" y2="2544" x1="2384" />
        </branch>
        <branch name="x_dis(9:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2864" y="1921" type="branch" />
            <wire x2="1824" y1="2480" y2="2480" x1="1744" />
            <wire x2="1744" y1="2480" y2="2656" x1="1744" />
            <wire x2="2864" y1="2656" y2="2656" x1="1744" />
            <wire x2="2864" y1="736" y2="736" x1="2784" />
            <wire x2="2864" y1="736" y2="1920" x1="2864" />
            <wire x2="2864" y1="1920" y2="2656" x1="2864" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="1616" y1="480" y2="480" x1="1392" />
            <wire x2="1616" y1="368" y2="480" x1="1616" />
            <wire x2="1824" y1="368" y2="368" x1="1616" />
        </branch>
        <branch name="hsync">
            <wire x2="2944" y1="416" y2="416" x1="2784" />
            <wire x2="2960" y1="416" y2="416" x1="2944" />
        </branch>
        <branch name="vsync">
            <wire x2="2944" y1="480" y2="480" x1="2784" />
            <wire x2="2960" y1="480" y2="480" x1="2944" />
        </branch>
        <branch name="vga_b">
            <wire x2="2944" y1="672" y2="672" x1="2784" />
            <wire x2="2960" y1="672" y2="672" x1="2944" />
        </branch>
        <branch name="vga_r">
            <wire x2="2944" y1="544" y2="544" x1="2784" />
            <wire x2="2960" y1="544" y2="544" x1="2944" />
        </branch>
        <branch name="vga_g">
            <wire x2="2944" y1="608" y2="608" x1="2784" />
            <wire x2="2960" y1="608" y2="608" x1="2944" />
        </branch>
        <iomarker fontsize="28" x="2960" y="416" name="hsync" orien="R0" />
        <iomarker fontsize="28" x="2960" y="480" name="vsync" orien="R0" />
        <iomarker fontsize="28" x="2960" y="544" name="vga_r" orien="R0" />
        <iomarker fontsize="28" x="2960" y="608" name="vga_g" orien="R0" />
        <iomarker fontsize="28" x="2960" y="672" name="vga_b" orien="R0" />
        <branch name="x0(5:0)">
            <wire x2="1632" y1="544" y2="544" x1="1392" />
            <wire x2="1632" y1="432" y2="544" x1="1632" />
            <wire x2="1824" y1="432" y2="432" x1="1632" />
        </branch>
        <branch name="x1(5:0)">
            <wire x2="1648" y1="672" y2="672" x1="1392" />
            <wire x2="1648" y1="496" y2="672" x1="1648" />
            <wire x2="1824" y1="496" y2="496" x1="1648" />
        </branch>
        <branch name="x2(5:0)">
            <wire x2="1664" y1="800" y2="800" x1="1392" />
            <wire x2="1664" y1="560" y2="800" x1="1664" />
            <wire x2="1824" y1="560" y2="560" x1="1664" />
        </branch>
        <branch name="x3(5:0)">
            <wire x2="1680" y1="928" y2="928" x1="1392" />
            <wire x2="1680" y1="624" y2="928" x1="1680" />
            <wire x2="1824" y1="624" y2="624" x1="1680" />
        </branch>
        <branch name="x4(5:0)">
            <wire x2="1696" y1="1056" y2="1056" x1="1392" />
            <wire x2="1696" y1="688" y2="1056" x1="1696" />
            <wire x2="1824" y1="688" y2="688" x1="1696" />
        </branch>
        <branch name="x5(5:0)">
            <wire x2="1712" y1="1184" y2="1184" x1="1392" />
            <wire x2="1712" y1="752" y2="1184" x1="1712" />
            <wire x2="1824" y1="752" y2="752" x1="1712" />
        </branch>
        <branch name="x6(5:0)">
            <wire x2="1616" y1="1312" y2="1312" x1="1392" />
            <wire x2="1616" y1="816" y2="1312" x1="1616" />
            <wire x2="1824" y1="816" y2="816" x1="1616" />
        </branch>
        <branch name="x7(5:0)">
            <wire x2="1600" y1="1440" y2="1440" x1="1392" />
            <wire x2="1600" y1="880" y2="1440" x1="1600" />
            <wire x2="1824" y1="880" y2="880" x1="1600" />
        </branch>
        <instance x="1824" y="2576" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_21">
            <wire x2="1408" y1="416" y2="416" x1="1392" />
            <wire x2="1824" y1="304" y2="304" x1="1408" />
            <wire x2="1408" y1="304" y2="416" x1="1408" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="2288" y1="1392" y2="1392" x1="2208" />
            <wire x2="2288" y1="704" y2="1392" x1="2288" />
            <wire x2="2400" y1="704" y2="704" x1="2288" />
        </branch>
        <branch name="y15(5:0)">
            <wire x2="1600" y1="2528" y2="2528" x1="1392" />
            <wire x2="1600" y1="2416" y2="2528" x1="1600" />
            <wire x2="1824" y1="2416" y2="2416" x1="1600" />
        </branch>
        <branch name="y14(5:0)">
            <wire x2="1600" y1="2400" y2="2400" x1="1392" />
            <wire x2="1600" y1="2352" y2="2400" x1="1600" />
            <wire x2="1824" y1="2352" y2="2352" x1="1600" />
        </branch>
        <branch name="y13(5:0)">
            <wire x2="1600" y1="2272" y2="2272" x1="1392" />
            <wire x2="1600" y1="2272" y2="2288" x1="1600" />
            <wire x2="1824" y1="2288" y2="2288" x1="1600" />
        </branch>
        <branch name="y12(5:0)">
            <wire x2="1600" y1="2144" y2="2144" x1="1392" />
            <wire x2="1600" y1="2144" y2="2224" x1="1600" />
            <wire x2="1824" y1="2224" y2="2224" x1="1600" />
        </branch>
        <branch name="y11(5:0)">
            <wire x2="1616" y1="2016" y2="2016" x1="1392" />
            <wire x2="1616" y1="2016" y2="2160" x1="1616" />
            <wire x2="1824" y1="2160" y2="2160" x1="1616" />
        </branch>
        <branch name="y10(5:0)">
            <wire x2="1632" y1="1888" y2="1888" x1="1392" />
            <wire x2="1632" y1="1888" y2="2096" x1="1632" />
            <wire x2="1824" y1="2096" y2="2096" x1="1632" />
        </branch>
        <branch name="y9(5:0)">
            <wire x2="1648" y1="1760" y2="1760" x1="1392" />
            <wire x2="1648" y1="1760" y2="2032" x1="1648" />
            <wire x2="1824" y1="2032" y2="2032" x1="1648" />
        </branch>
        <branch name="y8(5:0)">
            <wire x2="1664" y1="1632" y2="1632" x1="1392" />
            <wire x2="1664" y1="1632" y2="1968" x1="1664" />
            <wire x2="1824" y1="1968" y2="1968" x1="1664" />
        </branch>
        <branch name="y7(5:0)">
            <wire x2="1680" y1="1504" y2="1504" x1="1392" />
            <wire x2="1680" y1="1504" y2="1904" x1="1680" />
            <wire x2="1824" y1="1904" y2="1904" x1="1680" />
        </branch>
        <branch name="x8(5:0)">
            <wire x2="1584" y1="1568" y2="1568" x1="1392" />
            <wire x2="1584" y1="944" y2="1568" x1="1584" />
            <wire x2="1824" y1="944" y2="944" x1="1584" />
        </branch>
        <branch name="x9(5:0)">
            <wire x2="1568" y1="1696" y2="1696" x1="1392" />
            <wire x2="1568" y1="1008" y2="1696" x1="1568" />
            <wire x2="1824" y1="1008" y2="1008" x1="1568" />
        </branch>
        <branch name="x10(5:0)">
            <wire x2="1552" y1="1824" y2="1824" x1="1392" />
            <wire x2="1552" y1="1072" y2="1824" x1="1552" />
            <wire x2="1824" y1="1072" y2="1072" x1="1552" />
        </branch>
        <branch name="x11(5:0)">
            <wire x2="1536" y1="1952" y2="1952" x1="1392" />
            <wire x2="1536" y1="1136" y2="1952" x1="1536" />
            <wire x2="1824" y1="1136" y2="1136" x1="1536" />
        </branch>
        <branch name="x12(5:0)">
            <wire x2="1520" y1="2080" y2="2080" x1="1392" />
            <wire x2="1520" y1="1200" y2="2080" x1="1520" />
            <wire x2="1824" y1="1200" y2="1200" x1="1520" />
        </branch>
        <branch name="x13(5:0)">
            <wire x2="1504" y1="2208" y2="2208" x1="1392" />
            <wire x2="1504" y1="1264" y2="2208" x1="1504" />
            <wire x2="1824" y1="1264" y2="1264" x1="1504" />
        </branch>
        <branch name="x14(5:0)">
            <wire x2="1696" y1="2336" y2="2336" x1="1392" />
            <wire x2="1696" y1="1328" y2="2336" x1="1696" />
            <wire x2="1824" y1="1328" y2="1328" x1="1696" />
        </branch>
        <branch name="y6(5:0)">
            <wire x2="1616" y1="1376" y2="1376" x1="1392" />
            <wire x2="1616" y1="1376" y2="1840" x1="1616" />
            <wire x2="1824" y1="1840" y2="1840" x1="1616" />
        </branch>
        <branch name="y5(5:0)">
            <wire x2="1632" y1="1248" y2="1248" x1="1392" />
            <wire x2="1632" y1="1248" y2="1776" x1="1632" />
            <wire x2="1824" y1="1776" y2="1776" x1="1632" />
        </branch>
        <branch name="y4(5:0)">
            <wire x2="1648" y1="1120" y2="1120" x1="1392" />
            <wire x2="1648" y1="1120" y2="1712" x1="1648" />
            <wire x2="1824" y1="1712" y2="1712" x1="1648" />
        </branch>
        <branch name="y3(5:0)">
            <wire x2="1456" y1="992" y2="992" x1="1392" />
            <wire x2="1456" y1="992" y2="1648" x1="1456" />
            <wire x2="1824" y1="1648" y2="1648" x1="1456" />
        </branch>
        <branch name="y2(5:0)">
            <wire x2="1664" y1="864" y2="864" x1="1392" />
            <wire x2="1664" y1="864" y2="1584" x1="1664" />
            <wire x2="1824" y1="1584" y2="1584" x1="1664" />
        </branch>
        <branch name="y1(5:0)">
            <wire x2="1424" y1="736" y2="736" x1="1392" />
            <wire x2="1424" y1="736" y2="1520" x1="1424" />
            <wire x2="1824" y1="1520" y2="1520" x1="1424" />
        </branch>
        <branch name="y0(5:0)">
            <wire x2="1488" y1="608" y2="608" x1="1392" />
            <wire x2="1488" y1="608" y2="1456" x1="1488" />
            <wire x2="1824" y1="1456" y2="1456" x1="1488" />
        </branch>
        <branch name="x15(5:0)">
            <wire x2="1472" y1="2464" y2="2464" x1="1392" />
            <wire x2="1472" y1="1392" y2="2464" x1="1472" />
            <wire x2="1824" y1="1392" y2="1392" x1="1472" />
        </branch>
        <branch name="XLXN_46(9:0)">
            <wire x2="1824" y1="2544" y2="2544" x1="1760" />
            <wire x2="1760" y1="2544" y2="2640" x1="1760" />
            <wire x2="2848" y1="2640" y2="2640" x1="1760" />
            <wire x2="2848" y1="800" y2="800" x1="2784" />
            <wire x2="2848" y1="800" y2="2640" x1="2848" />
        </branch>
        <branch name="XLXN_47">
            <wire x2="1008" y1="768" y2="768" x1="976" />
        </branch>
        <instance x="752" y="800" name="XLXI_5" orien="R0" />
        <branch name="XLXN_49">
            <wire x2="2320" y1="304" y2="512" x1="2320" />
            <wire x2="2400" y1="512" y2="512" x1="2320" />
            <wire x2="2848" y1="304" y2="304" x1="2320" />
            <wire x2="2848" y1="208" y2="304" x1="2848" />
        </branch>
        <instance x="2624" y="240" name="XLXI_7" orien="R0" />
        <branch name="SW_OK(6)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="656" y="768" type="branch" />
            <wire x2="752" y1="768" y2="768" x1="656" />
        </branch>
        <branch name="SW_OK(6)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2496" y="208" type="branch" />
            <wire x2="2624" y1="208" y2="208" x1="2496" />
        </branch>
        <instance x="1008" y="2560" name="XLXI_1" orien="R0">
        </instance>
        <branch name="button_out(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="468" y="1616" type="branch" />
            <wire x2="208" y1="1616" y2="1744" x1="208" />
            <wire x2="208" y1="1744" y2="1952" x1="208" />
            <wire x2="208" y1="1952" y2="2160" x1="208" />
            <wire x2="208" y1="2160" y2="2400" x1="208" />
            <wire x2="208" y1="2400" y2="2544" x1="208" />
            <wire x2="468" y1="1616" y2="1616" x1="208" />
            <wire x2="832" y1="1616" y2="1616" x1="468" />
            <wire x2="832" y1="1232" y2="1232" x1="752" />
            <wire x2="832" y1="1232" y2="1616" x1="832" />
        </branch>
        <bustap x2="304" y1="1744" y2="1744" x1="208" />
        <bustap x2="304" y1="1952" y2="1952" x1="208" />
        <bustap x2="304" y1="2160" y2="2160" x1="208" />
        <bustap x2="304" y1="2400" y2="2400" x1="208" />
        <branch name="button_out(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="336" y="1744" type="branch" />
            <wire x2="336" y1="1744" y2="1744" x1="304" />
            <wire x2="528" y1="1744" y2="1744" x1="336" />
        </branch>
        <instance x="528" y="1776" name="XLXI_8" orien="R0" />
        <branch name="XLXN_54">
            <wire x2="816" y1="1744" y2="1744" x1="752" />
            <wire x2="912" y1="1744" y2="1744" x1="816" />
            <wire x2="912" y1="1120" y2="1744" x1="912" />
            <wire x2="1008" y1="1120" y2="1120" x1="912" />
        </branch>
        <branch name="button_out(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="337" y="1952" type="branch" />
            <wire x2="337" y1="1952" y2="1952" x1="304" />
            <wire x2="368" y1="1952" y2="1952" x1="337" />
        </branch>
        <instance x="368" y="1984" name="XLXI_9" orien="R0" />
        <instance x="384" y="2192" name="XLXI_10" orien="R0" />
        <instance x="384" y="2432" name="XLXI_11" orien="R0" />
        <branch name="button_out(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="342" y="2160" type="branch" />
            <wire x2="342" y1="2160" y2="2160" x1="304" />
            <wire x2="384" y1="2160" y2="2160" x1="342" />
        </branch>
        <branch name="button_out(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="347" y="2400" type="branch" />
            <wire x2="347" y1="2400" y2="2400" x1="304" />
            <wire x2="384" y1="2400" y2="2400" x1="347" />
        </branch>
        <branch name="XLXN_58">
            <wire x2="800" y1="1952" y2="1952" x1="592" />
            <wire x2="800" y1="1472" y2="1952" x1="800" />
            <wire x2="1008" y1="1472" y2="1472" x1="800" />
        </branch>
        <branch name="XLXN_61">
            <wire x2="816" y1="2400" y2="2400" x1="608" />
            <wire x2="816" y1="1824" y2="2400" x1="816" />
            <wire x2="1008" y1="1824" y2="1824" x1="816" />
        </branch>
        <branch name="XLXN_62">
            <wire x2="800" y1="2160" y2="2160" x1="608" />
            <wire x2="800" y1="2160" y2="2176" x1="800" />
            <wire x2="1008" y1="2176" y2="2176" x1="800" />
        </branch>
    </sheet>
</drawing>