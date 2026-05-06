#!/bin/bash
set -eu

# ensure .zshrc exists
if [ ! -f ~/.zshrc ]; then
  echo "Creating ~/.zshrc..."
  touch ~/.zshrc
fi

# install rosetta
echo "Installing Rosetta 2..."
softwareupdate --install-rosetta --agree-to-license

# install homebrew
echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# make brew available in the current shell session (M1 installs to /opt/homebrew)
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "
# Enable Homebrew and custom shell completions
autoload -Uz compinit
compinit" >> ~/.zshrc

# upgrade installed formulae
brew upgrade

# install dev tools
echo "Installing development tools..."
brew install git wget httpie jq ffmpeg yt-dlp
brew install --cask gcloud-cli

# install nvm
echo "Installing nvm..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash
