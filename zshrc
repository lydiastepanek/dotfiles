export GOPATH="$HOME/go"

export PATH="/opt/homebrew/opt/openssl@1.1/bin:/usr/local/bin:$HOME/.pyenv/bin:$HOME/.local/bin:$HOME/mongodb-osx-x86_64-enterprise-4.0.9/bin:$HOME/bin:$GOPATH:$PATH"
[ -n "$PS1" ] && source ~/.mongoenv;

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

fpath[1,0]=$HOME/.zsh/completion

# The following lines were added by compinstall
zstyle :compinstall filename '/Users/lydia.stepanek/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

[ -s "/Users/lydia.stepanek/.jabba/jabba.sh" ] && source "/Users/lydia.stepanek/.jabba/jabba.sh"
