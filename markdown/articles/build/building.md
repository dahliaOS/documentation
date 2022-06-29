---
title: Building and booting dahliaOS from source.
permalink: build/building.html
summary: Information and usage of the Buildroot tool, used to compile dahliaOS. 
---

#### special thanks to [ps4linux](https://web.archive.org/web/20220505114939/https://ps4linux.com/build-dahliaos-source/#:~:text=open%20a%20terminal%20in%20the%20buildroot%20directory%2C%20type%20cp%20-rvf%20dahliaos-overlays%2F*%20output%2Ftarget%20and%20press%20enter) for some of the build instructions.

## Install packages

### install ubuntu specific packages 

- ```sudo apt install build-essential libgtk-3-dev clang syslinux-utils ccd2iso docbook-xsl gobject-introspection cmake git ninja-build nano```

### setting up flutter and dart with git

- Clone flutter to /var/lib/flutter/ and configure permissions ```cd /var/lib; git clone https://github.com/flutter/flutter.git; sudo chown -R $USER:$USER /var/lib/flutter/```
- Make an symlink to flutter and dart ```sudo ln -s /var/lib/flutter/bin/flutter /usr/bin/flutter; sudo ln -s /var/lib/flutter/bin/dart /usr/bin/dart```
- Add support for flutter linux desktop ```flutter config --enable-linux-desktop```

- **tip!** if in the future you want to update flutter and dart simply run ```git pull``` in /var/lib/flutter/

## building dahliaOS

- Clone buidldroot ```git clone https://github.com/dahliaos/buildroot.git```

- Go into you cloned buidlroot directory and ```make``` or if wanted you can first make changes with busybox(init), linux and buildroot settings and hitting ```make``` if you are done.
  - ```make busybox-menuconfig```
  - ```make linux-menuconfig```
  - ```make menuconfig```
  
- After that is done run this command to recompile the image with pangolin added ```cp -rvf dahliaOS-overlays/* output/target; make```
- Now your iso file is in output/target.
