#!/usr/bin/env bash

set -e
VUNDLE_DIR="$HOME/.vim/bundle/vundle"
YCM_DIR="$HOME/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp"
if [ ! -d "$VUNDLE_DIR" ];then
    echo "Cloning Vundle"
    git clone http://github.com/gmarik/vundle.git "$VUNDLE_DIR"
fi
cp vimrc ~/.vimrc
vim +BundleInstall +qall
mkdir build \
    && cd build\
    && cmake -G "Unix Makefiles" . "$YCM_DIR" \
    && cmake --build . --target ycm_core --config Release \
