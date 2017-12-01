# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# linux aliases and functions

alias fhere="find . -name "
alias mkdir="mkdir -pv"
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
alias wget="wget -c"
alias histg="history | grep"
alias top="htop"

# Prompt Goodness

## Display your git branch in bash prompt
git_branch() {
  git branch 2>/dev/null | grep '^*' | colrm 1 2
}

## Theme Prompt  
export PS1='\[\033[0;32m\]\[\033[0m\033[0;32m\]\u\[\033[0;36m\] @ \[\033[0;36m\]\h \w\[\033[0;32m\]$(parse_git_branch)\n\[\033[0;32m\]└─\[\033[0m\033[0;32m\] \$\[\033[0m\033[0;32m\] ▶\[\033[0m\] '

# User Aliases and Functions

alias eclipse="${HOME}/applications/eclipse/eclipse &"
