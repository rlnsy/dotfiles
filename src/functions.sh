#!/bin/sh

config () {
    if [[ $SHELL == "/bin/zsh" ]]; then
        vim "$HOME/.zshrc"
    elif [[ $SHELL == "/bin/bash" ]]; then
        vim "$HOME/.bashrc"
    elif [[ $SHELL == "/bin/sh" ]]; then
        vim "$HOME/.profile"
    fi
}

# flash image to disk using dd
flash () {
	sudo dd if=$1 of=$2 bs=2m
}

download () {
	FILE=$1
	cd ~/Downloads
	wget "$FILE"
}

myzip () {
	#TODO: use an actual compression format
	INPUT=$1
	OUTPUT=$2
	tar cf "$OUTPUT" "$INPUT"
}

copy () {
	echo $1 | pbcopy
}

pushy () {
	git pull $1 $2 && git push $1 $2
}

symlink () {
	ACTUAL_FILE=$1
	SYMLINK_FILE=$2
	ln -s $1 $2
}

# Jupyter Kernels
alias kernels="jupyter kernelspec list"
rm-kernel () {
        jupyter kernelspec uninstall $1
}

mkalias () {
    vim "$SHELL_MODULES_SOURCE_DIR/alias.sh"
}

mkpath () {
    vim "$SHELL_MODULES_SOURCE_DIR/paths.sh"
}
