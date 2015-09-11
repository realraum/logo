You need to install syslinux-utils and netpbm in case you haven't got it.

1. create a new splash.png file (using gimp or whatever) -> 640x200px / indexed 16 colors

2. convert it to "pnm" by using "pngtopnm" as in

# pngtopnm splash.png > splash.pnm

3. convert it to "rle" by using "ppmtolss16" as in

# ppmtolss16 "#000000=0" "#ffffff=7" < splash.pnm > splash.rle
