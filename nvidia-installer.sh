#!/bin/bash

echo "This script will install the NVIDIA drivers for your system"

# Update the system
sudo pacman -Syyu


# Install linux-headers
sudo pacman -S linux-headers

# Install the NVIDIA drivers
sudo pacman -S nvidia-dkms nvidia-utils nvidia-settings libglvnd opencl-nvidia lib32-nvidia-utils lib32-libglvnd lib32-opencl-nvidia

echo "DONE!"
