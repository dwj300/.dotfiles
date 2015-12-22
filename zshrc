# Path to antigen clone
export ZSH=$HOME/.dotfiles/zsh/antigen/antigen.zsh
source $ZSH

# Load the oh-my-zsh's library.
# Need to use oh-my-zsh library for any bundle use
antigen use oh-my-zsh

# Aliases
source ~/.zsh/aliases.zsh

# Bundles
source ~/.zsh/bundles.zsh

# Themes
source ~/.zsh/themes.zsh

# Tell antigen its good to go
antigen apply

# Make sure this doesn't break on OS X
export TERM=xterm-256color

archey -c
