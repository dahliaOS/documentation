# Pangolin-linux
Pangolin Desktop running on Linux systems.

## Table of Contents
- [Requirements](#requirements)
  - [arch](#arch)
  - [Debian/Ubuntu](#debianubuntu)
  - [Fedora](#fedora)
- [Installation](#installation)

## Requirements

### arch

- Install flutter and matchbox-window-manager unzip
```
yay -S flutter matchbox-window-manager unzip
```
### Debian/Ubuntu

- install git and matchbox-window-manager unzip
```
sudo apt install git matchbox-window-manager unzip
```
- Install flutter [`Snap`](https://snapcraft.io/flutter)
```
sudo snap install flutter --classic
```

### Fedora

- Install flutter [`Snap`](https://snapcraft.io/flutter)
```
sudo dnf install snapd
```

```
sudo ln -s /var/lib/snapd/snap /snap```
```

```
sudo snap install flutter --classic
```

## Installation

If you're using something other than Linux Mint you will get a nosnap error but this won't effect anything.
```bash
git clone https://github.com/HexaOneOfficial/pangolin-linux.git
cd pangolin-linux && chmod +x install.sh && sudo ./install.sh
```
- now restart and login with pangolin

## License

<p align="left">
  <img width="45%" src="https://github.com/dahliaos/brand/blob/master/Logo%20SVGs/dahliaOS%20logo%20with%20text%20(drop%20shadow).svg"
</p>

Copyright © The dahliaOS authors, contact@dahliaos.io

This project is licensed under the [Apache 2.0 license](../LICENSE)
