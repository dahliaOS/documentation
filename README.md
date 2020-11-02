<p align="center">
  <a href="https://www.dahliaos.io">
    <img width="60%" src="https://github.com/dahlia-os/brand/blob/master/Logo%20SVGs/dahliaOS%20logo%20with%20text%20(drop%20shadow).svg" alt="logo" />
  </a>

  <br>
    <h1 align="center"><center>Documentation</center></h1>
  <br>

<p align="center">
  <a href="supported-hardware.md">
    <img src="assets/button/supported%20hardware.svg" alt="supported-hardware" />
  </a>
  <a href="hardware">
    <img src="assets/button/hardware.svg" alt="hardware" />
  </a>
  <a href=".github/CONTRIBUTING.md">
    <img src="assets/button/contribute.svg" alt="contribute" />
  </a>
  <a href="https://dahliaos.io/donate/">
    <img src="assets/button/donate.svg" alt="donate" />
  </a>
</p>

## Table of Contents

- [run DahliaOS](run%20DahliaOS)
  * [x86_64-efi.md](run%20DahliaOS/x86_64-efi.md)
  * [x86_32-efi.md](run%20DahliaOS/x86_32-efi.md)
  * [x86_64-legacy.md](run%20DahliaOS/x86_64-legacy.md)
  * [qemu.md](run%20DahliaOS/qemu.md)
- [pangolin](pangolin)
  * [build_pangolin.md](pangolin/build_pangolin.md)
  * [Pangolin on linux.md](pangolin/Pangolin%20on%20linux.md)
- [OS](OS)
  * [translations](OS/translations)
    * [translation.md](translation.md)
  * [kernel](OS/kernel)
    * [README.md](OS/kernel/README.md)



<h3 align="center">
    <b>Before Building</b>
</h3>

- Make sure you have `flutter` and `android-studio` installed. You can get the Dahlia environment to install all these things and more here: [dahlia-environment](https://github.com/EnderNightLord-ChromeBook/dahlia-environment)

<h3 align="center">
    <b>Let's Build</b>
</h3>

1. Make sure you have flutter in your path: `export PATH="$PATH:`pwd`/flutter/bin"`
2. Clone pangolin-desktop / mobile: `git clone https://github.com/dahlia-os/pangolin-desktop.git` / `git clone https://github.com/dahlia-os/pangolin-mobile.git`
3. Go into the pangolin-desktop / pangolin-mobile folder: `cd pangolin-desktop` / `cd pangolin-mobile`
4. And build the APK: `flutter build apk --debug` / `flutter build apk`

<h2 align="center">
    <b>Build official DahliaOS iso</b> 
    </h2>
<br />

This builds dahliaOS linux-based builds easily. As of 22:43 On June 13, this is only a base buildroot and lacks the dahlia-specific overlays.

<h3 align="center">
    <b>Usage</b>
</h3>

Fadd buildroot

add
buildroot/README.mdirst ```git clone https://github.com/dahlia-os/buildroot.git```

Then use ```make menuconfig``` to configure the build settings, ```make linux-menuconfig``` to configure the Linux kernel, and ```make``` to compile the image, which can be found under ```output/images```. Files can be inserted into the image using the ```output/target``` directory.

<h3 align="center">
    <b>Easy Modification</b>
</h3>

To compile and run the base dahliaOS toolchain, use ```make&&qemu-system-x86_64 --enable-kvm -m 4096 -cdrom output/images/rootfs.iso9660&&cp output/images/rootfs.iso9660 output/images/rootfs.iso```

<h3 align="center">
    <b>Reqirements</b>
</h3>

Its recommended to atleast have an Ethernet connection (directly to router), a dual-core x86 CPU and at least 4GB of RAM when compiling. I personally recommend a 4C/8T or better CPU with 16GB of RAM for optimal speed. You will also need a decent amount of hard drive space, I recommend around 50GB if you clear out the build directory often. It takes around 6 hours to build a full image from scratch on a Dell Optiplex 790 with a 3GHZ i5-2400 and 16GB of RAM. I am sure a Threadripper or a newer Xeon CPU could easily handle compiling.

<h3 align="center">
    <b>Warning</b>
</h3>

If you are using a laptop, make sure that you are aware of its temperature, some laptops easily heat up to 93-100c when compiling.

<h3 align="center">
    <b>Download older ISOs</b>
</h3>

Check the [catalog](catalog.md) for older ISOs

<h3 align="center">
    <b>&nbsp;</b>
</h3>

## License

<p align="left">
  <img width="45%" src="https://github.com/dahlia-os/brand/blob/master/Logo%20SVGs/dahliaOS%20logo%20with%20text%20(drop%20shadow).svg"
</p>

Copyright @ 2019-2020 The dahliaOS Authors contact@dahliaos.io

This project is licensed under the [Apache 2.0 license](LICENSE)
