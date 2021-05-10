EESchema Schematic File Version 4
LIBS:APPS-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 4730 2820 2    50   Input ~ 0
3V3_SYS
Text GLabel 1630 3420 0    50   Input ~ 0
BT_TX
Text GLabel 1630 3220 0    50   Input ~ 0
BT_RX
$Comp
L power:GND #PWR035
U 1 1 60695AD2
P 4730 4120
F 0 "#PWR035" H 4730 3870 50  0001 C CNN
F 1 "GND" V 4735 3992 50  0000 R CNN
F 2 "" H 4730 4120 50  0001 C CNN
F 3 "" H 4730 4120 50  0001 C CNN
	1    4730 4120
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR033
U 1 1 60698570
P 4730 3220
F 0 "#PWR033" H 4730 2970 50  0001 C CNN
F 1 "GND" V 4735 3092 50  0000 R CNN
F 2 "" H 4730 3220 50  0001 C CNN
F 3 "" H 4730 3220 50  0001 C CNN
	1    4730 3220
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3730 3820 3730 3220
Wire Wire Line
	3730 4120 4030 4120
Wire Wire Line
	4230 4120 4730 4120
$Comp
L Switch:SW_Push SW3
U 1 1 606A9130
P 4130 4720
F 0 "SW3" H 4130 4913 50  0000 C CNN
F 1 "SW_Push" H 4130 4913 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 4130 4920 50  0001 C CNN
F 3 "~" H 4130 4920 50  0001 C CNN
	1    4130 4720
	1    0    0    -1  
$EndComp
Connection ~ 3730 4120
Text GLabel 6630 3070 2    50   Input ~ 0
BT_RX
Text GLabel 6630 3170 2    50   Input ~ 0
BT_TX
Text GLabel 6630 3470 2    50   Input ~ 0
BT_KEY
$Comp
L Device:R_Small R20
U 1 1 606A6D1F
P 4130 3620
F 0 "R20" V 3934 3620 50  0000 C CNN
F 1 "470R" V 4025 3620 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 4130 3620 50  0001 C CNN
F 3 "~" H 4130 3620 50  0001 C CNN
	1    4130 3620
	0    1    1    0   
$EndComp
Wire Wire Line
	3830 3920 3830 3620
Wire Wire Line
	3730 4120 3730 4420
Wire Wire Line
	3830 3620 4030 3620
Wire Wire Line
	4580 3220 4730 3220
$Comp
L Device:LED_Small D13
U 1 1 606928DE
P 4480 3220
F 0 "D13" H 4480 3455 50  0000 C CNN
F 1 "LED" H 4480 3364 50  0000 C CNN
F 2 "Diode_SMD:D_0805_2012Metric" V 4480 3220 50  0001 C CNN
F 3 "~" V 4480 3220 50  0001 C CNN
	1    4480 3220
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3730 3220 4030 3220
Wire Wire Line
	4230 3220 4380 3220
$Comp
L Device:R_Small R19
U 1 1 606979FB
P 4130 3220
F 0 "R19" V 3934 3220 50  0000 C CNN
F 1 "470R" V 4025 3220 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 4130 3220 50  0001 C CNN
F 3 "~" H 4130 3220 50  0001 C CNN
	1    4130 3220
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R22
U 1 1 606C2F02
P 4130 4420
F 0 "R22" V 3934 4420 50  0000 C CNN
F 1 "470R" V 4025 4420 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 4130 4420 50  0001 C CNN
F 3 "~" H 4130 4420 50  0001 C CNN
	1    4130 4420
	0    1    1    0   
$EndComp
Wire Wire Line
	3730 4720 3930 4720
Wire Wire Line
	4030 4420 3730 4420
Connection ~ 3730 4420
Wire Wire Line
	3730 4420 3730 4720
Text GLabel 4780 4420 2    50   Input ~ 0
BT_KEY
Wire Wire Line
	4230 4420 4780 4420
Wire Wire Line
	6280 3470 6630 3470
Wire Wire Line
	4330 4720 4780 4720
Wire Wire Line
	4230 3620 4780 3620
Wire Wire Line
	3530 4920 3530 5020
Text GLabel 4780 3620 2    50   Input ~ 0
BT_LED
$Comp
L power:GND #PWR034
U 1 1 606BEA53
P 6630 3270
F 0 "#PWR034" H 6630 3020 50  0001 C CNN
F 1 "GND" V 6630 3130 50  0000 R CNN
F 2 "" H 6630 3270 50  0001 C CNN
F 3 "" H 6630 3270 50  0001 C CNN
	1    6630 3270
	0    -1   -1   0   
$EndComp
Text GLabel 6630 2970 2    50   Input ~ 0
BT_LED
Wire Wire Line
	6280 3270 6630 3270
Wire Wire Line
	6280 3070 6630 3070
Wire Wire Line
	6280 3170 6630 3170
Wire Wire Line
	6280 3370 6630 3370
Wire Wire Line
	6280 2970 6630 2970
Text GLabel 4780 4720 2    50   Input ~ 0
3V3_SYS
Text GLabel 6630 3370 2    50   Input ~ 0
3V3_SYS
$Comp
L Device:R_Small R21
U 1 1 606935CB
P 4130 4120
F 0 "R21" V 3934 4120 50  0000 C CNN
F 1 "10K" V 4025 4120 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 4130 4120 50  0001 C CNN
F 3 "~" H 4130 4120 50  0001 C CNN
	1    4130 4120
	0    1    1    0   
$EndComp
Wire Wire Line
	3430 4120 3730 4120
NoConn ~ 3430 4020
Wire Wire Line
	3430 3920 3830 3920
Wire Wire Line
	3430 3820 3730 3820
NoConn ~ 3430 3720
NoConn ~ 3430 3620
NoConn ~ 3430 3520
NoConn ~ 3430 3420
NoConn ~ 3430 3320
NoConn ~ 3430 3220
NoConn ~ 3430 3120
NoConn ~ 3430 3020
NoConn ~ 1830 4620
NoConn ~ 1830 4220
NoConn ~ 1830 4320
NoConn ~ 1830 4020
NoConn ~ 1830 4120
NoConn ~ 1830 4520
Wire Wire Line
	3430 4920 3530 4920
Wire Wire Line
	3430 2820 3830 2820
NoConn ~ 1830 3020
NoConn ~ 3430 4420
NoConn ~ 3430 4320
NoConn ~ 3430 4620
NoConn ~ 1830 3720
NoConn ~ 1830 3820
NoConn ~ 3430 4720
NoConn ~ 1830 3520
NoConn ~ 1830 3320
Wire Wire Line
	1830 3220 1630 3220
Wire Wire Line
	1830 3420 1630 3420
$Comp
L APPS-rescue:HC-05-HC-05 U?
U 1 1 606861B7
P 2630 3920
AR Path="/606861B7" Ref="U?"  Part="1" 
AR Path="/6077B1B1/606861B7" Ref="U9"  Part="1" 
F 0 "U9" H 2630 5287 50  0001 C CNN
F 1 "HC-05" H 2630 5196 50  0000 C CNN
F 2 "HC05:XCVR_HC-05" H 2630 3920 50  0001 L BNN
F 3 "" H 2630 3920 50  0001 L BNN
F 4 "HuiCheng" H 2630 3920 50  0001 L BNN "MF"
F 5 "v1.0" H 2630 3920 50  0001 L BNN "PARTREV"
F 6 "Manufacturer Recommendations" H 2630 3920 50  0001 L BNN "STANDARD"
	1    2630 3920
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR036
U 1 1 6069173C
P 3530 5020
F 0 "#PWR036" H 3530 4770 50  0001 C CNN
F 1 "GND" H 3535 4892 50  0000 R CNN
F 2 "" H 3530 5020 50  0001 C CNN
F 3 "" H 3530 5020 50  0001 C CNN
	1    3530 5020
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Male J4
U 1 1 606C60BE
P 6080 3170
F 0 "J4" H 6480 3710 50  0000 C CNN
F 1 "Conn_01x06_Male" H 6490 3570 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 6080 3170 50  0001 C CNN
F 3 "~" H 6080 3170 50  0001 C CNN
	1    6080 3170
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x01 SW2
U 1 1 606B9FF4
P 4130 2820
F 0 "SW2" H 4130 3087 50  0000 C CNN
F 1 "SW_DIP_x01" H 4130 2996 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_DIP_SPSTx01_Slide_6.7x4.1mm_W6.73mm_P2.54mm_LowProfile_JPin" H 4130 2820 50  0001 C CNN
F 3 "~" H 4130 2820 50  0001 C CNN
	1    4130 2820
	1    0    0    -1  
$EndComp
Wire Wire Line
	4430 2820 4730 2820
$EndSCHEMATC
