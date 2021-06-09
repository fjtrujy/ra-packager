#!/bin/bash
# package.sh by Francisco Javier Trujillo Mata (fjtrujy@gmail.com)

# Copy from core folder to Ra
cp $1/$2.a RetroArch/libretro_psp1.a || { exit 1; }

cd RetroArch || { exit 1; }

## Compile core
make -f Makefile.psp1 clean all || { exit 1; }

## Rename and copy elf
cp EBOOT.PBP ../RA/cores/$2.PBP

cd .. || { exit 1; }
