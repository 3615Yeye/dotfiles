# Loading antigen plugin manager
source ~/.zsh/antigen.zsh

# Getting bash defined aliases
source ~/.bash_aliases
if [ -f ~/.bash_aliases_env ]; then
    source ~/.bash_aliases_env
fi

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
antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train

# Bullet train theme customization
BULLETTRAIN_NVM_FG=black
BULLETTRAIN_DIR_FG=black
BULLETTRAIN_CONTEXT_DEFAULT_USER=ronan

# Tell Antigen that you're done.
antigen apply

# Tmuxinator autocompletion
source ~/.zsh/tmuxinator.zsh
