# ~/.bash_aliases
#
alias vi='nvim'
alias vimdiff='nvim -d '
alias ..='cd ..'
alias cd..='cd ..'
alias grep='grep -nr --color=auto '
alias cl='clear; clear;'  # to also delete the 'scrollback'
alias sc='screen '
alias sl='screen -ls'
alias sr='screen -RR'
# how did this work?
# alias find='echo "aliased"; find -regextype posix-extended '

# semester dependent locations
alias ex='cd ~/lehre/PermGruppen/exercises'
alias so='cd ~/lehre/PermGruppen/solutions'
alias sol='cd ~/lehre/PermGruppen/solutions'

#
alias gap='gap -L ~/.gap/emptyWorkspace '
alias gapdev='/home/sergio/source/gap_source/bin/gap.sh -L ~/.gap/emptyWorkspaceDev '
alias hpcgap='hpcgap -r -P 6'
alias vncemil='vncviewer emil:33 2> /dev/null &'

# ls
alias l='ls '
alias ls='ls --color=auto '
alias ll='ls -lhF'
alias la='ls -lahF'
alias l.='ls -d .*'
alias lk='l.'

# git
alias st='git status --ignore-submodules'
alias add='git add'
alias amend='git commit --amend'
alias cim='git commit -m'
alias log='git log --oneline --max-count=15'
alias gd='git diff HEAD'
alias reset='git reset HEAD'
