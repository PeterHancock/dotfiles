if ! is-executable brew -o ! is-executable git; then
  echo "Skipped: npm (missing: brew and/or git)"
  return
fi

brew install nvm
nvm install stable
nvm use --delete-prefix stable

# Globally install with npm
packages=(
  JSONStream
  babel-cli
  commitizen
  http-server
  lerna
  marked
  nd
  node-repl
  node-run
  nodemon
  @noraesae/pen
  pkginit
)

npm install -g "${packages[@]}"
