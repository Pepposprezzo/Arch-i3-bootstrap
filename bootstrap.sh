#!/bin/bash

#install paru
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

#install components
paru -S rofi picom feh tilix ly

#switch display manager
sudo systemctl disable lightdm
sudo systemctl enable ly

#remove lightdm
pacman -R lightdm

#copy wallpaper file
#TODO

#picom config
#TODO








#export i3-config
./export.sh

#set rofi theme
cp lb-edit.rasi ~/.config/rofi/config.rasi

#reload i3-config
i3-msg reload
i3-msg restart 

#install applications
paru -S spotify onlyoffice firefox nautilus discord steam lutris ranger wine winetricks

#intall kvm / qemu / virt-manager
#TODO
