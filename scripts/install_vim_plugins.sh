#!/bin/bash

function CHECK_DIR_AND_CLONE {
    if [ ! -d "$1" ]; then
        git clone $2    
    else
        echo "Plugin $1 already installed."
    fi
}

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle

CHECK_DIR_AND_CLONE nerdtree https://github.com/scrooloose/nerdtree

CHECK_DIR_AND_CLONE nerdcommenter https://github.com/scrooloose/nerdcommenter

CHECK_DIR_AND_CLONE tagbar https://github.com/majutsushi/tagbar
