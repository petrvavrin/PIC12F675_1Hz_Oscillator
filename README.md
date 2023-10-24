# Simple 1 Hz oscillator with PIC12F675
In the main loop of the program, the state of the GPIO2 pin is changed and then delayed for 1s, resulting in a 1Hz flicker.

In this case an external 16MHz oscillator is used.

| Pin number | Description |
| --- | --- |
|1|VDD+ (positive supply voltage)|
|8|VSS- (GND)|
|2|OSC1|
|3|OSC2|
|5|1 Hz with +/-1% accuracy|

For proper operation, it is important that the PIC12F675 has a stable power supply with a voltage range of 2.0V to 5.5V. Ideally 5V.

The program is written in MikroC PRO for PIC.
