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
L Connector:Conn_01x04_Male J1
U 1 1 6062B598
P 2750 2500
F 0 "J1" H 2858 2781 50  0000 C CNN
F 1 "INPUT" H 2858 2690 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2750 2500 50  0001 C CNN
F 3 "~" H 2750 2500 50  0001 C CNN
	1    2750 2500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Male J2
U 1 1 6062C65A
P 2750 3250
F 0 "J2" H 2858 3631 50  0000 C CNN
F 1 "ICSP" H 2858 3540 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 2750 3250 50  0001 C CNN
F 3 "~" H 2750 3250 50  0001 C CNN
	1    2750 3250
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_PIC18:PIC18F27J53_ISS U1
U 1 1 6062D31F
P 5650 3100
F 0 "U1" H 5650 2011 50  0000 C CNN
F 1 "PIC18F27J53_ISS" H 5650 1920 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm_Socket" H 5650 1950 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/30009964C.pdf" H 5650 3050 50  0001 C CNN
	1    5650 3100
	1    0    0    -1  
$EndComp
$Comp
L Potentiometer_Digital:MCP4251-xxxx-P U2
U 1 1 6062EC94
P 7700 2700
F 0 "U2" H 7700 3481 50  0000 C CNN
F 1 "MCP4251-xxxx-P" H 7700 3390 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 7700 1700 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/devicedoc/22060b.pdf" H 7900 2550 50  0001 C CNN
	1    7700 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 2400 6750 2400
Wire Wire Line
	6750 2400 6750 2300
Wire Wire Line
	6750 2300 6450 2300
Wire Wire Line
	7700 2100 7150 2100
Wire Wire Line
	7150 2100 7150 2900
Wire Wire Line
	7150 2900 7300 2900
Wire Wire Line
	7300 3000 7150 3000
Wire Wire Line
	7150 3000 7150 2900
Connection ~ 7150 2900
Wire Wire Line
	5650 4100 7700 4100
Wire Wire Line
	7700 4100 7700 3300
Wire Wire Line
	5650 2100 5650 1950
Wire Wire Line
	5650 1950 7150 1950
Wire Wire Line
	7150 1950 7150 2100
Connection ~ 7150 2100
Wire Wire Line
	8100 2600 8350 2600
Wire Wire Line
	8350 2600 8350 4100
Wire Wire Line
	8350 4100 7700 4100
Connection ~ 7700 4100
Wire Wire Line
	8100 2400 8100 2100
Wire Wire Line
	8100 2100 7700 2100
Connection ~ 7700 2100
Wire Wire Line
	9000 2100 8100 2100
Connection ~ 8100 2100
$Comp
L Connector:Conn_01x03_Male J3
U 1 1 60634F85
P 9200 2500
F 0 "J3" H 9172 2432 50  0000 R CNN
F 1 "OUTPUT" H 9172 2523 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9200 2500 50  0001 C CNN
F 3 "~" H 9200 2500 50  0001 C CNN
	1    9200 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	9000 2100 9000 2400
Wire Wire Line
	9000 2600 8350 2600
Connection ~ 8350 2600
Wire Wire Line
	8100 2500 9000 2500
$Comp
L Device:R R1
U 1 1 60636B2C
P 4550 3200
F 0 "R1" V 4343 3200 50  0000 C CNN
F 1 "10K" V 4434 3200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4480 3200 50  0001 C CNN
F 3 "~" H 4550 3200 50  0001 C CNN
	1    4550 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 3200 4750 3200
Wire Wire Line
	4400 3200 4150 3200
Wire Wire Line
	4150 3200 4150 1950
Wire Wire Line
	4150 1950 5650 1950
Connection ~ 5650 1950
Wire Wire Line
	2950 2400 3500 2400
Wire Wire Line
	3800 2400 3800 1950
Wire Wire Line
	3800 1950 4150 1950
Connection ~ 4150 1950
Wire Wire Line
	2950 2700 3850 2700
Wire Wire Line
	3850 2700 3850 3450
Wire Wire Line
	3850 4100 5650 4100
Connection ~ 5650 4100
Wire Wire Line
	2950 2500 4500 2500
Wire Wire Line
	4500 2500 4500 2300
Wire Wire Line
	4500 2300 4850 2300
Wire Wire Line
	4850 2400 4550 2400
Wire Wire Line
	4550 2400 4550 2600
Wire Wire Line
	4550 2600 2950 2600
Wire Wire Line
	2950 3050 3750 3050
Wire Wire Line
	3750 3050 3750 3350
Wire Wire Line
	3750 3350 4750 3350
Wire Wire Line
	4750 3350 4750 3200
Connection ~ 4750 3200
Wire Wire Line
	4750 3200 4700 3200
Wire Wire Line
	2950 3150 3500 3150
Wire Wire Line
	3500 3150 3500 2400
Connection ~ 3500 2400
Wire Wire Line
	3500 2400 3800 2400
Wire Wire Line
	2950 3250 3500 3250
Wire Wire Line
	3500 3250 3500 3450
Wire Wire Line
	3500 3450 3850 3450
Connection ~ 3850 3450
Wire Wire Line
	3850 3450 3850 4100
Wire Wire Line
	6450 3000 6700 3000
Wire Wire Line
	6700 3000 6700 4400
Wire Wire Line
	6700 4400 3350 4400
Wire Wire Line
	3350 4400 3350 3350
Wire Wire Line
	3350 3350 2950 3350
Wire Wire Line
	2950 3450 3250 3450
Wire Wire Line
	3250 3450 3250 4450
Wire Wire Line
	3250 4450 6750 4450
Wire Wire Line
	6750 4450 6750 2900
Wire Wire Line
	6750 2900 6450 2900
$Comp
L power:+3.3V #PWR03
U 1 1 60642145
P 9000 1900
F 0 "#PWR03" H 9000 1750 50  0001 C CNN
F 1 "+3.3V" H 9015 2073 50  0000 C CNN
F 2 "" H 9000 1900 50  0001 C CNN
F 3 "" H 9000 1900 50  0001 C CNN
	1    9000 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 60642F9F
P 9000 2850
F 0 "#PWR04" H 9000 2600 50  0001 C CNN
F 1 "GND" H 9005 2677 50  0000 C CNN
F 2 "" H 9000 2850 50  0001 C CNN
F 3 "" H 9000 2850 50  0001 C CNN
	1    9000 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 1900 9000 2100
Connection ~ 9000 2100
Wire Wire Line
	9000 2850 9000 2600
Connection ~ 9000 2600
$Comp
L Device:C C1
U 1 1 60646D7B
P 5450 5400
F 0 "C1" H 5565 5446 50  0000 L CNN
F 1 "C" H 5565 5355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 5488 5250 50  0001 C CNN
F 3 "~" H 5450 5400 50  0001 C CNN
	1    5450 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 606479D3
P 5450 5800
F 0 "#PWR02" H 5450 5550 50  0001 C CNN
F 1 "GND" H 5455 5627 50  0000 C CNN
F 2 "" H 5450 5800 50  0001 C CNN
F 3 "" H 5450 5800 50  0001 C CNN
	1    5450 5800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01
U 1 1 60648006
P 5450 5000
F 0 "#PWR01" H 5450 4850 50  0001 C CNN
F 1 "+3.3V" H 5465 5173 50  0000 C CNN
F 2 "" H 5450 5000 50  0001 C CNN
F 3 "" H 5450 5000 50  0001 C CNN
	1    5450 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 606485D1
P 5900 5400
F 0 "C2" H 6015 5446 50  0000 L CNN
F 1 "C" H 6015 5355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 5938 5250 50  0001 C CNN
F 3 "~" H 5900 5400 50  0001 C CNN
	1    5900 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 5000 5450 5250
Wire Wire Line
	5450 5800 5450 5550
Wire Wire Line
	5900 5550 5450 5550
Connection ~ 5450 5550
Wire Wire Line
	5900 5250 5450 5250
Connection ~ 5450 5250
Wire Wire Line
	7300 2600 6850 2600
Wire Wire Line
	6850 2600 6850 3900
Wire Wire Line
	6850 3900 6450 3900
Wire Wire Line
	7300 2500 6600 2500
Wire Wire Line
	6600 2500 6600 2700
Wire Wire Line
	6600 2700 6450 2700
Wire Wire Line
	6450 2800 7050 2800
Wire Wire Line
	7050 2800 7050 2700
Wire Wire Line
	7050 2700 7300 2700
$EndSCHEMATC
