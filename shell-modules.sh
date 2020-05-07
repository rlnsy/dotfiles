#!/bin/sh

export SHELL_MODULES_SOURCE_DIR="$SHELL_MODULES/src"

shell_mods_login() {
	printf "\nWelcome!\n"
}

printf "\nShell modules:\n"
#echo "---------------------------------------------------------------------"
if [[ $SHELL == "/bin/zsh" ]]; then
    source $SHELL_MODULES/modcnf.zsh
elif [[ $SHELL == "/bin/bash" ]]; then
    source $SHELL_MODULES/modcnf.bash
elif [[ $SHELL == "/bin/sh" ]]; then
    source $SHELL_MODULES/modcnf.sh
else
    echo "ERROR: unrecognized shell; modules not loaded"
fi
#echo "---------------------------------------------------------------------"

source $SHELL_MODULES/post-load.sh
