if ! is-executable brew -o ! is-executable git; then
  echo "Skipped: npm (missing: brew and/or git)"
  return
fi

brew install n
n lts

# Globally install with npm
packages=(
  JSONStream
  babel-cli
  commitizen
  http-server
  lerna
  marked
  node-repl
  node-run
  nodemon
  @noraesae/pen
  pkginit
)

npm install -g "${packages[@]}"
