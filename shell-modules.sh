#!/bin/sh

export SHELL_MODULES_SOURCE_DIR="$SHELL_MODULES/src"

shell_mods_login() {
	printf "\nWelcome!\n"
}

printf "\nShell modules:\n"
#echo "---------------------------------------------------------------------"
source $SHELL_MODULES/smodc
#echo "---------------------------------------------------------------------"

source $SHELL_MODULES/shmrc
