# Build Pangolin

Pangolin is Dahlia's desktop / mobile shell. pangolin-desktop is based on the older meatphor of ChromeOS, like the launcher, notification tab etc.

## Before Building...

Make sure you have `flutter` and `android-studio` installed. You can get the Dahlia environment to install all these things and more here: (dahlia-environment)[https://github.com/EnderNightLord-ChromeBook/dahlia-environment]

## Lets Build!

1. make sure you have flutter in your path: `export PATH="$PATH:`pwd`/flutter/bin"`
2. clone pangolin-desktop / mobile: `git clone https://github.com/dahlia-os/pangolin-desktop.git` / `git clone https://github.com/dahlia-os/pangolin-mobile.git`
3. go into the pangolin-desktop / pangolin-mobile folder: `cd pangolin-desktop / pangolin-mobile`
4. and build the APK: `flutter build apk --debug` / `flutter build apk`