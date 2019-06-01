#!/bin/bash
#THIS IS FOR MAC

#Install brew package manager
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install caskroom/cask/brew-cask

./$(pwd)/brew.sh
