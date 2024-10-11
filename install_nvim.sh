#!/bin/bash

sudo apt install -y xclip gettext

git clone https://github.com/neovim/neovim.git /tmp/neovim && cd /tmp/neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

cd - > /dev/null


