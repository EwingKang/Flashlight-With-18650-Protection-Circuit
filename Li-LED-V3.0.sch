EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
LIBS:references
LIBS:Li-LED-V3.0-cache
EELAYER 25 0
EELAYER END
$Descr User 17000 11000
encoding utf-8
Sheet 1 1
Title "1-cell Lithium High Power LED Driver with Protection"
Date "2017-10-14"
Rev "3.4 beta"
Comp "Ewing Kang"
Comment1 "v3.1 Lo voltage cutoff implementation complete!"
Comment2 "v3.2 Lo voltage performance of 2904 improved"
Comment3 "v3.3 warning light complete, low V confirm"
Comment4 "v3.4 Bug fix, Full LED array"
$EndDescr
$Comp
L SW_Push SW1
U 1 1 59D0B80C
P 9400 7100
F 0 "SW1" H 9350 7250 50  0000 L CNN
F 1 "SW_onoff" H 9400 7040 50  0000 C CNN
F 2 "" H 9400 7300 50  0001 C CNN
F 3 "" H 9400 7300 50  0001 C CNN
	1    9400 7100
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR?
U 1 1 59D0B863
P 8900 8950
F 0 "#PWR?" H 8900 8700 50  0001 C CNN
F 1 "Earth" H 8900 8800 50  0001 C CNN
F 2 "" H 8900 8950 50  0001 C CNN
F 3 "" H 8900 8950 50  0001 C CNN
	1    8900 8950
	1    0    0    -1  
$EndComp
$Comp
L Q_PNP_CBE T1
U 1 1 59D0B94B
P 10200 7100
F 0 "T1" H 10400 7150 50  0000 L CNN
F 1 "PN4355" H 10400 7050 50  0000 L CNN
F 2 "" H 10400 7200 50  0001 C CNN
F 3 "" H 10200 7100 50  0001 C CNN
	1    10200 7100
	1    0    0    1   
$EndComp
$Comp
L R R1
U 1 1 59D0BA96
P 9650 6850
F 0 "R1" V 9730 6850 50  0000 C CNN
F 1 "20K" V 9650 6850 50  0000 C CNN
F 2 "" V 9580 6850 50  0001 C CNN
F 3 "" H 9650 6850 50  0001 C CNN
	1    9650 6850
	1    0    0    -1  
$EndComp
$Comp
L R RT1b
U 1 1 59D0BAFB
P 9850 7100
F 0 "RT1b" V 9930 7100 50  0000 C CNN
F 1 "1K" V 9850 7100 50  0000 C CNN
F 2 "10K" V 9780 7100 50  0001 C CNN
F 3 "" H 9850 7100 50  0001 C CNN
	1    9850 7100
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 59D0BB7C
P 9850 7350
F 0 "R2" V 9950 7350 50  0000 C CNN
F 1 "20K" V 9850 7350 50  0000 C CNN
F 2 "" V 9780 7350 50  0001 C CNN
F 3 "" H 9850 7350 50  0001 C CNN
	1    9850 7350
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR?
U 1 1 59D0C487
P 10300 6700
F 0 "#PWR?" H 10300 6550 50  0001 C CNN
F 1 "VCC" H 10300 6850 50  0000 C CNN
F 2 "" H 10300 6700 50  0001 C CNN
F 3 "" H 10300 6700 50  0001 C CNN
	1    10300 6700
	1    0    0    -1  
$EndComp
$Comp
L R RT2g
U 1 1 59D0C9A7
P 11400 8100
F 0 "RT2g" V 11480 8100 50  0000 C CNN
F 1 "10K" V 11400 8100 50  0000 C CNN
F 2 "" V 11330 8100 50  0001 C CNN
F 3 "" H 11400 8100 50  0001 C CNN
	1    11400 8100
	-1   0    0    1   
$EndComp
$Comp
L TL431LP IC2
U 1 1 59D0C2B8
P 9350 8850
F 0 "IC2" H 9350 9100 50  0000 C CNN
F 1 "TL431LP" H 9350 8750 50  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 9350 8700 50  0001 C CIN
F 3 "" H 9350 8850 50  0001 C CNN
	1    9350 8850
	0    -1   -1   0   
$EndComp
$Comp
L R R5
U 1 1 59D0C333
P 9350 8150
F 0 "R5" V 9430 8150 50  0000 C CNN
F 1 "680Ω" V 9350 8150 39  0000 C CNN
F 2 "" V 9280 8150 50  0001 C CNN
F 3 "" H 9350 8150 50  0001 C CNN
	1    9350 8150
	-1   0    0    1   
$EndComp
$Comp
L R R3
U 1 1 59D0C450
P 9650 8150
F 0 "R3" V 9730 8150 50  0000 C CNN
F 1 "20K" V 9650 8150 50  0000 C CNN
F 2 "" V 9580 8150 50  0001 C CNN
F 3 "" H 9650 8150 50  0001 C CNN
	1    9650 8150
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 59D0C4A4
P 9650 8800
F 0 "R4" V 9850 8800 50  0000 C CNN
F 1 "12.51K" V 9750 8800 50  0000 C CNN
F 2 "" V 9580 8800 50  0001 C CNN
F 3 "" H 9650 8800 50  0001 C CNN
	1    9650 8800
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR?
U 1 1 59D0C697
P 9650 8950
F 0 "#PWR?" H 9650 8700 50  0001 C CNN
F 1 "Earth" H 9650 8800 50  0001 C CNN
F 2 "" H 9650 8950 50  0001 C CNN
F 3 "" H 9650 8950 50  0001 C CNN
	1    9650 8950
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR?
U 1 1 59D0CDD2
P 9350 8950
F 0 "#PWR?" H 9350 8700 50  0001 C CNN
F 1 "Earth" H 9350 8800 50  0001 C CNN
F 2 "" H 9350 8950 50  0001 C CNN
F 3 "" H 9350 8950 50  0001 C CNN
	1    9350 8950
	1    0    0    -1  
$EndComp
$Comp
L Q_PMOS_GDS T3
U 1 1 59D0D99D
P 13850 7350
F 0 "T3" H 14050 7350 50  0000 L CNN
F 1 "AO3415" H 14050 7250 50  0000 L CNN
F 2 "" H 14050 7450 50  0001 C CNN
F 3 "" H 13850 7350 50  0001 C CNN
	1    13850 7350
	1    0    0    1   
$EndComp
$Comp
L Earth #PWR?
U 1 1 59D0E513
P 13950 8950
F 0 "#PWR?" H 13950 8700 50  0001 C CNN
F 1 "Earth" H 13950 8800 50  0001 C CNN
F 2 "" H 13950 8950 50  0001 C CNN
F 3 "" H 13950 8950 50  0001 C CNN
	1    13950 8950
	1    0    0    -1  
$EndComp
$Comp
L AMC7135PFKA_SOT89 IC3
U 1 1 59D0F635
P 13950 8450
F 0 "IC3" H 13950 8400 50  0000 C CNN
F 1 "AMC7135" H 13750 8500 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT89-3_Housing" H 13825 8725 50  0001 C CNN
F 3 "" H 13950 8475 50  0001 C CNN
	1    13950 8450
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR?
U 1 1 59D0FAAF
P 13950 7550
F 0 "#PWR?" H 13950 7400 50  0001 C CNN
F 1 "VDD" V 13850 7650 50  0000 C CNN
F 2 "" H 13950 7550 50  0001 C CNN
F 3 "" H 13950 7550 50  0001 C CNN
	1    13950 7550
	0    -1   -1   0   
$EndComp
$Comp
L LM2904 IC1
U 2 1 59D0A370
P 10500 8500
F 0 "IC1" H 10500 8700 50  0000 L CNN
F 1 "LM2904" H 10250 8150 50  0000 L CNN
F 2 "" H 10500 8500 50  0001 C CNN
F 3 "" H 10500 8500 50  0001 C CNN
	2    10500 8500
	1    0    0    -1  
$EndComp
$Comp
L PN2222A T4
U 1 1 59D1FE87
P 13450 8650
F 0 "T4" H 13350 8800 50  0000 L CNN
F 1 "PN2222A" V 13650 8600 31  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 13650 8575 50  0001 L CIN
F 3 "" H 13450 8650 50  0001 L CNN
	1    13450 8650
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR?
U 1 1 59D2008A
P 13550 8950
F 0 "#PWR?" H 13550 8700 50  0001 C CNN
F 1 "Earth" H 13550 8800 50  0001 C CNN
F 2 "" H 13550 8950 50  0001 C CNN
F 3 "" H 13550 8950 50  0001 C CNN
	1    13550 8950
	1    0    0    -1  
$EndComp
$Comp
L LED D2
U 1 1 59D20130
P 13550 8250
F 0 "D2" H 13550 8350 50  0000 C CNN
F 1 "warning" H 13550 8150 31  0000 C CNN
F 2 " " H 13550 8250 50  0001 C CNN
F 3 "" H 13550 8250 50  0001 C CNN
	1    13550 8250
	0    -1   -1   0   
$EndComp
$Comp
L R R7
U 1 1 59D201D8
P 10950 8500
F 0 "R7" V 11050 8500 50  0000 C CNN
F 1 "1K" V 10950 8500 50  0000 C CNN
F 2 "" V 10880 8500 50  0001 C CNN
F 3 "" H 10950 8500 50  0001 C CNN
	1    10950 8500
	0    -1   -1   0   
$EndComp
$Comp
L R R6
U 1 1 59D209D9
P 13550 7950
F 0 "R6" V 13630 7950 50  0000 C CNN
F 1 "100" V 13550 7950 50  0000 C CNN
F 2 "" V 13480 7950 50  0001 C CNN
F 3 "" H 13550 7950 50  0001 C CNN
	1    13550 7950
	1    0    0    -1  
$EndComp
$Comp
L CP1 C1
U 1 1 59D325A6
P 9150 6900
F 0 "C1" H 9000 6750 50  0000 L CNN
F 1 "1μF" H 9000 7050 50  0000 L CNN
F 2 "" H 9150 6900 50  0001 C CNN
F 3 "" H 9150 6900 50  0001 C CNN
	1    9150 6900
	1    0    0    -1  
$EndComp
$Comp
L R R_sw
U 1 1 59D33725
P 9150 7550
F 0 "R_sw" V 9230 7550 50  0000 C CNN
F 1 "100K" V 9150 7550 50  0000 C CNN
F 2 "" V 9080 7550 50  0001 C CNN
F 3 "" H 9150 7550 50  0001 C CNN
	1    9150 7550
	1    0    0    -1  
$EndComp
$Comp
L R R_ovrd
U 1 1 59D34278
P 8900 8650
F 0 "R_ovrd" V 8980 8650 50  0000 C CNN
F 1 "1K" V 8900 8650 50  0000 C CNN
F 2 "" V 8830 8650 50  0001 C CNN
F 3 "" H 8900 8650 50  0001 C CNN
	1    8900 8650
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW2
U 1 1 59D343D1
P 8900 7700
F 0 "SW2" H 9200 7800 50  0001 L CNN
F 1 "SW_override" H 9250 7700 50  0001 C CNN
F 2 "" H 8900 7900 50  0001 C CNN
F 3 "" H 8900 7900 50  0001 C CNN
	1    8900 7700
	0    1    -1   0   
$EndComp
$Comp
L LED D1
U 1 1 59D0E475
P 14250 7950
F 0 "D1" H 14250 8050 50  0000 C CNN
F 1 "LED1" H 14250 7850 50  0000 C CNN
F 2 " " H 14250 7950 50  0001 C CNN
F 3 "" H 14250 7950 50  0001 C CNN
	1    14250 7950
	0    -1   -1   0   
$EndComp
$Comp
L SW_Push_SPDT SW2
U 1 1 59D3A2D7
P 8600 7700
F 0 "SW2" V 8450 8100 50  0000 C CNN
F 1 "SW_override" H 8600 7550 39  0000 C CNN
F 2 "" H 8600 7700 50  0001 C CNN
F 3 "" H 8600 7700 50  0001 C CNN
	1    8600 7700
	0    1    -1   0   
$EndComp
$Comp
L C_Small C2
U 1 1 59D3B2A2
P 8600 8300
F 0 "C2" H 8610 8370 50  0000 L CNN
F 1 "0.1μF" H 8610 8220 50  0000 L CNN
F 2 "" H 8600 8300 50  0001 C CNN
F 3 "" H 8600 8300 50  0001 C CNN
	1    8600 8300
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 59D3B3D3
P 8600 8650
F 0 "R8" V 8680 8650 50  0000 C CNN
F 1 "1K" V 8600 8650 50  0000 C CNN
F 2 "" V 8530 8650 50  0001 C CNN
F 3 "" H 8600 8650 50  0001 C CNN
	1    8600 8650
	-1   0    0    1   
$EndComp
$Comp
L Earth #PWR?
U 1 1 59D3B4AD
P 8600 8950
F 0 "#PWR?" H 8600 8700 50  0001 C CNN
F 1 "Earth" H 8600 8800 50  0001 C CNN
F 2 "" H 8600 8950 50  0001 C CNN
F 3 "" H 8600 8950 50  0001 C CNN
	1    8600 8950
	1    0    0    -1  
$EndComp
$Comp
L PN2222A T2
U 1 1 59D87FE8
P 11300 8650
F 0 "T2" H 11200 8800 50  0000 L CNN
F 1 "PN2222A" V 11500 8550 31  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 11500 8575 50  0001 L CIN
F 3 "" H 11300 8650 50  0001 L CNN
	1    11300 8650
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR?
U 1 1 59D88486
P 11400 8950
F 0 "#PWR?" H 11400 8700 50  0001 C CNN
F 1 "Earth" H 11400 8800 50  0001 C CNN
F 2 "" H 11400 8950 50  0001 C CNN
F 3 "" H 11400 8950 50  0001 C CNN
	1    11400 8950
	1    0    0    -1  
$EndComp
$Comp
L VN2222LL T2
U 1 1 59D89D40
P 11600 8350
F 0 "T2" H 11550 8500 50  0000 L CNN
F 1 "VN2222LL" V 11800 8250 31  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 11800 8275 50  0001 L CIN
F 3 "" H 11600 8350 50  0001 L CNN
	1    11600 8350
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR?
U 1 1 59D8A3A4
P 11700 8950
F 0 "#PWR?" H 11700 8700 50  0001 C CNN
F 1 "Earth" H 11700 8800 50  0001 C CNN
F 2 "" H 11700 8950 50  0001 C CNN
F 3 "" H 11700 8950 50  0001 C CNN
	1    11700 8950
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 59D9ACC2
P 10050 8400
F 0 "R10" V 10130 8400 50  0000 C CNN
F 1 "51K" V 10050 8400 50  0000 C CNN
F 2 "" V 9980 8400 50  0001 C CNN
F 3 "" H 10050 8400 50  0001 C CNN
	1    10050 8400
	0    1    1    0   
$EndComp
$Comp
L R R9
U 1 1 59D9AD2F
P 10200 8200
F 0 "R9" V 10280 8200 50  0000 C CNN
F 1 "51K" V 10200 8200 50  0000 C CNN
F 2 "" V 10130 8200 50  0001 C CNN
F 3 "" H 10200 8200 50  0001 C CNN
	1    10200 8200
	1    0    0    -1  
$EndComp
$Comp
L LM2904 IC1
U 1 1 59DC72FD
P 12650 8500
F 0 "IC1" H 12650 8700 50  0000 L CNN
F 1 "LM2904" H 12650 8300 50  0000 L CNN
F 2 "" H 12650 8500 50  0001 C CNN
F 3 "" H 12650 8500 50  0001 C CNN
	1    12650 8500
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 59DC7D54
P 12350 8200
F 0 "R14" V 12430 8200 50  0000 C CNN
F 1 "51K" V 12350 8200 50  0000 C CNN
F 2 "" V 12280 8200 50  0001 C CNN
F 3 "" H 12350 8200 50  0001 C CNN
	1    12350 8200
	1    0    0    -1  
$EndComp
$Comp
L R R13
U 1 1 59DC7E1A
P 12200 8400
F 0 "R13" V 12280 8400 50  0000 C CNN
F 1 "51K" V 12200 8400 50  0000 C CNN
F 2 "" V 12130 8400 50  0001 C CNN
F 3 "" H 12200 8400 50  0001 C CNN
	1    12200 8400
	0    1    1    0   
$EndComp
$Comp
L R R15
U 1 1 59DC803F
P 13100 8500
F 0 "R15" V 13200 8500 50  0000 C CNN
F 1 "1K" V 13100 8500 50  0000 C CNN
F 2 "" V 13030 8500 50  0001 C CNN
F 3 "" H 13100 8500 50  0001 C CNN
	1    13100 8500
	0    -1   -1   0   
$EndComp
$Comp
L R R11
U 1 1 59DC8281
P 12000 8150
F 0 "R11" V 12080 8150 50  0000 C CNN
F 1 "20K" V 12000 8150 50  0000 C CNN
F 2 "" V 11930 8150 50  0001 C CNN
F 3 "" H 12000 8150 50  0001 C CNN
	1    12000 8150
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 59DC832E
P 12000 8750
F 0 "R12" V 12080 8750 50  0000 C CNN
F 1 "12K" V 12000 8750 50  0000 C CNN
F 2 "" V 11930 8750 50  0001 C CNN
F 3 "" H 12000 8750 50  0001 C CNN
	1    12000 8750
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR?
U 1 1 59DC873C
P 12000 8950
F 0 "#PWR?" H 12000 8700 50  0001 C CNN
F 1 "Earth" H 12000 8800 50  0001 C CNN
F 2 "" H 12000 8950 50  0001 C CNN
F 3 "" H 12000 8950 50  0001 C CNN
	1    12000 8950
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR?
U 1 1 59DC8B42
P 12550 8950
F 0 "#PWR?" H 12550 8700 50  0001 C CNN
F 1 "Earth" H 12550 8800 50  0001 C CNN
F 2 "" H 12550 8950 50  0001 C CNN
F 3 "" H 12550 8950 50  0001 C CNN
	1    12550 8950
	1    0    0    -1  
$EndComp
$Comp
L R R16
U 1 1 59DC944F
P 10800 8700
F 0 "R16" V 10880 8700 50  0000 C CNN
F 1 "20K" V 10800 8700 50  0000 C CNN
F 2 "" V 10730 8700 50  0001 C CNN
F 3 "" H 10800 8700 50  0001 C CNN
	1    10800 8700
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR?
U 1 1 59DC95B5
P 10800 8950
F 0 "#PWR?" H 10800 8700 50  0001 C CNN
F 1 "Earth" H 10800 8800 50  0001 C CNN
F 2 "" H 10800 8950 50  0001 C CNN
F 3 "" H 10800 8950 50  0001 C CNN
	1    10800 8950
	1    0    0    -1  
$EndComp
$Comp
L AMC7135PFKA_SOT89 IC4
U 1 1 59E225E4
P 14550 8450
F 0 "IC4" H 14550 8400 50  0000 C CNN
F 1 "AMC7135" H 14350 8500 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT89-3_Housing" H 14425 8725 50  0001 C CNN
F 3 "" H 14550 8475 50  0001 C CNN
	1    14550 8450
	1    0    0    -1  
$EndComp
$Comp
L AMC7135PFKA_SOT89 IC5
U 1 1 59E22684
P 15350 8450
F 0 "IC5" H 15350 8400 50  0000 C CNN
F 1 "AMC7135" H 15150 8500 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT89-3_Housing" H 15225 8725 50  0001 C CNN
F 3 "" H 15350 8475 50  0001 C CNN
	1    15350 8450
	1    0    0    -1  
$EndComp
$Comp
L AMC7135PFKA_SOT89 IC6
U 1 1 59E22BE0
P 16000 8450
F 0 "IC6" H 16000 8400 50  0000 C CNN
F 1 "AMC7135" H 15800 8500 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT89-3_Housing" H 15875 8725 50  0001 C CNN
F 3 "" H 16000 8475 50  0001 C CNN
	1    16000 8450
	1    0    0    -1  
$EndComp
$Comp
L LED D2
U 1 1 59E22DD7
P 14850 7950
F 0 "D2" H 14850 8050 50  0000 C CNN
F 1 "LED2" H 14850 7850 50  0000 C CNN
F 2 " " H 14850 7950 50  0001 C CNN
F 3 "" H 14850 7950 50  0001 C CNN
	1    14850 7950
	0    -1   -1   0   
$EndComp
$Comp
L LED D3
U 1 1 59E232DC
P 15650 7950
F 0 "D3" H 15650 8050 50  0000 C CNN
F 1 "LED3" H 15650 7850 50  0000 C CNN
F 2 " " H 15650 7950 50  0001 C CNN
F 3 "" H 15650 7950 50  0001 C CNN
	1    15650 7950
	0    -1   -1   0   
$EndComp
$Comp
L LED D4
U 1 1 59E23376
P 16300 7950
F 0 "D4" H 16300 8050 50  0000 C CNN
F 1 "LED4" H 16300 7850 50  0000 C CNN
F 2 " " H 16300 7950 50  0001 C CNN
F 3 "" H 16300 7950 50  0001 C CNN
	1    16300 7950
	0    -1   -1   0   
$EndComp
$Comp
L SW_SPDT SW3
U 1 1 59E2367B
P 15100 7550
F 0 "SW3" H 15100 7720 50  0000 C CNN
F 1 "SW_SPDT" H 15100 7350 50  0000 C CNN
F 2 "" H 15100 7550 50  0001 C CNN
F 3 "" H 15100 7550 50  0001 C CNN
	1    15100 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 7350 9650 7100
Wire Wire Line
	9650 7100 9650 7000
Wire Wire Line
	9600 7100 9650 7100
Wire Wire Line
	9650 7100 9700 7100
Connection ~ 9650 7100
Connection ~ 10300 6700
Wire Wire Line
	10300 6700 10300 6900
Wire Wire Line
	9350 7800 9350 8000
Connection ~ 9350 7800
Wire Wire Line
	9350 8600 9200 8600
Wire Wire Line
	9650 8300 9650 8600
Wire Wire Line
	9650 8600 9650 8650
Wire Wire Line
	9350 8300 9350 8400
Wire Wire Line
	9350 8400 9350 8600
Wire Wire Line
	9350 8600 9350 8750
Wire Wire Line
	9200 8850 9250 8850
Connection ~ 9350 8600
Wire Wire Line
	10300 7800 10300 7300
Wire Wire Line
	13950 7550 14250 7550
Wire Wire Line
	14250 7550 14550 7550
Wire Wire Line
	14550 7550 14850 7550
Wire Wire Line
	14850 7550 14900 7550
Wire Wire Line
	13950 7550 13950 8200
Wire Wire Line
	13950 8700 13950 8900
Wire Wire Line
	13950 8900 13950 8950
Connection ~ 13950 7550
Wire Wire Line
	9150 6750 9150 6700
Wire Wire Line
	9650 6700 9650 6700
Connection ~ 9650 6700
Wire Wire Line
	9150 7050 9150 7100
Wire Wire Line
	9150 7100 9150 7400
Wire Wire Line
	9150 7100 9200 7100
Connection ~ 9150 7100
Wire Wire Line
	13550 8450 13550 8400
Wire Wire Line
	9150 7700 9150 7800
Connection ~ 9650 7350
Wire Wire Line
	14250 8100 14250 8450
Wire Wire Line
	14250 8450 14250 8700
Wire Wire Line
	14250 7550 14250 7800
Wire Notes Line
	8700 7700 8900 7700
Wire Wire Line
	8600 8500 8600 8400
Wire Wire Line
	8600 8800 8600 8950
Connection ~ 9150 6700
Wire Wire Line
	8700 7350 8900 7350
Wire Wire Line
	8900 7350 9650 7350
Wire Wire Line
	9650 7350 9700 7350
Wire Wire Line
	8900 7350 8900 7500
Connection ~ 8900 7350
Wire Wire Line
	8700 7350 8700 7500
Wire Wire Line
	8500 6700 8500 7500
Wire Wire Line
	8600 7900 8600 8200
Wire Wire Line
	13950 6700 13950 7150
Wire Wire Line
	9650 7800 9650 8000
Connection ~ 9650 7800
Connection ~ 11400 7800
Wire Wire Line
	11700 8550 11700 8950
Wire Wire Line
	11700 7350 11700 8150
Connection ~ 11700 7350
Connection ~ 11400 8350
Wire Wire Line
	10200 8350 10200 8400
Wire Wire Line
	10200 8050 10800 8050
Wire Wire Line
	10800 8050 10800 8500
Wire Wire Line
	10800 8500 10800 8550
Connection ~ 10800 8500
Connection ~ 10200 8400
Connection ~ 9350 8400
Wire Wire Line
	9650 8600 10200 8600
Connection ~ 9650 8600
Wire Wire Line
	11400 7800 11400 7950
Wire Wire Line
	8900 8800 8900 8950
Wire Wire Line
	8900 8500 8900 7900
Connection ~ 10300 7800
Wire Wire Line
	9350 8400 9800 8400
Wire Wire Line
	9800 8400 9900 8400
Wire Wire Line
	9800 8400 9800 7900
Wire Wire Line
	9800 7900 11900 7900
Wire Wire Line
	11900 7900 11900 8400
Connection ~ 9800 8400
Wire Wire Line
	11900 8400 12050 8400
Wire Wire Line
	12350 8350 12350 8400
Connection ~ 12350 8400
Wire Wire Line
	12000 8300 12000 8600
Wire Wire Line
	12000 7800 12000 8000
Connection ~ 12000 7800
Wire Wire Line
	12350 8050 12950 8050
Wire Wire Line
	12950 8050 12950 8500
Connection ~ 12950 8500
Wire Wire Line
	12000 8950 12000 8900
Wire Wire Line
	12550 7800 12550 8200
Connection ~ 12550 7800
Wire Wire Line
	12550 8800 12550 8950
Wire Wire Line
	9150 7800 9350 7800
Wire Wire Line
	9350 7800 9650 7800
Wire Wire Line
	9650 7800 10300 7800
Wire Wire Line
	10300 7800 11400 7800
Wire Wire Line
	11400 7800 12000 7800
Wire Wire Line
	12000 7800 12550 7800
Wire Wire Line
	12550 7800 13550 7800
Wire Wire Line
	9200 8600 9200 8850
Wire Wire Line
	12000 8600 12350 8600
Connection ~ 12000 8600
Wire Wire Line
	10800 8850 10800 8950
Wire Wire Line
	11100 8500 11100 8650
Wire Wire Line
	11400 8250 11400 8350
Wire Wire Line
	11400 8350 11400 8450
Wire Wire Line
	11400 8850 11400 8950
Wire Wire Line
	13550 8850 13550 8950
Wire Wire Line
	13250 8500 13250 8650
Wire Wire Line
	14850 8100 14850 8450
Wire Wire Line
	14850 8450 14850 8700
Wire Wire Line
	14850 7550 14850 7800
Connection ~ 14250 7550
Wire Wire Line
	14550 8200 14550 7550
Connection ~ 14550 7550
Connection ~ 14850 7550
Wire Wire Line
	15300 7650 15350 7650
Wire Wire Line
	15350 7650 15650 7650
Wire Wire Line
	15650 7650 16000 7650
Wire Wire Line
	16000 7650 16300 7650
Wire Wire Line
	15650 7650 15650 7800
Wire Wire Line
	15350 7650 15350 8200
Connection ~ 15350 7650
Wire Wire Line
	15650 8100 15650 8450
Wire Wire Line
	15650 8450 15650 8700
Wire Wire Line
	16300 7650 16300 7800
Connection ~ 15650 7650
Wire Wire Line
	16300 8100 16300 8450
Wire Wire Line
	16300 8450 16300 8700
Wire Wire Line
	16000 8200 16000 7650
Connection ~ 16000 7650
$Comp
L Earth #PWR?
U 1 1 59E2475F
P 14550 8950
F 0 "#PWR?" H 14550 8700 50  0001 C CNN
F 1 "Earth" H 14550 8800 50  0001 C CNN
F 2 "" H 14550 8950 50  0001 C CNN
F 3 "" H 14550 8950 50  0001 C CNN
	1    14550 8950
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR?
U 1 1 59E247E8
P 15350 8950
F 0 "#PWR?" H 15350 8700 50  0001 C CNN
F 1 "Earth" H 15350 8800 50  0001 C CNN
F 2 "" H 15350 8950 50  0001 C CNN
F 3 "" H 15350 8950 50  0001 C CNN
	1    15350 8950
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR?
U 1 1 59E24871
P 16000 8950
F 0 "#PWR?" H 16000 8700 50  0001 C CNN
F 1 "Earth" H 16000 8800 50  0001 C CNN
F 2 "" H 16000 8950 50  0001 C CNN
F 3 "" H 16000 8950 50  0001 C CNN
	1    16000 8950
	1    0    0    -1  
$EndComp
Wire Wire Line
	14550 8700 14550 8900
Wire Wire Line
	14550 8900 14550 8950
Wire Wire Line
	15350 8700 15350 8900
Wire Wire Line
	15350 8900 15350 8950
Wire Wire Line
	16000 8700 16000 8900
Wire Wire Line
	16000 8900 16000 8950
$Comp
L C_Small C3
U 1 1 59E2503F
P 14250 8800
F 0 "C3" H 14260 8870 50  0000 L CNN
F 1 "1μF" H 14260 8720 50  0000 L CNN
F 2 "" H 14250 8800 50  0001 C CNN
F 3 "" H 14250 8800 50  0001 C CNN
	1    14250 8800
	1    0    0    -1  
$EndComp
$Comp
L C_Small C4
U 1 1 59E268B9
P 14850 8800
F 0 "C4" H 14860 8870 50  0000 L CNN
F 1 "1μF" H 14860 8720 50  0000 L CNN
F 2 "" H 14850 8800 50  0001 C CNN
F 3 "" H 14850 8800 50  0001 C CNN
	1    14850 8800
	1    0    0    -1  
$EndComp
$Comp
L C_Small C5
U 1 1 59E26973
P 15650 8800
F 0 "C5" H 15660 8870 50  0000 L CNN
F 1 "1μF" H 15660 8720 50  0000 L CNN
F 2 "" H 15650 8800 50  0001 C CNN
F 3 "" H 15650 8800 50  0001 C CNN
	1    15650 8800
	1    0    0    -1  
$EndComp
$Comp
L C_Small C6
U 1 1 59E26A22
P 16300 8800
F 0 "C6" H 16310 8870 50  0000 L CNN
F 1 "1μF" H 16310 8720 50  0000 L CNN
F 2 "" H 16300 8800 50  0001 C CNN
F 3 "" H 16300 8800 50  0001 C CNN
	1    16300 8800
	1    0    0    -1  
$EndComp
Connection ~ 14250 8450
Wire Wire Line
	14250 8900 13950 8900
Connection ~ 13950 8900
Connection ~ 14850 8450
Wire Wire Line
	14850 8900 14550 8900
Connection ~ 14550 8900
Wire Wire Line
	15650 8900 15350 8900
Connection ~ 15350 8900
Connection ~ 15650 8450
Connection ~ 16300 8450
Wire Wire Line
	16300 8900 16000 8900
Connection ~ 16000 8900
Wire Wire Line
	10000 7350 11700 7350
Wire Wire Line
	11700 7350 13650 7350
Wire Wire Line
	13950 6700 10300 6700
Wire Wire Line
	10300 6700 9650 6700
Wire Wire Line
	9650 6700 9150 6700
Wire Wire Line
	9150 6700 8500 6700
$EndSCHEMATC
