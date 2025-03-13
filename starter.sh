#!/bin/bash

# WEBSITE BASE CREATOR
echo -e "\033[33mNavigating to the script directory...\033[0m"
cd websiteBaseScript || { echo "Directory not found"; exit 1; }
# Step 1: Give execution permissions to the script in the current directory
echo -e "\033[33mGiving execution permissions to the script...\033[0m"
chmod +x WebBS.sh
# Step 2: Copy the script to a directory in the PATH
echo -e "\033[33mCopying the script to /usr/local/bin...\033[0m"
sudo cp ./WebBS.sh /usr/local/bin/
# Step 3: Ensure the script has execution permissions in its new location
echo -e "\033[33mEnsuring the script has execution permissions in /usr/local/bin...\033[0m"
chmod +x /usr/local/bin/WebBS.sh
cd ..

# WORKSPACE CREATOR
echo -e "\033[33mNavigating to the script directory...\033[0m"
cd workspaceCreator || { echo "Directory not found"; exit 1; }
# Step 1: Give execution permissions to the script in the current directory
echo -e "\033[33mGiving execution permissions to the script...\033[0m"
chmod +x WSCreator.sh
# Step 2: Copy the script to a directory in the PATH
echo -e "\033[33mCopying the script to /usr/local/bin...\033[0m"
sudo cp ./WSCreator.sh /usr/local/bin/
# Step 3: Ensure the script has execution permissions in its new location
echo -e "\033[33mEnsuring the script has execution permissions in /usr/local/bin...\033[0m"
chmod +x /usr/local/bin/WSCreator.sh
cd ..

# RESULT
echo -e "\033[32mScript setup completed successfully!\n You can now run the script from any directory using the command:\033[0m"
echo -e "\033[34m     WebBS.sh\033[0m <Your_project_name> adds the web site structure to a separate folder in the current directory"
echo -e "\033[34m     WebBS.sh\033[0m - adds the web site structure to the current directory"
echo -e "\033[34m     WSCreator.sh\033[0m - adds the folder three inside \"Documents\" folder"

