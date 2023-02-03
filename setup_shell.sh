#!/bin/zsh

set -e

if [[ ! -a $(which curl) ]]; then
    echo "Error: Install curl first"
    exit 1
fi

# Install rxvt unicode shell with 256 color support
sudo apt install rxvt-unicode -y

# Get font
if [ ! -f ~/.fonts/Meslo\ LG\ M\ Regular\ for\ Powerline.ttf ]; then
  curl -fLo ~/.fonts/Meslo\ LG\ M\ Regular\ for\ Powerline.ttf --create-dirs \
    https://github.com/powerline/fonts/raw/master/Meslo%20Slashed/Meslo%20LG%20M%20Regular%20for%20Powerline.ttf
  fc-cache -vf ~/.fonts/
fi

cd /home/$USER
ln -s $(dirname $0)/Xresources .Xresources
xrdb -load ~/.Xresources

# Change Ctrl + Alt + t to open rxvt shell
gsettings set org.gnome.desktop.default-applications.terminal exec 'rxvt-unicode'

echo "Setup successful, you may have to log back in for full changes to take effect"
