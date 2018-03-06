All:
	avr-gcc -g -Os -mmcu=attiny85 -c main.c
	avr-gcc -g -mmcu=attiny85 -o main.elf main.o
	avr-objcopy -j .text -j .data -O ihex main.elf main.hex
	avrdude -c usbtiny -p attiny85 -U flash:w:main.hex
