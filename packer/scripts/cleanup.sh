#!/usr/bin/env bash
set -xe

# Remove leftover package lists
sudo apt-get clean

# Clear out logs, etc., to shrink image
sudo rm -rf /var/log/*.log
sudo rm -rf /tmp/*

# Zero out free space for better compression (optional)
sudo dd if=/dev/zero of=/EMPTY bs=1M || true
sudo rm -f /EMPTY
