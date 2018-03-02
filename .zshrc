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
    command hub $@
  else
    echo "Usage: g [<options>] <command> [<args>]"
    echo "Commands: any valid 'git' or 'hub' commmand"
  fi
}

# Docker Compose
dc () {
  if [ "$1" ] ; then
    command docker-compose $@
  else
    echo "Usage: dc [<options>] <command> [<args>]"
    echo "Commands: any valid 'docker-compose' commmand"
  fi
}

# Docker
d () {
  if [ "$1" ] ; then
    command docker $@
  else
    echo "Usage: d [<options>] <command> [<args>]"
    echo "Commands: any valid 'docker' commmand"
  fi
}

# Kubernetes
k () {
  if [ "$1" ] ; then
    command kubectl $@
  else
    echo "Usage: k [<options>] <command> [<args>]"
    echo "Commands: any valid 'kubectl' commmand"
  fi
}
