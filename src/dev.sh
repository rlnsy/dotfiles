#!/bin/bash

export EDITOR="vim"

mkchange () {
	"$EDITOR" CHANGELOG.md
	echo "Creating PDF version..."
	if [[ $? == 0 ]]; then
		mdpdf CHANGELOG.md
	fi
}

alias run="./scripts/run.sh"
alias run-test="./scripts/test.sh"
alias build="./scripts/build.sh"
alias clean="./scripts/clean.sh"
alias bundle="./scripts/bundle.sh"
alias docky="docker-compose down && docker-compose up --build"
