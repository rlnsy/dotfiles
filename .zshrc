#        ___           ___           ___
#       /\__\         /\__\         /\  \
#      /::|  |       /:/ _/_        \:\  \
#     /:/:|  |      /:/ /\  \        \:\  \
#    /:/|:|  |__   /:/ /::\  \   ___ /::\  \
#   /:/ |:| /\__\ /:/_/:/\:\__\ /\  /:/\:\__\
#   \/__|:|/:/  / \:\/:/ /:/  / \:\/:/  \/__/
#       |:/:/  /   \::/ /:/  /   \::/__/
#       |::/  /     \/_/:/  /     \:\  \
#       |:/  /        /:/  /       \:\__\
#       |/__/         \/__/         \/__/

# TODO:
# - clean up the file and organize

export ZSH=/Users/rlindsay/.oh-my-zsh

ZSH_THEME="powerlevel10k/powerlevel10k"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"
#

# Brew Binaries
export PATH="/usr/local/bin/":$PATH

# Personal Binaries
export PATH="/Users/rlindsay/.bin":$PATH

# Hugo Static Website Builder and Server
export PATH="/Users/rlindsay/hugo":$PATH

# React Native Environment
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Julia
export PATH=$PATH:"/Applications/Julia-1.2.app/Contents/Resources/julia/bin"

# Pipenv Setting
export PIPENV_VENV_IN_PROJECT="enabled"

# Haskell (ghcup)
export PATH=$PATH:"/Users/rlindsay/.ghcup/bin"

# Stack
export PATH=$PATH:"/Users/rlindsay/.local/bin"

# Racket
export PATH=$PATH:"/Applications/Racket v7.4/bin"

# Rust and Cargo
export PATH=$PATH:"/Users/rlindsay/.rustup/bin"
export PATH=$PATH:"/Users/rlindsay/.cargo/bin"

# GCloud (Emma)
export PATH=$PATH:"/Users/rlindsay/google-cloud-sdk/bin"
export GOOGLE_APPLICATION_CREDENTIALS="/Users/rlindsay/Space/dialogflow/Emma-d74a3f548d3a_dialog.json"

# Aliases
alias keys="ls ~/.ssh/*.pub"
alias pubkey="cat ~/.ssh/id_rsa.pub"
alias nyan="open software/touch_bar_nyancat/touchbar_nyancat.app"
alias !="cd /Volumes/'Seagate SSD'"
alias user="id -un"
alias webserver="python3 -m http.server"

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

# Run Scripts at Login-Time
neofetch

#"'There is a wide, yawning black infinity. In every direction, the extension is endless; the sensation of depth is overwhelming. And the darkness is immortal. Where light exists, it is pure, blazing, fierce; but light exists almost nowhere, and the blackness itself is also pure and blazing and fierce.' 💫"


