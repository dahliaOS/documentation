<p align="center">
  <img width="45%" src="https://imgur.com/d7F8P3h.png"
</p>
<h2 align="center">
    <b>Documentation</b> 
    </h2>
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="https://github.com/dahlia-os/documentation/blob/master/supported-hardware.md"><img src="https://github.com/dahlia-os/documentation/blob/master/assets/button/supported%20hardware.svg" alt="main1" /></a>   <a href="https://github.com/dahlia-os/documentation/tree/master/hardware"><img src="https://github.com/dahlia-os/documentation/blob/master/assets/button/hardware.svg" alt="main1" /></a>  <a href="https://github.com/dahlia-os/documentation/blob/master/FAQ.md"><img src="https://github.com/dahlia-os/documentation/blob/master/assets/button/FAQ.svg" alt="main1" /></a>  <a href="https://paypal.me/officialdahliaos"><img src="https://github.com/dahlia-os/documentation/blob/master/assets/button/donate.svg" alt="main1" /></a>  <a href="https://github.com/dahlia-os/documentation/blob/master/CONTRIBUTING.md"><img src="https://github.com/dahlia-os/documentation/blob/master/assets/button/contribute.svg" alt="main1" /></a>
<h2 align="center">
    <b>How to make a bootable USB</b> 
    </h2>
<br />

- Firstly, go to [supported-hardware.md](./supported-hardware.md) to check out if your device can boot with syslinux. If not go to [How to make a bootable USB GRUB](https://github.com/dahlia-os/documentation#----how-to-make-a-bootable-usb-grub-----).

- then download the latest iso here [here](https://github.com/dahlia-os/releases/releases/download/200830-x86_64/dahliaOS-200830.iso).

- Secondly, download and install Etcher: [Download Etcher](https://www.balena.io/etcher/)

- After that run Etcher, select your dahlia iso, then your USB device, then select flash!

- After the process is finished, reboot and select you USB from you boot menu. 

- **!** (You may need to change your boot order in your uefi first)

<h2 align="center">
    <b>How to make a bootable USB [GRUB]</b> 
    </h2>
<br />

<h3 align="center">
    <b>64/32 Bit UEFI systems and 64 bit BIOS systems</b>
</h3>

- Download the latest iso: [Download latest dahliaOS GRUB ISO](https://github.com/HexaOneOfficial/dahliaos/releases/download/200830/DahliaOS200830.iso)

- Flash the iso to your USB with Etcher: [Download Etcher](https://www.balena.io/etcher/).

- **!** Make sure you have disabled: [how to disable secure boot](./assets/secure-boot/Disable-Secure-Boot.md)

<h3 align="center">
    <b>Raspberry pi 3/4</b>

</h3>

- Check status [here:](https://github.com/dahlia-os/zircon-rpi)

<h2 align="center">
    <b>Run dahlia in QEMU</b> 
    </h2>
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
    <b>Run pangolin-web</b> 
    </h2>
<br />

- Run pangolin-web: [here](https://dahlia-os.github.io/pangolin-desktop)

<h2 align="center">
    <b>Install Pangolin on linux</b> 
    </h2>
<br />
<h3 align="center">
    <b>Automated install</b>
</h3>

`curl -s https://raw.githubusercontent.com/dahlia-os/documentation/master/assets/scripts/install.sh | sh`

**Choose your distro accordingly as shown on the image here**

![list](https://github.com/dahlia-os/documentation/blob/master/assets/images/list/list.png)

<h3 align="center">
    <b>Manual install</b>
</h3>

**If you get any error in the Automated install script then try manual install.**

**tip** if you are using linux mint 19.3 or older use debian/ubuntu manual install.

<p align="center"><strong>Debian/ubuntu</strong></p>

`sudo apt-get install -y matchbox-window-manager`

- If you are on a older version of ubuntu you may wanna install snap `sudo apt install snapd` 

`sudo snap install flutter --classic`

- Install git if haven't already `sudo apt install git`

`git clone https://github.com/HexaOneOfficial/pangolin-linux.git`

`cd ~/pangolin-linux`

`sudo cp Pangolin.zip /`

`cd /`

`sudo unzip Pangolin.zip`

`sudo rm Pangolin.zip`

`sudo cp Pangolin.desktop /usr/share/xsessions/`

- Now reboot and choose pangolin as desktop session on your login screen

<p align="center"><strong>linux mint 20</strong></p>

`sudo apt-get install -y matchbox-window-manager`

- Remove nosnap.pref to install snapd `sudo rm /etc/apt/preferences.d/nosnap.pref`

`sudo apt install snapd` 

`sudo snap install flutter --classic`

- Install git if you don't already have it `sudo snap install git`

`git clone https://github.com/HexaOneOfficial/pangolin-linux.git`

`cd ~/pangolin-linux`

`sudo cp Pangolin.zip /`

`cd /`

`sudo unzip Pangolin.zip`

`sudo rm Pangolin.zip`

`sudo cp Pangolin.desktop /usr/share/xsessions/`

- Now reboot and choose pangolin as desktop to login

<h2 align="center">
    <b>Build Pangolin</b> 
    </h2>
<br />

- The Pangolin Desktop is the desktop of dahliaOS. It's written completely in Flutter, which makes it fast, beautiful and with only 200mb of ram usage,it is very resource friendly.

<br />

<h3 align="center">
    <b>Before Building</b>
</h3>

- Make sure you have `flutter` and `android-studio` installed. You can get the Dahlia environment to install all these things and more here: [dahlia-environment](https://github.com/EnderNightLord-ChromeBook/dahlia-environment)

<h3 align="center">
    <b>Let's Build</b>
</h3>

1. Make sure you have flutter in your path: `export PATH="$PATH:`pwd`/flutter/bin"`
2. Clone pangolin-desktop / mobile: `git clone https://github.com/dahlia-os/pangolin-desktop.git` / `git clone https://github.com/dahlia-os/pangolin-mobile.git`
3. Go into the pangolin-desktop / pangolin-mobile folder: `cd pangolin-desktop` / `cd pangolin-mobile`
4. And build the APK: `flutter build apk --debug` / `flutter build apk`

<h2 align="center">
    <b>Build official DahliaOS iso</b> 
    </h2>
<br />

This builds dahliaOS linux-based builds easily. As of 22:43 On June 13, this is only a base buildroot and lacks the dahlia-specific overlays.

<h3 align="center">
    <b>Usage</b>
</h3>

Fadd buildroot

add
buildroot/README.mdirst ```git clone https://github.com/dahlia-os/buildroot.git```

Then use ```make menuconfig``` to configure the build settings, ```make linux-menuconfig``` to configure the Linux kernel, and ```make``` to compile the image, which can be found under ```output/images```. Files can be inserted into the image using the ```output/target``` directory.

<h3 align="center">
    <b>Easy Modification</b>
</h3>

To compile and run the base dahliaOS toolchain, use ```make&&qemu-system-x86_64 --enable-kvm -m 4096 -cdrom output/images/rootfs.iso9660&&cp output/images/rootfs.iso9660 output/images/rootfs.iso```

<h3 align="center">
    <b>Reqirements</b>
</h3>

Its recommended to atleast have an Ethernet connection (directly to router), a dual-core x86 CPU and at least 4GB of RAM when compiling. I personally recommend a 4C/8T or better CPU with 16GB of RAM for optimal speed. You will also need a decent amount of hard drive space, I recommend around 50GB if you clear out the build directory often. It takes around 6 hours to build a full image from scratch on a Dell Optiplex 790 with a 3GHZ i5-2400 and 16GB of RAM. I am sure a Threadripper or a newer Xeon CPU could easily handle compiling.

<h3 align="center">
    <b>Warning</b>
</h3>

If you are using a laptop, make sure that you are aware of its temperature, some laptops easily heat up to 93-100c when compiling.


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

And then

    list disk
- You should see a screen like this: 

![diskpart](https://github.com/dahlia-os/documentation/blob/master/assets/images/cmd/Diskpart_list%20disk.png)
    
- Select your disk that you want to format:
(EXAMPLE) Disk 2

`select disk 2`
- Now you have selected the disk,
   
`clean`
    
`create partition primary`

`select partition 1`

`active`

`format fs=ntfs quick`

`exit`

- Extract the files from the iso, copy to the drive and use a disk clones of your choice to create a mbr iso.

<h3 align="center">
    <b>Download older ISOs</b>
</h3>

Check the [catalog](https://github.com/dahlia-os/documentation/blob/master/catalog.md) for older ISOs

<h3 align="center">
    <b>&nbsp;</b>
</h3>

<h3 align="center">
    <b>License</b>
</h3>

<p align="left">
  <img width="25%" src="https://imgur.com/d7F8P3h.png"
</p>

Copyright @ 2019-2020 The dahliaOS Authors contact@dahliaos.io

This project is licensed under the Apache 2.0 license
