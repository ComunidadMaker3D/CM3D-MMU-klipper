# Este script necesita que sustituyas el puerto /dev/ttyACM1 por el que tu raspi haya asignado 
# a la MMU y tiene que estar en el mismo directorio en el que esté el fichero klipper.elf.hex
stty -f /dev/ttyACM1 1200
sleep 1
avrdude -v -p atmega32u4 -c avr109 -P /dev/ttyACM1 -b 57600 -D -U flash:w:klipper.elf.hex:i
ls /dev/serial/by-id/*