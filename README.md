# Dotfiles
Configuration files of my linux tools.

Now I use GNU Stow to create symlinks from this repo to my home, for the following benefits :
* Easier to track updates and keep my dotfiles in sync from multiple machines
* It's possible to use only some of the dotfiles, like nvim or bin

Tested on Pop! OS (Ubuntu based)

## Usage instructions

``` bash
# Clone this repo and change directory
# It's recommended to clone at the root of your $HOME to have a more simple CLI usage, by default stow create a symlink to the parent folder
git clone https://github.com/3615Yeye/dotfiles.git
cd dotfiles

# Use GNU stow to enable the wanted dotfiles
stow alacritty shell tmux nvim 
```

# Notes

The Neovim config was updated to work on version 0.8.2, a big thanks to this base config : https://github.com/LunarVim/nvim-basic-ide
