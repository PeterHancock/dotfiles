#!/usr/bin/env bash

# see https://github.com/webpro/dotfiles

export DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

export DOTFILES_EXTRA_DIR

source "$DOTFILES_DIR/env"

source "$DOTFILES_DIR/.install/macos.sh"
source "$DOTFILES_DIR/.install/brew.sh"
source "$DOTFILES_DIR/.install/brew-cask.sh"
source "$DOTFILES_DIR/.install/gem.sh"
source "$DOTFILES_DIR/.install/npm.sh"
source "$DOTFILES_DIR/.install/basher.sh"

source "$DOTFILES_DIR/z/install.sh"

# Install programs
source dotfiles-install

# Install dotfiles
source dotfiles-home

if [ -d "$DOTFILES_EXTRA_DIR" ]
then
  PATH="$DOTFILES_EXTRA_DIR/.bin:$PATH"
  source dotfiles-home $DOTFILES_EXTRA_DIR
  [ -f "$DOTFILES_EXTRA_DIR/install.sh" ] && source "$DOTFILES_EXTRA_DIR/install.sh"
  source dotfiles-install $DOTFILES_EXTRA_DIR
else
  unset DOTFILES_EXTRA_DIR
fi

source $HOME/.bashrc
