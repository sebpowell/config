#!/bin/bash

# Install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# Before brew install, run brew doctor. If there is a problem with ownership,
# take it using $ sudo chown -R $USER /usr/local/{DIR}
#
# Make sure to run brew update and brew upgrade periodically

brew install caskroom/cask/brew-cask # Makes it easier to install mac apps

### Install RVM & Rails
curl -sSL https://get.rvm.io | bash -s stable --rails

### Install ZShell
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

### Makes it easier to update when installed via Homebrew
brew install git
brew install node
brew install pow # Easy proxying
brew install imagemagick

# Front-end development
sudo gem install sass
sudo npm install gulp -g

### Core apps
brew cask install --appdir="~/Applications" spectacle
brew cask install --appdir="~/Applications" google-chrome
brew cask install --appdir="~/Applications" sublime-text
brew cask install --appdir="~/Applications" spotify
brew cask install --appdir="~/Applications" transmit 
brew cask install --appdir="~/Applications" slack
brew cask install --appdir="~/Applications" vlc
brew cask install --appdir="~/Applications" skype
brew cask install --appdir="~/Applications" mailbox
brew cask install --appdir="~/Applications" dash
brew cask install --appdir="~/Applications" dashlane
brew cask install --appdir="~/Applications" gitx
brew cask install --appdir="~/Applications" java
brew cask install --appdir="~/Applications" dropbox
brew cask install --appdir="~/Applications" postgres
brew cask install --appdir="~/Applications" mamp
brew cask install --appdir="~/Applications" postgres
brew cask install --appdir="~/Applications" sequel-pro
brew cask install --appdir="~/Applications" font-explorer-x
brew cask install --appdir="~/Applications" flux

# cleanup
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*

