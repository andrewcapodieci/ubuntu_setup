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

#NERDTree
CHECK_DIR_AND_CLONE nerdtree https://github.com/scrooloose/nerdtree

#NERDCommenter
CHECK_DIR_AND_CLONE nerdcommenter https://github.com/scrooloose/nerdcommenter

#Tagbar
CHECK_DIR_AND_CLONE tagbar https://github.com/majutsushi/tagbar

#Gundo
CHECK_DIR_AND_CLONE gundo https://github.com/sjl/gundo.vim
