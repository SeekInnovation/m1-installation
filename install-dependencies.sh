#!/bin/sh

touch ~/.zshrc

#install rosetta
softwareupdate --install-rosetta --agree-to-license

# download and install docker 
curl --output ~/Downloads/docker.dmg 'https://desktop.docker.com/mac/main/arm64/Docker.dmg'
sudo hdiutil attach ~/Downloads/Docker.dmg
cp -r /Volumes/Docker/Docker.app /Applications/
sudo hdiutil unmount /Volumes/Docker
rm ~/Downloads/Docker.dmg

# install Github, VSCODE, postman, insomnia
curl -s 'https://api.macapps.link/de/github-vscode-postman-insomnia' | sh

# install homebrew

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval $(/opt/homebrew/bin/brew shellenv)' >> ~/.zshrc
eval $(/opt/homebrew/bin/brew shellenv)

#Upgrade installed formulae
brew upgrade

#install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
