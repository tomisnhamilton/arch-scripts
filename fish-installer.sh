#!/bin/bash

# This is a oh-my-fish installer script

# check that git, fish, curl are installed

sudo pacman -Syu git fish curl

curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

omf i bang-bang

echo "Oh-my-fish has been installed and is ready for use"