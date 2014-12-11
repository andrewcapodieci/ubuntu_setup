#!/bin/bash

function CHECK_DIR_AND_CLONE {
    if [ ! -d "$1" ]; then
        git clone $2    
    else
        echo "Plugin $1 already installed."
    fi
}

mkdir -p ~/.vim/bundle
cd ~/.vim/bundle

#NERDTree
CHECK_DIR_AND_CLONE nerdtree https://github.com/scrooloose/nerdtree

#NERDCommenter
CHECK_DIR_AND_CLONE nerdcommenter https://github.com/scrooloose/nerdcommenter
