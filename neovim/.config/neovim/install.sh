#!/bin/bash

# Ubuntu
sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen
sudo apt-get install xsel
sudo apt-get install ripgrep
sudo apt install python3-pip

# Arch linux
sudo pacman -S base-devel cmake unzip ninja tree-sitter curl
sudo pacman -S xsel
sudo pacman -S ripgrep
sudo pacman -S python-pip


# Clonning Neovim repository
cd ~/.config
git clone https://github.com/neovim/neovim.git
cd neovim

# Compiling
make CMAKE_BUILD_TYPE=Release
sudo make install

