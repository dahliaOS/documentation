<p align="center">
  <img width="25%" src="https://github.com/dahlia-os/documentation/blob/master/assets/images/logo/dahlialogo.png"
</p>

<h2 align="center">
    <b>Documentation</b> 
    </h2>
<br />

<h2 align="center">
    <b>How to make a bootable USB [GRUB]</b> 
    </h2>
<br />

<br />

<h3 align="center">
    <b>64/32 Bit UEFI systems and 64 bit BIOS systems</b>
</h3>

- Download the latest iso: [Download latest dahliaOS ISO](https://github.com/HexaOneOfficial/dahliaos/releases/download/200804/DahliaOS200804.iso)

- flash the iso to your USB with Etcher: [Download Etcher](https://www.balena.io/etcher/).

- **!** make sure you have disabled: [how to disable secure boot](https://github.com/dahlia-os/documentation/blob/master/assets/secure-boot/Disable-Secure-Boot.md)

<h3 align="center">
    <b>32 bit BIOS</b>
</h3>

- Download the latest ISO: [Download latest dahliaOS ISO](https://github.com/HexaOneOfficial/dahliaos/releases/download/200804/DahliaOS200804_32.iso)

- flash the iso to your USB with Etcher: [Download Etcher](https://www.balena.io/etcher/)

<br />

<h3 align="center">
    <b>raspberry pi 3/4</b>
</h3>

- being worked hard on

<h2 align="center">
    <b>How to make a bootable USB [SYSLINUX]</b> 
    </h2>
<br />

- Firstly, you wanna check if you have one of the [few supported devices](https://github.com/dahlia-os/documentation/blob/master/supported-hardware-non-grub.md).
If so you can download a dahliaOS iso from the [releases page](https://github.com/dahlia-os/releases/releases). The latest one at the time of writing can be downloaded [here](https://github.com/dahlia-os/releases/releases/download/200804-x86_64/dahliaOS-200804.iso)

- Secondly, download and install Etcher: [Download Etcher](https://www.balena.io/etcher/)

- After that run Etcher, select your dahlia iso, then your USB device, then select flash!

- After the process is finished, reboot and select you USB from you boot menu. 

- **!** (you may need to change your boot order in your uefi first.)

<h2 align="center">
    <b>Run dahlia in QEMU</b> 
    </h2>
<br />

<br />

<h3 align="center">
    <b>Arch</b>
</h3>

- First open a terminal and type the following command:
```
sudo pacman -S qemu qemu-arch-extra qemu-block-gluster qemu-block-iscsi qemu-block-rbd samba
```

- Then download the dahliaos iso from: https://github.com/dahlia-os/releases/releases 

- Then type the following command in the terminal (make sure that you use the right name of the ISO file. DahliaOS.iso is just for this example)
```
qemu-system-x86_64 -cdrom Downloads/DahliaOS.iso -m 1024
```
<br />

<h3 align="center">
    <b>Ubuntu 18.04</b>
</h3>

- First open a terminal and type the following command:
```
sudo apt-get install qemu-kvm qemu virt-manager virt-viewer libvirt-bin
```
- Then download the dahliaos iso from: https://github.com/dahlia-os/releases/releases 

- Then type the following command in the terminal (make sure that you use the right name of the ISO file. DahliaOS.iso is just for this example)
```
qemu-system-x86_64 -cdrom Downloads/DahliaOS.iso -m 1024
```

<br />

<h3 align="center">
    <b>Ubuntu 18.04+</b>
</h3>

- First open a terminal and type the following command:
```
sudo apt-get install qemu-kvm qemu virt-manager virt-viewer libvirt-daemon-system libvirt-clients
```
- Then download the dahliaos iso from: https://github.com/dahlia-os/releases/releases 

- Then type the following command in the terminal (make sure that you use the right name of the ISO file. DahliaOS.iso is just for this example)
```
qemu-system-x86_64 -cdrom Downloads/DahliaOS.iso -m 1024
```
<br />

<h3 align="center">
    <b>Add KVM (Kernel-based Virtual Machine)</b>
</h3>

- simply add **-enable-kvm** to your start command

- (Make sure that you use the right name of the ISO file. DahliaOS.iso is just for this example)

```
qemu-system-x86_64 -cdrom Downloads/DahliaOS.iso -m 1024 -enable-kvm
```

<h2 align="center">
    <b>Install Pangolin on linux</b> 
    </h2>
<br />

<br />

<h3 align="center">
    <b>Automated install</b>
</h3>

`curl -s https://raw.githubusercontent.com/dahlia-os/documentation/master/assets/scripts/install.sh | sh`

**choose your distro shown by the image here**

<p align="center">
  <img width="25%" src="https://github.com/dahlia-os/documentation/blob/master/assets/images/list/list.png"
</p>

<h3 align="center">
    <b>Manual install</b>
</h3>

**if you get any error in the Automated install script than try the manual install.**

**tip** if you are using linux mint 19.3 or older use debian/ubuntu manual install.

<p align="center"><strong>Debian/ubuntu</strong></p>



`sudo apt-get install -y matchbox-window-manager`

- if you are on a older version of ubuntu you may wanna install snap `sudo apt install snapd` 

`sudo snap install flutter --classic`

- install git if didn't already `sudo apt install git`

`git clone https://github.com/HexaOneOfficial/pangolin-linux.git`

`cd ~/pangolin-linux`

`sudo cp Pangolin.zip /`

`cd /`

`sudo unzip Pangolin.zip`

`sudo rm Pangolin.zip`

`sudo cp Pangolin.desktop /usr/share/xsessions/`

- now reboot and choose pangolin as desktop session on your login screen

<p align="center"><strong>linux mint 20</strong></p>

`sudo apt-get install -y matchbox-window-manager`

- remove nosnap.pref to install snapd `sudo rm /etc/apt/preferences.d/nosnap.pref`

`sudo apt install snapd` 

`sudo snap install flutter --classic`

- install git if you don't already have it `sudo snap install git`

`git clone https://github.com/HexaOneOfficial/pangolin-linux.git`

`cd ~/pangolin-linux`

`sudo cp Pangolin.zip /`

`cd /`

`sudo unzip Pangolin.zip`

`sudo rm Pangolin.zip`

`sudo cp Pangolin.desktop /usr/share/xsessions/`

- now reboot and choose pangolin as desktop to login



<h2 align="center">
    <b>Build Pangolin</b> 
    </h2>
<br />

- The Pangolin Desktop is the desktop of dahliaOS. It's written completely in Flutter, which makes it fast, beautiful and with 200mb ram usage very resource friendly.

<br />

<h3 align="center">
    <b>Before Building</b>
</h3>

- Make sure you have `flutter` and `android-studio` installed. You can get the Dahlia environment to install all these things and more here: [dahlia-environment](https://github.com/EnderNightLord-ChromeBook/dahlia-environment)


<h3 align="center">
    <b>Let's Build</b>
</h3>


1. make sure you have flutter in your path: `export PATH="$PATH:`pwd`/flutter/bin"`
2. clone pangolin-desktop / mobile: `git clone https://github.com/dahlia-os/pangolin-desktop.git` / `git clone https://github.com/dahlia-os/pangolin-mobile.git`
3. go into the pangolin-desktop / pangolin-mobile folder: `cd pangolin-desktop` / `cd pangolin-mobile`
4. and build the APK: `flutter build apk --debug` / `flutter build apk`

<h2 align="center">
    <b>Build Grub iso</b> 
    </h2>
<br />

<h3 align="center">
    <b>[Linux] build files</b>
</h3>

-**Run this script to build the iso files**

<p align="center"><strong>64 bit</strong></p>

- `curl -s https://raw.githubusercontent.com/HexaOneOfficial/dahliaos/master/scripts/64/run.sh | sh` 

<p align="center"><strong>32 bit</strong></p>

- `curl -s https://raw.githubusercontent.com/HexaOneOfficial/dahliaos/master/scripts/32/run.sh | sh` 

<h3 align="center">
    <b>[Linux] make iso</b>
</h3>

no content 

<h3 align="center">
    <b>[windows] make iso</b>
</h3>

-**Files to iso** 

- Download **Poweriso [here](https://www.poweriso.com/)** and copy the build files you just made. 

-**Flashing to USB** 

- Download **Rufus [here](https://rufus.ie/)** and flash your iso file to your USB.

<h2 align="center">
    <b>Make MBR iso</b> 
    </h2>
<br />

<h3 align="center">
    <b>Windows [BETA]</b>
</h3>

When you have made the iso, go to command prompt. You can go to this by hitting windows + r and typing in cmd. (Make sure you are admin.) 

-   Then, Run the following commands.

 `diskpart`

and then

    list disk
- you should see a screen like this: 

![diskpart](https://github.com/dahlia-os/documentation/blob/master/assets/images/cmd/Diskpart_list%20disk.png)
    
- select your disk that you want to format:
(EXAMPLE) Disk 2

`select disk 2`
- now you have selected the disk,
   
`clean`
    
`create partition primary`

`select partition 1`

`active`

`format fs=ntfs quick`

`exit`

- Extract the files from the iso, copy to the drive and use a disk clones of your choice to create a mbr iso.



