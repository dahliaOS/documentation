# Buildroot

- This builds dahliaOS Linux-based builds easily

- As of June 13th, this is only a base buildroot and lacks the dahliaOS-specific overlays

## Usage

- ```git clone https://github.com/dahlia-os/buildroot.git```

- ```make menuconfig``` to configure the build settings

- ```make linux-menuconfig``` to configure the Linux kernel

- ```make``` to compile the image, which can be found under ```output/images```

- Files can be inserted into the image using the ```output/target``` directory

## Easy modification

To compile and run the base dahliaOS toolchain, use:

```make&&qemu-system-x86_64 --enable-kvm -m 4096 -cdrom output/images/rootfs.iso9660&&cp output/images/rootfs.iso9660 output/images/rootfs.iso```

## Requirements

It is recommended to have at minumum an Ethernet connection (directly to router), a dual-core x86 CPU and at least 4GB of RAM when compiling. 

I personally recommend a 4C/8T or better CPU with 16GB of RAM for optimal speeds.

You will also need a decent amount of hard drive space, I recommend around 50GB if you clear out the build directory often. 

It takes around 6 hours to build a full image from scratch on a Dell Optiplex 790 with a 3GHZ i5-2400 and 16GB of RAM.

## License

<p align="left">
  <img width="45%" src="https://github.com/dahlia-os/brand/blob/master/Logo%20SVGs/dahliaOS%20logo%20with%20text%20(drop%20shadow).svg"
</p>

Copyright © 2019-2020, The dahliaOS authors, contact@dahliaos.io

This project is licensed under the [Apache 2.0 license](../../LICENSE)
