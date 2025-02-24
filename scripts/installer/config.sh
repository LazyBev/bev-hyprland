#!/bin/bash

# Get the directory of the current script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Source helper file
source "$SCRIPT_DIR/helper.sh"

log_message "Installation started for Hyprland section"
print_info "\nStarting config setup..."
print_info "\nEverything is recommended to INSTALL"

# Define an array of config directories to copy
CONFIG_DIRS=("waybar" "rofi" "wlogout" "hypr" "zsh" "dunst" "kitty")

# Loop through and copy each config directory
for dir in "${CONFIG_DIRS[@]}"; do
    run_command "cp -r $HOME/simple-hyprland/configs/$dir $HOME/.config/" "Copy $dir config" "yes" "no"
done

# Copy Pictures directory silently
cp -r "$HOME/simple-hyprland/configs/Pictures" "$HOME" &> /dev/null
