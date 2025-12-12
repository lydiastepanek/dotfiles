export GOPATH="$HOME/go"

# pyenv
export PATH="/Users/lydiastepanek/.pyenv/shims:$PATH"

# pipenv
export PATH="/Users/lydiastepanek/.local/bin:$PATH"

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

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/lydiastepanek/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/lydiastepanek/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/lydiastepanek/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/lydiastepanek/google-cloud-sdk/completion.zsh.inc'; fi
