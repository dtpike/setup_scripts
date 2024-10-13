#!/bin/bash
set -e

sudo date

# Install Meslo fonts
if [[ ! -f "${HOME}/.fonts/MesloLGSNerdFont-Regular.ttf" ]]; then
    curl https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Meslo.zip -O /tmp
    mkdir -p ~/.fonts/ && unzip /tmp/Meslo.zip -d ~/.fonts
    fc-cache -vf ~/.fonts
    rm /tmp/Meslo.zip
fi

# TODO Install suckless terminal fork

gsettings set org.gnome.desktop.default-applications.terminal exec /usr/local/bin/st

# Setup keyboard (assumes you're in the root of the git repo)
cp ./keyboard /etc/default/keyboard
dpkg-reconfigure keyboard-configuration

./install_nvim.sh

# Setup zsh
sudo apt install -y zsh
chsh -s $(which zsh)



