#!/bin/sh

# Create directory if it doesn't exist
mkdir -p ~/.local/bin

# Download yadm
sudo curl -sfLo ~/.local/bin/yadm https://github.com/TheLocehiliosan/yadm/raw/master/yadm && sudo chmod a+x ~/.local/bin/yadm

# Clone dotfiles repository
~/.local/bin/yadm clone https://github.com/maxirass/dotfile.git

# Bootstrap executable
sudo chmod a+x ~/.config/yadm/bootstrap

# Execute bootstrap
~/.local/bin/yadm bootstrap

# Clean up by removing yadm
rm -rf ~/.local/bin/yadm

echo "Dotfiles setup completed!"
