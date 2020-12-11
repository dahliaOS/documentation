# Overview of Linux-based Builds
## TL;DR


## Table of Contents
## Running
### ARM
Currently, the Raspberry Pi 3 and the Raspberry Pi 4 (or equivalents) are the only ARM supported devices by dahliaOS Linux. The system requires the following minimum specifications:
* 1.2GHZ Broadcom BCM2837 or higher
* 256 MiB of RAM or higher
* 512 MiB of storage, 1GiB reccommended
#### Raspberry Pi
Official images are available to download from the [dahliaOS downloads page.](https://dahliaos.io/download/) We reccommend [Etcher](https://www.balena.io/etcher/), but any .zip compatible flashing software should work. After flashing the SD card, use the following steps to properly configure your installation:
* Insert the flashed SD card into the Pi and power it on
* Change the root password to something secure with the `passwd` command
* Expand the filesystem onto the SD card using the `expand-fs` command

The system is now able to be used to its full capacity. Have fun!
### x86_64
dahliaOS Linux is supported on a wide range of desktop devices and emulators. For virtual machines, see the **Virtual Machines** section below.

#### AMD
dahliaOS Linux can boot on AMD hardware, but may require a NVIDIA GPU in order to get full graphics acceleration. The system requires the following specifications on AMD devices:
* AMD Athlon 64 or newer, 1.0 GHZ or higher
* UEFI or Legacy bootloader
* 512 MiB of RAM or higher
* 512 MiB of storage, 1GiB reccommended
* NVIDIA 7800GT 256MB or newer (Modern AMD GPUs may work but we can not guarantee stable performance)
#### Intel
dahliaOS is completely supported on the Intel platform, and can run with advanced hardware acceleration (60FPS mode). The system requires the following minimum specifications on Intel devices:

For Intel devices:
* 64-bit single core or higher CPU, 1GHZ or higher
* UEFI or Legacy bootloader
* 512 MiB of RAM or higher
* 512 MiB of storage, 1GiB reccommended
* Intel GMA 4500 or better, Intel HD 4000 reccommended, NVIDIA 7800GT 256MB or newer
#### Virtual Machines
dahliaOS is supported on a few different software-backed emulators, including QEMU and Virtualbox. A legacy image is needed to boot dahliaOS in a VM. As we are unable to afford VMWare, we can not make any inferences about performance or settings. For virtual Machines, the following specifications are required:
* 1 or more CPU cores
* 512 MiB of RAM or higher
* No internal storage disk
* Legacy bootloader

For launching in QEMU, use the following command with a compatible Legacy image:
```bash
qemu-system-x86_64 --enable-kvm -m 4096 -cdrom <legacy>.iso
```
This will start the legacy image in QEMU with KVM (Kernel-based Virtual Machine) enabled, with 4096 MiB of RAM, booting the legacy ISO. If you are on a Windows host, remove the `--enable-kvm` flag, as it does not apply to the Windows platform.
## The System - In Depth
### Agents
### Security (Planned)
### Graft and the Modular Userspace
### Standard Linux Things
### Buildroot
## Compiling
## Releasing
## Planned Releases (Subject to change)
