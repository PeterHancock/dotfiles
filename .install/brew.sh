ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

# Install packages

brew install coreutils gnu-getopt gnu-sed


brew tap homebrew/cask-versions
brew tap homebrew/cask-fonts

brew cask install adoptopenjdk

apps=(
  aspell
  coreutils
  fzf
  git
  git-extras
  graphicsmagick
  hugo
  imagemagick
  jenv
  jq
  kotlin
  maven
  mr
  python
  sbt
  scala
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
  atom
  firefox
  google-chrome
  google-drive-file-stream
  slack
  visual-studio-code
)

brew cask install "${apps[@]}"
