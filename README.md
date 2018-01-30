# Manage dotfiles, etc with stow


## Install

```
cd ~
git clone https://github.com/PeterHancock/dotfiles
~/dotfiles/install.sh
```

## Extras

Add extra packages to `$HOME/dotfiles-extras` in the usual [format](#format)

## <a name-="format"></a> Format

```
dotfiles/
  .<dir> #  ignored
  <pkg>/
    home/ #  linked to $HOME
      <dir>/
      <file>
      <file|dir>
    sh/
      <script>  # sourced by ~/.bashrc
```
