bash-files
==========

Location to store personal bash settings

Quickstart
----------

Script that will do all the below for linux and osx.

    bash <(curl -s https://raw.githubusercontent.com/robpc/bash-files/master/install.bash.sh)


Setup
-----

    git clone git@github.com:robpc/bash-files.git ~/.bash-files

Bash
----
Add the following to `~/.bashrc`

    source ~/.bash-files/bashrc

Git
---
Clone `bash-git-prompt`

    git clone git@github.com:magicmonty/bash-git-prompt.git ~/.bash-git-prompt

Add the following to `~/.bashrc`

    source ~/.bash-git-prompt/gitprompt.sh

Execute

    ln -s ~/.bash-files/git-prompt-colors.sh .git-prompt-colors.sh

Add the following to `~/.gitconfig`

    [include]
      path = .bash-files/gitconfig

Screen
------
Execute

    ln -s ~/.bash-files/screenrc ~/.screenrc

Windows
-------
Clone `posh-git`

    git clone https://github.com/dahlbyk/posh-git.git ~/.post-git

Add the following to PowerShell profile (`$profile`)

    . $HOME/.bash-files/profile.ps1

