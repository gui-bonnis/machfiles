#!/bin/bash


# Prerequirement
sudo pacman -S zip

# Install SDKMan
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version

sdk install java 17.0.4.1-tem
sdk install maven 3.8.6


# Java Debugging and Testing
# inside nvim directory
mkdir java-extentions
cd java-extentions

git clone git@github.com:microsoft/java-debug.git
cd java-debug/
./mvnw clean install
cd ..

git clone git@github.com:microsoft/vscode-java-test.git
cd vscode-java-test
npm install
npm run build-plugin
cd ..

paru -S google-java-format-bin
