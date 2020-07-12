# Documentation

Everything you need to know about dahlia... WISDOM.

## How to make a bootable usb(GRUB)(ALL DEVICES)

### X86_64

**64/32 UEFI systems and 64 BIOS systems**

1 download the latest **iso [here](https://github.com/HexaOneOfficial/dahliaos/releases/download/200630_2/DahliaOS200630_2.iso)**. 

2 then flash the iso to your usb with **Rufus [here](https://rufus.ie/)**.

3 disable secure boot if you have that option.
 

**32 BIOS systems**

1 download the latest **iso [here](https://github.com/HexaOneOfficial/dahliaos/releases/download/200630_2/DahliaOS200630_2.32bit.iso)**.

2 then flash the iso to your usb with **Rufus [here](https://rufus.ie/)**.

3 disable secure boot if you have that option.

### Raspberry Pi 3/4

coming soon

## How to make a bootable usb(NON GRUB)(FEW DEVICES)

Firstly, you wanna check if you have one of the few supported devices [here](https://github.com/dahlia-os/documentation/blob/master/supported%20hardware%20non%20grub.md).
If so you can download a dahliaOS iso from the [releases page](https://github.com/dahlia-os/releases/releases). The latest one at the time of writing can be downloaded [here](https://github.com/dahlia-os/releases/releases/download/200630.1-x86_64/dahliaOS-200630_2.iso)

Secondly, download and install [Etcher](https://www.balena.io/etcher/).  

After that run Etcher, select your dahlia iso, then your USB device, then select flash!

After the process is finished, rebot and select you USB from you boot menu. 

## How to run dahlia in qemu

### Arch

First open a terminal and type the following command:
```
sudo pacman -S qemu qemu-arch-extra qemu-block-gluster qemu-block-iscsi qemu-block-rbd samba
```

Then download the dahliaos iso from: https://github.com/dahlia-os/releases/releases 

Then type the following command in the terminal (your iso is named different than: DahliaOS.iso)
```
qemu-system-x86_64 -cdrom Downloads/DahliaOS.iso -m 1024
```
### Ubuntu 18.04

First open a terminal and type the following command:
```
sudo apt-get install qemu-kvm qemu virt-manager virt-viewer libvirt-bin
```
Then download the dahliaos iso from: https://github.com/dahlia-os/releases/releases 

Then type the following command in the terminal (your iso is named different than: DahliaOS.iso)
```
qemu-system-x86_64 -cdrom Downloads/DahliaOS.iso -m 1024
```

### Ubuntu 18.04+

First open a terminal and type the following command:
```
sudo apt-get install qemu-kvm qemu virt-manager virt-viewer libvirt-daemon-system libvirt-clients
```
Then download the dahliaos iso from: https://github.com/dahlia-os/releases/releases 

Then type the following command in the terminal (your iso is named different than: DahliaOS.iso)
```
qemu-system-x86_64 -cdrom Downloads/DahliaOS.iso -m 1024
```

## Build Pangolin

Pangolin is Dahlia's desktop / mobile shell. pangolin-desktop is based on the older metaphor of ChromeOS, like the launcher, notification tab etc.

### Before Building...

Make sure you have `flutter` and `android-studio` installed. You can get the Dahlia environment to install all these things and more here: [dahlia-environment](https://github.com/EnderNightLord-ChromeBook/dahlia-environment)

### Lets Build!

1. make sure you have flutter in your path: `export PATH="$PATH:`pwd`/flutter/bin"`
2. clone pangolin-desktop / mobile: `git clone https://github.com/dahlia-os/pangolin-desktop.git` / `git clone https://github.com/dahlia-os/pangolin-mobile.git`
3. go into the pangolin-desktop / pangolin-mobile folder: `cd pangolin-desktop / pangolin-mobile`
4. and build the APK: `flutter build apk --debug` / `flutter build apk`

## AEMU

Aemu is a graphical fuchsia emulator. It is capable of running the vullkan driver but you must install vullkan first. AEMU is capable of running flutter GUI applications such as ermine (ui) and pangolin-desktop (ui)

### Linux

`fx aemu`

### MacOS

`fx aemu -x`
