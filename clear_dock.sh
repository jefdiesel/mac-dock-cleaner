#!/bin/bash

# Install dockutil via Homebrew (if not already installed)
if ! command -v dockutil &> /dev/null; then
    echo "Installing dockutil..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    brew install dockutil
fi

# Remove all default items from the Dock
dockutil --remove all --no-restart

# Add back essential apps (customize as needed)
dockutil --add '/Applications/System Settings.app' --no-restart
dockutil --add '/Applications/Finder.app' --no-restart

# Restart the Dock to apply changes
killall Dock

echo "Default Dock apps removed successfully!"
