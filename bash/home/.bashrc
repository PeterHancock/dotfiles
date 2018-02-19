# Resolve DOTFILES_DIR (assuming ~/.dotfiles on distros without readlink and/or $BASH_SOURCE/$0)

export DOTFILES_DIR

READLINK=$(which greadlink || which readlink)
CURRENT_SCRIPT=$BASH_SOURCE

if [[ -n $CURRENT_SCRIPT && -x "$READLINK" ]]; then
  SCRIPT_PATH=$($READLINK -f "$CURRENT_SCRIPT")
  # Extracting $DOTFILES_DIR/bash/home/$SCRIPT_PATH ... yuck
  DOTFILES_DIR=$(dirname "$(dirname "$(dirname "$SCRIPT_PATH")")")
elif [ -d "$HOME/dotfiles" ]; then
  DOTFILES_DIR="$HOME/dotfiles"
else
  echo "Unable to find dotfiles, exiting."
  return
fi

source "$DOTFILES_DIR/.rc/bashrc"

unset DOTFILES_DIR
