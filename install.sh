#!/usr/bin/bash

sudo pacman -S --needed git base-devel
# Install yay
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si

# Install packages
yay -S --needed < packages.txt

#Change shell to zsh
chsh mb

#Authenticate git
gh auth login
gh auth setup-git
git config --global user.email "mbazzani@ucsd.edu"
git config --global user.name "Marco Bazzani"

# Set up dotfiles
git clone https://github.com/mbazzani/dotfiles
cd dotfiles

cp qtile/* .config/qtile

cd
mkdir .config/picom
cp picom/picom.conf ~/.config/picom/picom.conf

cd
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
~/.config/emacs/bin/doom install
cp ~/dotfiles/doom/* ~/.config/doom/

cd
git clone https://github.com/rafaelmardojai/firefox-gnome-theme
cd firefox-gnome-theme
./scripts/auto-install.sh

cd ~/.dotfiles
sudo cp *.sh /usr/bin/
