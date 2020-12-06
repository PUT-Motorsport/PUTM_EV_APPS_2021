EESchema Schematic File Version 4
LIBS:APPS-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 9800 1600 1150 800 
U 5F60F829
F0 "PowerModule" 50
F1 "PowerModule.sch" 50
$EndSheet
$Sheet
S 9800 2700 1150 800 
U 5F60F83F
F0 "CAN" 50
F1 "CAN.sch" 50
$EndSheet
$Comp
L power:GND #PWR02
U 1 1 5F622E1A
P 3500 6400
F 0 "#PWR02" H 3500 6150 50  0001 C CNN
F 1 "GND" H 3505 6227 50  0000 C CNN
F 2 "" H 3500 6400 50  0001 C CNN
F 3 "" H 3500 6400 50  0001 C CNN
	1    3500 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 6200 3700 6300
Wire Wire Line
	3700 6300 3600 6300
Wire Wire Line
	3600 6200 3600 6300
Connection ~ 3600 6300
Wire Wire Line
	3600 6300 3500 6300
Wire Wire Line
	3400 6200 3400 6300
Wire Wire Line
	3500 6200 3500 6300
Connection ~ 3500 6300
Wire Wire Line
	3500 6300 3400 6300
Wire Wire Line
	3500 6400 3500 6300
$Comp
L Device:R_Small R1
U 1 1 5F6269A1
P 2500 3750
F 0 "R1" H 2559 3796 50  0000 L CNN
F 1 "R_Small" H 2559 3705 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 2500 3750 50  0001 C CNN
F 3 "~" H 2500 3750 50  0001 C CNN
	1    2500 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5F626A1C
P 2500 3950
F 0 "#PWR01" H 2500 3700 50  0001 C CNN
F 1 "GND" H 2505 3777 50  0000 C CNN
F 2 "" H 2500 3950 50  0001 C CNN
F 3 "" H 2500 3950 50  0001 C CNN
	1    2500 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3850 2500 3900
Wire Wire Line
	2900 3600 2500 3600
Wire Wire Line
	2500 3600 2500 3650
Text GLabel 2600 3250 1    50   BiDi ~ 0
NRST
Wire Wire Line
	2900 3400 2600 3400
Wire Wire Line
	2600 3400 2600 3250
$Comp
L Device:C C1
U 1 1 5F62A6CF
P 2250 3400
F 0 "C1" V 2100 3400 50  0000 C CNN
F 1 "100nF" V 2400 3400 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 2288 3250 50  0001 C CNN
F 3 "~" H 2250 3400 50  0001 C CNN
	1    2250 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 3400 2450 3400
Connection ~ 2600 3400
$Comp
L Switch:SW_Push SW1
U 1 1 5F62B38B
P 2100 3150
F 0 "SW1" H 2100 3435 50  0000 C CNN
F 1 "SW_Push" H 2100 3344 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 2100 3350 50  0001 C CNN
F 3 "" H 2100 3350 50  0001 C CNN
	1    2100 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3400 2450 3150
Wire Wire Line
	2450 3150 2300 3150
Connection ~ 2450 3400
Wire Wire Line
	2450 3400 2400 3400
Wire Wire Line
	2100 3400 1900 3400
Wire Wire Line
	1900 3400 1900 3150
Wire Wire Line
	1900 3400 1900 3900
Wire Wire Line
	1900 3900 2500 3900
Connection ~ 1900 3400
Connection ~ 2500 3900
Wire Wire Line
	2500 3900 2500 3950
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 5F632D5E
P 8500 1750
F 0 "J4" H 8580 1742 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 8580 1651 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 8500 1750 50  0001 C CNN
F 3 "~" H 8500 1750 50  0001 C CNN
	1    8500 1750
	1    0    0    -1  
$EndComp
Text GLabel 8150 1750 0    50   Output ~ 0
CAN_L
Text GLabel 8150 1850 0    50   Output ~ 0
CAN_H
Wire Wire Line
	8150 1750 8300 1750
Wire Wire Line
	8150 1850 8300 1850
$Comp
L Connector:Conn_01x06_Male J6
U 1 1 5F6389BB
P 1100 1550
F 0 "J6" H 1206 1928 50  0000 C CNN
F 1 "Conn_01x06_Male" H 1206 1837 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 1100 1550 50  0001 C CNN
F 3 "~" H 1100 1550 50  0001 C CNN
	1    1100 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR028
U 1 1 5F638A3D
P 1900 1200
F 0 "#PWR028" H 1900 1050 50  0001 C CNN
F 1 "+3.3V" H 1915 1373 50  0000 C CNN
F 2 "" H 1900 1200 50  0001 C CNN
F 3 "" H 1900 1200 50  0001 C CNN
	1    1900 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 5F638A8D
P 1900 1850
F 0 "#PWR029" H 1900 1600 50  0001 C CNN
F 1 "GND" H 1905 1677 50  0000 C CNN
F 2 "" H 1900 1850 50  0001 C CNN
F 3 "" H 1900 1850 50  0001 C CNN
	1    1900 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 1350 1900 1350
Wire Wire Line
	1900 1350 1900 1200
Text GLabel 2100 1350 2    50   Input ~ 0
SW_VDDtarget
Text GLabel 2100 1450 2    50   Input ~ 0
SWCLK
Text GLabel 2100 1550 2    50   Input ~ 0
SW_GND
Text GLabel 2100 1650 2    50   Input ~ 0
SWDIO
Text GLabel 2100 1750 2    50   Input ~ 0
NRST
Wire Wire Line
	1900 1350 2100 1350
Connection ~ 1900 1350
Wire Wire Line
	1300 1450 2100 1450
Wire Wire Line
	1300 1550 1900 1550
Wire Wire Line
	1300 1650 2100 1650
Wire Wire Line
	1300 1750 2100 1750
Wire Wire Line
	1900 1850 1900 1550
Wire Wire Line
	1900 1550 2100 1550
Connection ~ 1900 1550
Text GLabel 4200 5600 2    50   Input ~ 0
CAN_RX
$Comp
L Device:Crystal Y1
U 1 1 5F627B74
P 1850 4550
F 0 "Y1" V 1800 4750 50  0000 R CNN
F 1 "Crystal 8 MHz" V 1900 5200 50  0000 R CNN
F 2 "Crystal:Crystal_SMD_HC49-SD" H 1850 4550 50  0001 C CNN
F 3 "~" H 1850 4550 50  0001 C CNN
	1    1850 4550
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C14
U 1 1 5F62C30F
P 1550 4350
F 0 "C14" V 1298 4350 50  0000 C CNN
F 1 "22pF" V 1389 4350 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 1588 4200 50  0001 C CNN
F 3 "~" H 1550 4350 50  0001 C CNN
	1    1550 4350
	0    1    1    0   
$EndComp
$Comp
L Device:C C15
U 1 1 5F62C39E
P 1550 4750
F 0 "C15" V 1800 4750 50  0000 C CNN
F 1 "22pF" V 1700 4750 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 1588 4600 50  0001 C CNN
F 3 "~" H 1550 4750 50  0001 C CNN
	1    1550 4750
	0    1    1    0   
$EndComp
Wire Wire Line
	1850 4350 1700 4350
Connection ~ 1850 4350
$Comp
L power:GND #PWR0103
U 1 1 5F630B02
P 1300 4350
F 0 "#PWR0103" H 1300 4100 50  0001 C CNN
F 1 "GND" V 1305 4222 50  0000 R CNN
F 2 "" H 1300 4350 50  0001 C CNN
F 3 "" H 1300 4350 50  0001 C CNN
	1    1300 4350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5F630B4D
P 1300 4750
F 0 "#PWR0104" H 1300 4500 50  0001 C CNN
F 1 "GND" V 1305 4622 50  0000 R CNN
F 2 "" H 1300 4750 50  0001 C CNN
F 3 "" H 1300 4750 50  0001 C CNN
	1    1300 4750
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 4350 1300 4350
Wire Wire Line
	1300 4750 1400 4750
Wire Wire Line
	1850 4350 1850 4400
Wire Wire Line
	1850 4700 1850 4750
Wire Wire Line
	1850 4750 2150 4750
Wire Wire Line
	2150 4450 2150 4750
Connection ~ 1850 4750
Wire Wire Line
	1700 4750 1850 4750
Text GLabel 4200 5900 2    50   Input ~ 0
SWCLK
Text GLabel 4200 5800 2    50   Input ~ 0
SWDIO
Text GLabel 4200 5400 2    50   Input ~ 0
USART_TX
Text GLabel 4200 5500 2    50   Input ~ 0
USART_RX
$Comp
L Device:R R9
U 1 1 5F6C5C5D
P 5400 5000
F 0 "R9" V 5300 4950 50  0000 C CNN
F 1 "R" V 5300 5050 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5330 5000 50  0001 C CNN
F 3 "~" H 5400 5000 50  0001 C CNN
	1    5400 5000
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 5F6C5CCA
P 5750 5100
F 0 "R10" V 5900 5200 50  0000 C CNN
F 1 "R" V 5900 5050 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5680 5100 50  0001 C CNN
F 3 "~" H 5750 5100 50  0001 C CNN
	1    5750 5100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R11
U 1 1 5F6CAAC3
P 6100 5200
F 0 "R11" V 6000 5250 50  0000 C CNN
F 1 "R" V 6000 5150 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6030 5200 50  0001 C CNN
F 3 "~" H 6100 5200 50  0001 C CNN
	1    6100 5200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4200 5000 4400 5000
Wire Wire Line
	4200 5100 4750 5100
Wire Wire Line
	4200 5200 5100 5200
$Comp
L Device:LED D10
U 1 1 5F6D263D
P 4550 5000
F 0 "D10" H 4650 5100 50  0000 C CNN
F 1 "LED" H 4500 5100 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 4550 5000 50  0001 C CNN
F 3 "~" H 4550 5000 50  0001 C CNN
	1    4550 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D11
U 1 1 5F6DCBCC
P 4900 5100
F 0 "D11" H 4950 4950 50  0000 C CNN
F 1 "LED" H 4800 4950 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 4900 5100 50  0001 C CNN
F 3 "~" H 4900 5100 50  0001 C CNN
	1    4900 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D12
U 1 1 5F6DCC1E
P 5250 5200
F 0 "D12" H 5350 5050 50  0000 C CNN
F 1 "LED" H 5200 5050 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 5250 5200 50  0001 C CNN
F 3 "~" H 5250 5200 50  0001 C CNN
	1    5250 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 5000 5250 5000
Wire Wire Line
	5050 5100 5600 5100
Wire Wire Line
	5400 5200 5950 5200
Wire Wire Line
	6500 5100 6400 5100
Wire Wire Line
	6400 5100 6400 5200
Wire Wire Line
	6400 5200 6250 5200
Connection ~ 6400 5100
Wire Wire Line
	6400 5100 5900 5100
Wire Wire Line
	6400 5100 6400 5000
Wire Wire Line
	6400 5000 5550 5000
$Comp
L power:+3.3V #PWR0105
U 1 1 5F63F605
P 6500 5100
F 0 "#PWR0105" H 6500 4950 50  0001 C CNN
F 1 "+3.3V" V 6515 5228 50  0000 L CNN
F 2 "" H 6500 5100 50  0001 C CNN
F 3 "" H 6500 5100 50  0001 C CNN
	1    6500 5100
	0    1    1    0   
$EndComp
$Comp
L power:+3.3VADC #PWR?
U 1 1 5F913C87
P 9650 5700
AR Path="/5F60F829/5F913C87" Ref="#PWR?"  Part="1" 
AR Path="/5F913C87" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 9800 5650 50  0001 C CNN
F 1 "+3.3VADC" H 9670 5843 50  0000 C CNN
F 2 "" H 9650 5700 50  0001 C CNN
F 3 "" H 9650 5700 50  0001 C CNN
	1    9650 5700
	-1   0    0    1   
$EndComp
Text GLabel 4300 4600 2    50   Input ~ 0
Ain0
Text GLabel 4300 4700 2    50   Input ~ 0
Ain1
$Comp
L Device:R R5
U 1 1 5F93365B
P 7700 3800
F 0 "R5" V 7600 3750 50  0000 C CNN
F 1 "300R" V 7600 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 7630 3800 50  0001 C CNN
F 3 "~" H 7700 3800 50  0001 C CNN
	1    7700 3800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 5F936463
P 7750 5000
F 0 "R6" V 7650 4950 50  0000 C CNN
F 1 "300R" V 7650 5050 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 7680 5000 50  0001 C CNN
F 3 "~" H 7750 5000 50  0001 C CNN
	1    7750 5000
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C13
U 1 1 5F93948F
P 7400 3950
F 0 "C13" V 7148 3950 50  0000 C CNN
F 1 "1uF" V 7239 3950 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 7438 3800 50  0001 C CNN
F 3 "~" H 7400 3950 50  0001 C CNN
	1    7400 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 4100 7400 4200
Wire Wire Line
	7550 3800 7400 3800
Wire Wire Line
	7600 5000 7450 5000
$Comp
L Device:D_Schottky D5
U 1 1 5F9623E2
P 9250 3750
F 0 "D5" V 9204 3829 50  0000 L CNN
F 1 "D_Schottky" V 9295 3829 50  0000 L CNN
F 2 "Diode_SMD:D_SMB" H 9250 3750 50  0001 C CNN
F 3 "~" H 9250 3750 50  0001 C CNN
	1    9250 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	7450 5300 7450 5400
$Comp
L Device:C C17
U 1 1 5F93C1B5
P 7450 5150
F 0 "C17" V 7198 5150 50  0000 C CNN
F 1 "1uF" V 7289 5150 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 7488 5000 50  0001 C CNN
F 3 "~" H 7450 5150 50  0001 C CNN
	1    7450 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D6
U 1 1 5F96B254
P 9250 4050
F 0 "D6" V 9204 4129 50  0000 L CNN
F 1 "D_Schottky" V 9295 4129 50  0000 L CNN
F 2 "Diode_SMD:D_SMB" H 9250 4050 50  0001 C CNN
F 3 "~" H 9250 4050 50  0001 C CNN
	1    9250 4050
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky D7
U 1 1 5F96E344
P 9250 4950
F 0 "D7" V 9204 5029 50  0000 L CNN
F 1 "D_Schottky" V 9295 5029 50  0000 L CNN
F 2 "Diode_SMD:D_SMB" H 9250 4950 50  0001 C CNN
F 3 "~" H 9250 4950 50  0001 C CNN
	1    9250 4950
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky D8
U 1 1 5F9715A1
P 9250 5250
F 0 "D8" V 9204 5329 50  0000 L CNN
F 1 "D_Schottky" V 9295 5329 50  0000 L CNN
F 2 "Diode_SMD:D_SMB" H 9250 5250 50  0001 C CNN
F 3 "~" H 9250 5250 50  0001 C CNN
	1    9250 5250
	0    1    1    0   
$EndComp
Wire Wire Line
	8450 5000 8350 5000
Wire Wire Line
	8400 3800 8350 3800
$Comp
L power:+3.3VADC #PWR?
U 1 1 5F98751E
P 9250 4800
AR Path="/5F60F829/5F98751E" Ref="#PWR?"  Part="1" 
AR Path="/5F98751E" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 9400 4750 50  0001 C CNN
F 1 "+3.3VADC" H 9270 4943 50  0000 C CNN
F 2 "" H 9250 4800 50  0001 C CNN
F 3 "" H 9250 4800 50  0001 C CNN
	1    9250 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5F98A83C
P 7450 5400
F 0 "#PWR024" H 7450 5150 50  0001 C CNN
F 1 "GND" H 7455 5227 50  0000 C CNN
F 2 "" H 7450 5400 50  0001 C CNN
F 3 "" H 7450 5400 50  0001 C CNN
	1    7450 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 5F98DAF2
P 9250 5400
F 0 "#PWR023" H 9250 5150 50  0001 C CNN
F 1 "GND" H 9255 5227 50  0000 C CNN
F 2 "" H 9250 5400 50  0001 C CNN
F 3 "" H 9250 5400 50  0001 C CNN
	1    9250 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5F990CEA
P 9250 4200
F 0 "#PWR017" H 9250 3950 50  0001 C CNN
F 1 "GND" H 9255 4027 50  0000 C CNN
F 2 "" H 9250 4200 50  0001 C CNN
F 3 "" H 9250 4200 50  0001 C CNN
	1    9250 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5F993EA3
P 7400 4200
F 0 "#PWR019" H 7400 3950 50  0001 C CNN
F 1 "GND" H 7405 4027 50  0000 C CNN
F 2 "" H 7400 4200 50  0001 C CNN
F 3 "" H 7400 4200 50  0001 C CNN
	1    7400 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 3800 7250 3800
Connection ~ 7400 3800
Wire Wire Line
	7450 5000 7300 5000
Connection ~ 7450 5000
Text GLabel 7250 3800 0    50   Input ~ 0
Ain0
Text GLabel 7300 5000 0    50   Input ~ 0
Ain1
$Sheet
S 9800 700  1150 650 
U 5F99E99E
F0 "Safety" 50
F1 "Safety.sch" 50
$EndSheet
Text GLabel 2800 5300 0    50   Input ~ 0
EN_RELAY
$Comp
L Amplifier_Operational:MCP6001-OT U7
U 1 1 5F8E8F97
P 8750 5000
F 0 "U7" H 9094 5046 50  0000 L CNN
F 1 "MCP6001-OT" H 9094 4955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 8650 4800 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 8750 5200 50  0001 C CNN
	1    8750 5000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R13
U 1 1 5F91FAB5
P 8600 4650
F 0 "R13" V 8500 4600 50  0000 C CNN
F 1 "300R" V 8500 4700 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 8530 4650 50  0001 C CNN
F 3 "~" H 8600 4650 50  0001 C CNN
	1    8600 4650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8750 4650 9100 4650
Wire Wire Line
	9100 4650 9100 4900
Wire Wire Line
	9100 4900 9050 4900
Wire Wire Line
	8350 4650 8350 5000
Wire Wire Line
	8350 4650 8450 4650
Connection ~ 8350 5000
Wire Wire Line
	9050 5100 9250 5100
Wire Wire Line
	8850 4700 8850 4600
$Comp
L power:+3.3VADC #PWR?
U 1 1 5F932645
P 8850 5300
AR Path="/5F60F829/5F932645" Ref="#PWR?"  Part="1" 
AR Path="/5F932645" Ref="#PWR037"  Part="1" 
F 0 "#PWR037" H 9000 5250 50  0001 C CNN
F 1 "+3.3VADC" H 8870 5443 50  0000 C CNN
F 2 "" H 8850 5300 50  0001 C CNN
F 3 "" H 8850 5300 50  0001 C CNN
	1    8850 5300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR036
U 1 1 5F93647F
P 8850 4600
F 0 "#PWR036" H 8850 4350 50  0001 C CNN
F 1 "GND" H 8855 4427 50  0000 C CNN
F 2 "" H 8850 4600 50  0001 C CNN
F 3 "" H 8850 4600 50  0001 C CNN
	1    8850 4600
	-1   0    0    1   
$EndComp
$Comp
L Amplifier_Operational:MCP6001-OT U6
U 1 1 5F93A7EF
P 8700 3800
F 0 "U6" H 9044 3846 50  0000 L CNN
F 1 "MCP6001-OT" H 9044 3755 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 8600 3600 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 8700 4000 50  0001 C CNN
	1    8700 3800
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR034
U 1 1 5F94A0F7
P 8800 3450
F 0 "#PWR034" H 8800 3200 50  0001 C CNN
F 1 "GND" H 8805 3277 50  0000 C CNN
F 2 "" H 8800 3450 50  0001 C CNN
F 3 "" H 8800 3450 50  0001 C CNN
	1    8800 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	9000 3700 9150 3700
Wire Wire Line
	9150 3700 9150 3250
Wire Wire Line
	8350 3800 8350 3250
Connection ~ 8350 3800
$Comp
L Device:R R12
U 1 1 5F95C14E
P 8550 3250
F 0 "R12" V 8450 3200 50  0000 C CNN
F 1 "300R" V 8450 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 8480 3250 50  0001 C CNN
F 3 "~" H 8550 3250 50  0001 C CNN
	1    8550 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8350 3250 8400 3250
Wire Wire Line
	8700 3250 9150 3250
Wire Wire Line
	8800 3450 8800 3500
$Comp
L power:+3.3VA #PWR?
U 1 1 5F9AD837
P 9250 3550
AR Path="/5F60F829/5F9AD837" Ref="#PWR?"  Part="1" 
AR Path="/5F9AD837" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 9250 3400 50  0001 C CNN
F 1 "+3.3VA" H 9265 3723 50  0000 C CNN
F 2 "" H 9250 3550 50  0001 C CNN
F 3 "" H 9250 3550 50  0001 C CNN
	1    9250 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 3550 9250 3600
$Comp
L power:+3.3VA #PWR?
U 1 1 5F9B9F68
P 8800 4100
AR Path="/5F60F829/5F9B9F68" Ref="#PWR?"  Part="1" 
AR Path="/5F9B9F68" Ref="#PWR035"  Part="1" 
F 0 "#PWR035" H 8800 3950 50  0001 C CNN
F 1 "+3.3VA" H 8815 4273 50  0000 C CNN
F 2 "" H 8800 4100 50  0001 C CNN
F 3 "" H 8800 4100 50  0001 C CNN
	1    8800 4100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R15
U 1 1 5F93F2D2
P 9650 5550
F 0 "R15" V 9550 5500 50  0000 C CNN
F 1 "0R" V 9550 5600 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 9580 5550 50  0001 C CNN
F 3 "~" H 9650 5550 50  0001 C CNN
	1    9650 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 4000 9450 4050
Wire Wire Line
	9450 5200 9450 5250
$Comp
L power:GND #PWR041
U 1 1 5F97D00E
P 9450 4350
F 0 "#PWR041" H 9450 4100 50  0001 C CNN
F 1 "GND" H 9455 4177 50  0000 C CNN
F 2 "" H 9450 4350 50  0001 C CNN
F 3 "" H 9450 4350 50  0001 C CNN
	1    9450 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR042
U 1 1 5F9815E0
P 9450 5550
F 0 "#PWR042" H 9450 5300 50  0001 C CNN
F 1 "GND" H 9455 5377 50  0000 C CNN
F 2 "" H 9450 5550 50  0001 C CNN
F 3 "" H 9450 5550 50  0001 C CNN
	1    9450 5550
	1    0    0    -1  
$EndComp
Connection ~ 9250 3900
Wire Wire Line
	9250 3900 9000 3900
Wire Wire Line
	7850 3800 8350 3800
Connection ~ 9250 5100
Wire Wire Line
	7900 5000 8350 5000
$Comp
L Device:R R16
U 1 1 5F99D7A7
P 9450 4200
F 0 "R16" V 9350 4150 50  0000 C CNN
F 1 "0R" V 9350 4250 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 9380 4200 50  0001 C CNN
F 3 "~" H 9450 4200 50  0001 C CNN
	1    9450 4200
	-1   0    0    1   
$EndComp
$Comp
L Device:R R17
U 1 1 5F9A1C68
P 9450 5400
F 0 "R17" V 9350 5350 50  0000 C CNN
F 1 "0R" V 9350 5450 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 9380 5400 50  0001 C CNN
F 3 "~" H 9450 5400 50  0001 C CNN
	1    9450 5400
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J1
U 1 1 5F955F3F
P 9900 4000
F 0 "J1" H 9980 4042 50  0000 L CNN
F 1 "Screw_Terminal_01x03" H 9980 3951 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 9900 4000 50  0001 C CNN
F 3 "~" H 9900 4000 50  0001 C CNN
	1    9900 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 5F93B068
P 9650 4350
F 0 "R14" V 9550 4300 50  0000 C CNN
F 1 "0R" V 9550 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 9580 4350 50  0001 C CNN
F 3 "~" H 9650 4350 50  0001 C CNN
	1    9650 4350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR?
U 1 1 5F9A58BD
P 9650 4500
AR Path="/5F60F829/5F9A58BD" Ref="#PWR?"  Part="1" 
AR Path="/5F9A58BD" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 9650 4350 50  0001 C CNN
F 1 "+3.3VA" H 9665 4673 50  0000 C CNN
F 2 "" H 9650 4500 50  0001 C CNN
F 3 "" H 9650 4500 50  0001 C CNN
	1    9650 4500
	-1   0    0    1   
$EndComp
Wire Wire Line
	9650 4200 9650 4100
Wire Wire Line
	9700 4100 9650 4100
Wire Wire Line
	9450 4000 9700 4000
Wire Wire Line
	9250 3900 9700 3900
$Comp
L Connector:Screw_Terminal_01x03 J2
U 1 1 5F967B4C
P 9900 5200
F 0 "J2" H 9980 5242 50  0000 L CNN
F 1 "Screw_Terminal_01x03" H 9980 5151 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 9900 5200 50  0001 C CNN
F 3 "~" H 9900 5200 50  0001 C CNN
	1    9900 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 5100 9700 5100
Wire Wire Line
	9450 5200 9700 5200
Wire Wire Line
	9700 5300 9650 5300
Wire Wire Line
	9650 5300 9650 5400
$Comp
L MCU_ST_STM32F1:STM32F103C8Tx U9
U 1 1 5F9F52F3
P 3600 4700
F 0 "U9" H 3550 3111 50  0000 C CNN
F 1 "STM32F103C8Tx" H 3550 3020 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 3000 3300 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00161566.pdf" H 3600 4700 50  0001 C CNN
	1    3600 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 5300 2800 5300
Wire Wire Line
	4200 4600 4300 4600
Wire Wire Line
	4300 4700 4200 4700
Wire Wire Line
	2600 4350 2600 3800
Wire Wire Line
	2600 3800 2900 3800
Wire Wire Line
	1850 4350 2600 4350
Wire Wire Line
	2900 3900 2750 3900
Wire Wire Line
	2750 3900 2750 4450
Wire Wire Line
	2150 4450 2750 4450
Text GLabel 4200 5700 2    50   Input ~ 0
CAN_TX
$Comp
L Device:C C5
U 1 1 5F621186
P 5050 3350
F 0 "C5" H 5165 3396 50  0000 L CNN
F 1 "100nF" H 5165 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 5088 3200 50  0001 C CNN
F 3 "~" H 5050 3350 50  0001 C CNN
	1    5050 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3200 3800 3200
$Comp
L power:GND #PWR05
U 1 1 5F62122A
P 5500 3150
F 0 "#PWR05" H 5500 2900 50  0001 C CNN
F 1 "GND" H 5505 2977 50  0000 C CNN
F 2 "" H 5500 3150 50  0001 C CNN
F 3 "" H 5500 3150 50  0001 C CNN
	1    5500 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5F622891
P 5050 3550
F 0 "#PWR03" H 5050 3300 50  0001 C CNN
F 1 "GND" H 5055 3377 50  0000 C CNN
F 2 "" H 5050 3550 50  0001 C CNN
F 3 "" H 5050 3550 50  0001 C CNN
	1    5050 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3500 5050 3550
$Comp
L Device:C C2
U 1 1 5F620A2C
P 4150 2900
F 0 "C2" H 4265 2946 50  0000 L CNN
F 1 "100nF" H 4265 2855 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 4188 2750 50  0001 C CNN
F 3 "~" H 4150 2900 50  0001 C CNN
	1    4150 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5F620A70
P 4600 2900
F 0 "C3" H 4715 2946 50  0000 L CNN
F 1 "100nF" H 4715 2855 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 4638 2750 50  0001 C CNN
F 3 "~" H 4600 2900 50  0001 C CNN
	1    4600 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5F620A90
P 5050 2900
F 0 "C4" H 5165 2946 50  0000 L CNN
F 1 "100nF" H 5165 2855 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 5088 2750 50  0001 C CNN
F 3 "~" H 5050 2900 50  0001 C CNN
	1    5050 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5F620AB8
P 5500 2900
F 0 "C6" H 5615 2946 50  0000 L CNN
F 1 "100nF" H 5615 2855 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 5538 2750 50  0001 C CNN
F 3 "~" H 5500 2900 50  0001 C CNN
	1    5500 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 5F6210B6
P 3800 2900
F 0 "L1" H 3853 2946 50  0000 L CNN
F 1 "L" H 3853 2855 50  0000 L CNN
F 2 "Inductor_SMD:L_0805_2012Metric" H 3800 2900 50  0001 C CNN
F 3 "~" H 3800 2900 50  0001 C CNN
	1    3800 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3200 3800 3050
Wire Wire Line
	5500 3050 5500 3100
Wire Wire Line
	5500 3100 5050 3100
Wire Wire Line
	4150 3100 4150 3050
Connection ~ 5500 3100
Wire Wire Line
	5500 3100 5500 3150
Wire Wire Line
	4600 3050 4600 3100
Connection ~ 4600 3100
Wire Wire Line
	4600 3100 4150 3100
Wire Wire Line
	5050 3050 5050 3100
Connection ~ 5050 3100
Wire Wire Line
	5050 3100 4600 3100
$Comp
L power:+3.3V #PWR04
U 1 1 5F621321
P 5500 2650
F 0 "#PWR04" H 5500 2500 50  0001 C CNN
F 1 "+3.3V" H 5515 2823 50  0000 C CNN
F 2 "" H 5500 2650 50  0001 C CNN
F 3 "" H 5500 2650 50  0001 C CNN
	1    5500 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2650 5500 2700
Wire Wire Line
	5500 2700 5050 2700
Wire Wire Line
	5050 2700 5050 2750
Connection ~ 5500 2700
Wire Wire Line
	5500 2700 5500 2750
Wire Wire Line
	5050 2700 4600 2700
Wire Wire Line
	4600 2700 4600 2750
Connection ~ 5050 2700
Wire Wire Line
	4600 2700 4150 2700
Wire Wire Line
	4150 2700 4150 2750
Connection ~ 4600 2700
Wire Wire Line
	4150 2700 3800 2700
Wire Wire Line
	3800 2700 3800 2750
Wire Wire Line
	3800 2700 3700 2700
Wire Wire Line
	3700 2700 3700 3200
Connection ~ 3800 2700
Wire Wire Line
	3700 2700 3600 2700
Wire Wire Line
	3600 2700 3600 3200
Connection ~ 3700 2700
Wire Wire Line
	3600 2700 3500 2700
Wire Wire Line
	3500 2700 3500 3200
Connection ~ 3600 2700
Wire Wire Line
	3500 2700 3400 2700
Wire Wire Line
	3400 2700 3400 3200
Connection ~ 3500 2700
Connection ~ 4150 2700
Connection ~ 3800 3200
$Comp
L Mechanical:MountingHole H1
U 1 1 5FA3FBC3
P 4250 2150
F 0 "H1" H 4350 2196 50  0000 L CNN
F 1 "MountingHole" H 4350 2105 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4250 2150 50  0001 C CNN
F 3 "~" H 4250 2150 50  0001 C CNN
	1    4250 2150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5FA40CCD
P 4600 2150
F 0 "H2" H 4700 2196 50  0000 L CNN
F 1 "MountingHole" H 4700 2105 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4600 2150 50  0001 C CNN
F 3 "~" H 4600 2150 50  0001 C CNN
	1    4600 2150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5FA4517F
P 5000 2150
F 0 "H3" H 5100 2196 50  0000 L CNN
F 1 "MountingHole" H 5100 2105 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5000 2150 50  0001 C CNN
F 3 "~" H 5000 2150 50  0001 C CNN
	1    5000 2150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5FA49643
P 5500 2150
F 0 "H4" H 5600 2196 50  0000 L CNN
F 1 "MountingHole" H 5600 2105 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5500 2150 50  0001 C CNN
F 3 "~" H 5500 2150 50  0001 C CNN
	1    5500 2150
	1    0    0    -1  
$EndComp
$EndSCHEMATC
