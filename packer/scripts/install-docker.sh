#!/usr/bin/env bash
set -xe

# Install Docker (official convenience script for ARM)
curl -fsSL https://get.docker.com | sudo bash

# Enable Docker to start on boot
sudo systemctl enable docker
sudo systemctl start docker

# Optional: Add the user defined in env to the docker group
sudo usermod -aG docker $USER
