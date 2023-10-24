
_main:

;PIC12F675_1Hz_Oscillator.c,14 :: 		void main() {
;PIC12F675_1Hz_Oscillator.c,16 :: 		GPIO = 0x00;              // priprava portu
	CLRF       GPIO+0
;PIC12F675_1Hz_Oscillator.c,17 :: 		CMCON = 0x07;             // comparator OFF, pin I/O
	MOVLW      7
	MOVWF      CMCON+0
;PIC12F675_1Hz_Oscillator.c,18 :: 		ANSEL = 0x00;             // A/D Disable
	CLRF       ANSEL+0
;PIC12F675_1Hz_Oscillator.c,19 :: 		TRISIO = 0b00000000;      // nastaveni portu I/O
	CLRF       TRISIO+0
;PIC12F675_1Hz_Oscillator.c,21 :: 		OPTION_REG.B7 = 1;
	BSF        OPTION_REG+0, 7
;PIC12F675_1Hz_Oscillator.c,22 :: 		WPU = 0b00000000;         // nastaveni Pull-Up
	CLRF       WPU+0
;PIC12F675_1Hz_Oscillator.c,27 :: 		while (1) {
L_main0:
;PIC12F675_1Hz_Oscillator.c,28 :: 		GPIO.F2 = ~GPIO.F2;  // výmìna stavu pinu
	MOVLW      4
	XORWF      GPIO+0, 1
;PIC12F675_1Hz_Oscillator.c,29 :: 		Delay_ms(500);       // zpoždìní 0,5s
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;PIC12F675_1Hz_Oscillator.c,30 :: 		}
	GOTO       L_main0
;PIC12F675_1Hz_Oscillator.c,32 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
