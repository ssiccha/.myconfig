#!/bin/bash
# neovim things
if (command -v nvim &>/dev/null) then
    echo "nvim installed"
fi
# TODO: If nvim isn't installed, make sure things like gitconfig don't
# use nvim instead of vim
