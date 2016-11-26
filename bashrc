#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# activate programmable bash completion
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# from github: jimeh/git-aware-prompt
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

# Adds ~/bin, ~/.local/bin/ to PATH in
# $HOME/.kde4/env/path.sh

# Set vi mode
set -o vi

# Prompt
# \W: show only current dir
# PS1='[\u@\h \w]\$ ' # default
# PS1='\[\e[1;32m\][\u@\h \w]\$\[\e[0m\] '
PS1="\[\e[0;32m\]\u\[\e[m\] \[\e[0;34m\]\w\[\e[m\] \[$txtpur\]\$git_branch\[$txtred\]\$git_dirty \[\e[1;32m\]\$\[\e[m\] "

# Disable C-Q and C-S hotkeys
stty -ixon

# Add alias definitions from .bash_aliases
if [ -f ~/.bash_aliases ]; then
        . ~/.bash_aliases
fi

# some XDG stuff?
export XDG_CONFIG_HOME="$HOME/.config"

# set TERM for neovim
export TERM="xterm-256color"