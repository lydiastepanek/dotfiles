export PATH="$HOME/.pyenv/bin:$HOME/bin:$PATH"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
