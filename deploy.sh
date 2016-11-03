#!/usr/bin/env bash

set -e
VUNDLE_DIR="$HOME/.vim/bundle/vundle"
YCM_DIR="$HOME/.vim/bundle/YouCompleteMe"
if [ ! -d "$VUNDLE_DIR" ];then
    echo "Cloning Vundle"
    git clone http://github.com/gmarik/vundle.git "$VUNDLE_DIR"
fi
cp vimrc ~/.vimrc
vim +BundleInstall +qall


#cd ~/.vim/bundle/YouCompleteMe && ./install.py --racer-completer
#git clone git@github.com:rust-lang/rust.git ~/.vim/rust_src


