---
title: The Buildroot Toolchain
permalink: build/buildroot.html
summary: Information and usage of the Buildroot tool, used to compile dahliaOS
---
## Buildroot

- This builds dahliaOS Linux-based builds easily.

- As of June 13th, this is only a base buildroot and lacks the dahliaOS-specific overlays.

### Usage

- ```git clone https://github.com/dahliaos/buildroot.git```

- ```make menuconfig``` to configure the build settings

- ```make linux-menuconfig``` to configure the Linux kernel

- ```make``` to compile the image, which can be found under ```output/images```

- Files can be inserted into the image using the ```output/target``` directory

### Easy modification

To compile and run the base dahliaOS toolchain, use:

```make&&qemu-system-x86_64 --enable-kvm -m 4096 -cdrom output/images/rootfs.iso9660&&cp output/images/rootfs.iso9660 output/images/rootfs.iso```

### Requirements

- Ethernet connection (reccommended for data downloads), a quad-core x86_64 CPU and at least 8 GB of RAM when compiling. 

- 4C/8T or better CPU with 10 GB of RAM for optimal speeds.

- Decent amount of hard drive space, around 64 GB is recommended if you clear out the build directory often. 

It takes around 8 hours to build a full image from scratch on a Dell Optiplex 790 with a 3 GHz i5-2400 and 16 GB of RAM.
