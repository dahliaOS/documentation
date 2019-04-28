# Qemu
This document will tell you how to test fuchsia / dahlia on qemu (quick emulator)

Boot (only terminal (no qemu)): `fx run`

Boot with graphics (using QEMU): `fx run -g`

Boot with networking (QEMU / Terminal): 

`sudo apt-get install uml-utilities`
`sudo tunctl -u $USER -t qemu`
`sudo ifconfig qemu up`

Then finally: `fx run -N -u scripts/start-dhcp-server.sh` (to start fuchsia with networking)

You can also use networking with graphics.
