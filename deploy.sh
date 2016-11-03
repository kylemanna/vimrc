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

#mkdir build \
    #&& cd build\
    #&& cmake -G "Unix Makefiles" . "$YCM_DIR/third_party/ycmd/cpp" \
    #&& cmake --build . --target ycm_core --config Release \
    #|| echo "Skipping YCM. Build folder exists"

cd ~/.vim/bundle/YouCompleteMe && ./install.py --racer-completer
#if [ $(which rustc) ]; then
    #cd "$YCM_DIR/third_party/ycmd/third_party/racerd" && cargo build --release
    #git clone git@github.com:rust-lang/rust.git ~/.vim/rust_src
#fi

