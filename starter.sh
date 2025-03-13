#!/bin/bash

GREEN="\033[32m"
YELLOW="\033[33m"
RED="\033[31m"
BLUE="\033[34m"
RESET="\033[0m"

echo -e "${YELLOW}Starting HomeBrew installation...${RESET}"
source ./config/HomeBrewInstaller.sh
echo -e "${GREEN}Installation completed!${RESET}"

# WORKSPACE CREATOR
SCRIPT_PATH="./workspaceCreator/WSCreator.sh"

if [[ -f "$SCRIPT_PATH" ]]; then
    echo -e "${YELLOW}Running WSCreator.sh...${RESET}"
    bash "$SCRIPT_PATH"
else
    echo -e "${RED}Error: WSCreator.sh not found in workspaceCreator/${RESET}"
fi
echo -e "${GREEN}Continuing execution...${RESET}"

echo -e "${YELLOW}Starting AppInstaller installation...${RESET}"
source ./config/AppInstaller.sh
echo -e "${GREEN}Installation completed!${RESET}"

# WEBSITE BASE CREATOR
echo -e "${YELLOW}Navigating to the script directory...${RESET}"
cd websiteBaseScript || { echo -e "${RED}Directory not found${RESET}"; exit 1; }
# Step 1: Give execution permissions to the script in the current directory
echo -e "${YELLOW}Giving execution permissions to the script...${RESET}"
chmod +x WebBS.sh
# Step 2: Copy the script to a directory in the PATH
echo -e "${YELLOW}Copying the script to /usr/local/bin...${RESET}"
sudo cp ./WebBS.sh /usr/local/bin/
# Step 3: Ensure the script has execution permissions in its new location
echo -e "${YELLOW}Ensuring the script has execution permissions in /usr/local/bin...${RESET}"
chmod +x /usr/local/bin/WebBS.sh
cd ..

# RESULT
echo -e "${GREEN}Script setup completed successfully!\n You can now run the script from any directory using the command:${RESET}"
echo -e "${BLUE}     WebBS.sh <Your_project_name>${RESET} adds the web site structure to a separate folder in the current directory"
echo -e "${BLUE}     WebBS.sh${RESET} - adds the web site structure to the current directory"
