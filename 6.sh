#!/bin/bash

pacman -Syu
pacman -Sy git wget --noconfirm
pacman -Sy neofetch lsb-release --noconfirm
pacman -Sy intel-ucode --noconfirm
pacman -S pulseaudio pavucontrol --noconfirm
pacman -S xf86-video-intel lib32-mesa vulkan-intel --noconfirm
pacman -S xdg-user-dirs --noconfirm
xdg-user-dirs-update



pacman -S xorg xorg-server xorg-apps xterm xorg-xinit mesa mesa-demos --noconfirm

localectl set-x11-keymap latam

#pacman -Syy qtile alacritty nitrogen picom lightdm lightdm-gtk-greeter firefox ranger --noconfirm
#pacman -Syy qtile alacritty nitrogen picom lightdm lightdm-gtk-greeter  nemo --noconfirm
#systemctl enable lightdm.service

####################    bspwm

#sudo pacman -Syy bspwm sxhkd alacritty nitrogen picom lightdm lightdm-gtk-greeter firefox ranger 
sudo pacman -Syy bspwm sxhkd alacritty nitrogen picom lightdm lightdm-gtk-greeter firefox nemo dmenu --noconfirm
sudo systemctl enable lightdm.service
mkdir .config/bspwm
mkdir .config/sxhkd
mkdir .config/polybar
cp /usr/share/doc/bspwm/examples/bspwmrc .config/bspwm/
cp /usr/share/doc/bspwm/examples/sxhkdrc .config/sxhkd/
