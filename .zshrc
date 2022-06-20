# Loading antigen plugin manager
source ~/.zsh/antigen.zsh

# Getting bash defined aliases
source ~/.bash_aliases
if [ -f ~/.bash_aliases_env ]; then
    source ~/.bash_aliases_env
fi

# Increase history size
SAVEHIST=100000

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle command-not-found

# Other bundles
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions

# Load the theme.
antigen theme https://github.com/sbugzu/gruvbox-zsh

# Gruvbox theme customization
ZSH_THEME="gruvbox"
SOLARIZED_THEME="dark"

# Tell Antigen that you're done.
antigen apply

# Tmuxinator autocompletion
source ~/.zsh/tmuxinator.zsh

# Vim keybindings
# bindkey -v

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/trellis trellis
