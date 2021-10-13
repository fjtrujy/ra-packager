#!/bin/bash
# package.sh by Francisco Javier Trujillo Mata (fjtrujy@gmail.com)

./prepare_release.sh || { exit 1; }

./prepare_retroarch.sh || { exit 1; }

# libretro-prboom
# ./cores/libretro-prboom.sh || { exit 1; }
# ./generate_retroarch.sh libretro-prboom prboom_libretro_orbis || { exit 1; }

# gambatte-libretro
./cores/gambatte-libretro.sh || { exit 1; }
./generate_retroarch.sh gambatte-libretro gambatte_libretro_orbis || { exit 1; }

#libretro-samples
./cores/libretro-samples.sh || { exit 1; }
./generate_retroarch.sh libretro-samples test_libretro_orbis || { exit 1; }

#blueMSX-libretro
./cores/blueMSX-libretro.sh || { exit 1; }
./generate_retroarch.sh blueMSX-libretro bluemsx_libretro_orbis || { exit 1; }

# #picodrive
# ./cores/picodrive.sh || { exit 1; }
# ./generate_retroarch.sh picodrive picodrive_libretro_orbis || { exit 1; }

# #ecwolf
# ./cores/ecwolf.sh || { exit 1; }
# ./generate_retroarch.sh ecwolf ecwolf_libretro_orbis || { exit 1; }

# #snes9x2002
# ./cores/snes9x2002.sh || { exit 1; }
# ./generate_retroarch.sh snes9x2002 snes9x2002_libretro_orbis || { exit 1; }

# #libretro-lutro
# ./cores/libretro-lutro.sh || { exit 1; }
# ./generate_retroarch.sh libretro-lutro lutro_libretro_orbis || { exit 1; }

# #gpsp
# ./cores/gpsp.sh || { exit 1; }
# ./generate_retroarch.sh gpsp gpsp_libretro_orbis || { exit 1; }

# # libretro-fceumm
# ./cores/libretro-fceumm.sh || { exit 1; }
# ./generate_retroarch.sh libretro-fceumm fceumm_libretro_orbis || { exit 1; }

## Copy info folder
./libretro-core-info.sh || { exit 1; }

## Salamander to finish
# ./generate_salamander.sh
