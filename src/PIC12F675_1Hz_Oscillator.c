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
     TRISIO = 0b00000000;      // nastaveni portu I/O
     //OPTION_REG = 0b01111111;  // Global Enable Pull-Up
     OPTION_REG.B7 = 1;
     WPU = 0b00000000;         // nastaveni Pull-Up
// ----



  while (1) {
    GPIO.F2 = ~GPIO.F2;  // výmìna stavu pinu
    Delay_ms(500);       // zpoždìní 0,5s
  }
  
}