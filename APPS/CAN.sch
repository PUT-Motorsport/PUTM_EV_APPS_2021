EESchema Schematic File Version 4
LIBS:APPS-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
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
L Interface_CAN_LIN:MCP2562-H-SN U4
U 1 1 5F60FAE0
P 6300 2500
F 0 "U4" H 6150 2700 50  0000 C CNN
F 1 "MCP2562-H-SN" H 6300 2500 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6300 2000 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/25167A.pdf" H 6300 2500 50  0001 C CNN
	1    6300 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5F60FB9C
P 6950 2050
F 0 "#PWR018" H 6950 1800 50  0001 C CNN
F 1 "GND" H 6955 1877 50  0000 C CNN
F 2 "" H 6950 2050 50  0001 C CNN
F 3 "" H 6950 2050 50  0001 C CNN
	1    6950 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5F60FBC1
P 6300 3200
F 0 "#PWR015" H 6300 2950 50  0001 C CNN
F 1 "GND" H 6305 3027 50  0000 C CNN
F 2 "" H 6300 3200 50  0001 C CNN
F 3 "" H 6300 3200 50  0001 C CNN
	1    6300 3200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR012
U 1 1 5F60FC10
P 5150 2350
F 0 "#PWR012" H 5150 2200 50  0001 C CNN
F 1 "+3.3V" H 5165 2523 50  0000 C CNN
F 2 "" H 5150 2350 50  0001 C CNN
F 3 "" H 5150 2350 50  0001 C CNN
	1    5150 2350
	1    0    0    -1  
$EndComp
Text GLabel 5800 2300 0    50   Input ~ 0
CAN_TX
Text GLabel 5800 2400 0    50   Output ~ 0
CAN_RX
Wire Wire Line
	6300 2900 6300 3050
Wire Wire Line
	5800 2700 5700 2700
Wire Wire Line
	5700 2700 5700 3050
Wire Wire Line
	5700 3050 6300 3050
Connection ~ 6300 3050
Wire Wire Line
	6300 3050 6300 3200
Wire Wire Line
	5800 2600 5150 2600
Wire Wire Line
	5150 2600 5150 2350
$Comp
L power:+5V #PWR014
U 1 1 5F60FC9D
P 6300 1450
F 0 "#PWR014" H 6300 1300 50  0001 C CNN
F 1 "+5V" H 6315 1623 50  0000 C CNN
F 2 "" H 6300 1450 50  0001 C CNN
F 3 "" H 6300 1450 50  0001 C CNN
	1    6300 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 2100 6300 1650
$Comp
L Device:C C12
U 1 1 5F60FDF8
P 6950 1800
F 0 "C12" H 7065 1846 50  0000 L CNN
F 1 "100nF" H 7065 1755 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 6988 1650 50  0001 C CNN
F 3 "~" H 6950 1800 50  0001 C CNN
	1    6950 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 1650 6300 1650
Connection ~ 6300 1650
Wire Wire Line
	6300 1650 6300 1450
Wire Wire Line
	6950 1950 6950 2050
$Comp
L Device:R_Small R4
U 1 1 5F6105D7
P 7700 2500
F 0 "R4" H 7759 2546 50  0000 L CNN
F 1 "120R" H 7759 2455 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 7700 2500 50  0001 C CNN
F 3 "~" H 7700 2500 50  0001 C CNN
	1    7700 2500
	1    0    0    -1  
$EndComp
Text GLabel 7850 2100 2    50   Input ~ 0
CAN_H
Text GLabel 7850 2900 2    50   Input ~ 0
CAN_L
Wire Wire Line
	7850 2100 7700 2100
Wire Wire Line
	7150 2100 7150 2400
Wire Wire Line
	7150 2400 6800 2400
Wire Wire Line
	7850 2900 7700 2900
Wire Wire Line
	7150 2900 7150 2600
Wire Wire Line
	7150 2600 6800 2600
Wire Wire Line
	7700 2100 7700 2400
Connection ~ 7700 2100
Wire Wire Line
	7700 2100 7400 2100
Wire Wire Line
	7700 2600 7700 2900
Connection ~ 7700 2900
Wire Wire Line
	7700 2900 7400 2900
$Comp
L Device:D_TVS_x2_AAC D4
U 1 1 5F611EB6
P 7400 2500
F 0 "D4" V 7446 2579 50  0000 L CNN
F 1 "PESD2CAN.215" V 7355 2579 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7250 2500 50  0001 C CNN
F 3 "~" H 7250 2500 50  0001 C CNN
	1    7400 2500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7400 2100 7400 2150
Connection ~ 7400 2100
Wire Wire Line
	7400 2100 7150 2100
Wire Wire Line
	7400 2850 7400 2900
Connection ~ 7400 2900
Wire Wire Line
	7400 2900 7150 2900
$Comp
L power:GND #PWR020
U 1 1 5F612DEC
P 7550 2500
F 0 "#PWR020" H 7550 2250 50  0001 C CNN
F 1 "GND" H 7555 2327 50  0000 C CNN
F 2 "" H 7550 2500 50  0001 C CNN
F 3 "" H 7550 2500 50  0001 C CNN
	1    7550 2500
	1    0    0    -1  
$EndComp
$EndSCHEMATC
