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

# Theme
source ~/.zsh/theme.zsh

# Environment Variables
source ~/.zsh/env_vars.zsh

# Tell antigen its good to go
antigen apply

[ archey ] && archey
