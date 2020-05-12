#!/bin/sh

alias reload="source $HOME/.zshrc"
alias keys="ls ~/.ssh/*.pub"
alias pubkey="cat ~/.ssh/id_rsa.pub"
alias nyan="open software/touch_bar_nyancat/touchbar_nyancat.app"
alias !="cd /Volumes/'Seagate SSD'"
alias user="id -un"
alias webserver="python3 -m http.server"
alias check="shasum -a 256" # Use sha256 checksum
alias disks="diskutil list"
alias unmount="diskutil unmountdisk"
alias dg="python -m dg"
alias paste="pbpaste"
alias regex="open \"$HOME/Reference/regex.md\""
alias hosts="cat $HOME/.ssh/config"
alias run="./run.sh"
alias run-test="./test.sh"
alias restore-zsh="chsh -s /bin/zsh"
alias modules="cd $HOME/.sh_modules"
alias fonts="ls $HOME/Library/Fonts"
alias sw="telnet towel.blinkenlights.nl"

