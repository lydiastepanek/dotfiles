# Setup
Make sure to clone this directory from ~/src/ as it is intended to run from this
folder.

```
chmod +x .make.sh
./.make.sh
```

Used
http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
for script.

To get shell to recognize new vim settings:
* `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
* From vimrc, run :PluginInstall
* From vimrc, run :GoInstallBinaries

To get shell to recognize new tmux settings:
* Install iTerm
* Install tmux: `brew install tmux`
* Then set iTerm preferences:
  * iTerm Preferences > Profiles > Default > Keys > Left option key acts as + Esc
  * iTerm Preferences > Profiles > Default > Keys > Right option key acts as + Esc

To install prezto:
* Follow directions in https://github.com/sorin-ionescu/prezto#installation.
