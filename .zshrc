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
    # Opens ZSH configuration in Vim
    config)
      command vi ~/.zshrc
      ;;
    # Sources the ZSH configuration
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
  if ! [ "$1" ] ; then
    echo "Usage: g [<options>] <command> [<args>]"
    echo "Commands: any valid 'git' or 'hub' commmand, plus 'open'"
  else
    case "$1" in
      # Opens the current branch in a browser window
      open)
        command git remote get-url origin | sed 's/git@/http:\/\//' | sed 's/com:/com\//' | xargs open
        ;;
      *)
        command hub $@
        ;;
    esac
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
