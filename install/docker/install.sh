#!/bin/bash
sudo pacman -S docker docker-compose

sudo systemctl enable docker.service
sudo systemctl start docker.service

sudo groupadd docker

sudo usermod -aG docker $USER

# exit to apply all permissions
