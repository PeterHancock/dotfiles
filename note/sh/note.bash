
function note () {
  $EDITOR ~/.note/"$*".txt
}

function note-ls () {
  ls -c ~/.note/ | grep "$*"
}
