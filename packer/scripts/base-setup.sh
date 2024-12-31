#!/usr/bin/env bash
set -xe

# Update and upgrade packages
sudo apt-get update -y
sudo apt-get upgrade -y

# Set hostname (optional)
echo "rpi-ubuntu" | sudo tee /etc/hostname

# Create .ssh directory and set permissions
sudo mkdir -p /home/${USER}/.ssh
sudo chmod 700 /home/${USER}/.ssh

# Add SSH public key to authorized_keys
echo "${SSH_PUBLIC_KEY}" | sudo tee /home/${USER}/.ssh/authorized_keys
sudo chmod 600 /home/${USER}/.ssh/authorized_keys
sudo chown -R ${USER}:${USER} /home/${USER}/.ssh