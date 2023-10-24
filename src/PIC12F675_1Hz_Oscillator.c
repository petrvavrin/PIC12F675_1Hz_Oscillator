/*
1Hz oscilátor na pinu GPIO2
*/
//----
#define GPIO0  GPIO.F0
#define GPIO1  GPIO.F1
#define GPIO2  GPIO.F2
#define GPIO3  GPIO.F3
#define GPIO4  GPIO.F4
#define GPIO5  GPIO.F5



void main() {
// ---- I/O Line
     GPIO = 0x00;              // priprava portu
     CMCON = 0x07;             // comparator OFF, pin I/O
     ANSEL = 0x00;             // A/D Disable
     TRISIO = 0b00000000;      // set I/O port
     OPTION_REG.B7 = 1;
     WPU = 0b00000000;         // disable Pull-Up
// ----



  while (1) {
    GPIO.F2 = ~GPIO.F2;  // pin state change
    Delay_ms(500);       // delay 0,5s
  }
  
}
