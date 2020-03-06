export GOPATH="$HOME/go"
export PATH="/usr/local/bin:$HOME/.pyenv/bin:$HOME/.local/bin:$HOME/mongodb-osx-x86_64-enterprise-4.0.9/bin:$HOME/bin:$GOPATH:$PATH"
[ -n "$PS1" ] && source ~/.mongoenv;

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
