#!/bin/bash
# package.sh by Francisco Javier Trujillo Mata (fjtrujy@gmail.com)

# Copy from core folder to Ra
cp $1/$2.a RetroArch/libretro_orbis.a || { exit 1; }

cd RetroArch || { exit 1; }

## Compile core
make -f Makefile.orbis clean all oelf eboot || { exit 1; }

## Rename and copy elf
cp homebrew.self ../RA/cores/$2.PBP

cd .. || { exit 1; }
