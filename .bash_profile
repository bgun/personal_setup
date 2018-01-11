green=$(tput setaf 2)
blue=$(tput setaf 4)
bold=$(tput bold)
red=$(tput setaf 1)
reset=$(tput sgr0)

#What time is it?
date

# Show timestamp when viewing history
HISTTIMEFORMAT="%d/%m/%y %T "

#Terminal autocomplete
if [ -f ~/.git-completion.sh ]; then
    . ~/.git-completion.sh
fi

#Git prompt
if [ -f ~/.git-prompt.sh ]; then
    . ~/.git-prompt.sh
fi

parse_git_branch() {
  git branch --no-color 2> /dev/null | fgrep '*' | sed 's/* //'
}

PS1='\u@\[$green\]\h\[$reset\]:\w\[$blue\]$(__git_ps1)\[$reset\] \$ '

#Shortcuts
alias ll="ls -laGFh"
alias cll="clear; ll"
alias gs="git status"

#PATH
PATH=$PATH:/Users/ben/pear/bin
export PATH
