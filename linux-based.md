# Overview of Linux-based Builds
## TL;DR
 
 
## Table of Contents
## Running dahliaOS Linux
dahliaOS Linux is supported on a wide range of devices and emulators. For virtual machines, see the **Virtual Machines** section below.
### ARM
Currently, the Raspberry Pi 3 and the Raspberry Pi 4 (or equivalents) are the only ARM supported devices by dahliaOS Linux. The system requires the following minimum specifications:
* 1.2GHZ Broadcom BCM2837 or higher
* 256 MiB of RAM or higher
* 512 MiB of storage, 1GiB recommended
#### Raspberry Pi
Official images are available to download from the [dahliaOS downloads page.](https://dahliaos.io/download/) We recommend [Etcher](https://www.balena.io/etcher/), but any .zip compatible flashing software should work. After flashing the SD card, use the following steps to properly configure your installation:
* Insert the flashed SD card into the Pi and power it on
* Change the root password to something secure with the `passwd` command
* Expand the filesystem onto the SD card using the `expand-fs` command
 
The system is now able to be used to its full capacity. Have fun!
### x86_64
dahliaOS Linux has extensive support for the x86_64 platform, and leverages its power to create a stable, efficent system on every device.
 
#### AMD
dahliaOS Linux can boot on AMD hardware, but may require a NVIDIA GPU in order to get full graphics acceleration. The system requires the following specifications on AMD devices:
* AMD Athlon 64 or newer, 1.0 GHZ or higher
* UEFI or Legacy bootloader
* 512 MiB of RAM or higher
* 512 MiB of storage, 1GiB recommended
* NVIDIA 7800GT 256MB or newer (Modern AMD GPUs may work but we can not guarantee stable performance)
#### Intel
dahliaOS is completely supported on the Intel platform, and can run with advanced hardware acceleration (60FPS mode). The system requires the following minimum specifications on Intel devices:
 
For Intel devices:
* 64-bit single core or higher CPU, 1GHZ or higher
* UEFI or Legacy bootloader
* 512 MiB of RAM or higher
* 512 MiB of storage, 1GiB recommended
* Intel GMA 4500 or better, Intel HD 4000 recommended, NVIDIA 7800GT 256MB or newer
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
![dahliaOS Linux-Based 201215 Software architecture chart, Showing the overall layout of the system](assets/charts/arch.png)
Although Linux and Zircon could not be more different, dahliaOS Linux blends the security, efficiency and virtualization capabilities of Zircon with a lightweight Linux base system.
### Agents
Agents are simple, modular executables designed to run in the background and manage the system's capabilities. In the 201215 system release, the following Agents are present:
* **Update Agent** - Checks for system updates and installs them
* **Theme Agent** - Handles global application theming
* **Graft Agent** - Manages virtualized systems running under Graft
* **Network Agent** - Manages network interfaces and connections
### Security and Privacy (Upcoming)
NOTE: The following features will be included in further releases, and are not yet present in current public releases for development and debugging purposes.
 
Unlike standard desktop distributions, dahliaOS employs aggressive security measures similar to the methods found on mobile systems. Major steps are taken to ensure security and privacy for all users, while keeping the system open and accessible to developers.
 
The system is secure every step of the way, from the first boot to system shutdown, using a policy called Cerberus. Like the creature from ancient mythology, Cerberus guards the system and has three central tenets of security:
 
* **Verification** - The system is checked on boot and all applications are signed
* **Encryption** - User and Application data is encrypted in a secure partition to prevent data loss and leakage
* **Isolation** - The system partition and applications are all isolated from each other, and no two applications can share information or vulnerabilities without user consent.
 
A set of two partitions will be used to ensure maximum system security, a read-only stateless partition, where system files and executables are stored, and an encrypted stateful partition where user data remains persistently.
 
The `dm-verity` tool is used to verify the system, and alert the user if the system is compromised. If a breach of the root file system occurs, the stateless partition can be recovered from Recovery Mode, without touching the user data on the stateful partition.
 
Within the system, the read-only nature of the root filesystem and the encryption of user data ensures that malicious or unsigned applications and modules can not wreak havoc on the system. The stateful partition can only be decrypted using the Decryption Agent, so any attempts to penetrate it will not go unnoticed.
 
Using total sandboxing, non-system applications are not allowed to interact with hardware, software, and files without explicit permission from the user. In the case of hardware usage, software-side indicators will alert the user that a camera or microphone is active, or if a task is using network access in the background.
 
For those living on the edge or those looking to debug the underlying system, a Developer Mode is available that will disable most of the security features of the system and make the stateless partition read/write.
### Graft and the Modular Userspace
![Screenshot of the Graft virtualization management dashboard](assets/screenshot/graft.png)
Graft is the system's hub for installing virtualized and guest operating systems on top of dahliaOS Linux.

There are 4 methods of virtualizing guest systems on dahliaOS with Graft:

* **Containers** - More secure, runs directly on dahliaOS using the host kernel, but isolated from hardware (Minimal overhead)
* **Virtual Machines** - Uses CPU self-virtualization to run directly on the hardware. (Medium overhead)
* **Emulators** - Full hardware virtualiztion, including processor (High overhead)
* **Chroots** - Less secure, runs directly on hardware alongside dahliaOS, uses the host kernel, see **Modular Userspace** for more information (Minimal overhead)
  
All of these methods are centralized in Graft, and the virtualization mode will change according to the type of system. Currently, only Linux-based operating systems can run in Containers and Chroots.
#### Modular Userspace
In order to maintain security while ensuring that the system remains accessible to developers, dahliaOS Linux is able to run a second Linux distribution as it's userspace, booted on top of the latest Linux kernel provided by dahliaOS. The userspace can be hot-swapped within the Graft app. By default, on 201205 the default userspace is Arch.
### Standard Linux Things
While the base system is not typically accessible outside of Developer Mode, dahliaOS Linux is a fairly standard system, package-wise. The default package manager  (Used for system updates) is `rpm`, and the [Busybox](https://busybox.net) packages provide the init system and the core utilities.
### Buildroot
## Compiling
## Releasing
## Planned Releases (Subject to change)
