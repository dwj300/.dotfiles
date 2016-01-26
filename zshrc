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

PATH="/Users/Doug/perl5/bin${PATH+:}${PATH}"; export PATH;
PERL5LIB="/Users/Doug/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/Doug/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/Doug/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/Doug/perl5"; export PERL_MM_OPT;
 
export WORKON_HOME=~/Envs
source /usr/local/bin/virtualenvwrapper.sh
