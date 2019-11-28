#!/bin/bash

# This file is to configure the .vimrc on the VM
# The .vimrc will be copied from https://github.com/rizalfakhri/vim-collections

hash git
if [ $? -eq 1 ]; then
    # Installing Git
    sudo apt install git
fi

git clone https://github.com/rizalfakhri/vim-collections

cp vim-collections/simple.vim .vimrc
chown vagrant:vagrant .vimrc

echo "[DONE] VIM Configured Successfully."

