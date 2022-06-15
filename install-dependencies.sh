#!/bin/sh

#install rosetta
# printf "A\n\n" | softwareupdate --install-rosetta

# download and install docker 
# curl --output ~/Downloads/docker.dmg 'https://desktop.docker.com/mac/main/arm64/Docker.dmg'
# sudo hdiutil attach ~/Downloads/Docker.dmg
# cp -r /Volumes/Docker/Docker.app /Applications/
# sudo hdiutil unmount /Volumes/Docker
# rm ~/Downloads/Docker.dmg

# install Github, VSCODE, postman, insomnia
# curl -s 'https://api.macapps.link/de/github-vscode-postman-insomnia' | sh

# install homebrew

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval $(/opt/homebrew/bin/brew shellenv)' >> ~/.zprofile
eval $(/opt/homebrew/bin/brew shellenv)