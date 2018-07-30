#!/bin/bash
##############################################
# install.bash.sh
#
# Bootsrap for these configs in bash
##############################################

echo -- Installing ~/.bash-files --
git clone git@github.com:robpc/bash-files.git ~/.bash-files
echo "source ~/.bash-files/bashrc" >> ~/.bashrc

echo -- Installing ~/.bash-git-prompt --
git clone git@github.com:magicmonty/bash-git-prompt.git ~/.bash-git-prompt
echo "source ~/.bash-git-prompt/gitprompt.sh" >> ~/.bashrc
ln -s ~/.bash-files/git-prompt-colors.sh ~/.git-prompt-colors.sh

echo -- Installing custom .gitconfig options --
echo "[include]\npath = .bash-files/gitconfig" >> ~/.gitconfig

echo -- Installing custom .screenrc options --
ln -s ~/.bash-files/screenrc ~/.screenrc

if [[ "$OSTYPE" == "darwin"* ]]; then
  if ! test -e ~/.bash_profile || ! grep -q '.bashrc' ~/.bash_profile; then
    echo -- [OSX] Adding .bashrc to .bash_profile --
    echo "source ~/.bashrc" >> ~/.bash_profile
  fi
fi