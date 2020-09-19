<p align="center">
  <img width="25%" src="https://github.com/dahlia-os/documentation/blob/master/assets/images/logo/new/dahliaOS_logo_with_text_black.svg"
</p>

# Install Pangolin on linux

## Automated install

`curl -s https://raw.githubusercontent.com/dahlia-os/documentation/master/assets/scripts/install.sh | sh`

**Choose your distro accordingly as shown on the image here**

<a href="/"><img src="./assets/images/list/list.png" alt="main1" /></a>

## Manual install


**If you get any error in the Automated install script then try manual install.**

**tip** if you are using linux mint 19.3 or older use debian/ubuntu manual install.

### Debian/ubuntu

`sudo apt-get install -y matchbox-window-manager`

- If you are on a older version of ubuntu you may wanna install snap `sudo apt install snapd` 

`sudo snap install flutter --classic`

- Install git if haven't already `sudo apt install git`

```shell
git clone https://github.com/HexaOneOfficial/pangolin-linux.git

cd ~/pangolin-linux

sudo cp Pangolin.zip /

cd /

sudo unzip Pangolin.zip

sudo rm Pangolin.zip

sudo cp Pangolin.desktop /usr/share/xsessions/
```

- Now reboot and choose pangolin as desktop session on your login screen

### linux mint 20

`sudo apt-get install -y matchbox-window-manager`

- Remove nosnap.pref to install snapd `sudo rm /etc/apt/preferences.d/nosnap.pref`

`sudo apt install snapd` 

`sudo snap install flutter --classic`

- Install git if you don't already have it `sudo snap install git`

`git clone https://github.com/HexaOneOfficial/pangolin-linux.git`

```shell
cd ~/pangolin-linux

sudo cp Pangolin.zip /

cd /

sudo unzip Pangolin.zip

sudo rm Pangolin.zip

sudo cp Pangolin.desktop /usr/share/xsessions/
```
- Now reboot and choose pangolin as desktop to login

## License

<p align="left">
  <img width="25%" src="https://imgur.com/d7F8P3h.png"
</p>

Copyright @ 2019-2020 The dahliaOS Authors contact@dahliaos.io

This project is licensed under the Apache 2.0 license
