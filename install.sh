#!/usr/bin/env bash

# see https://github.com/webpro/dotfiles

export DOTFILES_DIR="$HOME/dotfiles"

source "$DOTFILES_DIR/env"

source "$DOTFILES_DIR/.install/brew.sh"
source "$DOTFILES_DIR/.install/brew-cask.sh"
source "$DOTFILES_DIR/.install/npm.sh"

# Install dotfiles
dotfiles

if [ -d "$DOTFILES_EXTRA_DIR" ]
then
  dotfiles $DOTFILES_EXTRA_DIR
  [ -d "$DOTFILES_EXTRA_DIR/install.sh" ] && source "$DOTFILES_EXTRA_DIR/install.sh"
else
  unset DOTFILES_EXTRA_DIR
fi
