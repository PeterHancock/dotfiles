brew tap caskroom/versions
brew tap caskroom/cask
brew tap caskroom/fonts

# Install packages

apps=(
  atom
  firefox
  google-chrome
  google-chrome-canary
  slack
)

brew cask install "${apps[@]}"
