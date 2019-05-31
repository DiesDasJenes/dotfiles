#!/bin/bash
#THIS IS FOR MAC

#Install brew package manager
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#Install iterm2
brew cask install iterm2

#Install jenvi: https://www.jenv.be/
brew install jenv
 echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.zshrc
 echo 'eval "$(jenv init -)"' >> ~/.zshrc_profile

#Install bat: https://github.com/sharkdp/bat 
brew install bat

#Install zsh
#https://www.freecodecamp.org/news/how-to-configure-your-macos-terminal-with-zsh-like-a-pro-c0ab3f3c1156/
brew install zsh
sudo -s 'echo /usr/local/bin/zsh >> /etc/shells' && chsh -s /usr/local/bin/zsh

#Install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#Install fzf: https://github.com/junegunn/fzf
brew install fzf
