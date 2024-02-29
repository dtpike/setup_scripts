wget https://apt.llvm.org/llvm.sh -P /tmp
chmod +x /tmp/llvm.sh
VERSION=15
/tmp/llvm.sh $VERSION
sudo apt install -y clang-format-$VERSION clang-tidy-$VERSION libc++-$VERSION-dev libc++abi-$VERSION-dev
