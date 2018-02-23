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
    jenkins)
      JENKINS_DOCKER=/crunchbase/ops_tools/bin/jenkins-docker
      command $JENKINS_DOCKER exec -ti $($JENKINS_DOCKER ps -a | grep docker_jenkins | awk '{print $1}') bash
      ;;
    *)
      echo "Usage: cb <command> [<args>]"
      echo "Commands: start,stop,jenkinsdocker"
      ;;
  esac
}

# Docker Compose
dc () {
  if [ "$1" ] ; then
    command docker-compose $@
  else
    echo "Usage: dc [<options>] <command> [<args>]"
    echo "Commands: any valid docker-compose commmand"
  fi
}

# Docker
d () {
  if [ "$1" ] ; then
    command docker $@
  else
    echo "Usage: d [<options>] <command> [<args>]"
    echo "Commands: any valid docker commmand"
  fi
}
