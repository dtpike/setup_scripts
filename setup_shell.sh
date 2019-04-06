#!/bin/zsh

set -e

BASE16_COLORSCHEME=${1:-base16-eighties-256}

if [[ ! -a $(which cpp) ]]; then
    echo "Error: Install cpp compiler first"
    exit 1
fi
if [[ ! -a $(which curl) ]]; then
    echo "Error: Install curl first"
    exit 1
fi

# Install rxvt unicode shell with 256 color support
sudo apt install rxvt-unicode-256color -y

# Get font
if [ ! -f ~/.fonts/Meslo\ LG\ M\ Regular\ for\ Powerline.ttf ]; then
  curl -fLo ~/.fonts/Meslo\ LG\ M\ Regular\ for\ Powerline.ttf --create-dirs \
    https://github.com/powerline/fonts/raw/master/Meslo%20Slashed/Meslo%20LG%20M%20Regular%20for%20Powerline.ttf
  fc-cache -vf ~/.fonts/
fi

# Example of copying perl script to copy selection to clipboard
# sudo cp ${base}/xkr-clipboard.pl /usr/lib/urxvt/perl/xkr-clipboard

# At some point I was having trouble with .Xresources on Ubuntu 16.04. Creating link to .Xdefaults-<hostname worked
# cd ~; ln -s ~/.Xresources .Xdefaults-$(hostname)

cat $(dirname $0)/Xresources > /tmp/Xresources.cc
# Append colorscheme, default to default to the eighties
curl https://raw.githubusercontent.com/chriskempson/base16-xresources/master/xresources/$BASE16_COLORSCHEME.Xresources >> /tmp/Xresources.cc
cpp /tmp/Xresources.cc > /home/$USER/.Xresources
rm /tmp/Xresources.cc
xrdb -load ~/.Xresources

echo "Setup successful, you may have to log back in for full changes to take effect"
