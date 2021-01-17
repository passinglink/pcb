EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Connector:Conn_01x05_Female J1
U 1 1 5D6274B9
P 1750 900
F 0 "J1" H 1778 926 50  0000 L CNN
F 1 "Conn_01x05_Female" H 1778 835 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B5B-XH-A_1x05_P2.50mm_Vertical" H 1750 900 50  0001 C CNN
F 3 "~" H 1750 900 50  0001 C CNN
	1    1750 900 
	1    0    0    -1  
$EndComp
Text GLabel 1550 700  0    50   Input ~ 0
USB_VBUS
Text GLabel 1550 900  0    50   Input ~ 0
USB_D+
Text GLabel 1550 800  0    50   Input ~ 0
USB_D-
$Comp
L power:GND #PWR0123
U 1 1 5D630FE6
P 1350 1050
F 0 "#PWR0123" H 1350 800 50  0001 C CNN
F 1 "GND" H 1355 877 50  0001 C CNN
F 2 "" H 1350 1050 50  0001 C CNN
F 3 "" H 1350 1050 50  0001 C CNN
	1    1350 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 1000 1350 1000
Wire Wire Line
	1350 1000 1350 1050
$Comp
L Connector_Generic:Conn_01x05 J5
U 1 1 5D781F2A
P 850 5400
F 0 "J5" H 850 5100 50  0000 C CNN
F 1 "Conn_01x05" H 768 5726 50  0001 C CNN
F 2 "Connector_JST:JST_XH_B5B-XH-A_1x05_P2.50mm_Vertical" H 850 5400 50  0001 C CNN
F 3 "~" H 850 5400 50  0001 C CNN
	1    850  5400
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 5D7844C7
P 9900 4750
F 0 "J2" H 9900 4950 50  0000 C CNN
F 1 "Conn_01x04" H 9818 4976 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 9900 4750 50  0001 C CNN
F 3 "~" H 9900 4750 50  0001 C CNN
	1    9900 4750
	-1   0    0    -1  
$EndComp
Text Label 1050 5200 0    50   ~ 0
STICK_DOWN
Text Label 1050 5300 0    50   ~ 0
STICK_UP
Text Label 1050 5400 0    50   ~ 0
STICK_LEFT
Text Label 1050 5500 0    50   ~ 0
STICK_RIGHT
Text Label 3400 5550 0    50   ~ 0
BUTTON_TOUCHPAD
Text Label 3400 5650 0    50   ~ 0
BUTTON_L3
Text Label 3400 5850 0    50   ~ 0
MODE_RS
Text Label 3400 5950 0    50   ~ 0
MODE_LS
Text Label 3400 6050 0    50   ~ 0
MODE_LOCK
Text Label 3400 6150 0    50   ~ 0
BUTTON_PS4
Text Label 2900 5650 2    50   ~ 0
BUTTON_R3
Text Label 2900 5850 2    50   ~ 0
MODE_PS3
$Comp
L Connector_Generic:Conn_01x05 J4
U 1 1 5D821944
P 850 4500
F 0 "J4" H 850 4800 50  0000 C CNN
F 1 "Conn_01x05" H 768 4826 50  0001 C CNN
F 2 "Connector_JST:JST_XH_B5B-XH-A_1x05_P2.50mm_Vertical" H 850 4500 50  0001 C CNN
F 3 "~" H 850 4500 50  0001 C CNN
	1    850  4500
	-1   0    0    -1  
$EndComp
Text Label 2500 4350 2    50   ~ 0
BUTTON_L1
Text Label 2500 4450 2    50   ~ 0
BUTTON_R1
Text Label 2500 4550 2    50   ~ 0
BUTTON_TRIANGLE
Text Label 2500 4650 2    50   ~ 0
BUTTON_SQUARE
Text Label 2500 4750 2    50   ~ 0
BUTTON_CROSS
Text Label 2500 4850 2    50   ~ 0
BUTTON_CIRCLE
Text Label 2500 4950 2    50   ~ 0
BUTTON_R2
Text Label 2500 5050 2    50   ~ 0
BUTTON_L2
$Comp
L power:GND #PWR04
U 1 1 5D85535B
P 3150 5100
F 0 "#PWR04" H 3150 4850 50  0001 C CNN
F 1 "GND" H 3155 4927 50  0001 C CNN
F 2 "" H 3150 5100 50  0001 C CNN
F 3 "" H 3150 5100 50  0001 C CNN
	1    3150 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4350 3150 4350
Wire Wire Line
	3000 5050 3150 5050
Connection ~ 3150 5050
Wire Wire Line
	3150 5050 3150 5100
Wire Wire Line
	3150 4350 3150 4450
Wire Wire Line
	3000 4850 3150 4850
Connection ~ 3150 4850
Wire Wire Line
	3150 4850 3150 4950
Wire Wire Line
	3000 4950 3150 4950
Connection ~ 3150 4950
Wire Wire Line
	3150 4950 3150 5050
Wire Wire Line
	3000 4750 3150 4750
Connection ~ 3150 4750
Wire Wire Line
	3150 4750 3150 4850
Wire Wire Line
	3000 4650 3150 4650
Connection ~ 3150 4650
Wire Wire Line
	3150 4650 3150 4750
Wire Wire Line
	3000 4550 3150 4550
Connection ~ 3150 4550
Wire Wire Line
	3150 4550 3150 4650
Wire Wire Line
	3000 4450 3150 4450
Connection ~ 3150 4450
Wire Wire Line
	3150 4450 3150 4550
$Comp
L Connector_Generic:Conn_01x03 J9
U 1 1 5D8CE122
P 8600 4750
F 0 "J9" H 8600 4950 50  0000 C CNN
F 1 "Conn_01x03" H 8518 4976 50  0001 C CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 8600 4750 50  0001 C CNN
F 3 "~" H 8600 4750 50  0001 C CNN
	1    8600 4750
	-1   0    0    -1  
$EndComp
Text Label 8800 4650 0    50   ~ 0
UART_TX
Text Label 8800 4750 0    50   ~ 0
UART_RX
$Comp
L power:GND #PWR07
U 1 1 5D8EE5D7
P 4850 7000
F 0 "#PWR07" H 4850 6750 50  0001 C CNN
F 1 "GND" H 4855 6827 50  0001 C CNN
F 2 "" H 4850 7000 50  0001 C CNN
F 3 "" H 4850 7000 50  0001 C CNN
	1    4850 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 6900 4850 7000
Wire Wire Line
	4700 6900 4850 6900
Text Label 3400 5750 0    50   ~ 0
GND
Text Label 2900 5550 2    50   ~ 0
GND
Text Label 1050 5600 0    50   ~ 0
GND
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J6
U 1 1 5D95F04E
P 2700 4650
F 0 "J6" H 2800 5050 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 2750 5076 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 2700 4650 50  0001 C CNN
F 3 "~" H 2700 4650 50  0001 C CNN
	1    2700 4650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J7
U 1 1 5D9627BB
P 3100 5850
F 0 "J7" H 3150 6250 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 3150 6276 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 3100 5850 50  0001 C CNN
F 3 "~" H 3100 5850 50  0001 C CNN
	1    3100 5850
	1    0    0    -1  
$EndComp
Text Label 4900 6800 0    50   ~ 0
LED_FRONT_K
$Comp
L Connector_Generic:Conn_01x03 J8
U 1 1 5D8E3661
P 4500 6800
F 0 "J8" H 4500 7000 50  0000 C CNN
F 1 "Conn_01x03" H 4500 7050 50  0001 C CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 4500 6800 50  0001 C CNN
F 3 "~" H 4500 6800 50  0001 C CNN
	1    4500 6800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3300 6950 3300 7050
Connection ~ 3300 7050
Wire Wire Line
	3300 7050 3300 7200
$Comp
L power:GND #PWR0142
U 1 1 5D99F95B
P 3300 7200
F 0 "#PWR0142" H 3300 6950 50  0001 C CNN
F 1 "GND" H 3305 7027 50  0001 C CNN
F 2 "" H 3300 7200 50  0001 C CNN
F 3 "" H 3300 7200 50  0001 C CNN
	1    3300 7200
	1    0    0    -1  
$EndComp
Text Label 2700 7150 0    50   ~ 0
BUTTON_START
Text Label 2700 6850 0    50   ~ 0
BUTTON_SELECT
$Comp
L Connector_Generic:Conn_01x04 J12
U 1 1 5D965FCE
P 2500 7050
F 0 "J12" H 2500 6750 50  0000 C CNN
F 1 "Conn_01x04" H 2418 7276 50  0001 C CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 2500 7050 50  0001 C CNN
F 3 "~" H 2500 7050 50  0001 C CNN
	1    2500 7050
	-1   0    0    1   
$EndComp
Wire Wire Line
	2700 6950 3300 6950
Wire Wire Line
	2700 7050 3300 7050
$Comp
L power:+3V3 #PWR0108
U 1 1 5E649C46
P 4850 6650
F 0 "#PWR0108" H 4850 6500 50  0001 C CNN
F 1 "+3V3" H 4865 6823 50  0000 C CNN
F 2 "" H 4850 6650 50  0001 C CNN
F 3 "" H 4850 6650 50  0001 C CNN
	1    4850 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 6700 4850 6650
Wire Wire Line
	4700 6700 4850 6700
Wire Wire Line
	4700 6800 4900 6800
Text Label 3400 6250 0    50   ~ 0
+3V3
Text Label 1050 4300 0    50   ~ 0
GND
Text Label 1050 4700 0    50   ~ 0
GND
Text Label 1050 4400 0    50   ~ 0
TP_SCL
Text Label 1050 4500 0    50   ~ 0
TP_SDA
Text Label 1050 4600 0    50   ~ 0
TP_RST
Text Label 2900 6250 2    50   ~ 0
LED_P1_K
Text Label 2900 6150 2    50   ~ 0
LED_P2_K
Text Label 2900 6050 2    50   ~ 0
LED_P3_K
Text Label 2900 5950 2    50   ~ 0
LED_P4_K
$Comp
L passinglink:PassingLink_NGFF-E J10
U 1 1 60109677
P 5850 3350
F 0 "J10" H 5850 5375 50  0000 C CNN
F 1 "PassingLink_NGFF-E" H 5850 5284 50  0000 C CNN
F 2 "passinglink:PassingLink_Module" H 5850 1250 50  0001 C CNN
F 3 "~" H 5300 3350 50  0001 C CNN
	1    5850 3350
	1    0    0    -1  
$EndComp
Text Label 6600 1550 0    50   ~ 0
USB_VBUS
Text Label 6600 1650 0    50   ~ 0
USB_VBUS
Text Label 5100 1550 2    50   ~ 0
GND
Text Label 5100 1650 2    50   ~ 0
USB_D+
Text Label 5100 1750 2    50   ~ 0
USB_D-
Text Label 5100 1850 2    50   ~ 0
GND
Text Label 6600 1750 0    50   ~ 0
+3V3
Text Label 6600 2450 0    50   ~ 0
UART_TX
Text Label 6600 2550 0    50   ~ 0
UART_RX
Text Label 10100 4950 0    50   ~ 0
+3V3
Text Label 10100 4850 0    50   ~ 0
SWCLK
Text Label 10100 4650 0    50   ~ 0
SWDIO
Text Label 10100 4750 0    50   ~ 0
GND
Text Label 8800 4850 0    50   ~ 0
GND
Text Label 5100 3950 2    50   ~ 0
BUTTON_L1
Text Label 5100 4050 2    50   ~ 0
BUTTON_R1
Text Label 5100 4150 2    50   ~ 0
BUTTON_TRIANGLE
Text Label 5100 4250 2    50   ~ 0
BUTTON_SQUARE
Text Label 5100 4350 2    50   ~ 0
BUTTON_CROSS
Text Label 5100 4450 2    50   ~ 0
BUTTON_CIRCLE
Text Label 5100 4550 2    50   ~ 0
BUTTON_R2
Text Label 5100 4650 2    50   ~ 0
BUTTON_L2
Text Label 5100 4750 2    50   ~ 0
BUTTON_SELECT
Text Label 5100 4850 2    50   ~ 0
BUTTON_START
Text Label 6600 3750 0    50   ~ 0
LED_P1_K
Text Label 6600 3850 0    50   ~ 0
LED_P2_K
Text Label 6600 3950 0    50   ~ 0
LED_P3_K
Text Label 6600 3050 0    50   ~ 0
LED_FRONT_K
Text Label 6600 4050 0    50   ~ 0
LED_P4_K
Text Label 5100 2250 2    50   ~ 0
STICK_DOWN
Text Label 5100 2150 2    50   ~ 0
STICK_UP
Text Label 5100 2050 2    50   ~ 0
STICK_LEFT
Text Label 5100 1950 2    50   ~ 0
STICK_RIGHT
Text Label 6600 2050 0    50   ~ 0
TP_SCL
Text Label 6600 2150 0    50   ~ 0
TP_SDA
Text Label 6600 2250 0    50   ~ 0
TP_RST
Text Label 6600 1850 0    50   ~ 0
SWDIO
Text Label 6600 1950 0    50   ~ 0
SWCLK
Text Label 5100 3550 2    50   ~ 0
MODE_RS
Text Label 5100 3450 2    50   ~ 0
MODE_LS
Text Label 5100 3250 2    50   ~ 0
MODE_LOCK
Text Label 5100 3150 2    50   ~ 0
BUTTON_PS4
Text Label 5100 3750 2    50   ~ 0
BUTTON_R3
Text Label 5100 3350 2    50   ~ 0
MODE_PS3
Text Label 5100 3850 2    50   ~ 0
BUTTON_TOUCHPAD
Text Label 5100 3650 2    50   ~ 0
BUTTON_L3
$EndSCHEMATC
