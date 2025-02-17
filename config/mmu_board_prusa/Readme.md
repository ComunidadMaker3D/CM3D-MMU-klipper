Para poder instalar klipper en la MMU de prusa hay que configurar la compilación así:
<img width="586" alt="Config_klipper_mmu_prusa" src="https://github.com/user-attachments/assets/8556a593-49f7-441c-a56c-529862014cfc" />

y dentro de optional features (to reduce code size) hay que dejarlo así:
![photo_2025-02-15 22 03 24](https://github.com/user-attachments/assets/a16053ed-beb4-45cd-9310-2e2885587c6a)

Terminamos y hacemos el "make" para que compile el fichero.

En la carpeta out nos genera el fichero klipper.elf.hex que es el que necesitaremos.

Para flashear klipper en la MMU hay que hacerlo a mano, no funciona el "make flash" y además hay que poner la MMU en modo bootloader para que acepte un firmware nuevo.

Para conseguir esto hay que descargar el script: flash_klipper_mmu.sh y modificar el puerto que nos presente la MMU.

Una vez modificado el script con el puerto adecuado hay que darle permisos de ejecución:

$ chmod +x flash_klipper_mmu.sh

y finalmente ejecutarlo.

$./flash_klipper_mmu.sh

Si todo ha ido bien, ya tendremos nuestra MMU con klipper.