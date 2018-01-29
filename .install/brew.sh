ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

# Install packages

apps=(
  coreutils
  git
  git-extras
  graphicsmagick
  imagemagick
  jq
  python
  stow
  tree
  wget
  scala
  sbt
)

brew install "${apps[@]}"
