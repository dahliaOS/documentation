<p align="left">
  <img width="45%" src="https://github.com/dahlia-os/documentation/blob/master/assets/images/logo/new/dahliaOS_logo_with_text_black.svg"
</p>
## Lenovo Flex 3 80R3 documentation 
Note: This is not an officially supported device for the zircon version, only for the linux version.

- dahliaOS will only work with uefi on this machine, disable csm mode in the bios to be able to boot on this machine.
- You are going to need to mess around with the boot order in the bois for it to work, if you think its too risky or you are just lazy, use the novo button to boot.                                                                           [See here](https://support.lenovo.com/ca/en/solutions/ht062552)
- Currently, without a master boot record you can run dahliaOS grub on it, the prefered way is to run the vanila iso with syslinux,

Download the isos here:

[GRUB](https://github.com/HexaOneOfficial/dahliaos/releases)

[VANILA (Not modified)](https://github.com/dahlia-os/releases/releases)


### Information before flashing

The efi is very finicky on this device so to
fix this problem, you need to download the file
from the link below, 

https://edk2.svn.sourceforge.net/svnroot/edk2/trunk/edk2/EdkShellBinPkg/FullShell/X64/Shell_Full.efi

Rename it to shellx64.efi and put it into /efi/boot
directory, when fully flashed. (You need rufus to
the file to be copied, when prompted, select ISO mode 
when writing.) 


Made by @puntillol59
