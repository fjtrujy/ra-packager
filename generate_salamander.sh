#!/bin/bash
# package.sh by Francisco Javier Trujillo Mata (fjtrujy@gmail.com)

cd RetroArch || { exit 1; }

## Compile RABOOT
make -f Makefile.ps2.salamander release || { exit 1; }
cp raboot.elf ../RA/raboot.elf || { exit 1; }
cd .. || { exit 1; }
