# How To Run DahilaOS

## linux

### Arch

First open a terminal and type the following command:
```
sudo pacman -S qemu qemu-arch-extra qemu-block-gluster qemu-block-iscsi qemu-block-rbd samba
```

Then download the dahilaos iso from: https://github.com/dahlia-os/releases/releases 

Then type the following command in the terminal (your iso is named different than: DahliaOS.iso)
```
qemu-system-x86_64 -cdrom Downloads/DahliaOS.iso -m 1024
```
### Ubuntu 18.04

First open a terminal and type the following command:
```
sudo apt-get install qemu-kvm qemu virt-manager virt-viewer libvirt-bin
```
Then download the dahilaos iso from: https://github.com/dahlia-os/releases/releases 

Then type the following command in the terminal (your iso is named different than: DahliaOS.iso)
```
qemu-system-x86_64 -cdrom Downloads/DahliaOS.iso -m 1024
```

### Ubuntu 18.04+

First open a terminal and type the following command:
```
sudo apt-get install qemu-kvm qemu virt-manager virt-viewer libvirt-daemon-system libvirt-clients
```
Then download the dahilaos iso from: https://github.com/dahlia-os/releases/releases 

Then type the following command in the terminal (your iso is named different than: DahliaOS.iso)
```
qemu-system-x86_64 -cdrom Downloads/DahliaOS.iso -m 1024
