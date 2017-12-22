# One-Cell-18650-Flashlight-With-Protection-Circuit
A circuit that give warning and eventually cut-off your Lithium battery when voltage is low. This circuit runs on a single cell of lithium batteries, which range from 4.2 to 3.0 volt. Also the standby current is virtualy zero current except gate leak. It's very usefull for my purpose of flashlights with four 1W LEDs. You can see the final product at [this google album](https://photos.app.goo.gl/fAde6V9GMi8JweGb2)

* **If you're not familiar with circuits like me, the Q&A section below can give you a quick overview about the project.**  
* **I'm a noob regarding the electronics area and learning, things I said might not be correct. If you know any mistakes, PLEASE LET ME KNOW. I'll very very grateful.**
* **My only measring equipment is a 300NTD (~10 USD) multimeter, so values might not be accurate.**

# Technical Details
### -Parts list (total: 46)  
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

### -Circuit explainations
#### Definitions  
To save time, I set down specific terms to describe some of the most often mentioned location within the circuit. This is purely for easy communication, and might be weird any trainned eyes.

* signal rail  
  The Junction between Gate(PIN1) of T5 and Drain(PIN3) of T3. The level of this line determins the on/off state of the entire circuit.  
* circuit power rail  
  Vin_pin(PIN8) of IC1. This is the main power source to all the component involed in the voltage detection.  
* V_cpr  
  Voltage of **c**ircuit **p**ower **r**ail, just to save spaces for this already wall-of-text readme.   
* pull up  
  Make the voltage goes up to Vcc or at least try to. Can often be regard as short to Vcc.  
* pull down  
  Make the voltage goes to Ground or at least try to. Can often be regard as short to GND.

#### ON
When circuit is on, the T1 is turned on (Base pulled low), providing power to the circuit power rails (3rd horizontal line). At this state, TL431 (IC2) gives the accurate voltage reference of 2.495v. The reference is compared against the voltage between a voltage divider R8 and R9. Since (-) pin of the Op-amp LM2904D (IC1B) is higher, the output is pulled low to ground, thus shutting down the T2. R13 is there to provide proper NPN Base pin current limit. Since T2 is "off", the Base of T3 is pulled high by R14, and thus the N-MOSFET T3 is turned on to drain any current from R3. The gate pin(pin1) of AO3415(T5) is thus pulled low and turn the P-channel MOSFET on, providing power to VDD.

#### OFF
At the power off state, the circuit power rails should provide no power. That is, T1 is off and the collector (pin1) of the T1 is at 0 volt. This also make sure that N-MOSFET T3 is also OFF, signal rail is pulled up by R1 and R3, making sure AO3415(T5) have no voltage providing a voltage difference between its drain(pin3) and gate(pin1), thus providing no power to VDD.

Also, since T1, T3, and T5 are all OFF, there is no way the battery power VCC can get through, creating no standby power (except for the current leakage, which is actually observable)

#### Low voltage cut-off
Since TL431(IC2) holds the voltage at 2.495v, the (+) Pin5 of IC1B is maintain at half of this value, which is 2.495/2=1.2475 when IC1B has a LOW output. In reality, since the OUTPUT of IC1B is not truely short to GND internally, It'll still have a very low output voltage. The OUTPUT is further pull down by R12, which helps the stability of the circuit. The actual OUTPUT at Pin7 of IC1B when its at LOW state is around 0.05v, thus giving the voltage at (+) PIN5 (2.495-0.05)/2 = 1.245v

When Vcc drops as the battery discharge, the circuit power rail also drops. The voltage divider R8 and R9 will also decrease as well. At some point the voltage at PIN6 will come down to a point that the high gain in the op-amap is nolonger enough to hold PIN7 so low, the output of IC1B will rise slightly, making PIN5 also rise slightly, and further causing the output to rise. This is called a "positive feedback loop".  The behavier acts like a trigger and the output of IC1B will rise to HIGH at almost its maximum slew rate.

Since the PIN7 of IC1B is going HIGH, the PN2222(T2) is turned ON at the same time, pulling gate(PIN2) of T3 LOW. Since T3 need gate to be HIGH to maintain ON, this draining of T2 cause the T3 start to close. When T3 is closing, voltage signal rail will rise, and inturn closing T1 OFF. The voltage of circuit power rails drops further, making the gate(PIN2) of T3 drops lower, another positive feedback loop. Eventually, the T1 turned OFF completly, and the circuit is at OFF state.

As for the numbers, I originally set the circuit to power off when VCC is at 3.35V. The goal is have the voltage divider reach 1.245v when circuit power rail reach 3.35v. If we put the numbers in, voltage of PIN6 will be: V_pin6 = V_cpr * ( R9 / (R8+R9) ) = 3.35 * ( 12.51 / (20+12.51) ) = 1.289v. You can see that it's a little higher. First it's because the PN4355(T1) has a little voltage drop between collector and emitter when operate, causing the V_cpr to be a little lower. Also, because the circuit around (+) of IC1B has a possitive feedback, which is lock to another positive feedback around T2, T3 and T1, everthing is quit unstable. I'm quite happe with the error of 1.289 - 1.245 = 0.044 v.

The value of voltage divider is actually determined by trial-and-error on a bread board. On the final product, the circuit cut-off when Vcc is at 3.4v. I'm not sure of the cause of the difference. Maybe it's so sensitive that the suttle difference between different individual component will effect the results. I'm thinking it'll be a good idea to ade a adjustable resistor (potentiometer) between R8 and R9, but that'll be the topic of next version.

#### Low voltage warning LED
A almost identical set for the cut-off side is replicate here. Instead of controlling the signal draining, the output of IC1A simply lit some small LED to warn user about its low voltage state.

R19 is for proper current driving of T4, and R20 is the current limiter for the LED. The condition is set with LED drawing 10mA, with forward voltage of 2.5V. Combine with forward drop of Vce of T4, we get the operating voltage: V_cpr = 10 mA * 100 Ω (R20) + 2.5v (D1) + 0.3 (Vce of PN2222A) = 3.8 v. Actual voltage when LED lit is probably lower, but the LED will light up just fine.

#### On/Off switching
This is actually a perticularly troubling function to be implement due to the possitive feedback properties. I've tried to solve this myself, but unfortunately have to seek help. Fortunately, nice people on the [electronics stackoverflow](https://electronics.stackexchange.com/) helped, [here](https://electronics.stackexchange.com/questions/332267/switch-off-this-single-cell-lithium-hi-power-led-driver-with-protection-circuit) you can find the original ask.

When the circuit is at OFF state, the V_cpr is at 0 volt, the C1 is charged with Vcc. At the moment SW1 is pushed, it effectively shorts the Base(PIN2) of T1 to ground, creating V_BE(1.1V) and turn the BJT ON. This provide power to circuit power rail and turn everything on. Once the V_cpr is stable, T3 will provide sink to current from pull-up resistor R1, maintaing the V_BE and keep T1 on.

After the V_cpr is established, electrical charge of C1 will dissipate through R4 slowly if not depleted by the switch. At this ON state, there is only very little charge created by the voltage difference the Emitor and Collector of T1, or V_CE.
If we press SW1 at this moment, we effectively short the signal rail to V_cpr, which is near the Vcc. The PNP T1 will loose its V_BE and shut down, cutting off the power to V_cpr and return to the OFF state.

To my suprise when I first setup the circuit on the bread board, the SW1 can actually handle continuous press down. The ON/OFF operation will still function properly. I think this is because the transitional effect between voltage of signal rail, and the voltage between C1 and R4. We infact is creating a hysteresis switch with the button.

#### Override (battery check)
If the voltage has dropped below cut-off, you might still want to force lit the flashligt for really emergency situation, like light-fearing-zombie-attack or something. Also, you can use this button to check if the battery is really dead by looking at the status LED. Since I've set my cut-off voltage at 3.4v, there's still some energy inside before the lithium reachs the no-crossing line of 3.3V. It won't hurt if we only turn it on for a little while. 

The override button in comparison is much simpler to the ON/OFF switch, despite not being as elegant as the latter. For a 6-pin tactile switch, there are two sets of selecting switch. We'll use one set as a simple switch, force open T1 by pulling signal rail low. At the same time, the other set is used as the selecting switch, charging C2 directly to Vcc. As we release the SW2 button, C2 is latched back to the signal rail while the pull-down at R6 disconnect. This charge pulls signal rail up with R3 can keep the voltage from discharge through T3 too quickly before T1 closes. And T1 shutdown, back to standby state.

### -Performance and experiment experience
During my 3 months research of the topic, I've made several errors causing endless pains. I'll share some of the things I've learned. Most of them is probably pretty noob, but it cost a lot if you're not being careful.  
* Performance of TL431  
  The datasheet of TL431C clearly states the possible maximum of minimum cathode regulation current is 1mA, so we need to becareful about this value. It may seem normal when you measure it under normal condition, but when the battery is really low, it might have trouble maintaining proper voltage reference. This has cause me several hours of debugging.  
For my design of 680Ω resistor, we'll reach our worst cast scenerio when the current is 1mA, with 2.5v across IC2, the R8 gives the voltage drop of V = 1mA * 680 Ω = 0.68 V. That is, V_cpr reached 3.18 V, which is far less then the cutoff @ 3.4V.  At full batteries with 4.2v, R8 will have voltage difference of 4.2 - 2.5 = 1.7V, which take 1.7v/ 680 Ω = 2.5 mA to operate.Of course, you may want to have an even lower value resistor to cope with lower battery voltage, but it will cost more current drawn under normal operation.  
Another improvement can be made by replacing TL431C to TL**V**431, which gives lower voltage reference of 1.24V with minimum regulating current downto 100μA, which can be a lot better. Unfortunately this chip is not easily available to me.

* Performance of the op-amp  
At some point during the design and testing, I've encounter problems with unstable op-amp output. Sometimes it seem to give some intermediate value at the output. And this is because the performance of the op-amp. Despite the op-amp can work as low as 3v for the 2904, the output actually will having trouble either drop to 0v or pull-up to 3v. This is ofcourse because of the forward bias of the gates inside the chip. My circuit has evolve many times to mitigate this problem. However I would say this is a big trap to young players like me. To make things worse, all I've got is a 300 NTD (~10 USD) multimeter, I have no way to see and transitional effect less then 1 second.  
Another interesting things is the input current. At one point I've think of using only one big strings of voltage divider to realize LED-warning and cut-off at the same time. However, I've bumped into the problem of whenever the ourput of op-amp change its state, the voltage at the divider seemed to changed a little bit. I think this is "Input Bias Current" mentioned in the data sheet. I have measured multiple point across that voltage diviter and calculate to have the result of the input pin would draw some extra current around 100 nA at (+)PIN when output jumps to high. 100nA might not seem much, but considering my voltage divider have the resistance around 10^4 Ω, the current would be in the range of 10^-4 A, or ~100 μA, And that current probably would produce some noticeable effects.  

# Q&A
### What is this?  
The Main purpose of this humongous circuit is to protect your lithium battery. At the setting voltage, the circuit cut-off itself with virtually no current into the circuit (that is, except for the gate leakages). And it also lit some 1W LEDs so you may use it as a flash light.

### What function does it have?  
One on/off button for obvious purpose, and one override button just in case.

### Why Should I build one?
Because you shouldn't. There're tonnes of dirt cheap Lithium protection circuit with way better performance. You may simply type in "battery protection circuit" into eBay and you'll get numerous results. Some even integrated the circuit into 18650 holders really impressed me.
However if you're a noob in circuit like me, and trying to learn stuff teachers don't teach you at school, this would be an easy example that is more than 5 elements.

### What is your electrical background?
Almost zero. I major in AeroSpace Engineering and people there are AFRAID of circuits. I built this circuit from scratch with a lot of googleing and the help of nice people at [electronics stack exchange](https://electronics.stackexchange.com/), see more information below.

### Why is that your schematic is squeeze to one side of the sheet?
So that I can print it and cut to to a 1/4 size A4 paper, making my desktop less-messy.

# Usefull links
Ofcourse I didnot invent this circuit from scratch. There is many resources on the internet, but I didn't see anything that fit exactly my need. However, there are many that is really close. Links below are those helped a lot during my investigation and learning. They are experienced, knowledgeable, friendly, and passionate. Please give them a visit.

[EEstack:TL431 Low battery cut-off](https://electronics.stackexchange.com/questions/213304/tl431-low-battery-cut-off)  
[Electro-Tech-online.com forum:Help with Low Voltage Cutoff design](https://www.electro-tech-online.com/threads/help-with-low-voltage-cutoff-design.85189/)  
[EEstack:Adding voltage cutoff to a circuit](https://electronics.stackexchange.com/questions/19714/adding-voltage-cutoff-to-a-circuit)  
[EEVblog forum: Li-Ion battery low voltage cut off circuit needed for project](https://www.eevblog.com/forum/projects/li-ion-battery-low-voltage-cut-off-circuit-needed-for-project/)  
[EEstack: Cut off low voltage lithium battery?](https://electronics.stackexchange.com/questions/231502/cut-off-low-voltage-lithium-battery)  
[electronics-tutorial: op-amp-comparator](http://www.electronics-tutorials.ws/opamp/op-amp-comparator.html)  
[my EEstack question :switch-this-circuit-off](https://electronics.stackexchange.com/questions/332267/switch-off-this-single-cell-lithium-hi-power-led-driver-with-protection-circuit)  
