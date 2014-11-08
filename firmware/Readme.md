About these hex and eep files
=============================

### optiboot.hex
Optiboot UART bootloader. Baud set to 57600 for maximum compatibility.

### optiboot_superspeed.hex
Optiboot UART bootloader. Baud set to 1000000 which is the fastest an 8MHz AVR can run its UART at. Reduces upload time from ~14 seconds to ~5 seconds (27174 bytes).  
Tested on Windows and Linux with CH340G USB-serial converter. Should work with most other converters. However AVRDUDE on Linux needs a minor modification to support 1Mb, see this - https://github.com/zkemble/avrdude/tree/custombaud

### watch_eng.hex
The main program in English.

### watch_rus.hex
The main program in Russian.

### watch.eep
EEPROM data. This must be uploaded along with `watch_(lang).hex`, it contains the beep tunes and other bits of data.
