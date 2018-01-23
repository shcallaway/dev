# Aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Sublime
alias s='open -a "Sublime Text"'

# ZSH
zsh () {
  case "$1" in
    config)
      command vi ~/.zshrc
      ;;
    source)
      source ~/.zshrc
      ;;
    *)
      echo "Usage: zsh <command>"
      echo "Commands: config,source"
      ;;
  esac
}

# Git
g () {
  if [ "$1" ] ; then
    command git $@
  else
    echo "Usage: g [<options>] <command> [<args>]"
    echo "Commands: any valid git commmand"
  fi
}

# Crunchbase
cb () {
  case "$1" in
    start)
      command /crunchbase/start-hybrid.sh
      ;;
    stop)
      command /crunchbase/stop-hybrid.sh
      ;;
    jenkinsdocker)
      command /crunchbase/ops_tools/bin/jenkins-docker "${@:2}"
      ;;
    *)
      echo "Usage: cb <command> [<args>]"
      echo "Commands: start,stop,jenkinsdocker"
      ;;
  esac
}
