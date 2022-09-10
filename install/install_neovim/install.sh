#!/bin/bash

# Ubuntu
sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen
sudo apt-get install xsel
sudo apt-get install ripgrep
sudo apt install python3-pip
sudo apt install fd-find

# Install NodeJS at Ubuntu
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install Node at Ubuntu 20.04
sudo apt update
sudo apt install nodejs npm

# Arch linux
sudo pacman -S base-devel cmake unzip ninja tree-sitter curl
sudo pacman -S xsel
sudo pacman -S ripgrep
sudo pacman -S python-pip
sudo pacman -S fd
sudo pacman -S nodejs npm

# Clonning Neovim repository
cd ~/.config
git clone https://github.com/neovim/neovim.git
cd neovim

# Compiling
make CMAKE_BUILD_TYPE=Release
sudo make install

# Add python plugin support
pip install pynvim
pip install ueberzug

sudo npm install -g neovim


