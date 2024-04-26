#!/bin/bash

sudo apt install meson

git clone --recurse-submodules https://gitflic.ru/project/baranov735/my_super_meth.git

cd my_super_meth/

sudo ./0_installRequiredPackagesToCompile_spiceGTK_Debian12.sh

cd mspice-gtk/

meson setup builddir

cd builddir

meson install

cd ..

cd ..

cd mvirt-viewer/

meson setup builddir

cd builddir

meson install
