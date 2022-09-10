#!/bin/bash


# Prerequirement
sudo pacman -S zip

# Install SDKMan
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version

sdk install java 17.0.4.1-tem
sdk install maven 3.8.6
