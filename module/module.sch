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
L power:+3V3 #PWR0101
U 1 1 5E60FA57
P 10250 1350
F 0 "#PWR0101" H 10250 1200 50  0001 C CNN
F 1 "+3V3" H 10265 1523 50  0000 C CNN
F 2 "" H 10250 1350 50  0001 C CNN
F 3 "" H 10250 1350 50  0001 C CNN
	1    10250 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 1400 10250 1350
$Comp
L Device:C C1
U 1 1 5E613AFC
P 10000 1550
F 0 "C1" H 10115 1596 50  0000 L CNN
F 1 "1uF" H 10115 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10038 1400 50  0001 C CNN
F 3 "~" H 10000 1550 50  0001 C CNN
	1    10000 1550
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:MIC5219-3.3YM5 U2
U 1 1 5E60D276
P 9550 1500
F 0 "U2" H 9550 1842 50  0000 C CNN
F 1 "MIC5219-3.3YM5" H 9550 1751 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 9550 1825 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/MIC5219-500mA-Peak-Output-LDO-Regulator-DS20006021A.pdf" H 9550 1500 50  0001 C CNN
	1    9550 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 1400 10000 1400
Wire Wire Line
	10000 1400 10250 1400
Connection ~ 10000 1400
$Comp
L power:GND #PWR0106
U 1 1 5E61ABA4
P 10000 1700
F 0 "#PWR0106" H 10000 1450 50  0001 C CNN
F 1 "GND" H 10005 1527 50  0000 C CNN
F 2 "" H 10000 1700 50  0001 C CNN
F 3 "" H 10000 1700 50  0001 C CNN
	1    10000 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5E61B56F
P 9550 1800
F 0 "#PWR0107" H 9550 1550 50  0001 C CNN
F 1 "GND" H 9555 1627 50  0000 C CNN
F 2 "" H 9550 1800 50  0001 C CNN
F 3 "" H 9550 1800 50  0001 C CNN
	1    9550 1800
	1    0    0    -1  
$EndComp
Text GLabel 9150 1400 0    50   Input ~ 0
USB_VBUS
Wire Wire Line
	9250 1400 9200 1400
Wire Wire Line
	9250 1500 9200 1500
Wire Wire Line
	9200 1500 9200 1400
Wire Wire Line
	9150 1400 9200 1400
Connection ~ 9200 1400
Text Label 7300 3500 3    50   ~ 0
GND
Text Label 7850 2600 0    50   ~ 0
GND
Text Label 6550 1200 1    50   ~ 0
GND
Text Label 6700 1200 1    50   ~ 0
+3V3
Text Label 2850 1450 0    50   ~ 0
USB_VBUS
Text Label 2850 1550 0    50   ~ 0
USB_VBUS
Text Label 1350 1450 2    50   ~ 0
GND
Text Label 1350 1750 2    50   ~ 0
GND
Text Label 2850 1750 0    50   ~ 0
SWDIO
Text Label 2850 1950 0    50   ~ 0
I2C0_SCL
Text Label 2850 2050 0    50   ~ 0
I2C0_SDA
Text Label 2850 2350 0    50   ~ 0
UART_TX
Text Label 2850 2450 0    50   ~ 0
UART_RX
Text Label 1350 1850 2    50   ~ 0
A0
Text Label 1350 1950 2    50   ~ 0
A1
Text Label 1350 2050 2    50   ~ 0
A2
Text Label 1350 2150 2    50   ~ 0
A3
Text Label 1350 2250 2    50   ~ 0
A4
Text Label 1350 2350 2    50   ~ 0
A5
Text Label 1350 2450 2    50   ~ 0
A6
Text Label 1350 2550 2    50   ~ 0
A7
Text Label 2850 1650 0    50   ~ 0
+3V3
Text Label 7850 1850 0    50   ~ 0
A5
Text Label 7850 2000 0    50   ~ 0
A4
Text Label 7850 2150 0    50   ~ 0
A3
Text Label 7850 2750 0    50   ~ 0
A1
Text Label 7850 2900 0    50   ~ 0
A0
Text Label 6850 3500 3    50   ~ 0
A7
Text Label 7000 1200 1    50   ~ 0
A6
$Comp
L PassingLink:PassingLink_NGFF-E J1
U 1 1 6005C643
P 2100 3250
F 0 "J1" H 2100 5275 50  0000 C CNN
F 1 "PassingLink_NGFF-E" H 2100 5184 50  0000 C CNN
F 2 "kicad-ngff:NGFF_E" H 1550 3250 50  0001 C CNN
F 3 "~" H 1550 3250 50  0001 C CNN
	1    2100 3250
	1    0    0    -1  
$EndComp
Text Label 4450 1850 2    50   ~ 0
UART_TX
Text Label 6250 3500 3    50   ~ 0
UART_RX
Text Label 4450 2000 2    50   ~ 0
USB_VBUS
Text Label 4450 2150 2    50   ~ 0
USB_D-
Text Label 4450 2300 2    50   ~ 0
USB_D+
Text Label 4450 2750 2    50   ~ 0
SWDIO
Text Label 4450 2900 2    50   ~ 0
SWDCLK
Text Label 2850 1850 0    50   ~ 0
SWDCLK
Text Label 7850 2300 0    50   ~ 0
A2
$Comp
L E73-2G4M08S1C:E73-2G4M08S1C U1
U 1 1 5E5E24EF
P 6150 2350
F 0 "U1" H 6150 2400 50  0000 C CNN
F 1 "E73-2G4M08S1C" H 6150 2300 50  0000 C CNN
F 2 "E73-2G4M08S1C:E73-2G4M08S1C" H 6050 2350 50  0001 C CNN
F 3 "http://www.ebyte.com/en/downpdf.aspx?id=445" H 6050 2350 50  0001 C CNN
	1    6150 2350
	1    0    0    -1  
$EndComp
Text Label 1350 3050 2    50   ~ 0
D0
Text Label 1350 3250 2    50   ~ 0
D2
Text Label 1350 3450 2    50   ~ 0
D4
Text Label 1350 3650 2    50   ~ 0
D6
Text Label 1350 3850 2    50   ~ 0
D8
Text Label 1350 4050 2    50   ~ 0
D10
Text Label 1350 4250 2    50   ~ 0
D12
Text Label 1350 4450 2    50   ~ 0
D14
Text Label 2850 4150 0    50   ~ 0
AUX0
Text Label 2850 3550 0    50   ~ 0
AUX2
Text Label 2850 3350 0    50   ~ 0
AUX4
Text Label 2850 3150 0    50   ~ 0
AUX6
Text Label 2850 3650 0    50   ~ 0
AUX8
Text Label 2850 3850 0    50   ~ 0
AUX10
Text Label 2850 2950 0    50   ~ 0
AUX12
Text Label 1350 3350 2    50   ~ 0
D3
Text Label 1350 3550 2    50   ~ 0
D5
Text Label 1350 3750 2    50   ~ 0
D7
Text Label 1350 3950 2    50   ~ 0
D9
Text Label 1350 4150 2    50   ~ 0
D11
Text Label 1350 4350 2    50   ~ 0
D13
Text Label 1350 4550 2    50   ~ 0
D15
Text Label 2850 4050 0    50   ~ 0
AUX1
Text Label 2850 3450 0    50   ~ 0
AUX3
Text Label 2850 3250 0    50   ~ 0
AUX5
Text Label 2850 3050 0    50   ~ 0
AUX7
Text Label 2850 3750 0    50   ~ 0
AUX9
Text Label 2850 3950 0    50   ~ 0
AUX11
Text Label 1350 3150 2    50   ~ 0
D1
Text Label 1350 1650 2    50   ~ 0
USB_D-
Text Label 1350 1550 2    50   ~ 0
USB_D+
$Comp
L power:+3V3 #PWR0105
U 1 1 601A3379
P 5100 4100
F 0 "#PWR0105" H 5100 3950 50  0001 C CNN
F 1 "+3V3" H 5115 4273 50  0000 C CNN
F 2 "" H 5100 4100 50  0001 C CNN
F 3 "" H 5100 4100 50  0001 C CNN
	1    5100 4100
	1    0    0    -1  
$EndComp
$Comp
L fm-b2020rgba-hg:FM-B2020RGBA-HG D1
U 1 1 601F7327
P 9850 3500
F 0 "D1" H 9850 3997 50  0000 C CNN
F 1 "FM-B2020RGBA-HG" H 9850 3906 50  0000 C CNN
F 2 "fm-b2020rgba-hg:FM-B2020RGBA-HG" H 9850 3050 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Foshan-NationStar-Optoelectronics-FM-B2020RGBA-HG_C108793.pdf" H 9850 3450 50  0001 C CNN
	1    9850 3500
	1    0    0    -1  
$EndComp
Text Label 7150 1200 1    50   ~ 0
I2C0_SCL
Text Label 7300 1200 1    50   ~ 0
I2C0_SDA
Text Label 4650 4300 2    50   ~ 0
I2C0_SCL
Text Label 4650 4400 2    50   ~ 0
I2C0_SDA
$Comp
L power:+3V3 #PWR0108
U 1 1 602448E8
P 10300 3450
F 0 "#PWR0108" H 10300 3300 50  0001 C CNN
F 1 "+3V3" H 10315 3623 50  0000 C CNN
F 2 "" H 10300 3450 50  0001 C CNN
F 3 "" H 10300 3450 50  0001 C CNN
	1    10300 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 3500 10300 3450
Wire Wire Line
	10050 3500 10300 3500
Text Label 9650 3300 2    50   ~ 0
LED_R_K
Text Label 9650 3500 2    50   ~ 0
LED_G_K
Text Label 9650 3700 2    50   ~ 0
LED_B_K
Text Label 4450 2450 2    50   ~ 0
D8
Text Label 4450 3050 2    50   ~ 0
D2
Text Label 4450 3200 2    50   ~ 0
D0
Text Label 5200 3500 3    50   ~ 0
D1
Text Label 5350 3500 3    50   ~ 0
D3
Text Label 5650 3500 3    50   ~ 0
D5
Text Label 5800 3500 3    50   ~ 0
D7
Text Label 5950 3500 3    50   ~ 0
D9
Text Label 6100 3500 3    50   ~ 0
D10
Text Label 6400 3500 3    50   ~ 0
D16
Text Label 6550 3500 3    50   ~ 0
D15
Text Label 6700 3500 3    50   ~ 0
D14
Text Label 7000 3500 3    50   ~ 0
D12
Text Label 7150 3500 3    50   ~ 0
D11
Text Label 7850 3200 0    50   ~ 0
~GPIO_INT
Text Label 7850 3050 0    50   ~ 0
~I2C0_RST
Text Label 4650 4600 2    50   ~ 0
~GPIO_INT
Text Label 4650 4700 2    50   ~ 0
~I2C0_RST
Text Label 9700 4300 2    50   ~ 0
~GPIO_INT
Text Label 9700 4750 2    50   ~ 0
~I2C0_RST
$Comp
L Device:R_US R1
U 1 1 6033EB1D
P 9850 4300
F 0 "R1" V 9645 4300 50  0000 C CNN
F 1 "10K" V 9736 4300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9890 4290 50  0001 C CNN
F 3 "~" H 9850 4300 50  0001 C CNN
	1    9850 4300
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R2
U 1 1 60340A1F
P 9850 4750
F 0 "R2" V 9645 4750 50  0000 C CNN
F 1 "10K" V 9736 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9890 4740 50  0001 C CNN
F 3 "~" H 9850 4750 50  0001 C CNN
	1    9850 4750
	0    1    1    0   
$EndComp
Text Label 10000 4300 0    50   ~ 0
+3V3
Text Label 10000 4750 0    50   ~ 0
+3V3
Text Label 4650 4900 2    50   ~ 0
+3V3
Text Label 4650 5000 2    50   ~ 0
+3V3
$Comp
L power:GND #PWR0102
U 1 1 60192501
P 5150 6000
F 0 "#PWR0102" H 5150 5750 50  0001 C CNN
F 1 "GND" H 5155 5827 50  0000 C CNN
F 2 "" H 5150 6000 50  0001 C CNN
F 3 "" H 5150 6000 50  0001 C CNN
	1    5150 6000
	1    0    0    -1  
$EndComp
$Comp
L AW9523BTQR:AW9523BTQR U3
U 1 1 60126F4F
P 5150 5000
F 0 "U3" H 5150 3700 50  0000 C CNN
F 1 "AW9523BTQR" H 5150 3600 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-24-1EP_4x4mm_P0.5mm_EP2.7x2.7mm" H 5150 5700 50  0001 C CNN
F 3 "" H 5150 5300 50  0001 C CNN
	1    5150 5000
	1    0    0    -1  
$EndComp
Text Label 1350 4650 2    50   ~ 0
D16
Text Label 5650 5800 0    50   ~ 0
LED_B_K
Text Label 5650 5700 0    50   ~ 0
LED_G_K
Text Label 5650 5600 0    50   ~ 0
LED_R_K
Text Label 4450 2600 2    50   ~ 0
D6
Text Label 5500 3500 3    50   ~ 0
D4
Text Label 6850 1200 1    50   ~ 0
D13
Text Label 7850 2450 0    50   ~ 0
D17
Text Label 1350 4750 2    50   ~ 0
D17
Text Label 5650 4300 0    50   ~ 0
AUX0
Text Label 5650 4400 0    50   ~ 0
AUX1
Text Label 5650 4500 0    50   ~ 0
AUX2
Text Label 5650 4600 0    50   ~ 0
AUX3
Text Label 5650 4700 0    50   ~ 0
AUX4
Text Label 5650 4800 0    50   ~ 0
AUX5
Text Label 5650 4900 0    50   ~ 0
AUX6
Text Label 5650 5000 0    50   ~ 0
AUX7
Text Label 5650 5100 0    50   ~ 0
AUX8
Text Label 5650 5200 0    50   ~ 0
AUX9
Text Label 5650 5300 0    50   ~ 0
AUX10
Text Label 5650 5400 0    50   ~ 0
AUX11
Text Label 5650 5500 0    50   ~ 0
AUX12
Text Label 2850 2150 0    50   ~ 0
~I2C0_RST
$EndSCHEMATC
