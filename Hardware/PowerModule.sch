EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Regulator_Switching:LM2596S-5 U2
U 1 1 5F615EE7
P 5300 2050
F 0 "U2" H 5300 2200 50  0000 C CNN
F 1 "LM2596S-5" H 5300 2100 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-5_TabPin3" H 5350 1800 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2596.pdf" H 5300 2050 50  0001 C CNN
	1    5300 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR010
U 1 1 5F615F7A
P 7250 1950
F 0 "#PWR010" H 7250 1800 50  0001 C CNN
F 1 "+5V" H 7265 2123 50  0000 C CNN
F 2 "" H 7250 1950 50  0001 C CNN
F 3 "" H 7250 1950 50  0001 C CNN
	1    7250 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5F616034
P 5300 2900
F 0 "#PWR012" H 5300 2650 50  0001 C CNN
F 1 "GND" H 5305 2727 50  0000 C CNN
F 2 "" H 5300 2900 50  0001 C CNN
F 3 "" H 5300 2900 50  0001 C CNN
	1    5300 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5F61606C
P 5300 4150
F 0 "#PWR014" H 5300 3900 50  0001 C CNN
F 1 "GND" H 5305 3977 50  0000 C CNN
F 2 "" H 5300 4150 50  0001 C CNN
F 3 "" H 5300 4150 50  0001 C CNN
	1    5300 4150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR013
U 1 1 5F6160C4
P 4850 3550
F 0 "#PWR013" H 4850 3400 50  0001 C CNN
F 1 "+5V" H 4865 3723 50  0000 C CNN
F 2 "" H 4850 3550 50  0001 C CNN
F 3 "" H 4850 3550 50  0001 C CNN
	1    4850 3550
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM1117-3.3 U3
U 1 1 5F616160
P 5300 3600
F 0 "U3" H 5300 3842 50  0000 C CNN
F 1 "LM1117-3.3" H 5300 3751 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 5300 3600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 5300 3600 50  0001 C CNN
	1    5300 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 5F6162C0
P 5750 3850
F 0 "C13" H 5865 3896 50  0000 L CNN
F 1 "100nF" H 5865 3805 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 5788 3700 50  0001 C CNN
F 3 "~" H 5750 3850 50  0001 C CNN
	1    5750 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 5F616331
P 4850 3850
F 0 "C12" H 4965 3896 50  0000 L CNN
F 1 "100nF" H 4965 3805 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 4888 3700 50  0001 C CNN
F 3 "~" H 4850 3850 50  0001 C CNN
	1    4850 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3600 5750 3600
Wire Wire Line
	5750 3600 5750 3700
Wire Wire Line
	5750 4000 5300 4000
Wire Wire Line
	5300 4000 5300 4150
Wire Wire Line
	5300 3900 5300 4000
Connection ~ 5300 4000
Wire Wire Line
	4850 4000 5300 4000
Wire Wire Line
	4850 3550 4850 3600
Wire Wire Line
	5000 3600 4850 3600
Connection ~ 4850 3600
Wire Wire Line
	4850 3600 4850 3700
$Comp
L Device:C C10
U 1 1 5F6165D8
P 4350 2400
F 0 "C10" H 4465 2446 50  0000 L CNN
F 1 "100nF" H 4465 2355 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 4388 2250 50  0001 C CNN
F 3 "~" H 4350 2400 50  0001 C CNN
	1    4350 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C9
U 1 1 5F616760
P 3850 2400
F 0 "C9" H 3965 2446 50  0000 L CNN
F 1 "100u" H 3965 2355 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x7.7" H 3850 2400 50  0001 C CNN
F 3 "~" H 3850 2400 50  0001 C CNN
	1    3850 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C11
U 1 1 5F616792
P 6750 2400
F 0 "C11" H 6865 2446 50  0000 L CNN
F 1 "220u" H 6865 2355 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x7.7" H 6750 2400 50  0001 C CNN
F 3 "~" H 6750 2400 50  0001 C CNN
	1    6750 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D6
U 1 1 5F61696B
P 6150 2400
F 0 "D6" V 6104 2479 50  0000 L CNN
F 1 "D_Schottky" V 6195 2479 50  0000 L CNN
F 2 "Diode_SMD:D_SMB" H 6150 2400 50  0001 C CNN
F 3 "~" H 6150 2400 50  0001 C CNN
	1    6150 2400
	0    1    1    0   
$EndComp
$Comp
L Device:LED D7
U 1 1 5F616B87
P 3150 2550
F 0 "D7" V 3188 2433 50  0000 R CNN
F 1 "LED" V 3097 2433 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 3150 2550 50  0001 C CNN
F 3 "~" H 3150 2550 50  0001 C CNN
	1    3150 2550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 5F616C74
P 3150 2150
F 0 "R6" H 3220 2196 50  0000 L CNN
F 1 "4k7R" H 3220 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 3080 2150 50  0001 C CNN
F 3 "~" H 3150 2150 50  0001 C CNN
	1    3150 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 1950 4350 1950
Wire Wire Line
	3150 1750 3150 1950
Wire Wire Line
	3150 1950 3150 2000
Connection ~ 3150 1950
Wire Wire Line
	3150 2300 3150 2400
Wire Wire Line
	3150 2700 3150 2850
Wire Wire Line
	3150 2850 3850 2850
Wire Wire Line
	5300 2850 5300 2900
Wire Wire Line
	5300 2350 5300 2850
Connection ~ 5300 2850
Connection ~ 3850 1950
Wire Wire Line
	3850 1950 3150 1950
Wire Wire Line
	3850 2550 3850 2850
Connection ~ 3850 2850
Wire Wire Line
	3850 2850 4350 2850
Wire Wire Line
	4350 2550 4350 2850
Connection ~ 4350 2850
Wire Wire Line
	4350 2850 4700 2850
Connection ~ 4350 1950
Wire Wire Line
	4350 1950 3850 1950
Wire Wire Line
	5300 2850 6150 2850
Wire Wire Line
	6150 2550 6150 2850
Connection ~ 6150 2850
Wire Wire Line
	6150 2850 6750 2850
Wire Wire Line
	6750 2850 6750 2550
Wire Wire Line
	5800 2150 6150 2150
Wire Wire Line
	6150 2150 6150 2250
Wire Wire Line
	6750 2150 6750 2250
Wire Wire Line
	4800 2150 4700 2150
Wire Wire Line
	4700 2150 4700 2850
Connection ~ 4700 2850
Wire Wire Line
	4700 2850 5300 2850
Wire Wire Line
	4350 1950 4350 2250
Wire Wire Line
	3850 1950 3850 2250
$Comp
L Device:LED D8
U 1 1 5F61CE18
P 7250 2700
F 0 "D8" V 7288 2583 50  0000 R CNN
F 1 "LED" V 7197 2583 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 7250 2700 50  0001 C CNN
F 3 "~" H 7250 2700 50  0001 C CNN
	1    7250 2700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 5F61CE1F
P 7250 2350
F 0 "R7" H 7320 2396 50  0000 L CNN
F 1 "680R" H 7320 2305 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 7180 2350 50  0001 C CNN
F 3 "~" H 7250 2350 50  0001 C CNN
	1    7250 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:L L2
U 1 1 5F61D716
P 6450 2150
F 0 "L2" V 6550 2150 50  0000 C CNN
F 1 "33u" V 6400 2150 50  0000 C CNN
F 2 "Inductor_SMD:L_12x12mm_H8mm" H 6450 2150 50  0001 C CNN
F 3 "~" H 6450 2150 50  0001 C CNN
	1    6450 2150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6750 2150 6600 2150
Wire Wire Line
	6300 2150 6150 2150
Connection ~ 6150 2150
Wire Wire Line
	5800 1950 6750 1950
Wire Wire Line
	6750 1950 6750 2150
Connection ~ 6750 2150
Wire Wire Line
	7250 2850 6750 2850
Connection ~ 6750 2850
$Comp
L power:GND #PWR016
U 1 1 5F8FFE5C
P 5300 5250
F 0 "#PWR016" H 5300 5000 50  0001 C CNN
F 1 "GND" H 5305 5077 50  0000 C CNN
F 2 "" H 5300 5250 50  0001 C CNN
F 3 "" H 5300 5250 50  0001 C CNN
	1    5300 5250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR015
U 1 1 5F8FFE68
P 4850 4650
F 0 "#PWR015" H 4850 4500 50  0001 C CNN
F 1 "+5V" H 4865 4823 50  0000 C CNN
F 2 "" H 4850 4650 50  0001 C CNN
F 3 "" H 4850 4650 50  0001 C CNN
	1    4850 4650
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM1117-3.3 U4
U 1 1 5F8FFE6E
P 5300 4700
F 0 "U4" H 5300 4942 50  0000 C CNN
F 1 "LM1117-3.3" H 5300 4851 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 5300 4700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 5300 4700 50  0001 C CNN
	1    5300 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 5F8FFE74
P 5750 4950
F 0 "C15" H 5865 4996 50  0000 L CNN
F 1 "100nF" H 5865 4905 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 5788 4800 50  0001 C CNN
F 3 "~" H 5750 4950 50  0001 C CNN
	1    5750 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 5F8FFE7A
P 4850 4950
F 0 "C14" H 4965 4996 50  0000 L CNN
F 1 "100nF" H 4965 4905 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 4888 4800 50  0001 C CNN
F 3 "~" H 4850 4950 50  0001 C CNN
	1    4850 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 4700 5750 4700
Wire Wire Line
	5750 4700 5750 4800
Wire Wire Line
	5750 5100 5300 5100
Wire Wire Line
	5300 5100 5300 5250
Wire Wire Line
	5300 5000 5300 5100
Connection ~ 5300 5100
Wire Wire Line
	4850 5100 5300 5100
Wire Wire Line
	4850 4650 4850 4700
Wire Wire Line
	5000 4700 4850 4700
Connection ~ 4850 4700
Wire Wire Line
	4850 4700 4850 4800
$Comp
L power:GND #PWR018
U 1 1 5F99AC03
P 5300 6350
F 0 "#PWR018" H 5300 6100 50  0001 C CNN
F 1 "GND" H 5305 6177 50  0000 C CNN
F 2 "" H 5300 6350 50  0001 C CNN
F 3 "" H 5300 6350 50  0001 C CNN
	1    5300 6350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR017
U 1 1 5F99AC09
P 4850 5750
F 0 "#PWR017" H 4850 5600 50  0001 C CNN
F 1 "+5V" H 4865 5923 50  0000 C CNN
F 2 "" H 4850 5750 50  0001 C CNN
F 3 "" H 4850 5750 50  0001 C CNN
	1    4850 5750
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM1117-3.3 U5
U 1 1 5F99AC0F
P 5300 5800
F 0 "U5" H 5300 6042 50  0000 C CNN
F 1 "LM1117-3.3" H 5300 5951 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 5300 5800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 5300 5800 50  0001 C CNN
	1    5300 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C17
U 1 1 5F99AC15
P 5750 6050
F 0 "C17" H 5865 6096 50  0000 L CNN
F 1 "100nF" H 5865 6005 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 5788 5900 50  0001 C CNN
F 3 "~" H 5750 6050 50  0001 C CNN
	1    5750 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C16
U 1 1 5F99AC1B
P 4850 6050
F 0 "C16" H 4965 6096 50  0000 L CNN
F 1 "100nF" H 4965 6005 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 4888 5900 50  0001 C CNN
F 3 "~" H 4850 6050 50  0001 C CNN
	1    4850 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 5800 5750 5800
Wire Wire Line
	5750 5800 5750 5900
Wire Wire Line
	5750 6200 5300 6200
Wire Wire Line
	5300 6200 5300 6350
Wire Wire Line
	5300 6100 5300 6200
Connection ~ 5300 6200
Wire Wire Line
	4850 6200 5300 6200
Wire Wire Line
	4850 5750 4850 5800
Wire Wire Line
	5000 5800 4850 5800
Connection ~ 4850 5800
Wire Wire Line
	4850 5800 4850 5900
Text GLabel 5900 3600 2    50   Input ~ 0
3V3_SYS
Text GLabel 6250 4700 2    50   Input ~ 0
3V3_POT1
Text GLabel 6250 5800 2    50   Input ~ 0
3V3_POT2
Wire Wire Line
	5900 3600 5750 3600
Connection ~ 5750 3600
Wire Wire Line
	5900 4700 5750 4700
Connection ~ 5750 4700
Wire Wire Line
	5900 5800 5750 5800
Connection ~ 5750 5800
$Comp
L Device:Fuse F2
U 1 1 607538F0
P 6050 4700
F 0 "F2" V 5853 4700 50  0000 C CNN
F 1 "Fuse" V 5944 4700 50  0000 C CNN
F 2 "Fuse:Fuse_2010_5025Metric" V 5980 4700 50  0001 C CNN
F 3 "~" H 6050 4700 50  0001 C CNN
	1    6050 4700
	0    1    1    0   
$EndComp
$Comp
L Device:Fuse F3
U 1 1 607546EB
P 6050 5800
F 0 "F3" V 5853 5800 50  0000 C CNN
F 1 "Fuse" V 5944 5800 50  0000 C CNN
F 2 "Fuse:Fuse_2010_5025Metric" V 5980 5800 50  0001 C CNN
F 3 "~" H 6050 5800 50  0001 C CNN
	1    6050 5800
	0    1    1    0   
$EndComp
$Comp
L power:+24V #PWR08
U 1 1 6075E828
P 3150 1750
F 0 "#PWR08" H 3150 1600 50  0001 C CNN
F 1 "+24V" H 3165 1923 50  0000 C CNN
F 2 "" H 3150 1750 50  0001 C CNN
F 3 "" H 3150 1750 50  0001 C CNN
	1    3150 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 1950 7250 2150
Wire Wire Line
	6750 2150 7250 2150
Connection ~ 7250 2150
Wire Wire Line
	7250 2150 7250 2200
Wire Wire Line
	7250 2500 7250 2550
Wire Wire Line
	2500 2250 2500 2300
$Comp
L power:+24V #PWR09
U 1 1 6075E223
P 2650 1950
F 0 "#PWR09" H 2650 1800 50  0001 C CNN
F 1 "+24V" H 2665 2123 50  0000 C CNN
F 2 "" H 2650 1950 50  0001 C CNN
F 3 "" H 2650 1950 50  0001 C CNN
	1    2650 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5F8FD0C8
P 2050 2300
F 0 "#PWR011" H 2050 2050 50  0001 C CNN
F 1 "GND" H 2055 2127 50  0000 C CNN
F 2 "" H 2050 2300 50  0001 C CNN
F 3 "" H 2050 2300 50  0001 C CNN
	1    2050 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 2300 2050 2300
Wire Wire Line
	2050 2300 2500 2300
Connection ~ 2050 2300
Wire Wire Line
	1600 2300 1600 2050
Wire Wire Line
	1600 1950 1650 1950
Wire Wire Line
	2050 2300 2050 2250
Wire Wire Line
	1950 1950 2050 1950
Connection ~ 2050 1950
$Comp
L Device:D_Zener D?
U 1 1 5F8E1DF0
P 2050 2100
AR Path="/5F8E1DF0" Ref="D?"  Part="1" 
AR Path="/5F60F829/5F8E1DF0" Ref="D4"  Part="1" 
F 0 "D4" V 2004 2179 50  0000 L CNN
F 1 "30V" V 2095 2179 50  0000 L CNN
F 2 "Diode_SMD:D_SMB" H 2050 2100 50  0001 C CNN
F 3 "~" H 2050 2100 50  0001 C CNN
	1    2050 2100
	0    1    1    0   
$EndComp
$Comp
L Device:Polyfuse F?
U 1 1 5F8E1DE4
P 1800 1950
AR Path="/5F8E1DE4" Ref="F?"  Part="1" 
AR Path="/5F60F829/5F8E1DE4" Ref="F1"  Part="1" 
F 0 "F1" V 1575 1950 50  0000 C CNN
F 1 "500mA" V 1666 1950 50  0000 C CNN
F 2 "Fuse:Fuse_2010_5025Metric" H 1850 1750 50  0001 L CNN
F 3 "~" H 1800 1950 50  0001 C CNN
	1    1800 1950
	0    1    1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 5F8E1DD8
P 1400 2050
AR Path="/5F8E1DD8" Ref="J?"  Part="1" 
AR Path="/5F60F829/5F8E1DD8" Ref="J1"  Part="1" 
F 0 "J1" H 1480 2042 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 1480 1951 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 1400 2050 50  0001 C CNN
F 3 "~" H 1400 2050 50  0001 C CNN
	1    1400 2050
	-1   0    0    1   
$EndComp
Wire Wire Line
	2050 1950 2500 1950
Wire Wire Line
	2500 1950 2650 1950
Connection ~ 2500 1950
$Comp
L Device:D_Schottky D5
U 1 1 5F8F78E9
P 2500 2100
F 0 "D5" V 2454 2179 50  0000 L CNN
F 1 "Fast diode" V 2545 2179 50  0000 L CNN
F 2 "Diode_SMD:D_SMB" H 2500 2100 50  0001 C CNN
F 3 "~" H 2500 2100 50  0001 C CNN
	1    2500 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 4700 6250 4700
Wire Wire Line
	6200 5800 6250 5800
$EndSCHEMATC
