#!/bin/bash

apt build-dep -y vim
apt install -y python-dev python3-dev
git clone https://github.com/vim/vim.git
cd vim/src
./configure \
	--enable-multibyte \
	--enable-pythoninterp=yes \
	--with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu/ \
	--enable-python3interp=yes \
	--with-python3-config-dir=/usr/lib/python3.8/config-3.8-x86_64-linux-gnu/ \
	--enable-gui=gtk2 \
	--enable-cscope \ 
	--prefix=/usr/local/
make
make install
