		rjmp main
main:
	ldi r16, (1 << PB5) | (1 << PB6)
	out DDRB, r16
	ldi r16, 0x0E
	out DDRA, r16
	ldi r16,0b00001010
	out PORTA, r16

	ldi r16, (1 << WGM10) | (1 << COM1A1) | (1 << COM1B1)
	sts TCCR1A,r16
	ldi r16, (1 << CS10) | (1 << WGM12) 
	sts TCCR1B, r16
	ldi r16, 255
	sts OCR1AL, r16
	ldi r21, 255
	sts OCR1BL, r21










start:
	
    rjmp start
