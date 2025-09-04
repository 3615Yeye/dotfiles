# CLI utils shortcuts
alias ll='ls -l'
alias lla='ls -la'
alias llrt='ls -lrt'

alias please='sudo'
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"

alias vim="nvim"

alias low='lowriter'
alias lowro='lowriter --view'
alias loc='localc'
alias locro='localc --view'

alias ba='vim ~/.bash_aliases'
alias bae='vim ~/.bash_aliases_env'

alias dcu='docker-compose up'
alias dcs='docker-compose stop'
alias dcd='docker-compose down'
alias dcr='docker-compose restart'
alias dcb='docker-compose build'
alias dcps='docker-compose ps'
alias dcrun='docker-compose run --rm'

alias fbr='git checkout $(git branch --all | fzf | tr -d "[:space:]")'
alias fs='git stash apply $(git stash list | fzf| awk -F "[{}]" "{print \$2}")'

# Bash functions
mkcd() { mkdir "$1" && cd "$1"; }

# Not an alias, but define vim as the default editor (git...)
export VISUAL=nvim
export EDITOR="$VISUAL"

# Loading an additionnal bash configuration if available in project root, combine well with tmuxinator
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
BASH_OVERRIDE="${DIR}/.bash_override"
if [ -f $BASH_OVERRIDE ]; then . $BASH_OVERRIDE; fi
export PATH=$PATH:~/.bin:~/.bin-not-versioned/nvim/bin:~/tizen-studio/tools:~/.cargo/bin
