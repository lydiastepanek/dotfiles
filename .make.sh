#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
# ############################

# ########## Variables

dir=~/src/dotfiles                    # dotfiles directory
olddir=~/src/dotfiles_old             # old dotfiles backup directory
files="zshrc gitconfig gitignore tmux.conf vimrc"    # list of files/folders to symlink in homedir

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
  echo "Moving any existing dotfiles from ~ to $olddir"
  if [ -f ~/.$file ]; then
    mv ~/.$file ~/dotfiles_old
  fi
  echo "Creating symlink to $file in home directory."
  ln -sf $dir/$file ~/.$file
done

echo "Creating symlink to vimrc for intellij plugins which use .ideavimrc."
ln -sf $dir/vimrc ~/.ideavimrc
