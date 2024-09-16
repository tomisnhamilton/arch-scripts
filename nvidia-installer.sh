#!/bin/bash

echo "This script will install the NVIDIA drivers for your system"

# Install the NVIDIA drivers
sudo pacman -Syu nvidia-dkms nvidia-utils nvidia-settings libglvnd opencl-nvidia lib32-nvidia-utils lib32-libglvnd lib32-opencl-nvidia

echo "DONE!"
