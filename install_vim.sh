#!/bin/bash

setup python v3_9_2
# export LDFLAGS="-rdynamic" # solves problem for you complete me
./configure --with-features=huge --prefix=$HOME/.local \
    --enable-multibyte \
        --enable-rubyinterp=yes \
        --enable-python3interp=yes \
        --with-python3-command=$PYTHON_VER \
        --with-python3-config-dir=$(python3-config --configdir) \
        --enable-perlinterp=yes \
        --enable-gui=gtk2 \
        --enable-cscope \

# --enable=clipboard \

make

make install
