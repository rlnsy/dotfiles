#!/bin/sh

cwl () {
	PWD=$(lpass show --password ubc.ca)
        if [[ $? != 0 ]]; then
        	echo "Error getting credentials from LastPass"
                return 1
        fi
        copy "$PWD"
}

SCH_CUR_TERM="19W2"
export SCHOOL="$HOME/Documents/School/$SCH_CUR_TERM"

#######################
# Concerning CPSC 411 #
#######################

export CURRENT_ASSIGNMENT="a10"

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

# General AWS
export AWS_DEFAULT_REGION=us-west-2

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
