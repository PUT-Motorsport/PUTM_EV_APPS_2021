EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 7
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
L Connector:Screw_Terminal_01x02 J?
U 1 1 6077DC20
P 2900 2100
AR Path="/6077DC20" Ref="J?"  Part="1" 
AR Path="/6077B773/6077DC20" Ref="J5"  Part="1" 
F 0 "J5" H 2980 2092 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 2980 2001 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 2900 2100 50  0001 C CNN
F 3 "~" H 2900 2100 50  0001 C CNN
	1    2900 2100
	1    0    0    -1  
$EndComp
Text GLabel 2550 2100 0    50   Output ~ 0
CAN_L
Text GLabel 2550 2200 0    50   Output ~ 0
CAN_H
Wire Wire Line
	2550 2100 2700 2100
Wire Wire Line
	2550 2200 2700 2200
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 6077FFFF
P 2150 3150
AR Path="/6077FFFF" Ref="J?"  Part="1" 
AR Path="/6077B773/6077FFFF" Ref="J6"  Part="1" 
F 0 "J6" H 2256 3528 50  0000 C CNN
F 1 "Conn_01x06_Male" H 2256 3437 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 2150 3150 50  0001 C CNN
F 3 "~" H 2150 3150 50  0001 C CNN
	1    2150 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60780005
P 2950 3450
AR Path="/60780005" Ref="#PWR?"  Part="1" 
AR Path="/6077B773/60780005" Ref="#PWR037"  Part="1" 
F 0 "#PWR037" H 2950 3200 50  0001 C CNN
F 1 "GND" H 2955 3277 50  0000 C CNN
F 2 "" H 2950 3450 50  0001 C CNN
F 3 "" H 2950 3450 50  0001 C CNN
	1    2950 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2950 2950 2950
Wire Wire Line
	2950 2950 2950 2800
Text GLabel 3150 2950 2    50   Input ~ 0
SW_VDDtarget
Text GLabel 3150 3050 2    50   Input ~ 0
SWCLK
Text GLabel 3150 3150 2    50   Input ~ 0
SW_GND
Text GLabel 3150 3250 2    50   Input ~ 0
SWDIO
Text GLabel 3150 3350 2    50   Input ~ 0
NRST
Wire Wire Line
	2950 2950 3150 2950
Connection ~ 2950 2950
Wire Wire Line
	2350 3050 3150 3050
Wire Wire Line
	2350 3150 2950 3150
Wire Wire Line
	2350 3250 3150 3250
Wire Wire Line
	2350 3350 3150 3350
Wire Wire Line
	2950 3450 2950 3150
Wire Wire Line
	2950 3150 3150 3150
Connection ~ 2950 3150
Text GLabel 2950 2800 1    50   Input ~ 0
3V3_SYS
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 607E201F
P 2850 3950
AR Path="/5F99E99E/607E201F" Ref="J?"  Part="1" 
AR Path="/6077B773/607E201F" Ref="J7"  Part="1" 
F 0 "J7" H 2930 3942 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 2930 3851 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 2850 3950 50  0001 C CNN
F 3 "~" H 2850 3950 50  0001 C CNN
	1    2850 3950
	1    0    0    -1  
$EndComp
Text GLabel 2600 3950 0    50   Input ~ 0
SAFETY1
Text GLabel 2600 4050 0    50   Input ~ 0
SAFETY2
Wire Wire Line
	2650 3950 2600 3950
Wire Wire Line
	2600 4050 2650 4050
$EndSCHEMATC
