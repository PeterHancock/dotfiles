[ -f "$HOME/.bash_env" ] && source "$HOME/.bash_env"

[ -f "$HOME/.bash_functions" ] && source "$HOME/.bash_functions"

for PKGDIR in `find $DOTFILES_DIR -not -path '*/\.*' -type d -d 1`
do
  if [ -d "$PKGDIR/sh" ]
  then
    for SH in `find "$PKGDIR/sh"  -type f -d 1`
    do
      source $SH
    done
  fi
done

[ -f "$HOME/.bash_aliases" ] && source "$HOME/.bash_aliases"

[ -f "$HOME/.bash_private" ] && source "$HOME/.bash_private"
