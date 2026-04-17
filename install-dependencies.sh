#!/bin/bash
set -eu

# ensure .zshrc exists
if [ ! -f "~/.zshrc" ]; then
    echo "Creating ~/.zshrc..."
    touch "~/.zshrc"
fi

# install rosetta
softwareupdate --install-rosetta --agree-to-license

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "
# Enable Homebrew and custom shell completions
autoload -Uz compinit
compinit" >> ~/.zshrc

# Upgrade installed formulae
brew upgrade

# Install dev tools
brew install git wget httpie jq ffmpeg yt-dlp

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash
