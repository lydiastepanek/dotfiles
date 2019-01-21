[ -n "$PS1" ] && source ~/.ccenv;

eval "$(rbenv init -)"

source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
