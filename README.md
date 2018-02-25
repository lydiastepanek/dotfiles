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
* From vimrc, run :PluginInstall

To get shell to recognize new tmux settings:
```
tmux source-file /Users/lydiastepanek/.tmux.conf
```
