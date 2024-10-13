#!/bin/bash
set -e

wget https://apt.llvm.org/llvm.sh -P /tmp
chmod +x /tmp/llvm.sh
VERSION=13
sudo /tmp/llvm.sh $VERSION
sudo apt install -y clang-format-$VERSION clang-tidy-$VERSION libc++-$VERSION-dev libc++abi-$VERSION-dev

sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-$VERSION $VERSION
