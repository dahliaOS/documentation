### enable KVM support (Kernel-based Virtual Machine)

add this flag **-enable-kvm** to your start command

(your iso is named different than: DahliaOS.iso)

```
qemu-system-x86_64 -cdrom Downloads/DahliaOS.iso -m 1024 -enable-kvm
```
