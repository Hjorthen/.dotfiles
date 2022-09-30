ish() {
    ssh -o "StrictHostKeyChecking=no" -o "UserKnownHostsFile=/dev/null" $@
}

alias config='git --git-dir=$HOME/.dotfiles/.git --work-tree=$HOME/.dotfiles/'
