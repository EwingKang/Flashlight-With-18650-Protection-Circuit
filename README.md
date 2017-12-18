# Flashlight-With-18650-Protection-Circuit
A circuit that give warning and eventually cut-off your Lithium battery when voltage is low. This circuit runs on a single cell of lithium batteries, which range from 4.2 to 3.0 volt. Also the standby current is virtualy zero current except gate leak. It's very usefull for my purpose of flashlights with four 1W LEDs.

**If you're not familiar with circuits like me, you may want to read the Q&A section below.**

### performance and design experience
**TBD**

### parts list (total: 46)
* Capacitor
  * 0.1μF X1
  * 1μF X5
* LED
  * 15mA Red Led X1
  * 1W high power LED X4
* IC
  * AMC7135: 1W LED current regulator X4 
  * LM2904D: Dual Operational Amplifiers X1 
  * TL431LP: Shunt Regulator (voltage reference) 
* Transistor
  * AO3415: Low-voltage P-channel MOSFET X1
  * VN2222LL: Small Signal N-channel MOSFET X1
  * PN2222A: General purpose NPN amplifier X1
  * PN4355: General purpose PNP amplifier X1
* Resistor (All 1/4 watt) 
  * 100 Ω X1 
  * 510 Ω X1 
  * 680 Ω X1 
  * 1K X5 
  * 10K X1 
  * 12K X2  
  * 100K X1 
  * 20K X5 
  * 51K X4 
* Switches 
  * 6 pin DIP Tactile Push Button Switch (non-latching) X2 
  * DPDT slide swtich X1 (optional, any on-off switch will work) 

### circuit explainations
##### definitions
signal rail
circuit power rail
V_cpr
pull up 
pull down
##### ON
When circuit is on, the T1 is turned on (Base pulled low), providing power to the circuit power rails (3rd horizontal line). At this state, TL431 (IC2) gives the accurate voltage reference of 2.495v. The reference is compared against the voltage between a voltage divider R8 and R9. Since (-) pin of the Op-amp LM2904D (IC1B) is higher, the output is pulled low to ground, thus shutting down the T2. R13 is there to provide proper NPN Base pin current limit. Since T2 is "off", the Base of T3 is pulled high by R14, and thus the N-MOSFET T3 is turned on to drain any current from R3. The gate pin(pin1) of AO3415(T5) is thus pulled low and turn the P-channel MOSFET on, providing power to VDD.

##### OFF
At the power off state, the circuit power rails should provide no power. That is, T1 is off and the collector (pin1) of the T1 is at 0 volt. This also make sure that N-MOSFET T3 is also OFF, signal rail is pulled up by R1 and R3, making sure AO3415(T5) have no voltage providing a voltage difference between its drain(pin3) and gate(pin1), thus providing no power to VDD.

Also, since T1, T3, and T5 are all OFF, there is no way the battery power VCC can get through, creating no standby power (except for the current leakage, which is actually observable)

##### Low voltage cut-off
Since TL431(IC2) holds the voltage at 2.495v, the (+) Pin5 of IC1B is maintain at half of this value, which is 2.495/2=1.2475 when IC1B has a LOW output. In reality, since the OUTPUT of IC1B is not truely short to GND internally, It'll still have a very low output voltage. The OUTPUT is further pull down by R12, which helps the stability of the circuit. The actual OUTPUT at Pin7 of IC1B when its at LOW state is around 0.05v, thus giving the voltage at (+) PIN5 (2.495-0.05)/2 = 1.245v

When Vcc drops as the battery discharge, the circuit power rail also drops. The voltage divider R8 and R9 will also decrease as well. At some point the voltage at PIN6 will come down to a point that the high gain in the op-amap is nolonger enough to hold PIN7 so low, the output of IC1B will rise slightly, making PIN5 also rise slightly, and further causing the output to rise. This is called a "positive feedback loop".  The behavier acts like a trigger and the output of IC1B will rise to HIGH at almost its maximum slew rate.

Since the PIN7 of IC1B is going HIGH, the PN2222(T2) is turned ON at the same time, pulling gate(PIN2) of T3 LOW. Since T3 need gate to be HIGH to maintain ON, this draining of T2 cause the T3 start to close. When T3 is closing, voltage signal rail will rise, and inturn closing T1 OFF. The voltage of circuit power rails drops further, making the gate(PIN2) of T3 drops lower, another positive feedback loop. Eventually, the T1 turned OFF completly, and the circuit is at OFF state.

As for the numbers, I originally set the circuit to power off when VCC is at 3.35V. The goal is have the voltage divider reach 1.245v when circuit power rail reach 3.35v. If we put the numbers in, voltage of PIN6 will be: V_pin6 = V_cpr * ( R9 / (R8+R9) ) = 3.35 * ( 12.51 / (20+12.51) ) = 1.289v. You can see that it's a little higher. First it's because the PN4355(T1) has a little voltage drop between collector and emitter when operate, causing the V_cpr to be a little lower. Also, because the circuit around (+) of IC1B has a possitive feedback, which is lock to another positive feedback around T2, T3 and T1, everthing is quit unstable. I'm quite happe with the error of 1.289 - 1.245 = 0.044 v.

The value of voltage divider is actually determined by trial-and-error on a bread board. On the final product, the circuit cut-off when Vcc is at 3.4v. I'm not sure of the cause of the difference. Maybe it's so sensitive that the suttle difference between different individual component will effect the results. I'm thinking it'll be a good idea to ade a adjustable resistor (potentiometer) between R8 and R9, but that'll be the topic of next version.

##### Low voltage warning LED
A almost identical set for the cut-off side is replicate here. Instead of controlling the signal draining, the output of IC1A simply lit some small LED to warn user about its low voltage state.

R19 is for proper current driving of T4, and R20 is the current limiter for the LED. The condition is set with LED drawing 10mA, with forward voltage of 2.5V. Combine with forward drop of Vce of T4, we get the operating voltage: V_cpr = 10 mA * 100 Ω (R20) + 2.5v (D1) + 0.3 (Vce of PN2222A) = 3.8 v. Actual voltage when LED lit is probably lower, but the LED will light up just fine.

# Q&A
## What is this?
The Main purpose of this humongous circuit is to protect your lithium battery. At the setting voltage, the circuit cut-off itself with virtually no current into the circuit (that is, except for the gate leakages). And it also lit some 1W LEDs so you may use it as a flash light.

## What function does it have?
One on/off button for obvious purpose, and one override button just in case.

## Why Should I build one?
Because you shouldn't. There're tonnes of dirt cheap Lithium protection circuit with way better performance. You may simply type in "battery protection circuit" into eBay and you'll get numerous results. Some even integrated the circuit into 18650 holders really impressed me.
However if you're a noob in circuit like me, and trying to learn stuff teachers don't teach you at school, this would be an easy example that is more than 5 elements.

## What is your electrical background?
Almost zero. I major in AeroSpace Engineering and people there are AFRAID of circuits. I built this circuit from scratch with a lot of googleing and the help of nice people at [electronics stack exchange](https://electronics.stackexchange.com/), see more information below.

## Why is that your schematic is squeeze to one side of the sheet?
**TBD**
