#!/bin/bash

# create the riscv tools binaries from riscv-boom/boom-template with rocket-chip hash given by riscv-boom

# turn echo on and error on earliest command
set -ex
cd $HOME
if [ ! -d "$HOME/riscv-tools-install" ]; then
    git clone --progress --verbose https://github.com/riscv/riscv-tools.git
    cd $HOME/riscv-tools
    git submodule update --init --recursive
    ./build.sh
fi
