#!/bin/bash

# This is a oh-my-fish installer script

# check that git, fish, curl are installed

sudo pacman -Syu git fish curl

curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

omf i bang-bang # add "!!" command to fish shell

echo "DONE!"

echo "Restarting pc to apply changes:"
# loop for countdown
for i in 5 4 3 2 1
do
  echo "$i..."
  
  sleep 1
done

reboot