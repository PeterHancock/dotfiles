export TERM=xterm-256color

export EDITOR=vi

function append_path() {
    export PATH=$PATH:$1
}

TOOL_HOME=~/tools

function add_tool() {
    append_path $TOOL_HOME/$1
}

# Simple note taking
. ~/.noterc

# basher
append_path "$HOME/.basher/bin"
eval "$(basher init -)"

#jvm
export JAVA_HOME=$(/usr/libexec/java_home)
SCALA_HOME=~/tools/scala

export PATH=$TOOL_HOME/maven/bin:$PATH

append_path "$HOME/.bin"

append_path $SCALA_HOME/bin
add_tool play
add_tool activator
add_tool sbt/bin

export sbt_mem=4096
export SBT_OPTS="-XX:+CMSClassUnloadingEnabled"

append_path /Applications/Atom.app/Contents/MacOS

function removeFromPath() {
  export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
}

export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

if [ -f ~/.bash_aliases ]; then
   source ~/.bash_aliases
fi

if [ -f ~/.bash_aliases ]; then
   source ~/.bash_functions
fi

source ~/.bin/npm-completion.sh

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

source ~/.bin/tmuxinator.bash

append_path /usr/local/Cellar/graphicsmagick/1.3.21/bin

append_path `yarn global bin`

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

[ -f ~/.bash_aliases ] && source ~/.bash_aliases

[ -f ~/.bash_functions ] && source ~/.bash_functions

[ -f ~/.bash_private ] && source ~/.bash_private

