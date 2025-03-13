#!/bin/bash

GREEN="\033[32m"
YELLOW="\033[33m"
RED="\033[31m"
RESET="\033[0m"

echo -e "${YELLOW}Checking if Homebrew is installed...${RESET}"

# Check if Homebrew is installed
if ! command -v brew &>/dev/null; then
    echo -e "${YELLOW}Homebrew is not installed. Installing...${RESET}"
    source ./config/HomeBrewInstaller.sh
else
    echo -e "${GREEN}Homebrew is already installed!${RESET}"
    brew --version
fi

# Update Homebrew
echo -e "${YELLOW}Updating Homebrew...${RESET}"
brew update

# Install essential tools
echo -e "${YELLOW}Installing essential tools...${RESET}"
brew install tree git

# Install Java versions
echo -e "${YELLOW}Installing Java versions (8, 11, 17, 23)...${RESET}"
brew install openjdk@8 openjdk@11 openjdk@17 openjdk@23

echo -e "${YELLOW}Setting up Java environment variables...${RESET}"
{
    echo 'export PATH="/opt/homebrew/opt/openjdk@8/bin:$PATH"'
    echo 'export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"'
    echo 'export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"'
    echo 'export PATH="/opt/homebrew/opt/openjdk@23/bin:$PATH"'
    echo 'export CPPFLAGS="$CPPFLAGS -I/opt/homebrew/opt/openjdk@8/include -I/opt/homebrew/opt/openjdk@11/include -I/opt/homebrew/opt/openjdk@17/include -I/opt/homebrew/opt/openjdk@23/include"'
} >> ~/.zshrc

# Install Java development tools
echo -e "${YELLOW}Installing Java development tools...${RESET}"
brew install maven gradle

# Install IDEs
echo -e "${YELLOW}Installing development environments...${RESET}"
brew install --cask intellij-idea visual-studio-code

# Install GitKraken
echo -e "${YELLOW}Installing Git GUI clients...${RESET}"
brew install --cask gitkraken

# Install Docker
echo -e "${YELLOW}Installing Docker...${RESET}"
brew install --cask docker

# Install performance testing tools
echo -e "${YELLOW}Installing performance testing tools...${RESET}"
brew install gatling jmeter

# Install databases
echo -e "${YELLOW}Installing databases...${RESET}"
brew install postgresql redis sqlite
brew tap mongodb/brew
brew install mongodb-community@6.0

# Install browsers
echo -e "${YELLOW}Installing browsers...${RESET}"
brew install --cask google-chrome firefox opera

# Install VLC
echo -e "${YELLOW}Installing VLC...${RESET}"
brew install --cask vlc

# Reload environment variables
echo -e "${YELLOW}Reloading environment variables...${RESET}"
exec zsh

echo -e "${GREEN}Installation complete!${RESET}"
echo -e "${GREEN}Java version:${RESET}"
java -version
