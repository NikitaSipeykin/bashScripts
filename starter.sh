#!/bin/bash

echo "Navigating to the script directory..."
cd websiteBaseScript || { echo "Directory not found"; exit 1; }

# Step 1: Give execution permissions to the script in the current directory
echo "Giving execution permissions to the script..."
chmod +x WebBS.sh

# Step 2: Copy the script to a directory in the PATH
echo "Copying the script to /usr/local/bin..."
sudo cp ./WebBS.sh /usr/local/bin/

# Step 3: Ensure the script has execution permissions in its new location
echo "Ensuring the script has execution permissions in /usr/local/bin..."
chmod +x /usr/local/bin/WebBS.sh

echo "Script setup completed successfully!\n You can now run the script from any directory using the command:"
echo "     WebBS.sh <Your_project_name>"