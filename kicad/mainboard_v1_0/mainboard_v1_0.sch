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
L stm32f4_disco_board:stm32f4_disco_board U1
U 1 1 5DFCC994
P 2050 3600
F 0 "U1" H 3300 5800 50  0000 C CNN
F 1 "stm32f4_disco_board" H 3250 5550 50  0000 C CNN
F 2 "footprints:stm32f4_disco_board" H 2200 4800 50  0001 C CNN
F 3 "" H 2200 4800 50  0001 C CNN
	1    2050 3600
	1    0    0    -1  
$EndComp
$Comp
L Driver_Motor:Pololu_Breakout_A4988 A1
U 1 1 5DFD9790
P 7450 3100
F 0 "A1" H 8150 3800 50  0000 C CNN
F 1 "A4988_MODULE" H 8300 3700 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 7725 2350 50  0001 L CNN
F 3 "https://www.pololu.com/product/2980/pictures" H 7550 2800 50  0001 C CNN
	1    7450 3100
	1    0    0    -1  
$EndComp
$Comp
L mpu_9250:MPU_9250 U6
U 1 1 5DFE3356
P 6400 7500
F 0 "U6" H 6600 8650 50  0000 L CNN
F 1 "MPU_9250" H 6150 8650 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 6250 7900 50  0001 C CNN
F 3 "" H 6250 7900 50  0001 C CNN
	1    6400 7500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC245 U2
U 1 1 5DFE61B4
P 2650 4950
F 0 "U2" H 2950 5750 50  0000 C CNN
F 1 "74HC245" H 2950 5650 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_LongPads" H 2650 4950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC245" H 2650 4950 50  0001 C CNN
	1    2650 4950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR08
U 1 1 5E011948
P 2700 6745
F 0 "#PWR08" H 2700 6595 50  0001 C CNN
F 1 "+5V" H 2715 6918 50  0000 C CNN
F 2 "" H 2700 6745 50  0001 C CNN
F 3 "" H 2700 6745 50  0001 C CNN
	1    2700 6745
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 6845 2700 6745
$Comp
L Regulator_Linear:AMS1117-3.3 U4
U 1 1 5E01374D
P 3200 6845
F 0 "U4" H 3200 7087 50  0000 C CNN
F 1 "AMS1117-3.3" H 3200 6996 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 3200 7045 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 3300 6595 50  0001 C CNN
	1    3200 6845
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5E015477
P 2700 7245
F 0 "C6" H 2792 7291 50  0000 L CNN
F 1 "22uF" H 2792 7200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2700 7245 50  0001 C CNN
F 3 "~" H 2700 7245 50  0001 C CNN
	1    2700 7245
	1    0    0    -1  
$EndComp
Connection ~ 2700 6845
Wire Wire Line
	2700 7145 2700 6845
Wire Wire Line
	2700 6845 2900 6845
Wire Wire Line
	2700 7395 3200 7395
Wire Wire Line
	3200 7395 3200 7145
$Comp
L Device:C_Small C7
U 1 1 5E019066
P 3700 7245
F 0 "C7" H 3792 7291 50  0000 L CNN
F 1 "10uF" H 3792 7200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3700 7245 50  0001 C CNN
F 3 "~" H 3700 7245 50  0001 C CNN
	1    3700 7245
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 7395 3700 7395
Wire Wire Line
	3700 7395 3700 7345
Connection ~ 3200 7395
Wire Wire Line
	3500 6845 3700 6845
Wire Wire Line
	3700 6845 3700 7145
$Comp
L power:+3V3 #PWR09
U 1 1 5E01AE9E
P 3700 6845
F 0 "#PWR09" H 3700 6695 50  0001 C CNN
F 1 "+3V3" H 3715 7018 50  0000 C CNN
F 2 "" H 3700 6845 50  0001 C CNN
F 3 "" H 3700 6845 50  0001 C CNN
	1    3700 6845
	1    0    0    -1  
$EndComp
Connection ~ 3700 6845
Wire Wire Line
	7050 2700 6900 2700
Wire Wire Line
	6900 2700 6900 2800
Wire Wire Line
	6900 2800 7050 2800
$Comp
L Device:R_Small R4
U 1 1 5E0880F7
P 6900 2500
F 0 "R4" H 6959 2546 50  0000 L CNN
F 1 "10K" H 6959 2455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 6900 2500 50  0001 C CNN
F 3 "~" H 6900 2500 50  0001 C CNN
	1    6900 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 2300 7650 2400
$Comp
L power:+5V #PWR020
U 1 1 5E088B3D
P 7450 2300
F 0 "#PWR020" H 7450 2150 50  0001 C CNN
F 1 "+5V" H 7465 2473 50  0000 C CNN
F 2 "" H 7450 2300 50  0001 C CNN
F 3 "" H 7450 2300 50  0001 C CNN
	1    7450 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C11
U 1 1 5E08D010
P 7800 1500
F 0 "C11" H 7892 1546 50  0000 L CNN
F 1 "100nF" H 7892 1455 50  0000 L CNN
F 2 "Capacitor_THT:C_Radial_D8.0mm_H11.5mm_P3.50mm" H 7800 1500 50  0001 C CNN
F 3 "~" H 7800 1500 50  0001 C CNN
	1    7800 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 1350 7800 1400
Wire Wire Line
	7800 1650 7800 1600
Wire Wire Line
	7450 2300 7450 2350
Text GLabel 7650 2300 1    50   Input ~ 0
VMOT
$Comp
L power:GND #PWR018
U 1 1 5E097E76
P 6850 1650
F 0 "#PWR018" H 6850 1400 50  0001 C CNN
F 1 "GND" H 6855 1477 50  0000 C CNN
F 2 "" H 6850 1650 50  0001 C CNN
F 3 "" H 6850 1650 50  0001 C CNN
	1    6850 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5E098307
P 7650 1650
F 0 "#PWR021" H 7650 1400 50  0001 C CNN
F 1 "GND" H 7655 1477 50  0000 C CNN
F 2 "" H 7650 1650 50  0001 C CNN
F 3 "" H 7650 1650 50  0001 C CNN
	1    7650 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 1650 7800 1650
$Comp
L power:+5V #PWR017
U 1 1 5E0987CC
P 6850 1350
F 0 "#PWR017" H 6850 1200 50  0001 C CNN
F 1 "+5V" H 6865 1523 50  0000 C CNN
F 2 "" H 6850 1350 50  0001 C CNN
F 3 "" H 6850 1350 50  0001 C CNN
	1    6850 1350
	1    0    0    -1  
$EndComp
Text GLabel 7650 1300 1    50   Input ~ 0
VMOT
Wire Wire Line
	7650 1300 7650 1350
Wire Wire Line
	7650 1350 7800 1350
Text GLabel 9350 1000 0    50   Input ~ 0
VMOT
Wire Wire Line
	9350 1000 9500 1000
Wire Wire Line
	7450 3900 7450 3950
Wire Wire Line
	7450 3950 7650 3950
Wire Wire Line
	7650 3950 7650 3900
$Comp
L power:GND #PWR022
U 1 1 5E09F6F5
P 7650 3950
F 0 "#PWR022" H 7650 3700 50  0001 C CNN
F 1 "GND" H 7655 3777 50  0000 C CNN
F 2 "" H 7650 3950 50  0001 C CNN
F 3 "" H 7650 3950 50  0001 C CNN
	1    7650 3950
	1    0    0    -1  
$EndComp
Connection ~ 7650 3950
Wire Wire Line
	6900 2600 6900 2700
Connection ~ 6900 2700
Wire Wire Line
	6900 2400 6900 2350
Wire Wire Line
	6900 2350 7450 2350
Connection ~ 7450 2350
Wire Wire Line
	7450 2350 7450 2400
$Comp
L power:GND #PWR016
U 1 1 5E0A5D7B
P 6750 2900
F 0 "#PWR016" H 6750 2650 50  0001 C CNN
F 1 "GND" H 6755 2727 50  0000 C CNN
F 2 "" H 6750 2900 50  0001 C CNN
F 3 "" H 6750 2900 50  0001 C CNN
	1    6750 2900
	-1   0    0    1   
$EndComp
Wire Wire Line
	6750 2900 6750 3000
Wire Wire Line
	6750 3000 7050 3000
$Comp
L Driver_Motor:Pololu_Breakout_A4988 A2
U 1 1 5E0E8BA3
P 9800 3200
F 0 "A2" H 10500 3900 50  0000 C CNN
F 1 "A4988_MODULE" H 10650 3800 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 10075 2450 50  0001 L CNN
F 3 "https://www.pololu.com/product/2980/pictures" H 9900 2900 50  0001 C CNN
	1    9800 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 2800 9250 2800
Wire Wire Line
	9250 2800 9250 2900
Wire Wire Line
	9250 2900 9400 2900
$Comp
L Device:R_Small R11
U 1 1 5E0E8BAC
P 9250 2600
F 0 "R11" H 9309 2646 50  0000 L CNN
F 1 "10K" H 9309 2555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 9250 2600 50  0001 C CNN
F 3 "~" H 9250 2600 50  0001 C CNN
	1    9250 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 2400 10000 2500
$Comp
L power:+5V #PWR027
U 1 1 5E0E8BB3
P 9800 2400
F 0 "#PWR027" H 9800 2250 50  0001 C CNN
F 1 "+5V" H 9815 2573 50  0000 C CNN
F 2 "" H 9800 2400 50  0001 C CNN
F 3 "" H 9800 2400 50  0001 C CNN
	1    9800 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C14
U 1 1 5E0E8BC5
P 9850 1600
F 0 "C14" H 9938 1646 50  0000 L CNN
F 1 "10uF" H 9938 1555 50  0000 L CNN
F 2 "Capacitor_THT:C_Radial_D8.0mm_H11.5mm_P3.50mm" H 9850 1600 50  0001 C CNN
F 3 "~" H 9850 1600 50  0001 C CNN
	1    9850 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 1500 9850 1450
Wire Wire Line
	9850 1450 10000 1450
Wire Wire Line
	9850 1700 9850 1750
Wire Wire Line
	9850 1750 10000 1750
Wire Wire Line
	9800 2400 9800 2450
Text GLabel 10000 2400 1    50   Input ~ 0
VMOT
$Comp
L power:GND #PWR026
U 1 1 5E0E8BDF
P 9200 1750
F 0 "#PWR026" H 9200 1500 50  0001 C CNN
F 1 "GND" H 9205 1577 50  0000 C CNN
F 2 "" H 9200 1750 50  0001 C CNN
F 3 "" H 9200 1750 50  0001 C CNN
	1    9200 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 5E0E8BE7
P 10000 1750
F 0 "#PWR028" H 10000 1500 50  0001 C CNN
F 1 "GND" H 10005 1577 50  0000 C CNN
F 2 "" H 10000 1750 50  0001 C CNN
F 3 "" H 10000 1750 50  0001 C CNN
	1    10000 1750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR025
U 1 1 5E0E8BEF
P 9200 1450
F 0 "#PWR025" H 9200 1300 50  0001 C CNN
F 1 "+5V" H 9215 1623 50  0000 C CNN
F 2 "" H 9200 1450 50  0001 C CNN
F 3 "" H 9200 1450 50  0001 C CNN
	1    9200 1450
	1    0    0    -1  
$EndComp
Text GLabel 10000 1400 1    50   Input ~ 0
VMOT
Wire Wire Line
	10000 1400 10000 1450
Wire Wire Line
	9800 4000 9800 4050
Wire Wire Line
	9800 4050 10000 4050
Wire Wire Line
	10000 4050 10000 4000
$Comp
L power:GND #PWR029
U 1 1 5E0E8BFE
P 10000 4050
F 0 "#PWR029" H 10000 3800 50  0001 C CNN
F 1 "GND" H 10005 3877 50  0000 C CNN
F 2 "" H 10000 4050 50  0001 C CNN
F 3 "" H 10000 4050 50  0001 C CNN
	1    10000 4050
	1    0    0    -1  
$EndComp
Connection ~ 10000 4050
Wire Wire Line
	9250 2700 9250 2800
Connection ~ 9250 2800
Wire Wire Line
	9250 2500 9250 2450
Wire Wire Line
	9250 2450 9800 2450
Connection ~ 9800 2450
Wire Wire Line
	9800 2450 9800 2500
$Comp
L power:GND #PWR024
U 1 1 5E0E8C0B
P 9100 3000
F 0 "#PWR024" H 9100 2750 50  0001 C CNN
F 1 "GND" H 9105 2827 50  0000 C CNN
F 2 "" H 9100 3000 50  0001 C CNN
F 3 "" H 9100 3000 50  0001 C CNN
	1    9100 3000
	-1   0    0    1   
$EndComp
Text GLabel 9300 3200 0    50   Input ~ 0
A4988_2_STEP
Wire Wire Line
	9100 3000 9100 3100
Wire Wire Line
	9100 3100 9400 3100
Text GLabel 9300 3300 0    50   Input ~ 0
A4988_2_DIR
Wire Wire Line
	9300 3200 9400 3200
Wire Wire Line
	9300 3300 9400 3300
$Comp
L Device:Jumper JP1
U 1 1 5E0EF8F7
P 9800 1000
F 0 "JP1" H 9800 1264 50  0000 C CNN
F 1 "Jumper" H 9800 1173 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9800 1000 50  0001 C CNN
F 3 "~" H 9800 1000 50  0001 C CNN
	1    9800 1000
	1    0    0    -1  
$EndComp
Text GLabel 3150 5050 2    50   Input ~ 0
A4988_2_STEP
Text GLabel 3150 5150 2    50   Input ~ 0
A4988_2_DIR
Text GLabel 7100 5050 0    50   Input ~ 0
A4988_1_MS1
Text GLabel 7100 5150 0    50   Input ~ 0
A4988_1_MS2
Text GLabel 7100 5250 0    50   Input ~ 0
A4988_1_MS3
Text GLabel 9300 3500 0    50   Input ~ 0
A4988_2_MS1
Text GLabel 9300 3600 0    50   Input ~ 0
A4988_2_MS2
Text GLabel 9300 3700 0    50   Input ~ 0
A4988_2_MS3
Text GLabel 7100 5350 0    50   Input ~ 0
A4988_2_MS1
Text GLabel 7100 5450 0    50   Input ~ 0
A4988_2_MS2
Text GLabel 7100 5550 0    50   Input ~ 0
A4988_2_MS3
Wire Wire Line
	9300 3500 9400 3500
Wire Wire Line
	9300 3600 9400 3600
Wire Wire Line
	9300 3700 9400 3700
$Comp
L Switch:SW_DIP_x06 SW1
U 1 1 5E15A4E4
P 8750 5350
F 0 "SW1" H 8750 5917 50  0000 C CNN
F 1 "SW_DIP_x06" H 8750 5826 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx06_Slide_9.78x17.42mm_W7.62mm_P2.54mm" H 8750 5350 50  0001 C CNN
F 3 "~" H 8750 5350 50  0001 C CNN
	1    8750 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R10
U 1 1 5E169ABD
P 8350 4800
F 0 "R10" H 8409 4846 50  0000 L CNN
F 1 "10K" H 8350 4950 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 8350 4800 50  0001 C CNN
F 3 "~" H 8350 4800 50  0001 C CNN
	1    8350 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R9
U 1 1 5E16B827
P 8150 4800
F 0 "R9" H 8209 4846 50  0000 L CNN
F 1 "10K" H 8150 4950 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 8150 4800 50  0001 C CNN
F 3 "~" H 8150 4800 50  0001 C CNN
	1    8150 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R8
U 1 1 5E16E9ED
P 7950 4800
F 0 "R8" H 8009 4846 50  0000 L CNN
F 1 "10K" H 7950 4950 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 7950 4800 50  0001 C CNN
F 3 "~" H 7950 4800 50  0001 C CNN
	1    7950 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5E173524
P 7750 4800
F 0 "R7" H 7809 4846 50  0000 L CNN
F 1 "10K" H 7750 4950 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 7750 4800 50  0001 C CNN
F 3 "~" H 7750 4800 50  0001 C CNN
	1    7750 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5E17352A
P 7550 4800
F 0 "R6" H 7609 4846 50  0000 L CNN
F 1 "10K" H 7550 4950 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 7550 4800 50  0001 C CNN
F 3 "~" H 7550 4800 50  0001 C CNN
	1    7550 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5E173530
P 7350 4800
F 0 "R5" H 7409 4846 50  0000 L CNN
F 1 "10K" H 7350 4950 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 7350 4800 50  0001 C CNN
F 3 "~" H 7350 4800 50  0001 C CNN
	1    7350 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 5050 8350 5050
Wire Wire Line
	7100 5250 7950 5250
Wire Wire Line
	7100 5150 8150 5150
Wire Wire Line
	7100 5350 7750 5350
Wire Wire Line
	7100 5450 7550 5450
Wire Wire Line
	7100 5550 7350 5550
Wire Wire Line
	8350 4900 8350 5050
Connection ~ 8350 5050
Wire Wire Line
	8350 5050 8450 5050
Wire Wire Line
	8150 4900 8150 5150
Connection ~ 8150 5150
Wire Wire Line
	8150 5150 8450 5150
Wire Wire Line
	7950 4900 7950 5250
Connection ~ 7950 5250
Wire Wire Line
	7950 5250 8450 5250
Wire Wire Line
	7750 4900 7750 5350
Connection ~ 7750 5350
Wire Wire Line
	7750 5350 8450 5350
Wire Wire Line
	7550 4900 7550 5450
Connection ~ 7550 5450
Wire Wire Line
	7550 5450 8450 5450
Connection ~ 7350 5550
Wire Wire Line
	7350 5550 8450 5550
Wire Wire Line
	7350 4900 7350 5550
Wire Wire Line
	7350 4700 7350 4550
Wire Wire Line
	7350 4550 7550 4550
Wire Wire Line
	8350 4550 8350 4700
Wire Wire Line
	7550 4700 7550 4550
Connection ~ 7550 4550
Wire Wire Line
	7550 4550 7750 4550
Wire Wire Line
	7750 4700 7750 4550
Connection ~ 7750 4550
Wire Wire Line
	7750 4550 7950 4550
Wire Wire Line
	7950 4700 7950 4550
Connection ~ 7950 4550
Wire Wire Line
	7950 4550 8150 4550
Wire Wire Line
	8150 4700 8150 4550
Connection ~ 8150 4550
Wire Wire Line
	8150 4550 8350 4550
$Comp
L power:+5V #PWR019
U 1 1 5E1D6CDD
P 7350 4500
F 0 "#PWR019" H 7350 4350 50  0001 C CNN
F 1 "+5V" H 7365 4673 50  0000 C CNN
F 2 "" H 7350 4500 50  0001 C CNN
F 3 "" H 7350 4500 50  0001 C CNN
	1    7350 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 4500 7350 4550
Connection ~ 7350 4550
Wire Wire Line
	9050 5050 9150 5050
Wire Wire Line
	9150 5050 9150 5150
Wire Wire Line
	9150 5550 9050 5550
Wire Wire Line
	9050 5150 9150 5150
Connection ~ 9150 5150
Wire Wire Line
	9150 5150 9150 5250
Wire Wire Line
	9050 5250 9150 5250
Connection ~ 9150 5250
Wire Wire Line
	9150 5250 9150 5350
Wire Wire Line
	9050 5350 9150 5350
Connection ~ 9150 5350
Wire Wire Line
	9150 5350 9150 5450
Wire Wire Line
	9050 5450 9150 5450
Connection ~ 9150 5450
Wire Wire Line
	9150 5450 9150 5550
$Comp
L power:GND #PWR023
U 1 1 5E1FA03D
P 9150 5550
F 0 "#PWR023" H 9150 5300 50  0001 C CNN
F 1 "GND" H 9155 5377 50  0000 C CNN
F 2 "" H 9150 5550 50  0001 C CNN
F 3 "" H 9150 5550 50  0001 C CNN
	1    9150 5550
	1    0    0    -1  
$EndComp
Connection ~ 9150 5550
Text GLabel 10400 3100 2    50   Input ~ 0
A4988_2_1B
Text GLabel 10400 3200 2    50   Input ~ 0
A4988_2_1A
Text GLabel 10400 3300 2    50   Input ~ 0
A4988_2_2A
Text GLabel 10400 3400 2    50   Input ~ 0
A4988_2_2B
Wire Wire Line
	10300 3100 10400 3100
Wire Wire Line
	10300 3200 10400 3200
Wire Wire Line
	10300 3300 10400 3300
Wire Wire Line
	10300 3400 10400 3400
Text GLabel 10100 4850 2    50   Input ~ 0
A4988_1_1B
Text GLabel 10100 4950 2    50   Input ~ 0
A4988_1_1A
Text GLabel 10100 5050 2    50   Input ~ 0
A4988_1_2A
Text GLabel 10100 5150 2    50   Input ~ 0
A4988_1_2B
Text GLabel 10100 5300 2    50   Input ~ 0
A4988_2_1B
Text GLabel 10100 5400 2    50   Input ~ 0
A4988_2_1A
Text GLabel 10100 5500 2    50   Input ~ 0
A4988_2_2A
Text GLabel 10100 5600 2    50   Input ~ 0
A4988_2_2B
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 5E2432B3
P 9900 5050
F 0 "J3" H 9818 4625 50  0000 C CNN
F 1 "Conn_01x04" H 9818 4716 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 9900 5050 50  0001 C CNN
F 3 "~" H 9900 5050 50  0001 C CNN
	1    9900 5050
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 5E259196
P 9900 5500
F 0 "J4" H 9818 5075 50  0000 C CNN
F 1 "Conn_01x04" H 9818 5166 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 9900 5500 50  0001 C CNN
F 3 "~" H 9900 5500 50  0001 C CNN
	1    9900 5500
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 5E2CAF3D
P 2650 4150
F 0 "#PWR02" H 2650 4000 50  0001 C CNN
F 1 "+5V" H 2650 4300 50  0000 C CNN
F 2 "" H 2650 4150 50  0001 C CNN
F 3 "" H 2650 4150 50  0001 C CNN
	1    2650 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5E2CC757
P 2650 5750
F 0 "#PWR03" H 2650 5500 50  0001 C CNN
F 1 "GND" H 2655 5577 50  0000 C CNN
F 2 "" H 2650 5750 50  0001 C CNN
F 3 "" H 2650 5750 50  0001 C CNN
	1    2650 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5E2D1902
P 3600 5600
F 0 "C3" H 3692 5646 50  0000 L CNN
F 1 "100nF" H 3692 5555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3600 5600 50  0001 C CNN
F 3 "~" H 3600 5600 50  0001 C CNN
	1    3600 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 5450 3600 5500
Wire Wire Line
	3600 5750 3600 5700
$Comp
L power:GND #PWR07
U 1 1 5E2D190E
P 3600 5750
F 0 "#PWR07" H 3600 5500 50  0001 C CNN
F 1 "GND" H 3605 5577 50  0000 C CNN
F 2 "" H 3600 5750 50  0001 C CNN
F 3 "" H 3600 5750 50  0001 C CNN
	1    3600 5750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR06
U 1 1 5E2D1916
P 3600 5450
F 0 "#PWR06" H 3600 5300 50  0001 C CNN
F 1 "+5V" H 3615 5623 50  0000 C CNN
F 2 "" H 3600 5450 50  0001 C CNN
F 3 "" H 3600 5450 50  0001 C CNN
	1    3600 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 5450 2150 5750
Wire Wire Line
	2150 5750 2650 5750
Connection ~ 2650 5750
$Comp
L Device:R_Small R1
U 1 1 5E2EA5FB
P 1900 5350
F 0 "R1" V 2096 5350 50  0000 C CNN
F 1 "10K" V 2005 5350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 1900 5350 50  0001 C CNN
F 3 "~" H 1900 5350 50  0001 C CNN
	1    1900 5350
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5E2EAED5
P 1700 5350
F 0 "#PWR01" H 1700 5200 50  0001 C CNN
F 1 "+5V" V 1715 5478 50  0000 L CNN
F 2 "" H 1700 5350 50  0001 C CNN
F 3 "" H 1700 5350 50  0001 C CNN
	1    1700 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1700 5350 1800 5350
Wire Wire Line
	2000 5350 2150 5350
Text GLabel 2150 5050 0    50   Input ~ 0
MOTOR_2_PULSE
Text GLabel 2150 5150 0    50   Input ~ 0
MOTOR_2_DIR
$Comp
L power:+3V3 #PWR014
U 1 1 5E34C286
P 6300 6500
F 0 "#PWR014" H 6300 6350 50  0001 C CNN
F 1 "+3V3" V 6315 6628 50  0000 L CNN
F 2 "" H 6300 6500 50  0001 C CNN
F 3 "" H 6300 6500 50  0001 C CNN
	1    6300 6500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5E34D3E1
P 6300 6600
F 0 "#PWR015" H 6300 6350 50  0001 C CNN
F 1 "GND" V 6305 6472 50  0000 R CNN
F 2 "" H 6300 6600 50  0001 C CNN
F 3 "" H 6300 6600 50  0001 C CNN
	1    6300 6600
	0    1    1    0   
$EndComp
Text GLabel 6200 6700 0    50   Input ~ 0
MPU_9250_SCL
Text GLabel 6200 6800 0    50   Input ~ 0
MPU_9250_SDA
Wire Wire Line
	6200 6700 6300 6700
Wire Wire Line
	6200 6800 6300 6800
$Comp
L power:+3V3 #PWR012
U 1 1 5E379D2F
P 5515 5405
F 0 "#PWR012" H 5515 5255 50  0001 C CNN
F 1 "+3V3" V 5515 5655 50  0000 C CNN
F 2 "" H 5515 5405 50  0001 C CNN
F 3 "" H 5515 5405 50  0001 C CNN
	1    5515 5405
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5E382855
P 5515 5705
F 0 "#PWR013" H 5515 5455 50  0001 C CNN
F 1 "GND" V 5515 5505 50  0000 C CNN
F 2 "" H 5515 5705 50  0001 C CNN
F 3 "" H 5515 5705 50  0001 C CNN
	1    5515 5705
	0    1    1    0   
$EndComp
Text GLabel 5515 5805 0    50   Input ~ 0
UART_ROS_TX
Text GLabel 5515 5905 0    50   Input ~ 0
UART_ROS_RX
Wire Notes Line width 39 style solid rgb(0, 194, 0)
	5150 7600 5150 6200
Wire Notes Line width 39 style solid rgb(0, 194, 0)
	5150 6200 650  6200
Wire Notes Line width 39 style solid rgb(0, 194, 0)
	650  6200 650  7600
Wire Notes Line width 39 style solid rgb(0, 194, 0)
	650  7600 5150 7600
Wire Notes Line width 39 style solid rgb(0, 194, 0)
	11050 650  6000 650 
Wire Notes Line width 39 style solid rgb(0, 194, 0)
	6000 650  6000 6050
Wire Notes Line width 39 style solid rgb(0, 194, 0)
	6000 6050 11050 6050
Wire Notes Line width 39 style solid rgb(0, 194, 0)
	11050 6050 11050 650 
Wire Notes Line width 39 style solid rgb(0, 194, 0)
	5850 650  650  650 
Wire Notes Line width 39 style solid rgb(0, 194, 0)
	650  650  650  3750
Wire Notes Line width 39 style solid rgb(0, 194, 0)
	650  3750 5850 3750
Wire Notes Line width 39 style solid rgb(0, 194, 0)
	5850 3750 5850 650 
Wire Notes Line width 39 style solid rgb(0, 194, 0)
	6850 6200 5300 6200
Wire Notes Line width 39 style solid rgb(0, 194, 0)
	5300 6200 5300 7600
Wire Notes Line width 39 style solid rgb(0, 194, 0)
	5300 7600 6850 7600
Wire Notes Line width 39 style solid rgb(0, 194, 0)
	6850 7600 6850 6200
Text GLabel 6950 3600 0    50   Input ~ 0
A4988_1_MS3
Text GLabel 6950 3500 0    50   Input ~ 0
A4988_1_MS2
Text GLabel 6950 3400 0    50   Input ~ 0
A4988_1_MS1
Text GLabel 6950 3200 0    50   Input ~ 0
A4988_1_DIR
Text GLabel 6950 3100 0    50   Input ~ 0
A4988_1_STEP
Wire Wire Line
	6950 3600 7050 3600
Wire Wire Line
	6950 3500 7050 3500
Wire Wire Line
	6950 3400 7050 3400
Wire Wire Line
	6950 3200 7050 3200
Wire Wire Line
	6950 3100 7050 3100
Text GLabel 8050 3300 2    50   Input ~ 0
A4988_1_2B
Text GLabel 8050 3200 2    50   Input ~ 0
A4988_1_2A
Text GLabel 8050 3100 2    50   Input ~ 0
A4988_1_1A
Text GLabel 8050 3000 2    50   Input ~ 0
A4988_1_1B
Wire Wire Line
	7950 3300 8050 3300
Wire Wire Line
	7950 3200 8050 3200
Wire Wire Line
	7950 3100 8050 3100
Wire Wire Line
	7950 3000 8050 3000
Wire Notes Line width 39 style solid rgb(0, 194, 0)
	4150 3900 650  3900
Wire Notes Line width 39 style solid rgb(0, 194, 0)
	650  3900 650  6050
Wire Notes Line width 39 style solid rgb(0, 194, 0)
	650  6050 4150 6050
Wire Notes Line width 39 style solid rgb(0, 194, 0)
	4150 6050 4150 3900
Wire Notes Line width 39 style solid rgb(0, 194, 0)
	5850 5025 4300 5025
Wire Notes Line width 39 style solid rgb(0, 194, 0)
	4300 5025 4300 6050
Wire Notes Line width 39 style solid rgb(0, 194, 0)
	4300 6050 5850 6050
Wire Notes Line width 39 style solid rgb(0, 194, 0)
	5850 6050 5850 5025
$Comp
L power:+5V #PWR011
U 1 1 5DFF9BED
P 4950 4400
F 0 "#PWR011" H 4950 4250 50  0001 C CNN
F 1 "+5V" V 4965 4528 50  0000 L CNN
F 2 "" H 4950 4400 50  0001 C CNN
F 3 "" H 4950 4400 50  0001 C CNN
	1    4950 4400
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5DFFA2EE
P 4950 4300
F 0 "#PWR010" H 4950 4050 50  0001 C CNN
F 1 "GND" V 4955 4172 50  0000 R CNN
F 2 "" H 4950 4300 50  0001 C CNN
F 3 "" H 4950 4300 50  0001 C CNN
	1    4950 4300
	0    1    1    0   
$EndComp
Text GLabel 4950 4500 0    50   Input ~ 0
DS1307_SDA
Text GLabel 4950 4600 0    50   Input ~ 0
DS1307_SCL
Wire Notes Line width 39 style solid rgb(0, 194, 0)
	5850 3900 4300 3900
Wire Notes Line width 39 style solid rgb(0, 194, 0)
	4300 3900 4300 4870
Wire Notes Line width 39 style solid rgb(0, 194, 0)
	4300 4870 5850 4870
Wire Notes Line width 39 style solid rgb(0, 194, 0)
	5850 4870 5850 3900
Text Notes 750  900  0    118  ~ 24
STM32F4 DISCO BOARD\n
Text Notes 700  4550 0    118  ~ 24
74HC245\n\n\n
Text Notes 780  6460 0    118  ~ 24
POWER SUPPLY
Text Notes 4350 4150 0    118  ~ 24
RTC\n
Text Notes 4350 5270 0    118  ~ 24
ROSSERIAL\n
Text Notes 5350 6450 0    118  ~ 24
IMU
Text Notes 6050 900  0    118  ~ 24
STEP DRV A4988\n
$Comp
L Connector_Generic:Conn_01x05 J5
U 1 1 5E4FBAD6
P 5150 4500
F 0 "J5" H 5230 4542 50  0000 L CNN
F 1 "Conn_01x05" H 5230 4451 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 5150 4500 50  0001 C CNN
F 3 "~" H 5150 4500 50  0001 C CNN
	1    5150 4500
	1    0    0    -1  
$EndComp
Text GLabel 3900 2000 0    50   Input ~ 0
DS1307_SCL
Text GLabel 4650 2100 2    50   Input ~ 0
DS1307_SDA
Text GLabel 1950 1600 0    50   Input ~ 0
UART_ROS_RX
Text GLabel 2700 1600 2    50   Input ~ 0
UART_ROS_TX
Text GLabel 4650 2200 2    50   Input ~ 0
MPU_9250_SDA
Text GLabel 3900 2200 0    50   Input ~ 0
MPU_9250_SCL
Text GLabel 1950 1700 0    50   Input ~ 0
MOTOR_2_DIR
Text GLabel 1950 1800 0    50   Input ~ 0
MOTOR_2_PULSE
Text GLabel 1950 2000 0    50   Input ~ 0
MOTOR_1_DIR
Text GLabel 1950 1900 0    50   Input ~ 0
MOTOR_1_PULSE
$Comp
L power:+5V #PWR0101
U 1 1 5E5B85DF
P 3900 1200
F 0 "#PWR0101" H 3900 1050 50  0001 C CNN
F 1 "+5V" H 3915 1373 50  0000 C CNN
F 2 "" H 3900 1200 50  0001 C CNN
F 3 "" H 3900 1200 50  0001 C CNN
	1    3900 1200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5E5B8D51
P 3900 1100
F 0 "#PWR0102" H 3900 850 50  0001 C CNN
F 1 "GND" H 3905 927 50  0000 C CNN
F 2 "" H 3900 1100 50  0001 C CNN
F 3 "" H 3900 1100 50  0001 C CNN
	1    3900 1100
	0    1    1    0   
$EndComp
$Comp
L lm2596_module:LM2596_MODULE U3
U 1 1 5E12ED1D
P 3945 6710
F 0 "U3" H 4185 6906 50  0000 L CNN
F 1 "LM2596_MODULE" H 4185 6815 50  0000 L CNN
F 2 "footprints:LM2596_MODULE" H 3945 6710 50  0001 C CNN
F 3 "" H 3945 6710 50  0001 C CNN
	1    3945 6710
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5E005F59
P 840 6940
F 0 "J1" H 758 6615 50  0000 C CNN
F 1 "Conn_01x02" H 758 6706 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 840 6940 50  0001 C CNN
F 3 "~" H 840 6940 50  0001 C CNN
	1    840  6940
	-1   0    0    1   
$EndComp
Wire Wire Line
	1040 6940 1040 7385
$Comp
L power:GND #PWR0103
U 1 1 5EED92EC
P 3200 7435
F 0 "#PWR0103" H 3200 7185 50  0001 C CNN
F 1 "GND" H 3205 7262 50  0000 C CNN
F 2 "" H 3200 7435 50  0001 C CNN
F 3 "" H 3200 7435 50  0001 C CNN
	1    3200 7435
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 7435 3200 7395
$Comp
L Regulator_Linear:AMS1117-5.0 U5
U 1 1 5EF32814
P 2070 6840
F 0 "U5" H 2070 7082 50  0000 C CNN
F 1 "AMS1117-5.0" H 2070 6991 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 2070 7040 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 2170 6590 50  0001 C CNN
	1    2070 6840
	1    0    0    -1  
$EndComp
Wire Wire Line
	1040 6840 1525 6840
Wire Wire Line
	2700 6845 2370 6845
Wire Wire Line
	2370 6845 2370 6840
Wire Wire Line
	2070 7385 2070 7140
Wire Wire Line
	1040 7385 1525 7385
Wire Wire Line
	2070 7385 2700 7385
Wire Wire Line
	2700 7345 2700 7385
Connection ~ 2070 7385
Connection ~ 2700 7385
Wire Wire Line
	2700 7385 2700 7395
$Comp
L Device:C_Small C1
U 1 1 5EF605ED
P 1525 7245
F 0 "C1" H 1617 7291 50  0000 L CNN
F 1 "22uF" H 1617 7200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1525 7245 50  0001 C CNN
F 3 "~" H 1525 7245 50  0001 C CNN
	1    1525 7245
	1    0    0    -1  
$EndComp
Wire Wire Line
	1525 6840 1525 7145
Connection ~ 1525 6840
Wire Wire Line
	1525 6840 1770 6840
Wire Wire Line
	1525 7345 1525 7385
Connection ~ 1525 7385
Wire Wire Line
	1525 7385 2070 7385
$Comp
L power:+9V #PWR0104
U 1 1 5EF8AB00
P 1525 6840
F 0 "#PWR0104" H 1525 6690 50  0001 C CNN
F 1 "+9V" H 1540 7013 50  0000 C CNN
F 2 "" H 1525 6840 50  0001 C CNN
F 3 "" H 1525 6840 50  0001 C CNN
	1    1525 6840
	1    0    0    -1  
$EndComp
$Comp
L power:+9V #PWR0105
U 1 1 5EF9D117
P 10100 1000
F 0 "#PWR0105" H 10100 850 50  0001 C CNN
F 1 "+9V" V 10115 1128 50  0000 L CNN
F 2 "" H 10100 1000 50  0001 C CNN
F 3 "" H 10100 1000 50  0001 C CNN
	1    10100 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	6850 1650 6850 1600
Wire Wire Line
	6850 1350 6850 1400
$Comp
L Device:C_Small C9
U 1 1 5E08C332
P 6850 1500
F 0 "C9" H 6942 1546 50  0000 L CNN
F 1 "100nF" H 6942 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6850 1500 50  0001 C CNN
F 3 "~" H 6850 1500 50  0001 C CNN
	1    6850 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 1750 9200 1700
Wire Wire Line
	9200 1450 9200 1500
$Comp
L Device:C_Small C13
U 1 1 5E0E8BBF
P 9200 1600
F 0 "C13" H 9292 1646 50  0000 L CNN
F 1 "100nF" H 9292 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9200 1600 50  0001 C CNN
F 3 "~" H 9200 1600 50  0001 C CNN
	1    9200 1600
	1    0    0    -1  
$EndComp
Text GLabel 3150 4550 2    50   Input ~ 0
A4988_1_DIR
Text GLabel 3150 4650 2    50   Input ~ 0
A4988_1_STEP
Text GLabel 2150 4650 0    50   Input ~ 0
MOTOR_1_PULSE
Text GLabel 2150 4550 0    50   Input ~ 0
MOTOR_1_DIR
$Comp
L Connector_Generic:Conn_01x06 J2
U 1 1 5E049175
P 5715 5605
F 0 "J2" H 5795 5597 50  0000 L CNN
F 1 "Conn_01x06" H 5795 5506 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Horizontal" H 5715 5605 50  0001 C CNN
F 3 "~" H 5715 5605 50  0001 C CNN
	1    5715 5605
	1    0    0    -1  
$EndComp
$EndSCHEMATC
