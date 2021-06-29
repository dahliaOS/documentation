---
title: Pangolin Desktop on Linux
permalink: pangolin/pangolin-linux.html
summary: Installing the Pangolin Desktop on non-dahliaOS Linux systems
---
## Pangolin-linux
Pangolin Desktop can be run on various other Linux distributions.

### Requirements

#### Arch Linux

- Install flutter, matchbox-window-manager, and unzip

```
yay -S flutter matchbox-window-manager unzip
```

#### Debian/Ubuntu

- install git, matchbox-window-manager and unzip

```
sudo apt install git matchbox-window-manager unzip
```

- Install Flutter [`Snap`](https://snapcraft.io/flutter)

```
sudo snap install flutter --classic
```

#### Fedora

- Install Flutter [`Snap`](https://snapcraft.io/flutter)

```
sudo dnf install snapd
```

```
sudo ln -s /var/lib/snapd/snap /snap
```

```
sudo snap install flutter --classic
```

### Installation

If you're using something other than Linux Mint you will get a nosnap error but this won't effect anything.
```bash
git clone https://github.com/hexa-one/pangolin-linux.git
cd pangolin-linux && chmod +x install.sh && sudo ./install.sh
```
- now restart and login with pangolin
