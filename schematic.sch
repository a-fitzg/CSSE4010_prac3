# File saved with Nlview 7.0r6  2020-01-29 bk=1.5227 VDI=41 GEI=36 GUI=JA:9.0 non-TLS-threadsafe
# 
# non-default properties - (restore without -noprops)
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 12
property maxzoom 5
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #ff6666
property objecthighlight4 #0000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlapcolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 8
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 12
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 4
property timelimit 1
#
module new adder_16bit_sat work:adder_16bit_sat:NOFILE -nosplit
load symbol IBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol OBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol LUT5 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin I4 input.left fillcolor 1
load symbol LUT6 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin I4 input.left pin I5 input.left fillcolor 1
load symbol LUT3 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left fillcolor 1
load symbol LUT2 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left fillcolor 1
load port C output -pg 1 -lvl 10 -x 3510 -y 2800
load port Cin input -pg 1 -lvl 0 -x 0 -y 980
load port N output -pg 1 -lvl 10 -x 3510 -y 2940
load port SAT input -pg 1 -lvl 0 -x 0 -y 2960
load port V output -pg 1 -lvl 10 -x 3510 -y 3120
load port Z output -pg 1 -lvl 10 -x 3510 -y 1950
load portBus A input [15:0] -attr @name A[15:0] -pg 1 -lvl 0 -x 0 -y 1050
load portBus B input [15:0] -attr @name B[15:0] -pg 1 -lvl 0 -x 0 -y 840
load portBus SUM output [15:0] -attr @name SUM[15:0] -pg 1 -lvl 10 -x 3510 -y 80
load inst A_IBUF[0]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 80 -y 1050
load inst A_IBUF[10]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 5 -x 1660 -y 2170
load inst A_IBUF[11]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 5 -x 1660 -y 2410
load inst A_IBUF[12]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 6 -x 2140 -y 2600
load inst A_IBUF[13]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 5 -x 1660 -y 2480
load inst A_IBUF[14]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 5 -x 1660 -y 2560
load inst A_IBUF[15]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 6 -x 2140 -y 2670
load inst A_IBUF[1]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 80 -y 1120
load inst A_IBUF[2]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x 380 -y 1390
load inst A_IBUF[3]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x 380 -y 1460
load inst A_IBUF[4]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 80 -y 1430
load inst A_IBUF[5]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 760 -y 1990
load inst A_IBUF[6]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 760 -y 2060
load inst A_IBUF[7]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 4 -x 1180 -y 2110
load inst A_IBUF[8]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 4 -x 1180 -y 2180
load inst A_IBUF[9]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 760 -y 2130
load inst B_IBUF[0]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 80 -y 840
load inst B_IBUF[10]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 5 -x 1660 -y 1760
load inst B_IBUF[11]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 5 -x 1660 -y 1830
load inst B_IBUF[12]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 6 -x 2140 -y 2740
load inst B_IBUF[13]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 5 -x 1660 -y 2630
load inst B_IBUF[14]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 5 -x 1660 -y 2700
load inst B_IBUF[15]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 6 -x 2140 -y 2820
load inst B_IBUF[1]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 80 -y 910
load inst B_IBUF[2]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x 380 -y 1540
load inst B_IBUF[3]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x 380 -y 1620
load inst B_IBUF[4]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 80 -y 1580
load inst B_IBUF[5]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 760 -y 1780
load inst B_IBUF[6]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 760 -y 1850
load inst B_IBUF[7]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 4 -x 1180 -y 980
load inst B_IBUF[8]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 4 -x 1180 -y 1050
load inst B_IBUF[9]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 760 -y 1920
load inst C_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 9 -x 3320 -y 2800
load inst C_OBUF_inst_i_1 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 8 -x 3140 -y 2750
load inst Cin_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 80 -y 980
load inst N_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 9 -x 3320 -y 2940
load inst SAT_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 7 -x 2660 -y 2960
load inst SUM_OBUF[0]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 9 -x 3320 -y 80
load inst SUM_OBUF[0]_inst_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 8 -x 3140 -y 30
load inst SUM_OBUF[0]_inst_i_2 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 4 -x 1180 -y 710
load inst SUM_OBUF[10]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 9 -x 3320 -y 1780
load inst SUM_OBUF[10]_inst_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 8 -x 3140 -y 1730
load inst SUM_OBUF[10]_inst_i_2 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 7 -x 2660 -y 1230
load inst SUM_OBUF[10]_inst_i_3 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 6 -x 2140 -y 1540
load inst SUM_OBUF[11]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 9 -x 3320 -y 2120
load inst SUM_OBUF[11]_inst_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 8 -x 3140 -y 2070
load inst SUM_OBUF[11]_inst_i_2 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 7 -x 2660 -y 1890
load inst SUM_OBUF[11]_inst_i_3 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 5 -x 1660 -y 2010
load inst SUM_OBUF[11]_inst_i_4 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 6 -x 2140 -y 1870
load inst SUM_OBUF[11]_inst_i_5 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 4 -x 1180 -y 1840
load inst SUM_OBUF[11]_inst_i_6 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 3 -x 760 -y 1490
load inst SUM_OBUF[11]_inst_i_7 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 3 -x 760 -y 1590
load inst SUM_OBUF[11]_inst_i_8 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 2 -x 380 -y 1690
load inst SUM_OBUF[12]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 9 -x 3320 -y 2290
load inst SUM_OBUF[12]_inst_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 8 -x 3140 -y 2240
load inst SUM_OBUF[12]_inst_i_2 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 7 -x 2660 -y 2060
load inst SUM_OBUF[13]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 9 -x 3320 -y 2460
load inst SUM_OBUF[13]_inst_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 8 -x 3140 -y 2410
load inst SUM_OBUF[13]_inst_i_2 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 7 -x 2660 -y 2210
load inst SUM_OBUF[13]_inst_i_3 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 7 -x 2660 -y 2300
load inst SUM_OBUF[13]_inst_i_4 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 7 -x 2660 -y 2470
load inst SUM_OBUF[13]_inst_i_5 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 6 -x 2140 -y 1970
load inst SUM_OBUF[13]_inst_i_6 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 6 -x 2140 -y 2060
load inst SUM_OBUF[13]_inst_i_7 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 6 -x 2140 -y 2490
load inst SUM_OBUF[14]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 9 -x 3320 -y 2630
load inst SUM_OBUF[14]_inst_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 8 -x 3140 -y 2580
load inst SUM_OBUF[15]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 9 -x 3320 -y 2870
load inst SUM_OBUF[15]_inst_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 8 -x 3140 -y 2900
load inst SUM_OBUF[15]_inst_i_2 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 7 -x 2660 -y 2640
load inst SUM_OBUF[15]_inst_i_3 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 6 -x 2140 -y 2220
load inst SUM_OBUF[15]_inst_i_4 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 5 -x 1660 -y 1920
load inst SUM_OBUF[15]_inst_i_5 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 5 -x 1660 -y 2230
load inst SUM_OBUF[15]_inst_i_6 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 4 -x 1180 -y 2010
load inst SUM_OBUF[1]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 9 -x 3320 -y 250
load inst SUM_OBUF[1]_inst_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 8 -x 3140 -y 200
load inst SUM_OBUF[1]_inst_i_2 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 4 -x 1180 -y 820
load inst SUM_OBUF[2]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 9 -x 3320 -y 420
load inst SUM_OBUF[2]_inst_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 8 -x 3140 -y 370
load inst SUM_OBUF[2]_inst_i_2 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 4 -x 1180 -y 1120
load inst SUM_OBUF[3]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 9 -x 3320 -y 590
load inst SUM_OBUF[3]_inst_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 8 -x 3140 -y 540
load inst SUM_OBUF[3]_inst_i_2 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 4 -x 1180 -y 1230
load inst SUM_OBUF[3]_inst_i_3 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 2 -x 380 -y 900
load inst SUM_OBUF[4]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 9 -x 3320 -y 760
load inst SUM_OBUF[4]_inst_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 8 -x 3140 -y 710
load inst SUM_OBUF[4]_inst_i_2 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 4 -x 1180 -y 1380
load inst SUM_OBUF[5]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 9 -x 3320 -y 930
load inst SUM_OBUF[5]_inst_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 8 -x 3140 -y 880
load inst SUM_OBUF[5]_inst_i_2 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 4 -x 1180 -y 1490
load inst SUM_OBUF[5]_inst_i_3 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 3 -x 760 -y 1310
load inst SUM_OBUF[6]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 9 -x 3320 -y 1100
load inst SUM_OBUF[6]_inst_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 8 -x 3140 -y 1050
load inst SUM_OBUF[6]_inst_i_2 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 5 -x 1660 -y 1310
load inst SUM_OBUF[7]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 9 -x 3320 -y 1270
load inst SUM_OBUF[7]_inst_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 8 -x 3140 -y 1220
load inst SUM_OBUF[7]_inst_i_2 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 5 -x 1660 -y 1420
load inst SUM_OBUF[7]_inst_i_3 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 4 -x 1180 -y 1690
load inst SUM_OBUF[8]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 9 -x 3320 -y 1440
load inst SUM_OBUF[8]_inst_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 8 -x 3140 -y 1390
load inst SUM_OBUF[8]_inst_i_2 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 7 -x 2660 -y 1120
load inst SUM_OBUF[9]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 9 -x 3320 -y 1610
load inst SUM_OBUF[9]_inst_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 8 -x 3140 -y 1560
load inst SUM_OBUF[9]_inst_i_2 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 6 -x 2140 -y 1690
load inst SUM_OBUF[9]_inst_i_3 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 5 -x 1660 -y 1570
load inst V_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 9 -x 3320 -y 3120
load inst V_OBUF_inst_i_1 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 8 -x 3140 -y 3070
load inst Z_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 9 -x 3320 -y 1950
load inst Z_OBUF_inst_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 8 -x 3140 -y 1900
load inst Z_OBUF_inst_i_2 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 7 -x 2660 -y 1370
load inst Z_OBUF_inst_i_3 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 7 -x 2660 -y 1550
load inst Z_OBUF_inst_i_4 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 7 -x 2660 -y 1720
load inst Z_OBUF_inst_i_5 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 7 -x 2660 -y 2790
load inst Z_OBUF_inst_i_6 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 6 -x 2140 -y 1370
load inst Z_OBUF_inst_i_7 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 5 -x 1660 -y 1040
load net A[0] -attr @rip(#000000) A[0] -port A[0] -pin A_IBUF[0]_inst I
load net A[10] -attr @rip(#000000) A[10] -port A[10] -pin A_IBUF[10]_inst I
load net A[11] -attr @rip(#000000) A[11] -port A[11] -pin A_IBUF[11]_inst I
load net A[12] -attr @rip(#000000) A[12] -port A[12] -pin A_IBUF[12]_inst I
load net A[13] -attr @rip(#000000) A[13] -port A[13] -pin A_IBUF[13]_inst I
load net A[14] -attr @rip(#000000) A[14] -port A[14] -pin A_IBUF[14]_inst I
load net A[15] -attr @rip(#000000) A[15] -port A[15] -pin A_IBUF[15]_inst I
load net A[1] -attr @rip(#000000) A[1] -port A[1] -pin A_IBUF[1]_inst I
load net A[2] -attr @rip(#000000) A[2] -port A[2] -pin A_IBUF[2]_inst I
load net A[3] -attr @rip(#000000) A[3] -port A[3] -pin A_IBUF[3]_inst I
load net A[4] -attr @rip(#000000) A[4] -port A[4] -pin A_IBUF[4]_inst I
load net A[5] -attr @rip(#000000) A[5] -port A[5] -pin A_IBUF[5]_inst I
load net A[6] -attr @rip(#000000) A[6] -port A[6] -pin A_IBUF[6]_inst I
load net A[7] -attr @rip(#000000) A[7] -port A[7] -pin A_IBUF[7]_inst I
load net A[8] -attr @rip(#000000) A[8] -port A[8] -pin A_IBUF[8]_inst I
load net A[9] -attr @rip(#000000) A[9] -port A[9] -pin A_IBUF[9]_inst I
load net A_IBUF[0] -pin A_IBUF[0]_inst O -pin SUM_OBUF[0]_inst_i_2 I1 -pin SUM_OBUF[1]_inst_i_2 I1 -pin SUM_OBUF[3]_inst_i_3 I3
netloc A_IBUF[0] 1 1 3 280 850 NJ 850 960
load net A_IBUF[10] -pin A_IBUF[10]_inst O -pin SUM_OBUF[10]_inst_i_2 I1 -pin SUM_OBUF[11]_inst_i_2 I3 -pin SUM_OBUF[13]_inst_i_6 I1 -pin SUM_OBUF[15]_inst_i_3 I3 -pin Z_OBUF_inst_i_3 I3
netloc A_IBUF[10] 1 5 2 2040 2410 2300
load net A_IBUF[11] -pin A_IBUF[11]_inst O -pin SUM_OBUF[11]_inst_i_4 I1 -pin SUM_OBUF[12]_inst_i_2 I1 -pin SUM_OBUF[13]_inst_i_4 I1 -pin SUM_OBUF[15]_inst_i_3 I1
netloc A_IBUF[11] 1 5 2 1920 2390 2400
load net A_IBUF[12] -pin A_IBUF[12]_inst O -pin SUM_OBUF[12]_inst_i_2 I3 -pin SUM_OBUF[13]_inst_i_3 I1 -pin SUM_OBUF[13]_inst_i_4 I3 -pin SUM_OBUF[15]_inst_i_2 I3 -pin Z_OBUF_inst_i_2 I4 -pin Z_OBUF_inst_i_4 I2
netloc A_IBUF[12] 1 6 1 2500 1460n
load net A_IBUF[13] -pin A_IBUF[13]_inst O -pin SUM_OBUF[13]_inst_i_3 I3 -pin SUM_OBUF[13]_inst_i_7 I1 -pin SUM_OBUF[15]_inst_i_2 I1 -pin Z_OBUF_inst_i_2 I2 -pin Z_OBUF_inst_i_4 I4
netloc A_IBUF[13] 1 5 2 2060 2460 2480
load net A_IBUF[14] -pin A_IBUF[14]_inst O -pin C_OBUF_inst_i_1 I3 -pin SUM_OBUF[13]_inst_i_2 I0 -pin SUM_OBUF[13]_inst_i_5 I1 -pin SUM_OBUF[14]_inst_i_1 I3 -pin SUM_OBUF[15]_inst_i_1 I4 -pin V_OBUF_inst_i_1 I1
netloc A_IBUF[14] 1 5 3 1980 2560 2320 2920 2800
load net A_IBUF[15] -pin A_IBUF[15]_inst O -pin C_OBUF_inst_i_1 I1 -pin SUM_OBUF[0]_inst_i_1 I1 -pin SUM_OBUF[10]_inst_i_1 I1 -pin SUM_OBUF[11]_inst_i_1 I1 -pin SUM_OBUF[12]_inst_i_1 I1 -pin SUM_OBUF[13]_inst_i_1 I1 -pin SUM_OBUF[14]_inst_i_1 I1 -pin SUM_OBUF[15]_inst_i_1 I2 -pin SUM_OBUF[1]_inst_i_1 I1 -pin SUM_OBUF[2]_inst_i_1 I1 -pin SUM_OBUF[3]_inst_i_1 I1 -pin SUM_OBUF[4]_inst_i_1 I1 -pin SUM_OBUF[5]_inst_i_1 I1 -pin SUM_OBUF[6]_inst_i_1 I1 -pin SUM_OBUF[7]_inst_i_1 I1 -pin SUM_OBUF[8]_inst_i_1 I1 -pin SUM_OBUF[9]_inst_i_1 I1 -pin V_OBUF_inst_i_1 I3 -pin Z_OBUF_inst_i_5 I1
netloc A_IBUF[15] 1 6 2 2300 2880 3000
load net A_IBUF[1] -pin A_IBUF[1]_inst O -pin SUM_OBUF[1]_inst_i_2 I3 -pin SUM_OBUF[3]_inst_i_3 I1
netloc A_IBUF[1] 1 1 3 300 1030 NJ 1030 960J
load net A_IBUF[2] -pin A_IBUF[2]_inst O -pin SUM_OBUF[11]_inst_i_7 I1 -pin SUM_OBUF[2]_inst_i_2 I1 -pin SUM_OBUF[3]_inst_i_2 I1 -pin SUM_OBUF[5]_inst_i_3 I3
netloc A_IBUF[2] 1 2 2 600 1440 940
load net A_IBUF[3] -pin A_IBUF[3]_inst O -pin SUM_OBUF[11]_inst_i_7 I3 -pin SUM_OBUF[3]_inst_i_2 I3 -pin SUM_OBUF[5]_inst_i_3 I1
netloc A_IBUF[3] 1 2 2 640 1260 920J
load net A_IBUF[4] -pin A_IBUF[4]_inst O -pin SUM_OBUF[11]_inst_i_6 I0 -pin SUM_OBUF[11]_inst_i_8 I1 -pin SUM_OBUF[4]_inst_i_2 I1 -pin SUM_OBUF[5]_inst_i_2 I1 -pin SUM_OBUF[7]_inst_i_3 I3
netloc A_IBUF[4] 1 1 3 260 1500 660 1560 1000
load net A_IBUF[5] -pin A_IBUF[5]_inst O -pin SUM_OBUF[11]_inst_i_5 I3 -pin SUM_OBUF[5]_inst_i_2 I3 -pin SUM_OBUF[7]_inst_i_3 I1
netloc A_IBUF[5] 1 3 1 1020 1560n
load net A_IBUF[6] -pin A_IBUF[6]_inst O -pin SUM_OBUF[11]_inst_i_5 I1 -pin SUM_OBUF[6]_inst_i_2 I1 -pin SUM_OBUF[7]_inst_i_2 I1 -pin SUM_OBUF[9]_inst_i_3 I3
netloc A_IBUF[6] 1 3 2 1060 1660 1500
load net A_IBUF[7] -pin A_IBUF[7]_inst O -pin SUM_OBUF[11]_inst_i_3 I3 -pin SUM_OBUF[15]_inst_i_5 I1 -pin SUM_OBUF[7]_inst_i_2 I3 -pin SUM_OBUF[9]_inst_i_3 I1
netloc A_IBUF[7] 1 4 1 1440 1490n
load net A_IBUF[8] -pin A_IBUF[8]_inst O -pin SUM_OBUF[10]_inst_i_3 I3 -pin SUM_OBUF[11]_inst_i_3 I1 -pin SUM_OBUF[15]_inst_i_5 I3 -pin SUM_OBUF[8]_inst_i_2 I1 -pin SUM_OBUF[9]_inst_i_2 I1 -pin Z_OBUF_inst_i_6 I3
netloc A_IBUF[8] 1 4 3 1340 1720 1880 1150 NJ
load net A_IBUF[9] -pin A_IBUF[9]_inst O -pin SUM_OBUF[10]_inst_i_3 I1 -pin SUM_OBUF[11]_inst_i_2 I1 -pin SUM_OBUF[13]_inst_i_6 I3 -pin SUM_OBUF[15]_inst_i_4 I0 -pin SUM_OBUF[15]_inst_i_6 I1 -pin SUM_OBUF[9]_inst_i_2 I3
netloc A_IBUF[9] 1 3 4 1080 2220 1580 1870 2060 1820 2320J
load net B[0] -attr @rip(#000000) B[0] -port B[0] -pin B_IBUF[0]_inst I
load net B[10] -attr @rip(#000000) B[10] -port B[10] -pin B_IBUF[10]_inst I
load net B[11] -attr @rip(#000000) B[11] -port B[11] -pin B_IBUF[11]_inst I
load net B[12] -attr @rip(#000000) B[12] -port B[12] -pin B_IBUF[12]_inst I
load net B[13] -attr @rip(#000000) B[13] -port B[13] -pin B_IBUF[13]_inst I
load net B[14] -attr @rip(#000000) B[14] -port B[14] -pin B_IBUF[14]_inst I
load net B[15] -attr @rip(#000000) B[15] -port B[15] -pin B_IBUF[15]_inst I
load net B[1] -attr @rip(#000000) B[1] -port B[1] -pin B_IBUF[1]_inst I
load net B[2] -attr @rip(#000000) B[2] -port B[2] -pin B_IBUF[2]_inst I
load net B[3] -attr @rip(#000000) B[3] -port B[3] -pin B_IBUF[3]_inst I
load net B[4] -attr @rip(#000000) B[4] -port B[4] -pin B_IBUF[4]_inst I
load net B[5] -attr @rip(#000000) B[5] -port B[5] -pin B_IBUF[5]_inst I
load net B[6] -attr @rip(#000000) B[6] -port B[6] -pin B_IBUF[6]_inst I
load net B[7] -attr @rip(#000000) B[7] -port B[7] -pin B_IBUF[7]_inst I
load net B[8] -attr @rip(#000000) B[8] -port B[8] -pin B_IBUF[8]_inst I
load net B[9] -attr @rip(#000000) B[9] -port B[9] -pin B_IBUF[9]_inst I
load net B_IBUF[0] -pin B_IBUF[0]_inst O -pin SUM_OBUF[0]_inst_i_2 I2 -pin SUM_OBUF[1]_inst_i_2 I2 -pin SUM_OBUF[3]_inst_i_3 I2
netloc B_IBUF[0] 1 1 3 240 870 NJ 870 980
load net B_IBUF[10] -pin B_IBUF[10]_inst O -pin SUM_OBUF[10]_inst_i_2 I2 -pin SUM_OBUF[11]_inst_i_2 I4 -pin SUM_OBUF[13]_inst_i_6 I0 -pin SUM_OBUF[15]_inst_i_3 I2 -pin Z_OBUF_inst_i_3 I4
netloc B_IBUF[10] 1 5 2 1960 1840 2400
load net B_IBUF[11] -pin B_IBUF[11]_inst O -pin SUM_OBUF[11]_inst_i_4 I0 -pin SUM_OBUF[12]_inst_i_2 I2 -pin SUM_OBUF[13]_inst_i_4 I2 -pin SUM_OBUF[15]_inst_i_3 I0
netloc B_IBUF[11] 1 5 2 1940 2190 2580
load net B_IBUF[12] -pin B_IBUF[12]_inst O -pin SUM_OBUF[12]_inst_i_2 I4 -pin SUM_OBUF[13]_inst_i_3 I2 -pin SUM_OBUF[13]_inst_i_4 I4 -pin SUM_OBUF[15]_inst_i_2 I2 -pin Z_OBUF_inst_i_2 I3 -pin Z_OBUF_inst_i_4 I3
netloc B_IBUF[12] 1 6 1 2340 1440n
load net B_IBUF[13] -pin B_IBUF[13]_inst O -pin SUM_OBUF[13]_inst_i_3 I4 -pin SUM_OBUF[13]_inst_i_7 I0 -pin SUM_OBUF[15]_inst_i_2 I0 -pin Z_OBUF_inst_i_2 I1 -pin Z_OBUF_inst_i_4 I5
netloc B_IBUF[13] 1 5 2 2000 2440 2420
load net B_IBUF[14] -pin B_IBUF[14]_inst O -pin C_OBUF_inst_i_1 I2 -pin SUM_OBUF[13]_inst_i_2 I1 -pin SUM_OBUF[13]_inst_i_5 I0 -pin SUM_OBUF[14]_inst_i_1 I2 -pin SUM_OBUF[15]_inst_i_1 I3 -pin V_OBUF_inst_i_1 I2
netloc B_IBUF[14] 1 5 3 2020 2780 2540 2900 2900
load net B_IBUF[15] -pin B_IBUF[15]_inst O -pin C_OBUF_inst_i_1 I0 -pin SUM_OBUF[0]_inst_i_1 I0 -pin SUM_OBUF[10]_inst_i_1 I0 -pin SUM_OBUF[11]_inst_i_1 I0 -pin SUM_OBUF[12]_inst_i_1 I0 -pin SUM_OBUF[13]_inst_i_1 I0 -pin SUM_OBUF[14]_inst_i_1 I0 -pin SUM_OBUF[15]_inst_i_1 I1 -pin SUM_OBUF[1]_inst_i_1 I0 -pin SUM_OBUF[2]_inst_i_1 I0 -pin SUM_OBUF[3]_inst_i_1 I0 -pin SUM_OBUF[4]_inst_i_1 I0 -pin SUM_OBUF[5]_inst_i_1 I0 -pin SUM_OBUF[6]_inst_i_1 I0 -pin SUM_OBUF[7]_inst_i_1 I0 -pin SUM_OBUF[8]_inst_i_1 I0 -pin SUM_OBUF[9]_inst_i_1 I0 -pin V_OBUF_inst_i_1 I4 -pin Z_OBUF_inst_i_5 I0
netloc B_IBUF[15] 1 6 2 2280 2860 2840
load net B_IBUF[1] -pin B_IBUF[1]_inst O -pin SUM_OBUF[1]_inst_i_2 I4 -pin SUM_OBUF[3]_inst_i_3 I0
netloc B_IBUF[1] 1 1 3 220 810 NJ 810 1040
load net B_IBUF[2] -pin B_IBUF[2]_inst O -pin SUM_OBUF[11]_inst_i_7 I2 -pin SUM_OBUF[2]_inst_i_2 I2 -pin SUM_OBUF[3]_inst_i_2 I2 -pin SUM_OBUF[5]_inst_i_3 I2
netloc B_IBUF[2] 1 2 2 680 1460 960
load net B_IBUF[3] -pin B_IBUF[3]_inst O -pin SUM_OBUF[11]_inst_i_7 I4 -pin SUM_OBUF[3]_inst_i_2 I4 -pin SUM_OBUF[5]_inst_i_3 I0
netloc B_IBUF[3] 1 2 2 560 1280 900J
load net B_IBUF[4] -pin B_IBUF[4]_inst O -pin SUM_OBUF[11]_inst_i_6 I1 -pin SUM_OBUF[11]_inst_i_8 I0 -pin SUM_OBUF[4]_inst_i_2 I2 -pin SUM_OBUF[5]_inst_i_2 I2 -pin SUM_OBUF[7]_inst_i_3 I2
netloc B_IBUF[4] 1 1 3 220 1660 580 1740 1040
load net B_IBUF[5] -pin B_IBUF[5]_inst O -pin SUM_OBUF[11]_inst_i_5 I2 -pin SUM_OBUF[5]_inst_i_2 I4 -pin SUM_OBUF[7]_inst_i_3 I0
netloc B_IBUF[5] 1 3 1 960 1580n
load net B_IBUF[6] -pin B_IBUF[6]_inst O -pin SUM_OBUF[11]_inst_i_5 I0 -pin SUM_OBUF[6]_inst_i_2 I2 -pin SUM_OBUF[7]_inst_i_2 I2 -pin SUM_OBUF[9]_inst_i_3 I2
netloc B_IBUF[6] 1 3 2 1080 1620 1580
load net B_IBUF[7] -pin B_IBUF[7]_inst O -pin SUM_OBUF[11]_inst_i_3 I2 -pin SUM_OBUF[15]_inst_i_5 I2 -pin SUM_OBUF[7]_inst_i_2 I4 -pin SUM_OBUF[9]_inst_i_3 I0
netloc B_IBUF[7] 1 4 1 1520 980n
load net B_IBUF[8] -pin B_IBUF[8]_inst O -pin SUM_OBUF[10]_inst_i_3 I2 -pin SUM_OBUF[11]_inst_i_3 I0 -pin SUM_OBUF[15]_inst_i_5 I4 -pin SUM_OBUF[8]_inst_i_2 I2 -pin SUM_OBUF[9]_inst_i_2 I2 -pin Z_OBUF_inst_i_6 I4
netloc B_IBUF[8] 1 4 3 1360 1700 1840 1170 NJ
load net B_IBUF[9] -pin B_IBUF[9]_inst O -pin SUM_OBUF[10]_inst_i_3 I0 -pin SUM_OBUF[11]_inst_i_2 I2 -pin SUM_OBUF[13]_inst_i_6 I2 -pin SUM_OBUF[15]_inst_i_4 I1 -pin SUM_OBUF[15]_inst_i_6 I0 -pin SUM_OBUF[9]_inst_i_2 I4
netloc B_IBUF[9] 1 3 4 920 1640 1480 1890 1900 1940 NJ
load net C -port C -pin C_OBUF_inst O
netloc C 1 9 1 NJ 2800
load net C_OBUF -pin C_OBUF_inst I -pin C_OBUF_inst_i_1 O
netloc C_OBUF 1 8 1 NJ 2800
load net Cin -port Cin -pin Cin_IBUF_inst I
netloc Cin 1 0 1 NJ 980
load net Cin_IBUF -pin Cin_IBUF_inst O -pin SUM_OBUF[0]_inst_i_2 I0 -pin SUM_OBUF[1]_inst_i_2 I0 -pin SUM_OBUF[3]_inst_i_3 I4
netloc Cin_IBUF 1 1 3 260 830 NJ 830 940
load net Cout00_out__0 -pin SUM_OBUF[0]_inst_i_1 I2 -pin SUM_OBUF[10]_inst_i_1 I2 -pin SUM_OBUF[11]_inst_i_1 I2 -pin SUM_OBUF[12]_inst_i_1 I2 -pin SUM_OBUF[13]_inst_i_1 I2 -pin SUM_OBUF[13]_inst_i_2 O -pin SUM_OBUF[1]_inst_i_1 I2 -pin SUM_OBUF[2]_inst_i_1 I2 -pin SUM_OBUF[3]_inst_i_1 I2 -pin SUM_OBUF[4]_inst_i_1 I2 -pin SUM_OBUF[5]_inst_i_1 I2 -pin SUM_OBUF[6]_inst_i_1 I2 -pin SUM_OBUF[7]_inst_i_1 I2 -pin SUM_OBUF[8]_inst_i_1 I2 -pin SUM_OBUF[9]_inst_i_1 I2 -pin Z_OBUF_inst_i_1 I4
netloc Cout00_out__0 1 7 1 3040 80n
load net Cout00_out__10 -pin SUM_OBUF[11]_inst_i_5 I4 -pin SUM_OBUF[11]_inst_i_6 O
netloc Cout00_out__10 1 3 1 940 1500n
load net Cout00_out__5 -pin SUM_OBUF[15]_inst_i_3 I4 -pin SUM_OBUF[15]_inst_i_4 O
netloc Cout00_out__5 1 5 1 1880 1930n
load net Cout0__0 -pin SUM_OBUF[0]_inst_i_1 I3 -pin SUM_OBUF[10]_inst_i_1 I3 -pin SUM_OBUF[11]_inst_i_1 I3 -pin SUM_OBUF[12]_inst_i_1 I3 -pin SUM_OBUF[13]_inst_i_1 I3 -pin SUM_OBUF[13]_inst_i_3 O -pin SUM_OBUF[1]_inst_i_1 I3 -pin SUM_OBUF[2]_inst_i_1 I3 -pin SUM_OBUF[3]_inst_i_1 I3 -pin SUM_OBUF[4]_inst_i_1 I3 -pin SUM_OBUF[5]_inst_i_1 I3 -pin SUM_OBUF[6]_inst_i_1 I3 -pin SUM_OBUF[7]_inst_i_1 I3 -pin SUM_OBUF[8]_inst_i_1 I3 -pin SUM_OBUF[9]_inst_i_1 I3 -pin Z_OBUF_inst_i_1 I5
netloc Cout0__0 1 7 1 2800 100n
load net Cout0__10 -pin SUM_OBUF[11]_inst_i_5 I5 -pin SUM_OBUF[11]_inst_i_7 O
netloc Cout0__10 1 3 1 900 1640n
load net Cout0__5 -pin SUM_OBUF[15]_inst_i_3 I5 -pin SUM_OBUF[15]_inst_i_5 O
netloc Cout0__5 1 5 1 1800 2280n
load net N -port N -pin N_OBUF_inst O
netloc N 1 9 1 NJ 2940
load net N_OBUF -pin N_OBUF_inst I -pin SUM_OBUF[15]_inst I -pin SUM_OBUF[15]_inst_i_1 O
netloc N_OBUF 1 8 1 3280 2870n
load net SAT -port SAT -pin SAT_IBUF_inst I
netloc SAT 1 0 7 NJ 2960 NJ 2960 NJ 2960 NJ 2960 NJ 2960 NJ 2960 NJ
load net SAT_IBUF -pin SAT_IBUF_inst O -pin SUM_OBUF[0]_inst_i_1 I4 -pin SUM_OBUF[10]_inst_i_1 I4 -pin SUM_OBUF[11]_inst_i_1 I4 -pin SUM_OBUF[12]_inst_i_1 I4 -pin SUM_OBUF[13]_inst_i_1 I4 -pin SUM_OBUF[14]_inst_i_1 I5 -pin SUM_OBUF[15]_inst_i_1 I0 -pin SUM_OBUF[1]_inst_i_1 I4 -pin SUM_OBUF[2]_inst_i_1 I4 -pin SUM_OBUF[3]_inst_i_1 I4 -pin SUM_OBUF[4]_inst_i_1 I4 -pin SUM_OBUF[5]_inst_i_1 I4 -pin SUM_OBUF[6]_inst_i_1 I4 -pin SUM_OBUF[7]_inst_i_1 I4 -pin SUM_OBUF[8]_inst_i_1 I4 -pin SUM_OBUF[9]_inst_i_1 I4
netloc SAT_IBUF 1 7 1 2940 120n
load net SUM[0] -attr @rip(#000000) 0 -port SUM[0] -pin SUM_OBUF[0]_inst O
load net SUM[10] -attr @rip(#000000) 10 -port SUM[10] -pin SUM_OBUF[10]_inst O
load net SUM[11] -attr @rip(#000000) 11 -port SUM[11] -pin SUM_OBUF[11]_inst O
load net SUM[12] -attr @rip(#000000) 12 -port SUM[12] -pin SUM_OBUF[12]_inst O
load net SUM[13] -attr @rip(#000000) 13 -port SUM[13] -pin SUM_OBUF[13]_inst O
load net SUM[14] -attr @rip(#000000) 14 -port SUM[14] -pin SUM_OBUF[14]_inst O
load net SUM[15] -attr @rip(#000000) 15 -port SUM[15] -pin SUM_OBUF[15]_inst O
load net SUM[1] -attr @rip(#000000) 1 -port SUM[1] -pin SUM_OBUF[1]_inst O
load net SUM[2] -attr @rip(#000000) 2 -port SUM[2] -pin SUM_OBUF[2]_inst O
load net SUM[3] -attr @rip(#000000) 3 -port SUM[3] -pin SUM_OBUF[3]_inst O
load net SUM[4] -attr @rip(#000000) 4 -port SUM[4] -pin SUM_OBUF[4]_inst O
load net SUM[5] -attr @rip(#000000) 5 -port SUM[5] -pin SUM_OBUF[5]_inst O
load net SUM[6] -attr @rip(#000000) 6 -port SUM[6] -pin SUM_OBUF[6]_inst O
load net SUM[7] -attr @rip(#000000) 7 -port SUM[7] -pin SUM_OBUF[7]_inst O
load net SUM[8] -attr @rip(#000000) 8 -port SUM[8] -pin SUM_OBUF[8]_inst O
load net SUM[9] -attr @rip(#000000) 9 -port SUM[9] -pin SUM_OBUF[9]_inst O
load net SUM_OBUF[0] -pin SUM_OBUF[0]_inst I -pin SUM_OBUF[0]_inst_i_1 O
netloc SUM_OBUF[0] 1 8 1 N 80
load net SUM_OBUF[0]_inst_i_2_n_0 -pin SUM_OBUF[0]_inst_i_1 I5 -pin SUM_OBUF[0]_inst_i_2 O -pin Z_OBUF_inst_i_7 I1
netloc SUM_OBUF[0]_inst_i_2_n_0 1 4 4 1560 1010 NJ 1010 NJ 1010 2860
load net SUM_OBUF[10] -pin SUM_OBUF[10]_inst I -pin SUM_OBUF[10]_inst_i_1 O
netloc SUM_OBUF[10] 1 8 1 N 1780
load net SUM_OBUF[10]_inst_i_2_n_0 -pin SUM_OBUF[10]_inst_i_1 I5 -pin SUM_OBUF[10]_inst_i_2 O
netloc SUM_OBUF[10]_inst_i_2_n_0 1 7 1 2860 1260n
load net SUM_OBUF[11] -pin SUM_OBUF[11]_inst I -pin SUM_OBUF[11]_inst_i_1 O
netloc SUM_OBUF[11] 1 8 1 N 2120
load net SUM_OBUF[11]_inst_i_2_n_0 -pin SUM_OBUF[11]_inst_i_1 I5 -pin SUM_OBUF[11]_inst_i_2 O
netloc SUM_OBUF[11]_inst_i_2_n_0 1 7 1 2860 1940n
load net SUM_OBUF[12] -pin SUM_OBUF[12]_inst I -pin SUM_OBUF[12]_inst_i_1 O
netloc SUM_OBUF[12] 1 8 1 N 2290
load net SUM_OBUF[12]_inst_i_2_n_0 -pin SUM_OBUF[12]_inst_i_1 I5 -pin SUM_OBUF[12]_inst_i_2 O
netloc SUM_OBUF[12]_inst_i_2_n_0 1 7 1 2820 2110n
load net SUM_OBUF[13] -pin SUM_OBUF[13]_inst I -pin SUM_OBUF[13]_inst_i_1 O
netloc SUM_OBUF[13] 1 8 1 N 2460
load net SUM_OBUF[13]_inst_i_4_n_0 -pin SUM_OBUF[13]_inst_i_1 I5 -pin SUM_OBUF[13]_inst_i_4 O
netloc SUM_OBUF[13]_inst_i_4_n_0 1 7 1 N 2520
load net SUM_OBUF[14] -pin SUM_OBUF[14]_inst I -pin SUM_OBUF[14]_inst_i_1 O
netloc SUM_OBUF[14] 1 8 1 N 2630
load net SUM_OBUF[1] -pin SUM_OBUF[1]_inst I -pin SUM_OBUF[1]_inst_i_1 O
netloc SUM_OBUF[1] 1 8 1 N 250
load net SUM_OBUF[1]_inst_i_2_n_0 -pin SUM_OBUF[1]_inst_i_1 I5 -pin SUM_OBUF[1]_inst_i_2 O -pin Z_OBUF_inst_i_7 I2
netloc SUM_OBUF[1]_inst_i_2_n_0 1 4 4 1580 310 NJ 310 NJ 310 NJ
load net SUM_OBUF[2] -pin SUM_OBUF[2]_inst I -pin SUM_OBUF[2]_inst_i_1 O
netloc SUM_OBUF[2] 1 8 1 N 420
load net SUM_OBUF[2]_inst_i_2_n_0 -pin SUM_OBUF[2]_inst_i_1 I5 -pin SUM_OBUF[2]_inst_i_2 O -pin Z_OBUF_inst_i_7 I3
netloc SUM_OBUF[2]_inst_i_2_n_0 1 4 4 1340 480 NJ 480 NJ 480 NJ
load net SUM_OBUF[3] -pin SUM_OBUF[3]_inst I -pin SUM_OBUF[3]_inst_i_1 O
netloc SUM_OBUF[3] 1 8 1 N 590
load net SUM_OBUF[3]_inst_i_2_n_0 -pin SUM_OBUF[3]_inst_i_1 I5 -pin SUM_OBUF[3]_inst_i_2 O -pin Z_OBUF_inst_i_7 I0
netloc SUM_OBUF[3]_inst_i_2_n_0 1 4 4 1380 650 NJ 650 NJ 650 NJ
load net SUM_OBUF[4] -pin SUM_OBUF[4]_inst I -pin SUM_OBUF[4]_inst_i_1 O
netloc SUM_OBUF[4] 1 8 1 N 760
load net SUM_OBUF[4]_inst_i_2_n_0 -pin SUM_OBUF[4]_inst_i_1 I5 -pin SUM_OBUF[4]_inst_i_2 O -pin Z_OBUF_inst_i_7 I5
netloc SUM_OBUF[4]_inst_i_2_n_0 1 4 4 1440 820 NJ 820 NJ 820 NJ
load net SUM_OBUF[5] -pin SUM_OBUF[5]_inst I -pin SUM_OBUF[5]_inst_i_1 O
netloc SUM_OBUF[5] 1 8 1 N 930
load net SUM_OBUF[5]_inst_i_2_n_0 -pin SUM_OBUF[5]_inst_i_1 I5 -pin SUM_OBUF[5]_inst_i_2 O -pin Z_OBUF_inst_i_7 I4
netloc SUM_OBUF[5]_inst_i_2_n_0 1 4 4 1540 990 NJ 990 NJ 990 NJ
load net SUM_OBUF[6] -pin SUM_OBUF[6]_inst I -pin SUM_OBUF[6]_inst_i_1 O
netloc SUM_OBUF[6] 1 8 1 N 1100
load net SUM_OBUF[6]_inst_i_2_n_0 -pin SUM_OBUF[6]_inst_i_1 I5 -pin SUM_OBUF[6]_inst_i_2 O -pin Z_OBUF_inst_i_6 I0
netloc SUM_OBUF[6]_inst_i_2_n_0 1 5 3 1800 1320 NJ 1320 2900
load net SUM_OBUF[7] -pin SUM_OBUF[7]_inst I -pin SUM_OBUF[7]_inst_i_1 O
netloc SUM_OBUF[7] 1 8 1 N 1270
load net SUM_OBUF[7]_inst_i_2_n_0 -pin SUM_OBUF[7]_inst_i_1 I5 -pin SUM_OBUF[7]_inst_i_2 O -pin Z_OBUF_inst_i_6 I5
netloc SUM_OBUF[7]_inst_i_2_n_0 1 5 3 1820 1340 NJ 1340 3020
load net SUM_OBUF[8] -pin SUM_OBUF[8]_inst I -pin SUM_OBUF[8]_inst_i_1 O
netloc SUM_OBUF[8] 1 8 1 N 1440
load net SUM_OBUF[8]_inst_i_2_n_0 -pin SUM_OBUF[8]_inst_i_1 I5 -pin SUM_OBUF[8]_inst_i_2 O
netloc SUM_OBUF[8]_inst_i_2_n_0 1 7 1 2880 1150n
load net SUM_OBUF[9] -pin SUM_OBUF[9]_inst I -pin SUM_OBUF[9]_inst_i_1 O
netloc SUM_OBUF[9] 1 8 1 N 1610
load net SUM_OBUF[9]_inst_i_2_n_0 -pin SUM_OBUF[9]_inst_i_1 I5 -pin SUM_OBUF[9]_inst_i_2 O -pin Z_OBUF_inst_i_3 I0
netloc SUM_OBUF[9]_inst_i_2_n_0 1 6 2 2360 1520 3060
load net V -port V -pin V_OBUF_inst O
netloc V 1 9 1 NJ 3120
load net V_OBUF -pin V_OBUF_inst I -pin V_OBUF_inst_i_1 O
netloc V_OBUF 1 8 1 NJ 3120
load net Z -port Z -pin Z_OBUF_inst O
netloc Z 1 9 1 NJ 1950
load net Z_OBUF -pin Z_OBUF_inst I -pin Z_OBUF_inst_i_1 O
netloc Z_OBUF 1 8 1 NJ 1950
load net Z_OBUF_inst_i_2_n_0 -pin Z_OBUF_inst_i_1 I0 -pin Z_OBUF_inst_i_2 O
netloc Z_OBUF_inst_i_2_n_0 1 7 1 2980 1420n
load net Z_OBUF_inst_i_3_n_0 -pin Z_OBUF_inst_i_1 I1 -pin Z_OBUF_inst_i_3 O
netloc Z_OBUF_inst_i_3_n_0 1 7 1 2960 1600n
load net Z_OBUF_inst_i_4_n_0 -pin Z_OBUF_inst_i_1 I2 -pin Z_OBUF_inst_i_4 O
netloc Z_OBUF_inst_i_4_n_0 1 7 1 2880 1770n
load net Z_OBUF_inst_i_6_n_0 -pin Z_OBUF_inst_i_3 I1 -pin Z_OBUF_inst_i_6 O
netloc Z_OBUF_inst_i_6_n_0 1 6 1 2460 1420n
load net Z_OBUF_inst_i_7_n_0 -pin Z_OBUF_inst_i_6 I1 -pin Z_OBUF_inst_i_7 O
netloc Z_OBUF_inst_i_7_n_0 1 5 1 2060 1090n
load net adder11/S0__0 -pin SUM_OBUF[11]_inst_i_2 I5 -pin SUM_OBUF[11]_inst_i_4 O -pin Z_OBUF_inst_i_3 I5
netloc adder11/S0__0 1 6 1 2580 1660n
load net adder13/S0__0 -pin SUM_OBUF[13]_inst_i_4 I5 -pin SUM_OBUF[13]_inst_i_7 O
netloc adder13/S0__0 1 6 1 2300 2500n
load net adder14/S0__0 -pin SUM_OBUF[13]_inst_i_3 I5 -pin SUM_OBUF[13]_inst_i_5 O -pin Z_OBUF_inst_i_2 I0 -pin Z_OBUF_inst_i_4 I0
netloc adder14/S0__0 1 6 1 2380 1380n
load net adder15/S0__0 -pin Z_OBUF_inst_i_1 I3 -pin Z_OBUF_inst_i_5 O
netloc adder15/S0__0 1 7 1 2880 1970n
load net adder4/S0__0 -pin SUM_OBUF[11]_inst_i_7 I5 -pin SUM_OBUF[11]_inst_i_8 O
netloc adder4/S0__0 1 2 1 N 1700
load net adder9/S0__0 -pin SUM_OBUF[15]_inst_i_5 I5 -pin SUM_OBUF[15]_inst_i_6 O
netloc adder9/S0__0 1 4 1 1320 2020n
load net carry1 -pin SUM_OBUF[11]_inst_i_7 I0 -pin SUM_OBUF[2]_inst_i_2 I0 -pin SUM_OBUF[3]_inst_i_2 I0 -pin SUM_OBUF[3]_inst_i_3 O -pin SUM_OBUF[5]_inst_i_3 I4
netloc carry1 1 2 2 620 1130 1040
load net carry10 -pin SUM_OBUF[12]_inst_i_2 I0 -pin SUM_OBUF[13]_inst_i_4 I0 -pin SUM_OBUF[13]_inst_i_6 O
netloc carry10 1 6 1 2560 2070n
load net carry11 -pin SUM_OBUF[13]_inst_i_3 I0 -pin SUM_OBUF[15]_inst_i_2 I4 -pin SUM_OBUF[15]_inst_i_3 O -pin Z_OBUF_inst_i_2 I5 -pin Z_OBUF_inst_i_4 I1
netloc carry11 1 6 1 2520 1480n
load net carry13 -pin C_OBUF_inst_i_1 I4 -pin SUM_OBUF[14]_inst_i_1 I4 -pin SUM_OBUF[15]_inst_i_1 I5 -pin SUM_OBUF[15]_inst_i_2 O -pin V_OBUF_inst_i_1 I0
netloc carry13 1 7 1 2920 2670n
load net carry3 -pin SUM_OBUF[4]_inst_i_2 I0 -pin SUM_OBUF[5]_inst_i_2 I0 -pin SUM_OBUF[5]_inst_i_3 O -pin SUM_OBUF[7]_inst_i_3 I4
netloc carry3 1 3 1 980 1360n
load net carry5 -pin SUM_OBUF[6]_inst_i_2 I0 -pin SUM_OBUF[7]_inst_i_2 I0 -pin SUM_OBUF[7]_inst_i_3 O -pin SUM_OBUF[9]_inst_i_3 I4
netloc carry5 1 4 1 1560 1320n
load net carry6 -pin SUM_OBUF[11]_inst_i_3 I4 -pin SUM_OBUF[11]_inst_i_5 O -pin SUM_OBUF[15]_inst_i_5 I0
netloc carry6 1 4 1 1460 1890n
load net carry7 -pin SUM_OBUF[10]_inst_i_3 I4 -pin SUM_OBUF[8]_inst_i_2 I0 -pin SUM_OBUF[9]_inst_i_2 I0 -pin SUM_OBUF[9]_inst_i_3 O -pin Z_OBUF_inst_i_6 I2
netloc carry7 1 5 2 1860 1130 NJ
load net carry8 -pin SUM_OBUF[11]_inst_i_2 I0 -pin SUM_OBUF[11]_inst_i_3 O -pin SUM_OBUF[13]_inst_i_6 I4
netloc carry8 1 5 2 1840 2370 2360
load net carry9 -pin SUM_OBUF[10]_inst_i_2 I0 -pin SUM_OBUF[10]_inst_i_3 O -pin Z_OBUF_inst_i_3 I2
netloc carry9 1 6 1 2440 1240n
load netBundle @A 16 A[15] A[14] A[13] A[12] A[11] A[10] A[9] A[8] A[7] A[6] A[5] A[4] A[3] A[2] A[1] A[0] -autobundled
netbloc @A 1 0 6 20 1390 280 1760 520 2170 1100 2240 1420 2520 1820
load netBundle @B 16 B[15] B[14] B[13] B[12] B[11] B[10] B[9] B[8] B[7] B[6] B[5] B[4] B[3] B[2] B[1] B[0] -autobundled
netbloc @B 1 0 6 40 1540 300 1580 540 1110 1040 1090 1400 2740 1840
load netBundle @SUM 16 SUM[15] SUM[14] SUM[13] SUM[12] SUM[11] SUM[10] SUM[9] SUM[8] SUM[7] SUM[6] SUM[5] SUM[4] SUM[3] SUM[2] SUM[1] SUM[0] -autobundled
netbloc @SUM 1 9 1 3490 80n
levelinfo -pg 1 0 80 380 760 1180 1660 2140 2660 3140 3320 3510
pagesize -pg 1 -db -bbox -sgen -100 0 3630 3200
show
zoom 0.182282
scrollpos -84 35
#
# initialize ictrl to current module adder_16bit_sat work:adder_16bit_sat:NOFILE
ictrl init topinfo |
