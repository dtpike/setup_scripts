#!/bin/bash

set -e

COLORSCHEME_TXT=${1}

if [[ ! -a $(which cpp) ]]; then
    echo "Error: Install cpp compiler first"
    exit 1
fi

cat $(dirname $0)/Xresources > /tmp/Xresources.cc
# Append colorscheme, default to default to the eighties
# curl https://raw.githubusercontent.com/chriskempson/base16-xresources/master/xresources/$BASE16_COLORSCHEME.Xresources >> /tmp/Xresources.cc
cat $COLORSCHEME_TXT >> /tmp/Xresources.cc
cpp /tmp/Xresources.cc > $(dirname $0)/Xresources
