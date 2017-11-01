alias gitk='gitk --all &'
alias ll='ls -lah'
alias rsync='rsync --archive --compress --partial --update --verbose --human-readable'
alias dirp='namei -l'

alias hurl='curl -s -D - $1 -o /dev/null'

alias docker-cleanup-containers='docker ps -qf status=exited | xargs docker rm'
alias docker-cleanup-images='docker images -qf dangling=true | xargs docker rmi'
alias docker-cleanup-volumes='docker volume ls -qf dangling=true | xargs docker volume rm'
alias docker-cleanup='docker-cleanup-containers && docker-cleanup-images && docker-cleanup-volumes'

alias dc-restart='docker-compose down; docker-compose build && docker-compose up'

export PATH=${HOME}/.bash-files/bin:${PATH}
