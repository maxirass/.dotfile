#!/bin/sh

# Create directory if it doesn't exist
mkdir -p ~/.local/bin

# Download yadm
curl -fLo /usr/local/bin/yadm https://github.com/TheLocehiliosan/yadm/raw/master/yadm && chmod a+x /usr/local/bin/yadm

# Clone dotfiles repository
~/.local/bin/yadm clone --bootstrap -f https://github.com/maxirass/dotfile.git

# Clean up by removing yadm
rm -rf ~/.local/bin/yadm

echo "Dotfiles setup completed!"
