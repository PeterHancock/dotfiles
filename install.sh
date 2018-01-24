platform=`uname`

echo "Installing dotfiles for $platform platform"

for DOTFILE in `find ~/dotfiles/$platform`
do
 [[ -f "$DOTFILE" ]] && ln -svf $DOTFILE ~
done
