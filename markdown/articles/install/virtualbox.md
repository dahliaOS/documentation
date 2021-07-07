---
title: Running dahliaOS in VirtualBox
permalink: install/virtualbox.html
summary: How to run dahliaOS Linux inside of VirtualBox
---
## dahliaOS on VirtualBox

### Linux / Windows / MacOS

#### Downloading VirtualBox

- Go to the [VirtualBox download page](https://www.virtualbox.org/wiki/Downloads) and select virtualbox for your host os. 

- Go through the setup and install virtualbox.

- Download the legacy iso [here](https://dahliaos.io/download/latest/legacy).

#### Making a virtual machine

- Open VirtualBox and click on New.
```
Name: DahliaOS
Type: Linux
Version: Other Linux (64-bit)
```

- Click next and give the VM a minimum of 2GB(2048mb).

- Keep clicking Next until it says `File location and size`. It doesn't really matter how much you give it because the system doesn't run on a hard drive.

- Click Create to finish.

<div align=center> 
 <img width="80%" src="../img/virtualbox/1.gif"/> 
</div>

#### Setting up the virtual machine

- Now click on settings and setup the following settings.
```
System: Processor Tab: 2 CPU's
Display: Video Memory: 128mb
Storage: click on the empty cd symbol: check the Live CD/DVD and click on the cd symbol and select your iso you downloaded.
```

- Click on OK to finish and click on Start to run dahliaOS.

<div align=center> 
 <img width="80%" src="../img/virtualbox/2.gif"/> 
</div>
