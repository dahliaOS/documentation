---
title: Running dahliaOS in QEMU (GUI)
permalink: install/QEMU-gui.html
summary: How to run dahliaOS Linux inside of the QEMU Emulator
---
## dahliaOS on QEMU

### Linux

#### Ubuntu 20.04 - 21.04
- First open a terminal and type the following command:

```
sudo apt install virt-manager
```

- For **Ubuntu 18.04** or older you want to run this command: 

```
sudo apt-get install virt-manager
```

### Run dahliaOS
- Download the dahliaOS latest ISO from: https://github.com/dahliaos/releases/releases/latest

- Then type the following command in the terminal (make sure that you use the right name of the ISO file. DahliaOS.iso is just for this example)

- Make sure you use a least 2GB or more or the vm will fail to load pangolin

```
qemu-system-x86_64 -cdrom Downloads/DahliaOS.iso -m 2048 -enable-kvm
```
