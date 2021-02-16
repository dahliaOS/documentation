# dahliaOS on 64-UEFI

# Installation 

- dahliaOS supports a wide range of devices. This guide will tell you how to flash it on a USB and what hardware you need.

## Flash the ISO

There are two ISOs to choose from, **EFI** and **Legacy**.

- Most devices can only run the **EFI ISOs**, for older, **legacy devices** you can can check the instructions [here](articles/install/64bit-Legacy.md).

1. Go to [releases](https://github.com/dahliaos/releases/releases/latest) and download the zip file.
2. Then download [etcher](https://www.balena.io/etcher/) and flash the .zip file on a USB.
3. You're almost good to go, reboot your system and go in your UEFI and go to the **Boot** tab and select the USB.
4. Your system should boot into dahliaOS.

## Requirements

### Minimum requirements

- You need at least **512 MB of RAM** and a **64 bit** dual core processor with **Intel HD graphics**

### Recommended requirements

**2 GB of RAM** and **a 64 bit** quad core processor with **Intel HD graphics**

**Note: Nvidia graphics won't work well, use onboard graphics for the best result.**
