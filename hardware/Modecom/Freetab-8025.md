# Modecom Freetab 8025

## Linux builds

Most of the work has been done on the [grub builds (3rd party link)](https://github.com/HexaOneOfficial/dahliaos)

**dahliaOS** has support for booting on 32 bit UEFI, more info can be found [here (3rd party link)](https://github.com/HexaOneOfficial/documentation/blob/master/hardware/Modecom/Freetab/8025/32_uefi.md)

**dahliaOS** has support for Freetab 8025 touchscreen

### 32 bit UEFI

**How can dahliaOS GRUB boot on 32 UEFI**

[dahliaOS GRUB (3rd party link)](https://github.com/HexaOneOfficial/dahliaos) has a file called [bootia32.efi (3rd party link)](https://github.com/HexaOneOfficial/dahliaos/blob/master/BOOT/bootia32.efi) stored in /EFI/boot/ that allows the system to a boot 64 bit ISO.

**Add support to other Linux distros**

1. Flash your distro of choice with [Rufus](https://rufus.ie/), it allows you to modify your USB files

2. Download bootia32.efi, it can be found [here (3rd party link)](https://github.com/HexaOneOfficial/dahliaos/blob/master/BOOT/bootia32.efi?raw=true)

3. Copy the file to /EFI/boot on your usb device. **!** You may need to [disable secure boot (3rd party link)](https://github.com/HexaOneOfficial/documentation/blob/master/assets/secure-boot/Disable-Secure-Boot.md)

## License

<p align="left">
  <img width="45%" src="https://github.com/dahlia-os/brand/blob/master/Logo%20SVGs/dahliaOS%20logo%20with%20text%20(drop%20shadow).svg"
</p>

Copyright @ 2019-2020 The dahliaOS Authors contact@dahliaos.io

This project is licensed under the [Apache 2.0 license](https://github.com/dahlia-os/documentation/blob/master/LICENSE)
