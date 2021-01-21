EESchema Schematic File Version 2
LIBS:74xgxx
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:arduino headers
LIBS:max6675
LIBS:BT137
LIBS:SK_09_20_SA_TO_220
LIBS:H11AA1
LIBS:arduino_nano_reflow2-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Nano Reflow Controller"
Date "2017-07-09"
Rev "1.0"
Comp "David Sanz Kirbis"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
NoConn ~ 2500 4050
NoConn ~ 3200 5050
$Comp
L arduino_nano_header ARDUINO_NANO1
U 1 1 58EC872C
P 2850 4550
F 0 "ARDUINO_NANO1" H 2850 5350 60  0000 C CNN
F 1 "arduino_nano_header" H 2850 3750 60  0000 C CNN
F 2 "local_modules:arduino_nano_header" H 2850 3600 60  0001 C CNN
F 3 "" H 2850 4550 60  0000 C CNN
	1    2850 4550
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 591B0993
P 3550 4100
F 0 "C2" H 3600 4150 70  0000 L BNN
F 1 "100n" H 3600 3950 70  0000 L BNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 3540 3890 65  0001 L TNN
F 3 "" H 3550 4100 60  0001 C CNN
	1    3550 4100
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 591B09B3
P 2900 1750
F 0 "R2" V 3150 1650 70  0000 L BNN
F 1 "47k 0.6w" V 3050 1650 70  0000 L BNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 2890 1540 65  0001 L TNN
F 3 "" H 2900 1750 60  0001 C CNN
	1    2900 1750
	0    1    -1   0   
$EndComp
Text Label 9800 3650 0    47   ~ 0
LCD_CS
Text Label 9800 3550 0    47   ~ 0
LCD_DC
Text Label 9800 3450 0    47   ~ 0
LCD_RESET
Text Label 9800 2100 0    47   ~ 0
MISO
Text Label 9800 3950 0    47   ~ 0
MISO
Text Label 9950 3850 0    47   ~ 0
MOSI
Text Label 9800 3350 0    47   ~ 0
SD_CS
Text Label 1400 1850 2    47   ~ 0
ZEROX
Text Label 2350 4250 2    47   ~ 0
ZEROX
Text Label 2350 4350 2    47   ~ 0
DIMM_CTRL
NoConn ~ 3200 4050
NoConn ~ 3200 4250
NoConn ~ 3200 4350
NoConn ~ 1700 1750
$Comp
L R_Small R7
U 1 1 591B3000
P 6400 3850
F 0 "R7" H 6430 3870 50  0000 L CNN
F 1 "100K" H 6430 3810 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 6400 3850 50  0001 C CNN
F 3 "" H 6400 3850 50  0001 C CNN
	1    6400 3850
	1    0    0    -1  
$EndComp
Text GLabel 5650 6700 1    60   Input ~ 0
12v
Text GLabel 5850 6700 1    60   Input ~ 0
GND
Text GLabel 4100 3850 2    60   Input ~ 0
12v
Text GLabel 7150 4500 1    60   Input ~ 0
12v
Text GLabel 10000 2500 2    60   Input ~ 0
GND
Text GLabel 5850 3550 0    60   Input ~ 0
GND
Text Label 2350 5250 2    47   ~ 0
MISO
Text Label 2350 5050 2    47   ~ 0
LCD_CS
Text Label 2350 4750 2    47   ~ 0
SD_CS
Text Label 2350 5150 2    47   ~ 0
MOSI
Text Label 2350 4850 2    47   ~ 0
LCD_RESET
Text Label 2350 4950 2    47   ~ 0
LCD_DC
$Comp
L Screw_Terminal_1x02 J2
U 1 1 591B6E41
P 5100 7100
F 0 "J2" H 5100 7350 50  0000 C TNN
F 1 "HEATER" V 4950 7100 50  0000 C TNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-2pol" H 5100 6875 50  0001 C CNN
F 3 "" H 5075 7100 50  0001 C CNN
	1    5100 7100
	0    1    -1   0   
$EndComp
$Comp
L Screw_Terminal_1x02 J3
U 1 1 591B70EE
P 5750 7100
F 0 "J3" H 5750 7350 50  0000 C TNN
F 1 "DC IN 12V" V 5600 7100 50  0000 C TNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-2pol" H 5750 6875 50  0001 C CNN
F 3 "" H 5725 7100 50  0001 C CNN
	1    5750 7100
	0    1    -1   0   
$EndComp
$Comp
L Screw_Terminal_1x02 J1
U 1 1 591B6CFC
P 4450 7100
F 0 "J1" H 4450 7350 50  0000 C TNN
F 1 "AC IN 220v" V 4300 7100 50  0000 C TNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-2pol" H 4450 6875 50  0001 C CNN
F 3 "" H 4425 7100 50  0001 C CNN
	1    4450 7100
	0    1    -1   0   
$EndComp
Text GLabel 4400 4250 2    60   Input ~ 0
5V
Text Label 3200 4850 0    47   ~ 0
TC_CS
Text Label 3200 5250 0    47   ~ 0
SCK
Text Label 2500 4050 2    47   ~ 0
RESET
Text Label 6850 5100 1    47   ~ 0
FAN_GND
Text GLabel 2100 4150 0    60   Input ~ 0
GND
Text GLabel 9950 4550 2    60   Input ~ 0
GND
Text Label 9800 2200 0    47   ~ 0
TC_CS
Text Label 9800 3050 0    47   ~ 0
D4
Text Label 9800 3150 0    47   ~ 0
D5
Text Label 9800 3250 0    47   ~ 0
D6
$Comp
L IRF540N Q1
U 1 1 5922ADDA
P 6750 4200
F 0 "Q1" H 6950 4000 50  0000 L CNN
F 1 "IRF540N" H 6950 4100 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Vertical" H 7000 4125 50  0001 L CIN
F 3 "" H 6750 4200 50  0001 L CNN
	1    6750 4200
	1    0    0    1   
$EndComp
Text Label 9800 2300 0    47   ~ 0
SCK
$Comp
L D_Small D1
U 1 1 5922C486
P 7000 4700
F 0 "D1" H 6950 4780 50  0000 L CNN
F 1 "1N4007" H 6850 4620 50  0000 L CNN
F 2 "Diodes_THT:D_A-405_P5.08mm_Vertical_AnodeUp" V 7000 4700 50  0001 C CNN
F 3 "" V 7000 4700 50  0001 C CNN
	1    7000 4700
	-1   0    0    1   
$EndComp
Text Label 7150 5100 1    47   ~ 0
FAN_12V
Text Label 3200 4950 0    47   ~ 0
FAN_CTRL
$Comp
L CONN_01X05 J9
U 1 1 592EA702
P 9600 2300
F 0 "J9" H 9600 2600 50  0000 C CNN
F 1 "CONN_01X05" V 9700 2300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 9600 2300 50  0001 C CNN
F 3 "" H 9600 2300 50  0001 C CNN
	1    9600 2300
	-1   0    0    -1  
$EndComp
$Comp
L Buzzer BZ1
U 1 1 592ED2C4
P 4100 4550
F 0 "BZ1" H 4250 4600 50  0000 L CNN
F 1 "Buzzer" H 4250 4500 50  0000 L CNN
F 2 "Buzzers_Beepers:Buzzer_12x9.5RM7.6" V 4075 4650 50  0001 C CNN
F 3 "" V 4075 4650 50  0001 C CNN
	1    4100 4550
	1    0    0    -1  
$EndComp
$Comp
L R_Small R6
U 1 1 592E9629
P 6150 4150
F 0 "R6" V 6050 4150 50  0000 L CNN
F 1 "4K7" V 5950 4100 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" H 6150 4150 50  0001 C CNN
F 3 "" H 6150 4150 50  0001 C CNN
	1    6150 4150
	0    -1   -1   0   
$EndComp
Text GLabel 3900 4650 0    60   Input ~ 0
GND
Text Label 3200 4750 0    47   ~ 0
A2
Text Label 3200 4650 0    47   ~ 0
A3
Text Label 3200 4550 0    47   ~ 0
A4
Text GLabel 8500 3650 2    60   Input ~ 0
GND
Text GLabel 8500 3550 2    60   Input ~ 0
GND
Text GLabel 8500 3450 2    60   Input ~ 0
GND
Text GLabel 8500 2900 2    60   Input ~ 0
5V
Text GLabel 8500 3000 2    60   Input ~ 0
5V
Text GLabel 8500 3100 2    60   Input ~ 0
5V
Text GLabel 8500 4200 2    60   Input ~ 0
12v
Text GLabel 8500 4100 2    60   Input ~ 0
12v
Text GLabel 8500 4000 2    60   Input ~ 0
12v
$Comp
L Jumper JP1
U 1 1 592F07D7
P 3700 3850
F 0 "JP1" H 3700 4000 50  0000 C CNN
F 1 "VIN enabler" H 3700 4100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 3700 3850 50  0001 C CNN
F 3 "" H 3700 3850 50  0001 C CNN
	1    3700 3850
	1    0    0    -1  
$EndComp
Text Label 3200 3850 0    60   ~ 0
VIN
$Comp
L CONN_01X17 J10
U 1 1 592F1E66
P 9600 3750
F 0 "J10" H 9600 4650 50  0000 C CNN
F 1 "CONN_01X17" V 9700 3750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x17_Pitch2.54mm" H 9600 3750 50  0001 C CNN
F 3 "" H 9600 3750 50  0001 C CNN
	1    9600 3750
	-1   0    0    1   
$EndComp
Text GLabel 10000 2950 2    60   Input ~ 0
GND
Text Label 3200 5150 0    47   ~ 0
3V3
Text GLabel 9800 2400 2    60   Input ~ 0
5V
$Comp
L CONN_01X03 J5
U 1 1 5932D012
P 8300 2450
F 0 "J5" H 8300 2650 50  0000 C CNN
F 1 "CONN_01X03" V 8400 2450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 8300 2450 50  0001 C CNN
F 3 "" H 8300 2450 50  0001 C CNN
	1    8300 2450
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X03 J6
U 1 1 5932D24B
P 8300 3000
F 0 "J6" H 8300 3200 50  0000 C CNN
F 1 "CONN_01X03" V 8400 3000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 8300 3000 50  0001 C CNN
F 3 "" H 8300 3000 50  0001 C CNN
	1    8300 3000
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X03 J7
U 1 1 5932D3FD
P 8300 3550
F 0 "J7" H 8300 3750 50  0000 C CNN
F 1 "CONN_01X03" V 8400 3550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 8300 3550 50  0001 C CNN
F 3 "" H 8300 3550 50  0001 C CNN
	1    8300 3550
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X03 J8
U 1 1 5932D690
P 8300 4100
F 0 "J8" H 8300 4300 50  0000 C CNN
F 1 "CONN_01X03" V 8400 4100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 8300 4100 50  0001 C CNN
F 3 "" H 8300 4100 50  0001 C CNN
	1    8300 4100
	-1   0    0    1   
$EndComp
Text GLabel 1550 2050 0    60   Input ~ 0
GND
$Comp
L CONN_01X02 J4
U 1 1 5932F8DA
P 7000 5350
F 0 "J4" H 7000 5500 50  0000 C CNN
F 1 "12v FAN" V 7100 5350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x01_Pitch2.54mm" H 7000 5350 50  0001 C CNN
F 3 "" H 7000 5350 50  0001 C CNN
	1    7000 5350
	0    -1   1    0   
$EndComp
$Comp
L R R5
U 1 1 591B09B2
P 6650 2150
F 0 "R5" V 6800 2250 70  0000 R TNN
F 1 "1k" V 6700 2250 70  0000 R TNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 6640 1940 65  0001 L TNN
F 3 "" H 6650 2150 60  0001 C CNN
	1    6650 2150
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 594828A1
P 4800 1750
F 0 "R3" V 5050 1650 70  0000 L BNN
F 1 "2.4k" V 4950 1650 70  0000 L BNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 4790 1540 65  0001 L TNN
F 3 "" H 4800 1750 60  0001 C CNN
	1    4800 1750
	0    1    -1   0   
$EndComp
Text Label 6900 2150 0    47   ~ 0
DIMM_CTRL
Text Label 5750 2350 2    39   ~ 0
MOC_AC2
Text Label 5750 2150 1    39   ~ 0
MOC_AC1
$Comp
L CONN_01X01 J15
U 1 1 59493D8A
P 2650 6950
F 0 "J15" H 2650 7050 50  0000 C CNN
F 1 "MOUNTING_HOLE" H 3100 6950 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad_Via" H 2650 6950 50  0001 C CNN
F 3 "" H 2650 6950 50  0001 C CNN
	1    2650 6950
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 J12
U 1 1 59493E77
P 1900 6600
F 0 "J12" H 1900 6700 50  0000 C CNN
F 1 "MOUNTING_HOLE" H 2350 6600 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad_Via" H 1900 6600 50  0001 C CNN
F 3 "" H 1900 6600 50  0001 C CNN
	1    1900 6600
	-1   0    0    -1  
$EndComp
NoConn ~ 2100 6600
$Comp
L CONN_01X01 J13
U 1 1 59494846
P 1900 6950
F 0 "J13" H 1900 7050 50  0000 C CNN
F 1 "MOUNTING_HOLE" H 2350 6950 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad_Via" H 1900 6950 50  0001 C CNN
F 3 "" H 1900 6950 50  0001 C CNN
	1    1900 6950
	-1   0    0    -1  
$EndComp
NoConn ~ 2100 6950
Text GLabel 6900 2350 2    60   Input ~ 0
GND
$Comp
L MOC3020M U1
U 1 1 594CBE26
P 6050 2250
F 0 "U1" H 5840 2440 50  0000 L CNN
F 1 "MOC3020M" H 5850 2550 50  0000 L CNN
F 2 "Housings_DIP:DIP-6_W7.62mm_LongPads" H 5850 2050 50  0001 L CIN
F 3 "" H 6025 2250 50  0001 L CNN
	1    6050 2250
	-1   0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 594CDF2B
P 5450 1750
F 0 "R4" V 5700 1650 70  0000 L BNN
F 1 "180R" V 5600 1650 70  0000 L BNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 5440 1540 65  0001 L TNN
F 3 "" H 5450 1750 60  0001 C CNN
	1    5450 1750
	0    -1   -1   0   
$EndComp
$Comp
L C C1
U 1 1 594CE73E
P 5150 2050
F 0 "C1" H 4900 1950 70  0000 L BNN
F 1 "10n" H 4850 2050 70  0000 L BNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 5140 1840 65  0001 L TNN
F 3 "" H 5150 2050 60  0001 C CNN
	1    5150 2050
	-1   0    0    1   
$EndComp
Text Label 5000 1750 0    39   ~ 0
AC_CAP
NoConn ~ 2450 6950
Text Label 2550 2050 0    39   ~ 0
OC2
Text Label 2550 1750 0    39   ~ 0
OC1
$Comp
L CONN_01X01 J14
U 1 1 594DA504
P 2650 6600
F 0 "J14" H 2650 6700 50  0000 C CNN
F 1 "MOUNTING_HOLE" H 3100 6600 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad_Via" H 2650 6600 50  0001 C CNN
F 3 "" H 2650 6600 50  0001 C CNN
	1    2650 6600
	1    0    0    -1  
$EndComp
NoConn ~ 2450 6600
Text Label 8750 2550 0    47   ~ 0
ENC_1
Text Label 8750 2450 0    47   ~ 0
ENC_2
Text Label 8750 2350 0    47   ~ 0
ENC_3
$Comp
L CONN_01X03 J11
U 1 1 594DBC2E
P 1300 3950
F 0 "J11" H 1300 4150 50  0000 C CNN
F 1 "CONN_01X03" V 1400 3950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 1300 3950 50  0001 C CNN
F 3 "" H 1300 3950 50  0001 C CNN
	1    1300 3950
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 594D120C
P 2900 2050
F 0 "R1" V 2850 1950 70  0000 L BNN
F 1 "47k 0.6w" V 2750 1950 70  0000 L BNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 2890 1840 65  0001 L TNN
F 3 "" H 2900 2050 60  0001 C CNN
	1    2900 2050
	0    1    -1   0   
$EndComp
$Comp
L SK_09_20_SA_TO_220 KK1
U 1 1 594EA73D
P 6400 1400
F 0 "KK1" H 6200 1300 45  0000 L BNN
F 1 "TRIAC HEATSINK" H 6200 1200 45  0000 L BNN
F 2 "local_modules:SK_09_20_SA_TO_220" H 6430 1550 20  0001 C CNN
F 3 "" H 6400 1400 60  0001 C CNN
	1    6400 1400
	1    0    0    -1  
$EndComp
$Comp
L H11AA1 OK1
U 1 1 594F8B28
P 2000 1850
F 0 "OK1" H 2050 2100 45  0000 L BNN
F 1 "H11AA1" H 1950 1450 45  0000 L BNN
F 2 "Housings_DIP:DIP-6_W7.62mm_LongPads" H 2030 2000 20  0001 C CNN
F 3 "" H 2000 1850 60  0001 C CNN
	1    2000 1850
	-1   0    0    -1  
$EndComp
$Comp
L BT137 TRIAC1
U 1 1 594F8C53
P 4500 2250
F 0 "TRIAC1" H 4625 2275 50  0000 L CNN
F 1 "BT137" H 4625 2200 50  0000 L CNN
F 2 "local_modules:TO-220_Vertical_BT137" V 4575 2275 50  0001 C CNN
F 3 "" V 4500 2250 50  0001 C CNN
	1    4500 2250
	-1   0    0    -1  
$EndComp
Text Label 3200 4450 0    47   ~ 0
BUZZER
Text Label 5850 4150 2    47   ~ 0
FAN_CTRL
Text GLabel 4400 3950 2    60   Input ~ 0
GND
Text Label 2350 4450 2    47   ~ 0
D4
Text Label 2350 4550 2    47   ~ 0
D5
Text Label 2350 4650 2    47   ~ 0
D6
Text Label 8500 2350 0    47   ~ 0
A2
Text Label 8500 2450 0    47   ~ 0
A3
Text Label 8500 2550 0    47   ~ 0
A4
Wire Wire Line
	8500 2550 8750 2550
Wire Wire Line
	8750 2450 8500 2450
Wire Wire Line
	8500 2350 8750 2350
Wire Wire Line
	3200 3950 4400 3950
Wire Notes Line
	5300 5650 5300 3400
Wire Notes Line
	7400 5650 5300 5650
Wire Notes Line
	7400 3400 7400 5650
Wire Notes Line
	5300 3400 7400 3400
Wire Notes Line
	7400 1000 3850 1000
Wire Notes Line
	7400 2850 7400 1000
Wire Notes Line
	3850 2850 7400 2850
Wire Notes Line
	3850 1000 3850 2850
Wire Notes Line
	3600 1000 1050 1000
Wire Notes Line
	3600 2850 3600 1000
Wire Notes Line
	1050 2850 3600 2850
Wire Notes Line
	1050 1000 1050 2850
Wire Wire Line
	3050 2050 3150 2050
Wire Wire Line
	3050 1750 3150 1750
Wire Wire Line
	6050 4150 5850 4150
Wire Wire Line
	5850 3550 6850 3550
Connection ~ 3550 3950
Connection ~ 3550 4250
Wire Wire Line
	3350 4250 4400 4250
Wire Wire Line
	3350 4150 3350 4250
Connection ~ 2200 4150
Wire Wire Line
	2200 4050 2200 4150
Wire Wire Line
	1500 4050 2200 4050
Wire Wire Line
	2500 3950 1500 3950
Wire Wire Line
	2500 3850 1500 3850
Wire Wire Line
	5750 1750 5600 1750
Wire Wire Line
	5750 2150 5750 1750
Wire Wire Line
	5750 2350 4650 2350
Connection ~ 5150 1750
Wire Wire Line
	5150 1900 5150 1750
Wire Wire Line
	4950 1750 5300 1750
Wire Wire Line
	5150 2550 5150 2200
Connection ~ 4500 1750
Wire Wire Line
	4500 1750 4500 2100
Connection ~ 4500 2550
Wire Wire Line
	4400 1750 4650 1750
Wire Wire Line
	4400 2550 5150 2550
Wire Wire Line
	4500 2400 4500 2550
Wire Wire Line
	6500 2150 6350 2150
Wire Wire Line
	6350 2350 6900 2350
Wire Wire Line
	6900 2150 6800 2150
Wire Wire Line
	7150 5150 7050 5150
Wire Wire Line
	6850 5150 6950 5150
Wire Wire Line
	10000 2950 9800 2950
Wire Wire Line
	9800 3850 9950 3850
Wire Wire Line
	9800 3750 9800 3850
Wire Wire Line
	9800 4150 9950 4150
Wire Wire Line
	9800 4050 9800 4150
Wire Wire Line
	9800 4550 9950 4550
Wire Wire Line
	9800 4450 9800 4550
Wire Wire Line
	9800 4350 9950 4350
Wire Wire Line
	9800 4250 9800 4350
Wire Wire Line
	4100 3850 4000 3850
Wire Wire Line
	1550 2050 1700 2050
Wire Wire Line
	4000 4650 3900 4650
Wire Wire Line
	3200 4450 4000 4450
Wire Wire Line
	6250 4150 6550 4150
Connection ~ 7150 4700
Connection ~ 6850 4700
Wire Wire Line
	2500 4650 2350 4650
Wire Wire Line
	2500 4550 2350 4550
Wire Wire Line
	2500 4450 2350 4450
Wire Wire Line
	1400 1850 1700 1850
Wire Wire Line
	2500 5150 2350 5150
Wire Wire Line
	2500 5250 2350 5250
Wire Wire Line
	2500 4350 2350 4350
Wire Wire Line
	2500 5050 2350 5050
Wire Wire Line
	2500 4950 2350 4950
Wire Wire Line
	2500 4850 2350 4850
Wire Wire Line
	2500 4750 2350 4750
Wire Wire Line
	7150 4500 7150 5150
Wire Wire Line
	3200 3850 3400 3850
Wire Wire Line
	3200 4150 3350 4150
Wire Wire Line
	6850 3550 6850 4000
Wire Wire Line
	6400 3750 6400 3550
Connection ~ 6400 3550
Wire Wire Line
	6400 3950 6400 4150
Connection ~ 6400 4150
Wire Wire Line
	6850 4400 6850 5150
Wire Wire Line
	2100 4150 2500 4150
Wire Wire Line
	2500 4250 2350 4250
Text GLabel 4350 6700 1    60   Input ~ 0
AC2_IN
Text GLabel 4550 6700 1    60   Input ~ 0
AC1_IN
Text GLabel 5000 6700 1    60   Input ~ 0
AC2_OUT
Text GLabel 5200 6700 1    60   Input ~ 0
AC1_OUT
Text GLabel 3150 2050 2    60   Input ~ 0
AC2
Text GLabel 3150 1750 2    60   Input ~ 0
AC1_IN
Wire Wire Line
	2750 1750 2550 1750
Wire Wire Line
	2750 2050 2550 2050
Text GLabel 4400 1750 0    60   Input ~ 0
AC1_IN
Text GLabel 4400 2550 0    60   Input ~ 0
AC1_OUT
Text Label 9950 4150 0    47   ~ 0
SCK
Wire Notes Line
	5050 3400 1050 3400
Wire Notes Line
	1050 3400 1050 5650
Wire Notes Line
	1050 5650 5050 5650
Wire Notes Line
	5050 5650 5050 3400
Wire Wire Line
	4350 6700 4350 6900
Wire Wire Line
	4550 6700 4550 6900
Wire Wire Line
	5000 6700 5000 6900
Wire Wire Line
	5200 6700 5200 6900
Wire Wire Line
	5650 6700 5650 6900
Wire Wire Line
	5850 6700 5850 6900
Wire Notes Line
	7650 1000 7650 5650
Wire Notes Line
	7650 5650 10850 5650
Wire Notes Line
	10850 5650 10850 1000
Wire Notes Line
	10850 1000 7650 1000
Text Notes 1050 1000 0    60   ~ 0
ZERO CROSS DETECTOR
Text Notes 3850 1000 0    60   ~ 0
AC DIMMER
Text Notes 5300 3400 0    60   ~ 0
12V FAN INTERFACE
Text Notes 7650 1000 0    60   ~ 0
HEADERS
Text Notes 1050 3400 0    60   ~ 0
ARDUINO NANO HEADER
Text Notes 4150 6150 0    60   ~ 0
SCREW TERMINALS
Text Notes 1050 6150 0    60   ~ 0
MOUNTING HOLES
Wire Notes Line
	4150 6150 4150 7350
Wire Notes Line
	4150 7350 6100 7350
Wire Notes Line
	6100 7350 6100 6150
Wire Notes Line
	6100 6150 4150 6150
Wire Notes Line
	1050 6150 3550 6150
Wire Notes Line
	3550 6150 3550 7350
Wire Notes Line
	3550 7350 1050 7350
Wire Notes Line
	1050 7350 1050 6150
Wire Wire Line
	7100 4700 7150 4700
Wire Wire Line
	6900 4700 6850 4700
Wire Wire Line
	10000 2500 9800 2500
Text GLabel 9950 4350 2    60   Input ~ 0
5V
$Comp
L Fuse F1
U 1 1 59639C08
P 8800 5150
F 0 "F1" H 8880 5150 50  0000 C CNN
F 1 "Fuse" V 8725 5150 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuseholder5x20_horiz_open_inline_Type-I" V 8730 5150 50  0001 C CNN
F 3 "" H 8800 5150 50  0001 C CNN
	1    8800 5150
	0    1    1    0   
$EndComp
Text GLabel 8650 5150 0    60   Input ~ 0
AC2_IN
Text GLabel 8950 5150 2    60   Input ~ 0
AC2_OUT
$EndSCHEMATC
