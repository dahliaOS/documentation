# dahliaOS on QEMU

## Linux

### Arch
- First open a terminal and type the following command:

```
sudo pacman -S qemu qemu-arch-extra qemu-block-gluster qemu-block-iscsi qemu-block-rbd samba
```

### Fedora 33 / 34
- First open a terminal and type the following command:

```
sudo dnf install qemu
```

### Gentoo
- First open a terminal and type the following command:

```
emerge --ask app-emulation/qemu
```

### Ubuntu 20.04 - 21.04
- First open a terminal and type the following command:

```
sudo apt install qemu-kvm qemu virt-manager virt-viewer libvirt-daemon-system libvirt-clients
```

- For **Ubuntu 18.04** or older you want to run this command: 

```
sudo apt-get install qemu-kvm qemu virt-manager virt-viewer libvirt-bin
```

## Run dahliaOS
- download the dahliaOS latest ISO from: https://github.com/dahliaos/releases/releases/latest

- Then type the following command in the terminal (make sure that you use the right name of the ISO file. DahliaOS.iso is just for this example)

```
qemu-system-x86_64 -cdrom Downloads/DahliaOS.iso -m 1024 -enable-kvm
```
