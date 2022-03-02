---
title: Pangolin Desktop on Linux
permalink: pangolin/pangolin-linux.html
summary: Installing the Pangolin Desktop on non-dahliaOS Linux systems
---
## Pangolin-linux
Pangolin Desktop can be run on various other Linux distributions.

### Requirements

#### Arch Linux

- install git, feh and openbox

```
sudo pacman -S git feh openbox
```

#### Debian/Ubuntu

- install git, feh and openbox

```
sudo apt install git feh openbox
```

#### Fedora

- install git, feh and openbox

```
sudo dnf install git feh openbox
```

- Disable selinux to get Pangolin as a option in your login manager.

```
sudo vi /etc/selinux/config
```
```
SELINUX=disabled
```
```
sudo reboot
```

### Installation

```bash
git clone https://github.com/quintenvandamme/pangolin-linux.git
cd pangolin-linux && chmod +x install.sh && sudo ./install.sh
```
- now restart and login with pangolin
