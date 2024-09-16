#!/bin/bash

# Make sure that git and base-devel are installed
sudo pacman -S git base-devel

# Clone yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# Clean up
cd ..
rm -rf yay

# First use commands
yay -Y --gendb
yay -Y --devel
yay -Y --devel --save
yay -Syu

echo "Yay has been installed and is ready for use"