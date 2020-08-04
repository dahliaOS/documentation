# Documentation

**Everything you need to know about dahlia... WISDOM.**

<pre>
<a href="https://github.com/dahlia-os/documentation#documentation">Documentation</a>
<a href="https://github.com/dahlia-os/documentation#how-to-make-a-bootable-usb-grub-all-devices">├── How to make a bootable USB</a>
<a href="https://github.com/dahlia-os/documentation#how-to-make-a-bootable-usb-grub-all-devices">│   ├── (GRUB) (ALL DEVICES)</a>
<a href="https://github.com/dahlia-os/documentation#x86_64">│   │  ├── x86_64</a>
<a href="https://github.com/dahlia-os/documentation#raspberry-pi-34">│   │  └── Raspberry Pi 3/4</a>
<a href="https://github.com/dahlia-os/documentation#how-to-make-a-bootable-usbnon-grubfew-devices">│   └── (NON GRUB)(FEW DEVICES)</a>
<a href="https://github.com/dahlia-os/documentation#how-to-run-dahlia-in-qemu">├── How to run dahlia in qemu</a>
<a href="https://github.com/dahlia-os/documentation#arch">│   ├── Arch</a>
<a href="https://github.com/dahlia-os/documentation#ubuntu-1804">│   ├── Ubuntu 18.04</a>
<a href="https://github.com/dahlia-os/documentation#ubuntu-1804-1">│   ├── Ubuntu 18.04+</a>
<a href="https://github.com/dahlia-os/documentation/blob/master/README.md#add-kvm-support-kernel-based-virtual-machine">│   └── Add KVM support (Kernel-based Virtual Machine)</a>
<a href="https://github.com/dahlia-os/documentation/blob/master/README.md#install-pangolin-on-linux">├── Install Pangolin on linux</a>
<a href="https://github.com/dahlia-os/documentation/blob/master/README.md#automated-install">│   ├── Automated install</a>
<a href="https://github.com/dahlia-os/documentation/blob/master/README.md#manual-install">│   └── Manual install</a>
<a href="https://github.com/dahlia-os/documentation/blob/master/README.md#debianubuntu">│      ├── debian/ubuntu</a>
<a href="https://github.com/dahlia-os/documentation/blob/master/README.md#linux-mint-20">│      └── linux mint 20</a>
<a href="https://github.com/dahlia-os/documentation#build-pangolin">├── Build Pangolin</a>
<a href="https://github.com/dahlia-os/documentation#before-building">│   └── Before Building...</a>
<a href="https://github.com/dahlia-os/documentation#lets-build">│      └── Lets Build!</a>
<a href="https://github.com/dahlia-os/documentation#build-grub-iso">├── Build GRUB iso</a>
<a href="https://github.com/dahlia-os/documentation/blob/master/README.md#make-iso">│   ├── Make ISO</a>
<a href="https://github.com/dahlia-os/documentation/blob/master/README.md#windows-make-iso">│   │  ├── Windows</a>
<a href="https://github.com/dahlia-os/documentation/blob/master/README.md#linux-make-iso">│   │  └── Linux</a>
<a href="https://github.com/dahlia-os/documentation/blob/master/README.md#make-mbr">│   ├── Make MBR</a>
<a href="https://github.com/dahlia-os/documentation/blob/master/README.md#windows-make-a-master-boot-recordbeta">│   │  ├── Windows(BETA)</a>
<a href="https://github.com/dahlia-os/documentation/blob/master/README.md#linux-make-a-master-boot-record--iso-image">│   │  └── Linux</a>
<a href="https://github.com/dahlia-os/documentation/blob/master/README.md#build-tiny-grub-image">│   └── Build tiny grub image</a>
</pre>  

## How to make a bootable USB (GRUB) (ALL DEVICES)

### x86_64

**64/32 UEFI systems and 64 BIOS systems**

1 Download the latest **[iso](https://github.com/HexaOneOfficial/dahliaos/releases/download/200630_2/DahliaOS200630_2.iso)**. 

2 flash the iso to your USB with **[Etcher](https://www.balena.io/etcher/)**.

**!** make sure you have disabled **[secure boot](https)**. 

### Raspberry Pi 3/4

coming soon

## How to make a bootable USB(NON GRUB)(FEW DEVICES)

Firstly, you wanna check if you have one of the [few supported devices](https://github.com/dahlia-os/documentation/blob/master/supported%20hardware%20non%20grub.md).
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
### Add KVM support (Kernel-based Virtual Machine)

simply add **-enable-kvm** to your start command

(your iso is named different than: DahliaOS.iso)

```
qemu-system-x86_64 -cdrom Downloads/DahliaOS.iso -m 1024 -enable-kvm
```

## Install Pangolin on linux

### Automated install

`curl -s https://raw.githubusercontent.com/dahlia-os/documentation/master/assets/scripts/install.sh | sh`

**choose your distro shown by the image here**

![list](https://github.com/dahlia-os/documentation/blob/master/assets/images/list/list.png)

### Manual install

**if you get any error in the Automated install script than try the manual install.**

**tip** if you are using linux mint 19.3 or older use debian/ubuntu manual install.

### debian/ubuntu

`sudo apt-get install -y matchbox-window-manager`

if you are on a older version of ubuntu you may wanna install snap `sudo apt install snapd` 

`sudo snap install flutter --classic`

install git if didn't already `sudo snap install git`

`git clone https://github.com/HexaOneOfficial/pangolin-linux.git`

`cd ~/pangolin-linux`

`sudo cp Pangolin.zip /`

`cd /`

`sudo unzip Pangolin.zip`

`sudo rm Pangolin.zip`

`sudo cp Pangolin.desktop /usr/share/xsessions/`

now reboot and choose pangolin as desktop to login


### linux mint 20

`sudo apt-get install -y matchbox-window-manager`

remove nosnap.pref to install snapd `sudo rm /etc/apt/preferences.d/nosnap.pref`

`sudo apt install snapd` 

`sudo snap install flutter --classic`

install git if didn't already `sudo snap install git`

`git clone https://github.com/HexaOneOfficial/pangolin-linux.git`

`cd ~/pangolin-linux`

`sudo cp Pangolin.zip /`

`cd /`

`sudo unzip Pangolin.zip`

`sudo rm Pangolin.zip`

`sudo cp Pangolin.desktop /usr/share/xsessions/`

now reboot and choose pangolin as desktop to login



## Build Pangolin

Pangolin is Dahlia's desktop / mobile shell. pangolin-desktop is based on the older metaphor of ChromeOS, like the launcher, notification tab etc.

### Before Building...

Make sure you have `flutter` and `android-studio` installed. You can get the Dahlia environment to install all these things and more here: [dahlia-environment](https://github.com/EnderNightLord-ChromeBook/dahlia-environment)

### Lets Build!

1. make sure you have flutter in your path: `export PATH="$PATH:`pwd`/flutter/bin"`
2. clone pangolin-desktop / mobile: `git clone https://github.com/dahlia-os/pangolin-desktop.git` / `git clone https://github.com/dahlia-os/pangolin-mobile.git`
3. go into the pangolin-desktop / pangolin-mobile folder: `cd pangolin-desktop / pangolin-mobile`
4. and build the APK: `flutter build apk --debug` / `flutter build apk`

### Build GRUB iso

-**First you need to clone the base components**
 
 - `git clone https://github.com/HexaOneOfficial/dahliaos.git` 

-**Copy and make base components to ~/builddahliagrub**

- `curl -s https://raw.githubusercontent.com/HexaOneOfficial/dahliaos/master/build.sh | sh` 

-**Setting up linux Kernel** 

- buildKERNEL provides a default kernel and mainline kernel select the one you want to use.

- `./buildKERNEL.sh`

-**Setting up dahlia image** 
 
 - `./buildIMAGE.sh`

-**Finalizing** 
 
- `./finalize.sh`

### Make ISO

### [windows] Make ISO

-**Files to iso** 

- Download **Poweriso [here](https://www.poweriso.com/)** and copy the build files you just made. 

-**Flashing to USB** 

- Download **Rufus [here](https://rufus.ie/)** and flash your iso file to your USB.


### [linux] Make ISO

### Make MBR

### [windows] Make a Master boot record(BETA)
When you have made the iso, go to command prompt. You can go to this by hitting windows + r and typing in cmd. (Make sure you are admin.) 

-   Then, Run the following commands.

 `diskpart`

and then

    list disk
you should see a screen like this: 

![diskpart](https://github.com/dahlia-os/documentation/blob/master/assets/images/cmd/Diskpart_list%20disk.png)
    
select your disk that you want to format:
(EXAMPLE) Disk 2

    select disk 2
   now you have selected the disk,
   

    clean
    
    create partition primary

    select partition 1

    active

    format fs=ntfs quick

    exit

Extract the files from the iso, copy to the drive and use a disk clones of your choice to create a mbr iso.

### [linux] Make a Master boot record / iso image



### Build tiny grub image
