ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

# Install packages

brew install coreutils gnu-getopt gnu-sed

brew tap homebrew/cask-versions
brew tap homebrew/cask-fonts

brew install --cask adoptopenjdk

apps=(
  aspell
  bash-completion
  coreutils
  fzf
  git
  git-extras
  graphicsmagick
  imagemagick
  jenv
  kotlin
  maven
  mr
  python
  reattach-to-user-namespace # Used with tmux
  stow
  tmux
  tmuxinator
  tomcat
  tree
  wget
)

brew install "${apps[@]}"

apps=(
  adoptopenjdk
  iterm2
  google-chrome
  google-drive-file-stream
  slack
  visual-studio-code
)

brew install --cask "${apps[@]}"
