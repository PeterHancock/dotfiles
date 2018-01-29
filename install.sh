#!/usr/bin/env bash

# see https://github.com/webpro/dotfiles

export DOTFILES_DIR="$HOME/dotfiles"

export DOTFILES_CACHE="$DOTFILES_DIR/.cache.sh"

PATH="$DOTFILES_DIR/.bin:$PATH"

source "$DOTFILES_DIR/.install/brew.sh"
source "$DOTFILES_DIR/.install/brew-cask.sh"
source "$DOTFILES_DIR/.install/npm.sh"

# Install dotfiles
source "$DOTFILES_DIR/.bin/dotfiles"

#Install
source "$DOTFILES_DIR/.bin/dotfiles-sh"
