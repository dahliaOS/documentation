---
title: Running dahliaOS in QEMU (GUI)
permalink: install/QEMU-gui.html
summary: How to run dahliaOS Linux inside of virt manager
---
## dahliaOS on virt manager

### Install virt manager

#### Arch
- First open a terminal and type the following command:

```
sudo pacman -S qemu qemu-arch-extra qemu-block-gluster qemu-block-iscsi qemu-block-rbd samba virt-manager
```

#### Ubuntu 20.04 - 21.04
- First open a terminal and type the following command:

```
sudo apt install qemu-kvm qemu virt-manager virt-viewer libvirt-daemon-system libvirt-clients
```

- For **Ubuntu 18.04** or older you want to run this command:

```
sudo apt-get install qemu-kvm qemu virt-manager virt-viewer libvirt-bin
```

### Making a virtual machine

- Open Virt Manager and click on **Create a new virtual machine**.

- **1:** Choose **Local install media (ISO image or CDROM)** and click Forward.

- **2:** Click on Browse: Browse local and select your iso. Deselect **Automatically detect from the installation media / source** and Choose as OS **Generic Linux 2020 (linux2020)** and click Forward.

- **3:** Fill in the following minimum specifications and click Forward.


```
Memory: 2048 mb
CPUs: 2
```

- **4:** Skip this by clicking Forward.

- **5:** Fill in the following information and click Finish and wait for the vm to boot.

```
Name: DahliaOS
```

<div align=center> 
 <img width="80%" src="../img/qemu-gui/1.gif"/> 
</div>

