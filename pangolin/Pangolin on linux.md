# pangolin-linux
pangolin desktop running on debian based systems

## requirements

### debian/ubuntu

- If you don't have git installed do it by ```sudo apt install git```

- Install flutter
```git clone https://github.com/flutter/flutter.git```
```cd flutter/ && sudo export PATH="$PATH:`pwd`/flutter/bin"```

Then open .bashrc and add this line to it
```export PATH="$PATH:[~/flutter/]/flutter/bin"```.

Open a new terminal and Verify that the flutter command is available by running
```which flutter```.

- Install matchbox-window-manager
```sudo apt install -y matchbox-window-manager```

### arch

- install [pangolin-desktop **AUR**](https://aur.archlinux.org/packages/pangolin-desktop-git/)
```yay pangolin-desktop``` and choose first option

## install

if your using something other than linuxmint you will get a nosnap error. this won't effect anything.

- ```git clone https://github.com/HexaOneOfficial/pangolin-linux.git```

- ```cd pangolin-linux/ && sudo chmod +x install.sh && sudo ./install.sh```

- now restart and login with pangolin


## License

<p align="left">
  <img width="45%" src="https://github.com/dahlia-os/brand/blob/master/Logo%20SVGs/dahliaOS%20logo%20with%20text%20(drop%20shadow).svg"
</p>

Copyright @ 2019-2020 The dahliaOS Authors contact@dahliaos.io

This project is licensed under the [Apache 2.0 license](https://github.com/dahlia-os/documentation/blob/master/LICENSE)
