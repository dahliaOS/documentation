# How To Run DahilaOS

## Linux

### Arch

eerst open je een terminal en type je het volgende:
```
sudo pacman -S qemu qemu-arch-extra qemu-block-gluster qemu-block-iscsi qemu-block-rbd samba
```
dan download je het iso bestand van https://github.com/dahlia-os/releases/releases 

dan type je het volgende in de terminal: (je iso bestand heeft een andere naam dan: DahliaOS.iso)
```
qemu-system-x86_64 -cdrom Downloads/DahliaOS.iso -m 1024
```
### Ubuntu

eerst open je een terminal en type je het volgende:
```
sudo apt-get install qemu-kvm qemu virt-manager virt-viewer libvirt-bin
```
dan download je het iso bestand van: https://github.com/dahlia-os/releases/releases 

dan type je het volgende in de terminal (je iso bestand heeft een andere naam dan: DahliaOS.iso)
```
qemu-system-x86_64 -cdrom Downloads/DahliaOS.iso -m 1024
```


