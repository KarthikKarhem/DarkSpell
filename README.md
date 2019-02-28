# <img src="https://raw.githubusercontent.com/KarthikKarhem//master/app/src/main/res/mipmap-xxxhdpi/ic_launcher.png" width="70" height="70" /> DarkSpell
A simple, user-friendly and profile based Kernel Manager, inspired from Spectrum!

## How to add DarkSpell support to your kernel
You will need to add the following two files to your device's ramdisk:
- init.darkspell.rc
- init.darkspell.sh

The files are included in the _ramdisk_ folder of this repo. To use these ramdisk files, add
>     import /init.darkspell.rc

to the top of your device's main ramdisk file.

Next, add your kernel name to the app. Open init.spectrum.rc and change "Electron" in
>        setprop persist.darkspell.kernel DarkMagic

to your kernel's name.

All that is left is to customize the 4 profiles in init.darkspell.rc to your liking! Profile 0 (Balanced) is the default, however, this can be changed in init.darkspell.sh.
