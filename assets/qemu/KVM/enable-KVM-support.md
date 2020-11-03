### Enable KVM support (Kernel-based Virtual Machine)

Add this flag to your start command: **-enable-kvm**

(Your ISO might be named something else)

```
qemu-system-x86_64 -cdrom Downloads/DahliaOS.iso -m 1024 -enable-kvm
```
