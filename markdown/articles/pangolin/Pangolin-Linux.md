---
title: Pangolin Desktop on Linux
permalink: pangolin/pangolin-linux.html
summary: Installing the Pangolin Desktop on non-dahliaOS Linux systems
---
## Pangolin-linux
Pangolin Desktop can be run on various other Linux distributions.

### Requirements

#### Arch Linux

- Install matchbox-window-manager, and unzip
- **note atm matchbox-window-manager fails to install**

```
yay -S matchbox-window-manager unzip
```

#### Debian/Ubuntu

- install git, matchbox-window-manager and unzip

```
sudo apt install git matchbox-window-manager unzip
```

### Installation

```bash
git clone https://github.com/quintenvandamme/pangolin-linux.git
cd pangolin-linux && chmod +x install.sh && sudo ./install.sh
```
- now restart and login with pangolin
