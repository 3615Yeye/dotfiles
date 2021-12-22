# Dotfiles
Configuration files of my linux tools.

Tested on Pop! OS (Ubuntu based)

## Usage instructions

``` bash
# Clone this repo and change directory
git clone https://github.com/3615Yeye/dotfiles.git
cd dotfiles

# Copy all dotfiles to your home
rsync -aP --exclude=.git --exclude=README.md . ~/
```

