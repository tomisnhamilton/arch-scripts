#!/bin/bash

# This is a remove everything script using pacman, must run as root!


if [ "$EUID" -ne 0 ]; then
  echo "This script must be run as root"
  exit 1
fi

echo "This script will stage your system to remove everything!"

# Remove everything

# Set packages as dependencies
pacman -D --asdeps $(pacman -Qqe)

# Specify packages to keep (set as explicit)
pacman -D --asexplicit base linux linux-firmware base-devel vim amd-ucode networkmanager dhcpcd man-db man-pages grub efibootmgr os-prober
  # Add any other packages you want to keep

echo "Packages have been set and reset is ready"
echo ""
echo "Run this to remove all packages:"
echo "pacman -Qttdq | pacman -Rns -"

