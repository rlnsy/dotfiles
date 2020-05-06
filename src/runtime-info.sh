#!/bin/sh

shell_mods_login () {
    printf "\nInfo:\n"
	neofetch
    printf "\nWelcome!\n"	
}

export G_MSG="There is a wide, yawning black infinity. In every direction, the extension is endless; the sensation of depth is overwhelming. And the darkness is immortal. Where light exists, it is pure, blazing, fierce; but light exists almost nowhere, and the blackness itself is also pure and blazing and fierce. 💫"

alias gnight="echo \"$G_MSG\" && sleep 5 && exit"

