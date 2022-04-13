#!/bin/bash
set -o verbose # echo all commands

# neovim things
if (command -v nvim &>/dev/null) then
    echo "nvim installed"
fi

# Nvim config
git clone git@github.com:ssiccha/.vim $HOME/.vim

# Symlinks to dotfiles
./create_links
