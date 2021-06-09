#!/bin/bash
# package.sh by Francisco Javier Trujillo Mata (fjtrujy@gmail.com)

cd RetroArch || { exit 1; }

## Compile RABOOT
make -f Makefile.psp1.salamander clean all || { exit 1; }
cp EBOOT.PBP ../RA/EBOOT.PBP || { exit 1; }
cp PARAM.SFO ../RA/PARAM.SFO || { exit 1; }
cd .. || { exit 1; }
