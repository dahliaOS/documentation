# Pemu Docs

1. first you want to clone prickle. `git clone https://github.com/dahlia-os/prickle-emulator.git`

2. then... cd into the qemu folder. `cd prickle-emulator/lib/qemu`

3. then you can install ubuntu. `sh install-ubuntu.sh`

4. when ubuntu is finished you can boot it up. Exit out of the ubuntu install UI (when it's done) and boot up ubuntu. `sh run-ubuntu.sh`

## Notes (IMPORTENT)
there have been reports of this not working properly in deepin which is built on debian... Noah Cain and I will test cloning this on other
devices with ubuntu to check if it works properly. If it doesn't work for you please make an issue and I will have a look on what I can do.

### Architectures
at the moment this only has support for qemu-system-x86_64. which is located in 
`/home/ender/Dahlia/prickle-emulator/lib/qemu/x86_64-softmmu/qemu-system-x86_64`

to run it you must use `./qemu-system-x86_64 -(perimeters)`
