#!/bin/sh

load_mod_sh () {
    S_MOD="$1"
    source "$SHELL_MODULES_SOURCE_DIR/$S_MOD.sh"
    echo "$S_MOD (sh)"
}
