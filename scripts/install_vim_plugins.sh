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
pushd ~/.vim/bundle

CHECK_DIR_AND_CLONE nerdtree https://github.com/preservim/nerdtree

CHECK_DIR_AND_CLONE nerdcommenter https://github.com/preservim/nerdcommenter

CHECK_DIR_AND_CLONE tagbar https://github.com/preservim/tagbar

CHECK_DIR_AND_CLONE ctags https://github.com/universal-ctags/ctags
pushd ctags
./autogen.sh
./configure
make
sudo make install
popd

CHECK_DIR_AND_CLONE ale https://github.com/dense-analysis/ale.git
