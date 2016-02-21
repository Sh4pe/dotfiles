#!/usr/bin/env bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

## Install tpm if necessary
TPM_DIR=$HOME/.tmux/plugins/tpm
if [[ ! -d "$TPM_DIR" ]]; then
    echo "Cloning tpm..."
    mkdir -p $TPM_DIR
    git clone https://github.com/tmux-plugins/tpm $TPM_DIR
fi

## Make symlink to .tmux.conf if it's not there
if [[ ! -L "$HOME/.tmux.conf" ]]; then
    echo "Creating symlink for .tmux.conf..."
    ln -s $(realpath $SCRIPT_DIR/../../tmux.conf) $HOME/.tmux.conf
fi
