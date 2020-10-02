<h3
<p align="center">
  <img width="60%" src="https://github.com/dahlia-os/brand/blob/master/Logo%20SVGs/dahliaOS%20logo%20with%20text%20(drop%20shadow).svg"
</p>
  <br>
  <h2 align="center"><center>Pangolin on linux</center></h2>
  <br>
</div>

# Install 

## Automated install

`curl -s https://raw.githubusercontent.com/HexaOneOfficial/pangolin-linux/master/linkinstall.sh | sh`

**Choose your distro accordingly as shown on the image here**

![list](https://github.com/dahlia-os/documentation/blob/master/assets/images/list/list.png)

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
  <img width="45%" src="https://github.com/dahlia-os/brand/blob/master/Logo%20SVGs/dahliaOS%20logo%20with%20text%20(drop%20shadow).svg"
</p>

Copyright @ 2019-2020 The dahliaOS Authors contact@dahliaos.io

This project is licensed under the [Apache 2.0 license](https://github.com/dahlia-os/documentation/blob/master/LICENSE)
