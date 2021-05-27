#!/bin/bash
# package.sh by Francisco Javier Trujillo Mata (fjtrujy@gmail.com)

# Copy from core folder to Ra
cp $1/$2.a RetroArch/libretro_ps2.a || { exit 1; }

cd RetroArch || { exit 1; }

## Compile core
make -f Makefile.ps2 release || { exit 1; }

## Rename and copy elf
cp retroarchps2.elf ../RA/cores/$2.elf

cd .. || { exit 1; }
