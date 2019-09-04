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

# Not an alias, but define vim as the default editor (git...)
export VISUAL=vim
export EDITOR="$VISUAL"
