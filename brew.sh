#!/bin/bash
# Install command-line tools using Homebrew

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade


# GNU core utilities (those that come with OS X are outdated)
brew install coreutils
brew install moreutils
# GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils
# GNU `sed`, overwriting the built-in `sed`
brew install gnu-sed --with-default-names

# Install more recent versions of some OS X tools
brew install vim --with-override-system-vi
brew install homebrew/dupes/nano
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

# z hopping around folders
brew install z

#Install iterm2
#https://gist.github.com/kevin-smets/8568070
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

brew install git
brew install imagemagick --with-webp
brew install node # This installs `npm` too using the recommended installation method
brew install pv
brew install rename
brew install tree
brew install zopfli
brew install ffmpeg --with-libvpx

brew install terminal-notifier

brew install android-platform-tools
brew install pidcat   # colored logcat guy

brew install ncdu

brew install tig

