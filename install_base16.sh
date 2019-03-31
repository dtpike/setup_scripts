#!/bin/bash

set -e

if [[ ! -a $(which git) ]]; then
    echo "Error: git is not installed. Please install git first.";
    exit 1
fi

mkdir -p ~/.config
if [ ! -d ~/.config/base16-shell ]; then
  git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
fi

