alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias k=kubectl
alias d=docker
alias dc=docker-compose
alias g=hub

zsh () {
  case "$1" in
    config)
      command vi ~/.zshrc
      ;;
    source)
      source ~/.zshrc
      ;;
    *)
      command zsh $@
      ;;
  esac
}
