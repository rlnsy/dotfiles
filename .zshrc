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
COMPLETION_WAITING_DOTS="true"

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
export PATH=$PATH:"/Applications/Julia-1.3.app/Contents/Resources/julia/bin"

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

###########
# Aliases #
###########
alias reload="source $HOME/.zshrc"
alias keys="ls ~/.ssh/*.pub"
alias pubkey="cat ~/.ssh/id_rsa.pub"
alias nyan="open software/touch_bar_nyancat/touchbar_nyancat.app"
alias !="cd /Volumes/'Seagate SSD'"
alias user="id -un"
alias webserver="python3 -m http.server"
# Use sha256 checksum
alias check="shasum -a 256"
alias disks="diskutil list"
alias unmount="diskutil unmountdisk"
alias dg="python -m dg"
alias paste="pbpaste"

#############
# Functions #
#############

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

# Jupyter Kernels
alias kernels="jupyter kernelspec list"
rm-kernel () {
        jupyter kernelspec uninstall $1
}

#######################
# SCHOOL STUFF YAY 🎒 #
#######################

cwl () {
	PWD=$(lpass show --password ubc.ca)
        if [[ $? != 0 ]]; then
        	echo "Error getting credentials from LastPass"
                return 1
        fi
        copy "$PWD"
}

SCH_CUR_TERM="19W2"
SCHOOL="$HOME/Documents/School/$SCH_CUR_TERM"

#######################
# Concerning CPSC 411 #
#######################

export CURRENT_ASSIGNMENT="a9"

alias build-docker="docker image build -t cs411 https://www.students.cs.ubc.ca/\~cs-411/2019w2/share/Dockerfile"

# Clone a Github repository from the given sub-address using ugrad server token
function token-clone() {
	git clone "https://rowdl22:$2@github.students.cs.ubc.ca/$1"
}


# initialize work environment
ASSIGNMENTS="assignment"
LECTURES="lectures"
function cs411 () {
	PROTOCOL=$1
	echo "Selected $PROTOCOL"
	if [[ $PROTOCOL == $ASSIGNMENTS ]]; then
		if [[ $2 == "-i" ]]; then
			echo "Creating imaged workspace in assignment $CURRENT_ASSIGNMENT..."
			clear
			echo "Welcome! You are currently mounted in $CURRENT_ASSIGNMENT"
			docker run -i -t \
                	-v "/Users/rlindsay/Documents/School/19W2/CS411/workspace/411-assignments/$CURRENT_ASSIGNMENT:/app/workspace" \
                	-w /app/workspace cs411
		else
			cd "/Users/rlindsay/Documents/School/19W2/CS411/workspace/411-assignments/$CURRENT_ASSIGNMENT"
			clear
		fi
	elif [[ $PROTOCOL == $LECTURES ]]; then
		if [[ $2 == "-i" ]]; then
			echo "Creating imaged workspace in lecture collection"
			clear
			echo "Welcome to the lecture collection! Don't have too much fun"
			docker run -i -t \
                	-v "$SCHOOL/CS411/workspace/L:/app/lectures" \
			-w /app/lectures cs411
		else
			cd "$SCHOOL/CS411/workspace/L"
			clear
		fi
	fi
}

alias ronald="cs411 $LECTURES"
alias william="cs411 $ASSIGNMENTS"

#######################
# Concerning CPSC 319 #
#######################

# AWS CDK Deployment Credentials
CREDENTIALS_PATH="$HOME/Credentials" # TODO move this
AWS_CREDENTIALS_PATH="$CREDENTIALS_PATH/AWS"
AWS_CREDENTIALS_INSTALLATION="$HOME/.aws/credentials"
CREDS="personal"
source "$AWS_CREDENTIALS_PATH/$CREDS/credentials.sh"

# CDK Runner
alias cdkr="./cdkrunner.sh" 
alias ABORT="git reset --hard HEAD"
alias penguins="cd /Users/rlindsay/Documents/School/19W2/CS319/voice-penguins"
alias branch-clean="git fetch --all --prune"


#######################
# Concerning CPSC 304 #
#######################

alias trains="cd $SCHOOL/CS304/trainsRUs"



#######################
# Mac-Specific Stuff  #
#######################

# Brightness controls: require brightness package
alias light="brightness 0.8"
alias dark="brightness 0.5"
alias black="brightness 0"
alias blinding="brightness 1"


#######################
# Do Stuff At Runtime #
#######################

neofetch

#"'There is a wide, yawning black infinity. In every direction, the extension is endless; the sensation of depth is overwhelming. And the darkness is immortal. Where light exists, it is pure, blazing, fierce; but light exists almost nowhere, and the blackness itself is also pure and blazing and fierce.' 💫"


