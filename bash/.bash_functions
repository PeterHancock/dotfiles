function setjdk() {
  if [ $# -ne 0 ]; then
      removeFromPath '/System/Library/Frameworks/JavaVM.framework/Home/bin'
      if [ -n "${JAVA_HOME+x}" ]; then
          removeFromPath $JAVA_HOME
      fi
      export JAVA_HOME=`/usr/libexec/java_home -v $@`
      export PATH=$JAVA_HOME/bin:$PATH
  fi
}

function pomodoro {
  case $1 in
    start )
      echo 'terminal-notifier -title "🍅 Pomodoro Done" -message "Starting short break…"' | at + 25 minutes &> /dev/null
      ;;

    break )
      echo 'terminal-notifier -title "⌛ Short Break Done" -message "Start your next Pomodoro."' | at + 5 minutes &> /dev/null
      ;;
  esac
}
