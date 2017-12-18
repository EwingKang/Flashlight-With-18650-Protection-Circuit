# Flashlight-With-18650-Protection-Circuit
A circuit that give warning and eventually cut-off your Lithium battery when voltage is low. also the standby current is virtualy zero current except gate leak. It's very usefull for my purpose of flashlights with four 1W LEDs.

**If you're not familiar with circuits like me, you may want to read the Q&A section below.**

### part list (total: 46)
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
**TBD**
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
