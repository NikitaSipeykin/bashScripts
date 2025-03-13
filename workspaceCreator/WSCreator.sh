#!/bin/bash

# Display a message that the search has started
echo -e "\033[33mTrying to find the folder...\033[0m"

# Look for the “Documents” folder in the user's home directory
ROOT_DIR=$(find "$HOME" -type d -name "Documents" 2>/dev/null | head -n 1)

# Check if the folder is found
if [ -z "$ROOT_DIR" ]; then
    echo -e "\033[31mFolder not found in $HOME.\033[0m"
    exit 1
fi

echo -e "\033[32mFound folder: $ROOT_DIR\033[0m"

# Create folder structure
echo -e "\033[33mCreate the three folder structure.\033[0m"
mkdir -p "$ROOT_DIR"/{tools,system_settings,repo,docs,it/{freelance,fonts,cv,java/application}}

# Output structure
echo "The following folder structure has been created:"
tree "$ROOT_DIR"