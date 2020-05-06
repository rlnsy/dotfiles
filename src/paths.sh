#!/bin/sh

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
