# CLI utils shortcuts
alias ll='ls -l'
alias lla='ls -la'
alias llrt='ls -lrt'

alias please='sudo'
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"

alias low='lowriter'
alias lowro='lowriter --view'
alias loc='localc'
alias locro='localc --view'

alias ba='vim ~/.bash_aliases'
alias bae='vim ~/.bash_aliases_env'

# Bash functions
mkcd() { mkdir "$1" && cd "$1"; }
findx() { find . | xargs grep "$1" -sl; }
findxv() { find . | xargs grep "$1" -s; }

# Not an alias, but define vim as the default editor (git...)
export VISUAL=vim
export EDITOR="$VISUAL"

# Loading an additionnal bash configuration if available in project root, combine well with tmuxinator
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
BASH_OVERRIDE="${DIR}/.bash_override"
if [ -f $BASH_OVERRIDE ]; then . $BASH_OVERRIDE ; fi
