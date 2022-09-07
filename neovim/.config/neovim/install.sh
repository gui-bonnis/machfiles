#!/bin/bash

# Ubuntu
sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen



# Arch linux
sudo pacman -S base-devel cmake unzip ninja tree-sitter curl

git clone https://github.com/neovim/neovim.git
cd neovim

# Compiling
make CMAKE_BUILD_TYPE=Release
sudo make install

