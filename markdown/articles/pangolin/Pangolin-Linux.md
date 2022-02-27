---
title: Pangolin Desktop on Linux
permalink: pangolin/pangolin-linux.html
summary: Installing the Pangolin Desktop on non-dahliaOS Linux systems
---
## Pangolin-linux
Pangolin Desktop can be run on various other Linux distributions.

### Requirements

#### Arch Linux

- install git, feh, openbox and unzip
- **note atm matchbox-window-manager fails to install**

```
sudo pacman -S git feh openbox unzip
```

#### Debian/Ubuntu

- install git, feh, openbox and unzip

```
sudo apt install git feh openbox unzip
```

### Installation

```bash
git clone https://github.com/quintenvandamme/pangolin-linux.git
cd pangolin-linux && chmod +x install.sh && sudo ./install.sh
```
- now restart and login with pangolin
