#!/bin/bash

export JAVA_HOME=$(/usr/libexec/java_home)

export sbt_mem=4096
export SBT_OPTS="-XX:+CMSClassUnloadingEnabled"

function setjdk() (
  function removeFromPath() {
    export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
  }
  if [ $# -ne 0 ]; then
      removeFromPath '/System/Library/Frameworks/JavaVM.framework/Home/bin'
      if [ -n "${JAVA_HOME+x}" ]; then
          removeFromPath $JAVA_HOME
      fi
      export JAVA_HOME=`/usr/libexec/java_home -v $@`
      export PATH=$JAVA_HOME/bin:$PATH
  fi
)

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"