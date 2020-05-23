#!/bin/zsh

load_mod_sh "dev"

quick () {
    COMM_MSG=$1
	if [[ "$COMM_MSG" == "" ]]; then
		echo "Error: empty commit message"
        exit 1
	fi
	read "response?About to add all local files to git (add -A)! Proceed? [Y/n]"
    if [[ $response =~ ^[Yy]$ ]]
    then
        git add -A
        git commit -m "$COMM_MSG"
    else
        echo "abort"
    fi
}
