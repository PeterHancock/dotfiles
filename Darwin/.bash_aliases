alias opm='npm --registry http://maven.ocado.com/nexus/content/groups/lastmile-npm-release-group/'

alias npmpacks='npm_pack=$(npm pack) && tar -tvf $npm_pack | egrep -o "package(.*)" | cut -c 9- && rm $npm_pack'

# requires 'brew install coreutils'
alias readlink=greadlink

alias grr='grep -r'

# Storepick
alias cd-sp='cd ~/projects/storepick/storepick'
alias cd-ui='cd ~/projects/storepick/storepick/ui/store-ui'

alias chrome='open -a "Google Chrome"'

alias meld='/Applications/Meld.app/Contents/MacOS/Meld'

alias nv='echo "node:$(node -v) npm:$(npm -v)"'
alias sane='stty sane'
