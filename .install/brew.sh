ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

# Install packages

apps=(
  aspell
  coreutils
  git
  git-extras
  graphicsmagick
  imagemagick
  jq
  python
  sbt
  scala
  stow
  tree
  wget
)

brew install "${apps[@]}"
