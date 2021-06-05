#!/usr/bin/env bash
# Setup script for setting up a new macos machine
echo "Starting setup"

# install xcode CLI
xcode-select —-install

# Check for Homebrew to be present, install if it's missing
if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

# install command line packages
PACKAGES=(
    git
    tmux
    bat
    macvim
    mysql
    fzf
    ctags
    readline
)
echo "Installing packages..."
brew install ${PACKAGES[@]}

# any additional steps you want to add here

# Cleanup
echo "Cleaning up..."
brew cleanup

echo "Installing cask..."
CASKS=(
    iterm2
    adobe-acrobat-reader
    spotify
    visual-studio-code
    chrome
    notion
)
echo "Installing cask apps..."
brew cask install ${CASKS[@]}

# Cleanup
echo "Cleaning up..."
brew cleanup

echo "Done! Please manually install:"
echo "Final Cut Pro"
