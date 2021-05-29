---
title: Running a Flutter App on Fuchsia with FImage
permalink: developer/flutter-fuchsia.html
summary: Walkthrough on running a Flutter app on FImage
---
## Running a Flutter App on Fuchsia with FImage
This guide assumes you have already configured FImage for Flutter development. If you have not, see [Setting up FImage for Application Development >](fimage-setup)

Note: Due to this blocking issue - [Fuchsia Issue 77566](https://bugs.fuchsia.dev/p/fuchsia/issues/detail?id=77566) - this guide does not work. We will keep this document updated as the situation develops.

### Step 1 - Configure FImage Environment Variables
Before you can deply your Flutter app, you must register FImage's SSH configuration with the Flutter tool.

From inside the FImage directory, run
```bash
export FUCHSIA_SSH_CONFIG="$PWD"/ssh/ssh_config
```
If you want the configuration to be persistent, add that command to your shell's init script.
### Step 2 - Add a Manifest to the Application
Head over to your Flutter app's folder. For this example we will be using the [dahliaOS Calculator](https://github.com/dahliaOS/calculator).

From the root of your Flutter app, create the folder `fuchsia`, and inside of that, create the folder `meta`.

Inside of the newly created `meta` directory, create a file called `calculator.cmx`. You should have created the following directory structure inside of your Flutter app's folder:
```
calculator/fuchsia
└── meta
    └── calculator.cmx
```
Inside of the file `calculator.cmx`, add the following content for a basic Flutter App. You may need to tweak this to be compatible with more complicated applications. See the [Component Manifest](https://fuchsia.dev/fuchsia-src/glossary#component-manifest) document on fuchsia.dev for more information.
```json
{
    "program": {
        "data": "data/simple_flutter"
    },
    "sandbox": {
        "services": [
            "fuchsia.accessibility.ToggleBroadcaster",
            "fuchsia.fonts.Provider",
            "fuchsia.modular.Clipboard",
            "fuchsia.sys.Environment",
            "fuchsia.sys.Launcher",
            "fuchsia.ui.scenic.Scenic"
        ]
    }
}
```
### Step 3 - Deploy the Application

Now that the application is modified to work with Fuchsia, open another terminal window and start FImage.
```bash
./network-config
./fimage-gui 4096
```
Once the emulator is started and on the home screen, it should show up under `flutter devices`. You can now run the application using the following command:
```bash
flutter run -d fuchsia --verbose
```
The application should compile and launch on the virtual device. Currently, the Flutter tool has a bug that prevents the application from being deployed, so this guide may not work, see [Fuchsia Issue 77566](https://bugs.fuchsia.dev/p/fuchsia/issues/detail?id=77566) for details.