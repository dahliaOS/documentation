# Aemu
aemu is a way to run fuchsia + graphical inside QEMU! Yes... I'm as blown away as you are. Three cheers to Horus and R3pwn-Dev.

## All credit is to

Reddit:
* [/u/r3pwn-dev](https://www.reddit.com/u/r3pwn-dev)
* [/u/Redroom666](https://www.reddit.com/user/Redroom666) / Horus125

Github:
* [Horus125](https://github.com/Horus125)

## Prerequisites
So, before we start, you’re gonna need a few things.

* Android Emulator build 29.0.6 or higher (You may have to install it via the SDK Manager)
* The location of where your Android Emulator is located. Mine is at ~/Android/Sdk/emulator, so yours should be similar.
* Properly configured Vulkan drivers for your GPU.
* A copy of the fuchsia source tree. For now, let’s say it’s at ~/fuchsia.
* git must be installed

## Setting up the environment
Once you have the fuchsia source downloaded, we have to cherry-pick some currently-unmerged commits. The commits we’re going to be cherry-picking are:

* [251950](https://fuchsia-review.googlesource.com/c/fuchsia/+/251950)
* [253068](https://fuchsia-review.googlesource.com/c/fuchsia/+/253068)
* [255277](https://fuchsia-review.googlesource.com/c/fuchsia/+/255277)
* [275588](https://fuchsia-review.googlesource.com/c/fuchsia/+/275588)

and to do that, you run these commands:

`git fetch "https://fuchsia.googlesource.com/fuchsia" refs/changes/50/251950/12 && git cherry-pick FETCH_HEAD`
`git fetch "https://fuchsia.googlesource.com/fuchsia" refs/changes/68/253068/37 && git cherry-pick FETCH_HEAD`
`git fetch "https://fuchsia.googlesource.com/fuchsia" refs/changes/77/255277/30 && git cherry-pick FETCH_HEAD`
`git fetch "https://fuchsia.googlesource.com/fuchsia" refs/changes/88/275588/10 && git cherry-pick FETCH_HEAD`

If everything merged in nicely, you’re good to move on to the next step!

We need to clone a small part of AOSP in order for it to work, so run:

`git clone https://android.googlesource.com/device/generic/goldfish-opengl third_party/aosp/device/generic/goldfish-opengl`
`cd third_party/aosp/device/generic/goldfish-opengl/`
`git checkout --track remotes/origin/emu-29.0-release`
`cd ../../../../..`

Now we’re good to build!

## Building
`fx set workstation.x64`

`fx build`

Note: This should take a fair bit of time.

## Running
At this point, we have modified the fuchsia to add support for ‘goldfish’ (the Android Emulator), and have successfully built a 
goldfish-compatible version of fuchsia. However, there is one more step we need to take, and that’s actually enabling Vulkan support 
for the Android Emulator. To do that, we run the following commands:

`echo 'Vulkan = on' >> ~/.android/advancedFeatures.ini`
`echo 'GLDirectMem = on' >> ~/.android/advancedFeatures.ini`

Now, to run it, we run the following command:

`fx run -g -k -E -q ~/Android/Sdk/emulator`

Where -g enables graphics, -k enables KVM, -E tells fx run to use the Android Emulator, and -q is used to specify the location of the emulator binaries.

## Troubleshooting
If you get a black screen instead of a functioning emulator, please ensure the following:

Vulkan is properly set up and enabled
If using an NVIDIA GPU, try switching to the 390 drivers
If you’re getting an error while building that relates to a missing newline in a file in the goldfish-opengl repo we cloned, add -Wno-newline-eof in between lines 84 and 85 of that repo’s BUILD.gn file, such that the resulting cflags_cc define looks like this:

  `cflags_cc = [
    `"-Wno-unused-function",`
    `"-Wno-unused-variable",`
    `"-Wno-missing-field-initializers",`
    `"-Wno-newline-eof",`
  `]`

then start the build process again.

## Success!

You should now have Fuchsia booting on the Android Emulator!

We’re glad we were able to finally get everything working, and hope that you were able to, as well. I’ll try to update this as things change, and if I get the time.

Let me know down in the comments if you were able to follow this guide, and I’ll try to respond to everyone when I get the chance.

Thank you, and have fun!

## Additional notes
After messing with it for a bit, here’s some extra information that Horus125 was able to come up with about ermine and running fuchsia in the Android Emulator:

* Performing a long press anywhere outside the window content opens or exits search
* You can slide left and right between apps and grey desktop
* If you slide to the left from the last opened app, it opens search
* There’s some graphical apps: settings, terminal
* Opening basemgr brings back the login screen
