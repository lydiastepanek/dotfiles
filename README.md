# Setup

## Run installation script
Make sure to clone this directory from ~/src/ as it is intended to run from this
folder.

```
chmod +x .make.sh
./.make.sh
```


## vim setup

To get shell to recognize new vim settings:
* `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
* From vimrc, run :PluginInstall
* Install go: `brew install go`
* From vimrc, run :GoInstallBinaries

## tmux setup

To get shell to recognize new tmux settings:
* Install iTerm
* Install tmux: `brew install tmux`
* Then set iTerm preferences:
  * iTerm Preferences > Profiles > Default > Keys > Left option key acts as + Esc
  * iTerm Preferences > Profiles > Default > Keys > Right option key acts as + Esc

## prezto setup

To install prezto, see https://github.com/sorin-ionescu/prezto#installation

To UPDATE prezto, see https://github.com/sorin-ionescu/prezto?tab=readme-ov-file#updating

Set Zsh as your default shell:
```console
chsh -s /bin/zsh
```

## Acknowledgements

Used this example
http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
for script.
