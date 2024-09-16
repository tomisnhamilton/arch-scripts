#!/bin/bash

# Custom grub installer script, only run this for new installs

# Check that grub is installed
sudo pacman -Syu grub efibootmgr os-prober

# Install grub
sudo grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB

# Find Other OSes
sudo os-prober
  # May not be found initially (make sure to not modify the EFI partition or others will be gone)

# if not found echo
if [ $? -eq 1 ]; then
  echo "No other OSes found, may need to restore EFI and boot directories"
fi


# Geenerate the config
sudo grub-mkconfig -o /boot/grub/grub.cfg

echo "DONE!"


# Developer Notes:

# Ensure that Windows parition / drive is detected by grub

# - Is the EFI for Windows boot in the /boot?
# - If so, why? And how to remedy for reinstalls

# Answer: 
# - YES, not sure why, but Microsoft seems to use the default EFI bootloader which would be the Arch one… hence the 2 partitions when installing Windows# 

# Moving forward: 
# - Ensure that the EFI or boot partition is always saved and never deleted!
# - Or, reinstall everything with Windows being first.