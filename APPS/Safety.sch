EESchema Schematic File Version 4
LIBS:APPS-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
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
L Relay:FINDER-30.22 K1
U 1 1 5F99F08C
P 3500 2100
F 0 "K1" H 4130 2146 50  0000 L CNN
F 1 "FINDER-30.22" H 4130 2055 50  0000 L CNN
F 2 "Relay_THT:Relay_DPDT_Finder_30.22" H 4850 2070 50  0001 C CNN
F 3 "http://gfinder.findernet.com/assets/Series/354/S30EN.pdf" H 3300 2100 50  0001 C CNN
	1    3500 2100
	1    0    0    -1  
$EndComp
$Comp
L pspice:DIODE D14
U 1 1 5F9A0049
P 2500 2100
F 0 "D14" V 2546 1972 50  0000 R CNN
F 1 "DIODE" V 2455 1972 50  0000 R CNN
F 2 "Diode_SMD:D_SMB" H 2500 2100 50  0001 C CNN
F 3 "~" H 2500 2100 50  0001 C CNN
	1    2500 2100
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_FET:BSS138 Q1
U 1 1 5F9A08DA
P 3000 2900
F 0 "Q1" H 3206 2946 50  0000 L CNN
F 1 "BSS138" H 3206 2855 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3200 2825 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/BS/BSS138.pdf" H 3000 2900 50  0001 L CNN
	1    3000 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5F9A317A
P 2550 2900
F 0 "R7" V 2354 2900 50  0000 C CNN
F 1 "100R" V 2445 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 2550 2900 50  0001 C CNN
F 3 "~" H 2550 2900 50  0001 C CNN
	1    2550 2900
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R8
U 1 1 5F9A34B7
P 2700 3050
F 0 "R8" H 2759 3096 50  0000 L CNN
F 1 "10k" H 2759 3005 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 2700 3050 50  0001 C CNN
F 3 "~" H 2700 3050 50  0001 C CNN
	1    2700 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1900 2500 1700
Wire Wire Line
	2500 1700 3100 1700
Wire Wire Line
	3100 1700 3100 1800
Wire Wire Line
	3100 1700 3100 1450
Connection ~ 3100 1700
Wire Wire Line
	2500 2300 2500 2500
Wire Wire Line
	2500 2500 3100 2500
Wire Wire Line
	3100 2500 3100 2400
Wire Wire Line
	3100 2500 3100 2700
Connection ~ 3100 2500
Wire Wire Line
	2800 2900 2700 2900
Wire Wire Line
	2700 2900 2700 2950
Connection ~ 2700 2900
Wire Wire Line
	2700 2900 2650 2900
Wire Wire Line
	2700 3150 3100 3150
Wire Wire Line
	3100 3150 3100 3100
Wire Wire Line
	3100 3150 3100 3200
Connection ~ 3100 3150
Wire Wire Line
	2450 2900 2400 2900
Text GLabel 2400 2900 0    50   Input ~ 0
EN_RELAY
$Comp
L power:+5V #PWR032
U 1 1 5F9A828C
P 3100 1450
F 0 "#PWR032" H 3100 1300 50  0001 C CNN
F 1 "+5V" H 3115 1623 50  0000 C CNN
F 2 "" H 3100 1450 50  0001 C CNN
F 3 "" H 3100 1450 50  0001 C CNN
	1    3100 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1800 3600 1750
Wire Wire Line
	3500 2400 3500 2450
Text GLabel 3600 1750 1    50   Input ~ 0
SAFETY1
Text GLabel 3500 2450 3    50   Input ~ 0
SAFETY2
$Comp
L power:GND #PWR033
U 1 1 5F9A917E
P 3100 3200
F 0 "#PWR033" H 3100 2950 50  0001 C CNN
F 1 "GND" H 3105 3027 50  0000 C CNN
F 2 "" H 3100 3200 50  0001 C CNN
F 3 "" H 3100 3200 50  0001 C CNN
	1    3100 3200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J5
U 1 1 5F9AD898
P 5700 2700
F 0 "J5" H 5780 2692 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 5780 2601 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 5700 2700 50  0001 C CNN
F 3 "~" H 5700 2700 50  0001 C CNN
	1    5700 2700
	1    0    0    -1  
$EndComp
Text GLabel 5450 2700 0    50   Input ~ 0
SAFETY1
Text GLabel 5450 2800 0    50   Input ~ 0
SAFETY2
Wire Wire Line
	5500 2700 5450 2700
Wire Wire Line
	5450 2800 5500 2800
$EndSCHEMATC
