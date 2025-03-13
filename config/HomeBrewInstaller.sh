#!/bin/bash

# Color messages
GREEN="\033[32m"
YELLOW="\033[33m"
RED="\033[31m"
RESET="\033[0m"

echo -e "${YELLOW}Checking if Homebrew is installed...${RESET}"

# Check if Homebrew is installed
if command -v brew &>/dev/null; then
    echo -e "${GREEN}Homebrew is already installed!${RESET}"
    brew --version
    exit 0
fi

echo -e "${YELLOW}Installing Homebrew...${RESET}"

# Download and install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Checking the processor architecture
if [[ "$(uname -m)" == "arm64" ]]; then
    # Apple Silicon (M1/M2/M3)
    BREW_PATH="/opt/homebrew/bin/brew"
else
    # Intel
    BREW_PATH="/usr/local/bin/brew"
fi

# Add Homebrew to PATH
if [[ -f "$BREW_PATH" ]]; then
    echo -e "${YELLOW}Adding Homebrew to PATH...${RESET}"
    echo 'eval "$('$BREW_PATH' shellenv)"' >> ~/.zprofile
    eval "$($BREW_PATH shellenv)"
else
    echo -e "${RED}Homebrew installation failed!${RESET}"
    exit 1
fi

# Checking the installation
echo -e "${YELLOW}Verifying Homebrew installation...${RESET}"
if command -v brew &>/dev/null; then
    echo -e "${GREEN}Homebrew installed successfully!${RESET}"
    brew --version
else
    echo -e "${RED}Homebrew installation failed! Please check the logs.${RESET}"
    exit 1
fi