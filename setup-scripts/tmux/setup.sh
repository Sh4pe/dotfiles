#!/usr/bin/env bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

## Make symlink if it's not there
if [[ ! -h "$HOME/.tmux.conf" ]]; then
    echo "Creating symlink for .tmux.conf..."
    ln -s $(realpath $SCRIPT_DIR/../../tmux.conf) $HOME/.tmux.conf
fi
