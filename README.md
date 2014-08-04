bash-files
==========

Location to store personal bash settings

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
