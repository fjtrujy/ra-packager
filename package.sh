#!/bin/bash
# package.sh by Francisco Javier Trujillo Mata (fjtrujy@gmail.com)

./prepare_release.sh || { exit 1; }

./prepare_retroarch.sh || { exit 1; }

# libretro-prboom
./libretro-prboom.sh || { exit 1; }
./generate_retroarch.sh libretro-prboom prboom_libretro_ps2 || { exit 1; }

#libretro-samples
./libretro-samples.sh || { exit 1; }
./generate_retroarch.sh libretro-samples test_libretro_ps2 || { exit 1; }

## Copy info folder
./libretro-core-info.sh || { exit 1; }

## Salamander to finish
./generate_salamander.sh
