#!/bin/sh

# Anaconda3 5.2.0
export PATH="/Users/rlindsay/anaconda3/bin:$PATH"
# . /Users/rlindsay/anaconda3/etc/profile.d/conda.sh  # commented out by conda initialize

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/rlindsay/Anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/rlindsay/Anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/rlindsay/Anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/rlindsay/Anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
