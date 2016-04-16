# ~/.bash_aliases
#
alias vi='nvim'
alias ..='cd ..'
alias cd..='cd ..'
alias grep='grep -nr --color=auto '
alias find='find -regextype posix-extended '

#
alias gap='gap -L ~/.gap/emptyWorkspace '
alias hpcgap='hpcgap -r '
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
alias cim='git cim'
alias log='git log --oneline'
alias diff='git diff HEAD'
alias gg='git grep '
