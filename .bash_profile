green=$(tput setaf 2)
blue=$(tput setaf 4)
bold=$(tput bold)
red=$(tput setaf 1)
reset=$(tput sgr0)

#What time is it?
date

source ~/.git-completion.sh

#Terminal autocomplete
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

parse_git_branch() {
  git branch --no-color 2> /dev/null | fgrep '*' | sed 's/* //'
}

PS1='\u@\[$green\]\h\[$reset\]:\w\[$blue\]$(__git_ps1)\[$reset\] \$ '

#PS1="\w $ "

#Shortcuts
alias ll="ls -laGFh"

#PATH
PATH=$PATH:/Users/ben/pear/bin
export PATH
