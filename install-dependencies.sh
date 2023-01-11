#!/bin/sh

touch ~/.zshrc

# usage: installdmg https://example.com/path/to/pkg.dmg
function installdmg {
    set -x
    tempd=$(mktemp -d)
    curl $1 > $tempd/pkg.dmg
    listing=$(sudo hdiutil attach $tempd/pkg.dmg | grep Volumes)
    volume=$(echo "$listing" | cut -f 3)
    if [ -e "$volume"/*.app ]; then
      sudo cp -rf "$volume"/*.app /Applications
    elif [ -e "$volume"/*.pkg ]; then
      package=$(ls -1 "$volume" | grep .pkg | head -1)
      sudo installer -pkg "$volume"/"$package" -target /
    fi
    sudo hdiutil detach "$(echo "$listing" | cut -f 1)"
    rm -rf $tempd
    set +x
}

#install rosetta
softwareupdate --install-rosetta --agree-to-license

# download and install docker 
installdmg https://desktop.docker.com/mac/main/arm64/Docker.dmg

# download and install chrome m1

installdmg https://dl.google.com/chrome/mac/universal/stable/GGRO/googlechrome.dmg

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
