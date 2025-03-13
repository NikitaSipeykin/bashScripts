#!/bin/bash

echo -e "${YELLOW}Checking if Homebrew is installed...${RESET}"

# Check if Homebrew is installed
if command -v brew &>/dev/null; then
    echo -e "${GREEN}Homebrew is already installed!${RESET}"
    brew --version
    exit 0
fi

# DOWNLOAD APPS
echo -e "${YELLOW}Updating Homebrew...${RESET}"
brew update
# GIT & tree
echo -e "${YELLOW}Installing essential tools...${RESET}"
brew install tree git
#JAVA
echo -e "${YELLOW}Installing Java versions (8, 11, 17, 23)...${RESET}"
brew install openjdk@8 openjdk@11 openjdk@17 openjdk@23

echo -e "${YELLOW}Setting up Java environment variables...${RESET}"
echo 'export PATH="/opt/homebrew/opt/openjdk@8/bin:$PATH"' >> ~/.zshrc
echo 'export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"' >> ~/.zshrc
echo 'export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"' >> ~/.zshrc
echo 'export PATH="/opt/homebrew/opt/openjdk@23/bin:$PATH"' >> ~/.zshrc

echo 'export CPPFLAGS="-I/opt/homebrew/opt/openjdk@8/include"' >> ~/.zshrc
echo 'export CPPFLAGS="-I/opt/homebrew/opt/openjdk@11/include"' >> ~/.zshrc
echo 'export CPPFLAGS="-I/opt/homebrew/opt/openjdk@17/include"' >> ~/.zshrc
echo 'export CPPFLAGS="-I/opt/homebrew/opt/openjdk@23/include"' >> ~/.zshrc
# MAVEN & GRADLE
echo -e "${YELLOW}Installing Java development tools...${RESET}"
brew install maven gradle
# INTELLIJ-IDEA & VS-CODE
echo -e "${YELLOW}Installing development environments...${RESET}"
brew install --cask intellij-idea visual-studio-code
# GITKRAKEN
echo -e "${YELLOW}Installing Git GUI clients...${RESET}"
brew install --cask gitkraken
# DOCKER
echo -e "${YELLOW}Installing Docker...${RESET}"
brew install --cask docker
# GATLING & JMETER
echo -e "${YELLOW}Installing performance testing tools...${RESET}"
brew install gatling jmeter
# DB
echo -e "${YELLOW}Installing data bases...${RESET}"
brew install postgresql redis mongodb sqlite
# BROWSERS
echo -e "${YELLOW}Installing browsers...${RESET}"
brew install --cask google-chrome firefox opera
# VLC
echo -e "${YELLOW}Installing VLC...${RESET}"
brew install --cask vlc

source ~/.zshrc

echo -e "${GREEN}Installation complete!${RESET}"
echo -e "${GREEN}Java version:${RESET}"
java -version
