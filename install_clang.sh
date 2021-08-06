#!/bin/sh

CLANG_VERSION=12.0.0
UBUNTU_VERSION=20.04

wget https://github.com/llvm/llvm-project/releases/download/llvmorg-$CLANG_VERSION/clang+llvm-$CLANG_VERSION-x86_64-linux-gnu-ubuntu-$UBUNTU_VERSION.tar.xz
tar -C /opt/ -xvf ./clang+llvm-$CLANG_VERSION-x86_64-linux-gnu-ubuntu-$UBUNTU_VERSION.tar.xz
rm ./clang+llvm-$CLANG_VERSION-x86_64-linux-gnu-ubuntu-$UBUNTU_VERSION.tar.xz



