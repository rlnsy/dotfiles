#!/bin/zsh
source $SHELL_MODULES_SOURCE_DIR/shells.zsh && echo "shells"
source $SHELL_MODULES_SOURCE_DIR/paths.sh && echo "paths"
source $SHELL_MODULES_SOURCE_DIR/alias.sh && echo "aliases"
source $SHELL_MODULES_SOURCE_DIR/brightness.sh && echo "brightness tools"
source $SHELL_MODULES_SOURCE_DIR/runtime-info.sh && echo "runtime info"
#source $SHELL_MODULES_SOURCE_DIR/school.sh && echo "school"
source $SHELL_MODULES_SOURCE_DIR/functions.sh && echo "functions"
source $SHELL_MODULES_SOURCE_DIR/conda.sh && echo "anaconda"
source $SHELL_MODULES_SOURCE_DIR/go.sh && echo "go tools"
source $SHELL_MODULES_SOURCE_DIR/dev.sh && echo "dev tools"
