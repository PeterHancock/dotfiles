#!/usr/bin/env bash

# see https://github.com/webpro/dotfiles

export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

PATH="$DOTFILES_DIR/.bin:$PATH"

source "$DOTFILES_DIR/.install/brew.sh"
source "$DOTFILES_DIR/.install/npm.sh"

####
# Install dotfiles with stow - http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html
echo -e "Installing all dotfiles\n\n"
for PKGDIR in `find $DOTFILES_DIR -not -path '*/\.*' -type d -d 1`
do
  PKGNAME=${PKGDIR#$DOTFILES_DIR/}
  echo "Installing dotfiles for $PKGNAME"
  stow -n $PKGNAME
done
#####
