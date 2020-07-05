# How To Run DahilaOS

## linux

### arch

first open a terminal and type the following command
sudo pacman -S qemu qemu-arch-extra qemu-block-gluster qemu-block-iscsi qemu-block-rbd samba

than download the dahilaos iso from https://github.com/dahlia-os/releases/releases 

than type the following command in the terminal (your iso is named diffrent than DahliaOS.iso)
qemu-system-x86_64 -cdrom Downloads/DahliaOS.iso -m 1024

### ubuntu

first open a terminal and type the following command
sudo apt-get install qemu-kvm qemu virt-manager virt-viewer libvirt-bin

than download the dahilaos iso from https://github.com/dahlia-os/releases/releases 

than type the following command in the terminal (your iso is named diffrent than DahliaOS.iso)
qemu-system-x86_64 -cdrom Downloads/DahliaOS.iso -m 1024
