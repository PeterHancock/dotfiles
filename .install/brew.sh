ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

# Install packages

brew install coreutils gnu-getopt gnu-sed --with-default-names

apps=(
  aspell
  coreutils
  git
  git-extras
  graphicsmagick
  hugo
  imagemagick
  jq
  kotlin
  maven
  mr
  python
  sbt
  scala
  stow
  tomcat
  tree
  wget
)

brew install "${apps[@]}"
