export PATH="$HOME/.pyenv/bin:$HOME/mongodb-osx-x86_64-enterprise-4.0.9/bin:$HOME/bin:$PATH"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
