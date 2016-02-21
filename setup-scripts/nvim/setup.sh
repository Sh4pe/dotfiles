#!/usr/bin/env bash

SCRIPT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

## symlink the config if needed
##
NVIM_DIR=$HOME/.config/nvim
if [[ ! -d "$NVIM_DIR" ]]; then
    echo "Creating $NVIM_DIR..."
    mkdir -p $NVIM_DIR
fi

if [[ ! -L "$NVIM_DIR/init.vim" ]]; then
    echo "Creating symlink to 'init.vim'..."
    ln -s $(realpath $SCRIPT_DIR/../../nvim/init.vim) $NVIM_DIR/init.vim
fi
