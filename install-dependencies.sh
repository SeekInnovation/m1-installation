#!/bin/sh

softwareupdate --install-rosetta

# download and install docker 
curl 'https://desktop.docker.com/mac/main/arm64/Docker.dmg' --ouput ~/Downloads/docker.dmg
sudo hdiutil attach ~/Downloads/Docker.dmg
cp -r /Volumes/Docker/Docker.app /Applications/
sudo hdiutil unmount /Volumes/Docker
rm ~/Downloads/Docker.dmg
