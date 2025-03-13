#!/bin/bash

GREEN="\033[32m"
YELLOW="\033[33m"
RED="\033[31m"
BLUE="\033[34m"
RESET="\033[0m"

confirm_and_run() {
    local message=$1
    local script_path=$2

    read -p "$(echo -e ${YELLOW}${message}" (y/n): "${RESET})" choice
    case "$choice" in
        y|Y )
            if [[ -f "$script_path" ]]; then
                echo -e "${YELLOW}Running $script_path...${RESET}"
                bash "$script_path"
            else
                echo -e "${RED}Error: $script_path not found!${RESET}"
            fi
            ;;
        * )
            echo -e "${GREEN}Skipping $script_path...${RESET}"
            ;;
    esac
}

# WORKSPACE CREATOR
confirm_and_run "Do you want to run WSCreator.sh?" "./workspaceCreator/WSCreator.sh"

# HOMEBREW INSTALLER
confirm_and_run "Do you want to run HomeBrewInstaller.sh?" "./config/HomeBrewInstaller.sh"

# APP INSTALLER
confirm_and_run "Do you want to run AppInstaller.sh?" "./config/AppInstaller.sh"

# WEBSITE BASE CREATOR
echo -e "${YELLOW}Navigating to the script directory...${RESET}"
cd websiteBaseScript || { echo -e "${RED}Directory not found${RESET}"; exit 1; }

echo -e "${YELLOW}Giving execution permissions to WebBS.sh...${RESET}"
chmod +x WebBS.sh

echo -e "${YELLOW}Copying WebBS.sh to /usr/local/bin...${RESET}"
sudo cp ./WebBS.sh /usr/local/bin/

echo -e "${YELLOW}Ensuring WebBS.sh has execution permissions...${RESET}"
chmod +x /usr/local/bin/WebBS.sh
cd ..

# RESULT
echo -e "${GREEN}Script setup completed successfully!${RESET}"
echo -e "${BLUE}WebBS.sh <Your_project_name>${RESET} - Adds the web site structure to a separate folder in the current directory"
echo -e "${BLUE}WebBS.sh${RESET} - Adds the web site structure to the current directory"
