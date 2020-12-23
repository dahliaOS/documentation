# building kernel

## Table of Contents

- [](#)
  * [](#)


## making a .config file

### make loadmodconfig

- Deletes all not running modules in .config and therefore helps to make a small kernel image.
- There is one catch with this, if you want to plug in a devices that whas not compiled than it won't work.

```bash
make loadmodconfig
```

### make menuconfig

- Make your own kernel config. `not recommended for linux beginners`

```bash
make menuconfig
```

- If you are working under buildroot you need to run this command:

```bash
make linux-menuconfig
```
