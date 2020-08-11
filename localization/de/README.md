<p align="center">   <img width="25%" src="https://github.com/HexaOneOfficial/documentation/blob/master/assets/images/logo/dahlialogo.png"> </p>

<h2 align="center">
    <b>Dokumentation</b>
    </h2>
<br>

<h2 align="center">
    <b>Einen USB Stick zum starten erstellen [GRUB]</b>
    </h2>
<br>

<br>

<h3 align="center">
    <b>64/32 Bit UEFI Systeme und 64 bit BIOS Systeme</b>
</h3>

- Lade die neuste ISO herunter: [ISO Downlaod](https://github.com/HexaOneOfficial/dahliaos/releases/download/200804/DahliaOS200804.iso)

- Spiele die ISO auf deinen USB Stick mit Etcher: [Etcher Download](https://www.balena.io/etcher/).

- **!** Stelle sicher dass du Secure Boot deaktiviert hast: [wie deaktiviert man secure boot](https://github.com/dahlia-os/documentation/blob/master/assets/secure-boot/Disable-Secure-Boot.md)

<h3 align="center">
    <b>32 Bit BIOS</b>
</h3>

- Lade die neuste ISO herunter: [ISO Downlaod](https://github.com/HexaOneOfficial/dahliaos/releases/download/200804/DahliaOS200804_32.iso)

- Spiele die ISO auf deinen USB Stick mit Etcher: [Etcher Download](https://www.balena.io/etcher/)

<br>

<h3 align="center">
    <b>Raspberry pi 3/4</b>
</h3>

- In Arbeit

<h2 align="center">
    <b>Einen USB Stick zum starten erstellen [SYSLINUX]</b>
    </h2>
<br>

- Als erstes solltest du überprüfen ob du eines der [unterstützten Geräte hast](https://github.com/dahlia-os/documentation/blob/master/supported-hardware-non-grub.md). Wenn ja kannst du die dahliaOS ISO [von der download Seite herunterladen](https://github.com/dahlia-os/releases/releases). Die aktuellste Version, zum verfassungszeitpunkt kann  [hier](https://github.com/dahlia-os/releases/releases/download/200804-x86_64/dahliaOS-200804.iso) gefunden werden

- Installiere danach Etcher: [Etcher Download](https://www.balena.io/etcher/)

- Danach starte Etcher, öffne die ISO datei und wähle deinen USB Stick und drücke Flash!

- Wenn das flashen fertig ist, starte deine Gerät neu und wähle deinen USB Stick im Boot Menu aus.

- **!** (Eventuell musst du die Boot reinfolge in deinem UEFI ändern.)

<h2 align="center">
    <b>Starte dahliaOS in QEMU</b>
    </h2>
<br>

<br>

<h3 align="center">
    <b>Arch</b>
</h3>

- Als erstes öffne ein Terminal und gebe die folgenden Befehle ein:

```
sudo pacman -S qemu qemu-arch-extra qemu-block-gluster qemu-block-iscsi qemu-block-rbd samba
```

- Danach lade die dahliaOS ISO herunter: https://github.com/dahlia-os/releases/releases

- Gebe nun die den folgenden Befehl in dein Terminal ein. (gehe sicher, dass du den richtigen Namen der ISO datei verwendest. DahliaOS.iso ist nur ein beispiel)

```
qemu-system-x86_64 -cdrom Downloads/DahliaOS.iso -m 1024
```

<br>

<h3 align="center">
    <b>Ubuntu 18.04</b>
</h3>

- Als erstes öffne ein Terminal und gebe die folgenden Befehle ein:

```
sudo apt-get install qemu-kvm qemu virt-manager virt-viewer libvirt-bin
```

- Danach lade die dahliaOS ISO herunter: https://github.com/dahlia-os/releases/releases

- Gebe nun die den folgenden Befehl in dein Terminal ein. (gehe sicher, dass du den richtigen Namen der ISO datei verwendest. DahliaOS.iso ist nur ein beispiel)

```
qemu-system-x86_64 -cdrom Downloads/DahliaOS.iso -m 1024
```

<br>

<h3 align="center">
    <b>Ubuntu 18.04+</b>
</h3>

- Als erstes öffne ein Terminal und gebe die folgenden Befehle ein:

```
sudo apt-get install qemu-kvm qemu virt-manager virt-viewer libvirt-daemon-system libvirt-clients
```

- Danach lade die dahliaOS ISO herunter: https://github.com/dahlia-os/releases/releases

- Gebe nun die den folgenden Befehl in dein Terminal ein. (gehe sicher, dass du den richtigen Namen der ISO datei verwendest. DahliaOS.iso ist nur ein beispiel)

```
qemu-system-x86_64 -cdrom Downloads/DahliaOS.iso -m 1024
```

<br>

<h3 align="center">
    <b>KVM für QEMU benutzen(Kernel-based Virtual Machine)</b>
</h3>

- Füge einfach **-enable-kvm** an das ende des start Befehls hinzu

- (Gehe sicher, dass du den richtigen Namen der ISO datei verwendest. DahliaOS.iso ist nur ein beispiel)

```
qemu-system-x86_64 -cdrom Downloads/DahliaOS.iso -m 1024 -enable-kvm
```

<h2 align="center">
    <b>Installiere Pangolin auf Linux</b>
    </h2>
<br>

<br>

<h3 align="center">
    <b>Automatische Installation</b>
</h3>

`curl -s https://raw.githubusercontent.com/dahlia-os/documentation/master/assets/scripts/install.sh | sh`

**Wähle deine Distribution aus, wie im Bild gezeigt**

<p align="center">   <img width="25%" src="https://github.com/dahlia-os/documentation/blob/master/assets/images/list/list.png"> </p>

<h3 align="center">
    <b>Manuelle Installation</b>
</h3>

**Wenn im Skript für die automatische Installation eine Fehlermeldung angezeigt wird, versuchen Sie es mit der manuellen Installation.**

**Tipp** Wenn Sie Linux Mint 19.3 oder älter verwenden, verwenden Sie die manuelle Installation von Debian / Ubuntu.

<p align="center"><strong>Debian/ubuntu</strong></p>

`sudo apt-get install -y matchbox-window-manager`

- Falls du eine ältere Version von Ubuntu verwendest musst du eventuell snap installieren `sudo apt install snapd`

`sudo snap install flutter --classic`

- Installiere git, falls du es nicht schon hast `sudo apt install git`

`git clone https://github.com/HexaOneOfficial/pangolin-linux.git`

`cd ~/pangolin-linux`

`sudo cp Pangolin.zip /`

`cd /`

`sudo unzip Pangolin.zip`

`sudo rm Pangolin.zip`

`sudo cp Pangolin.desktop /usr/share/xsessions/`

- Starten Sie nun neu und wählen Sie Pangolin als Desktop-Sitzung auf Ihrem Anmeldebildschirm

<p align="center"><strong>linux mint 20</strong></p>

`sudo apt-get install -y matchbox-window-manager`

- Entferne nosnap.pref um snapd zu installieren `sudo rm /etc/apt/preferences.d/nosnap.pref`

`sudo apt install snapd`

`sudo snap install flutter --classic`

- Installiere git, falls du es nicht schon hast `sudo apt install git`

`git clone https://github.com/HexaOneOfficial/pangolin-linux.git`

`cd ~/pangolin-linux`

`sudo cp Pangolin.zip /`

`cd /`

`sudo unzip Pangolin.zip`

`sudo rm Pangolin.zip`

`sudo cp Pangolin.desktop /usr/share/xsessions/`

- Starten Sie nun neu und wählen Sie Pangolin als Desktop-Sitzung auf Ihrem Anmeldebildschirm

<h2 align="center">
    <b>Pangolin kompilieren</b>
    </h2>
<br>

- Der Pangolin Desktop ist der Desktop von dahliaOS. Es ist komplett in Flutter entwickelt, was ihn schnell, schön und mit 200 MB RAM sehr ressourcenschonend macht.

<br>

<h3 align="center">
    <b>Vor dem kompilieren</b>
</h3>

- Stellen Sie sicher, dass Sie `flutter` und `android-studio` installiert haben. Sie können die Dahlia-Umgebung dazu bringen, all diese Dinge und mehr hier zu installieren: Dahlia [-Umgebung](https://github.com/EnderNightLord-ChromeBook/dahlia-environment)

<h3 align="center">
    <b>Kompilieren</b>
</h3>

1. Stellen Sie sicher, dass Sie ein Flutter in Ihrem path haben: `export PATH="$PATH:` pwd `/flutter/bin"`
2. Clonen Siie pangolin-desktop oder mobile: `git clone https://github.com/dahlia-os/pangolin-desktop.git` / `git clone https://github.com/dahlia-os/pangolin-mobile.git`
3. Gehen Sie in den Ordner pangolin-desktop oder pangolin-mobile folder: `cd pangolin-desktop` / `cd pangolin-mobile`
4. Und kompilieren sie die APK: `flutter build apk --debug` / `flutter build apk`

<h2 align="center">
    <b>Eine Grub ISO erstellen</b>
    </h2>
<br>

<h3 align="center">
    <b>[Linux] Dateien zum erstellen</b>
</h3>

- **Führen Sie dieses Skript aus, um die ISO-Dateien zu erstellen**

<p align="center"><strong>64 bit</strong></p>

- `curl -s https://raw.githubusercontent.com/HexaOneOfficial/dahliaos/master/scripts/64/run.sh | sh`

<p align="center"><strong>32 bit</strong></p>

- `curl -s https://raw.githubusercontent.com/HexaOneOfficial/dahliaos/master/scripts/32/run.sh | sh`

<h3 align="center">
    <b>[Linux] ISO erstellen</b>
</h3>

kein Inhalt

<h3 align="center">
    <b>[Windows] ISO erstellen</b>
</h3>

- **Dateien zu ISO**

- Laden Sie **Poweriso [hier](https://www.poweriso.com/)** herunter und kopieren Sie die soeben erstellten Build-Dateien.

- **Auf USB flashen**

- Laden Sie **Rufus [hier](https://rufus.ie/)** herunter und flashen Sie Ihre ISO-Datei auf Ihren USB.

<h2 align="center">
    <b>MBR ISO erstellen</b>
    </h2>
<br>

<h3 align="center">
    <b>Windows [BETA]</b>
</h3>

Wenn Sie die ISO erstellt haben, gehen Sie zur Eingabeaufforderung. Sie können diese öffnen, indem Sie Windows + R drücken und cmd eingeben. (Stellen Sie sicher, dass Sie Administrator sind.)

- Führen Sie dann die folgenden Befehle aus.

`diskpart`

und dann

```
list disk
```

- Sie sollten einen Anzeige wie diesen sehen:

![diskpart](https://github.com/dahlia-os/documentation/blob/master/assets/images/cmd/Diskpart_list%20disk.png)

- Wählen Sie Ihre Festplatte aus, die Sie formatieren möchten: (BEISPIEL) Festplatte 2

    select disk 2

    - Jetzt haben Sie die Festplatte ausgewählt.

        clean

        create partition primary

        select partition 1

        active

        format fs=ntfs quick

        exit

- Extrahieren Sie die Dateien aus der ISO, kopieren Sie sie auf das Laufwerk und erstellen Sie mit einem Disk-Klon Ihrer Wahl eine MBR-ISO.
