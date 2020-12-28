# Table of Contents

- [building kernel](#building-kernel)
  * [prerequisites](#prerequisites)
    * [install tools](#install-tools)
    * [download kernel](#download-kernel)
    * [extract the kernel](#extract-the-kernel)
  * [making a config file](#making-a-config-file)
    * [make loadmodconfig](#make-loadmodconfig)
    * [make menuconfig](#make-menuconfig)
    * [copy .config file](#copy-config-file)

# building kernel

## prerequisites

### install tools

- First we need to install the tools to build the kernel.

- Debian / Ubuntu
```bash
sudo apt install build-essential libncurses-dev bison flex libssl-dev libelf-dev wget dwarves
```

- Fedora
```bash
sudo dnf group install "Development Tools"
```

```bash
sudo dnf install ncurses-devel bison flex elfutils-libelf-devel openssl-devel wget
```
### download kernel

- Now we need to download a kernel. For dahliaOS we can only use the kernel thats installed with that build. So for 201215 that would 5.10.1.

```bash
mkdir ~/kernel && cd ~/kernel && wget https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.1.tar.xz
```
- This will make a directory and download linux 5.10.1

### extract the kernel

- Next we need to extract the kernel.

```bash
tar xvf linux-5.10.1.tar.xz && rm linux-5.10.1.tar.xz
```

- And go into the kernel directory by

```bash
cd linux-5.10.1
```

## making a .config file

- Here are 3 ways how to make a .config file.
- If you are done with one of them go to the next step.

### copy .config file

- This is the easiest way and `recommended for linux beginners`.
- This will include a lot of hardware support but is rather big.

```bash
cp -v /boot/config-$(uname -r) .config
```

### make loadmodconfig

- Deletes all not running modules in .config and therefore helps to make a small kernel image.
- There is one catch with this, if you want to plug in a devices that whas not compiled than it won't work.

```bash
make loadmodconfig
```

### make menuconfig

- Make your own kernel config. `not recommended for linux beginners

```bash
make menuconfig
```
