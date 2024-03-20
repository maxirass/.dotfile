#!/bin/sh

# Create directory if it doesn't exist
mkdir -p ~/.local/bin/yadm

# Download yadm
curl -fLo /.local/bin/yadm https://github.com/TheLocehiliosan/yadm/raw/master/yadm && chmod a+x /.local/bin/yadm

# Clone dotfiles repository
~/.local/bin/yadm clone --bootstrap https://github.com/maxirass/dotfile.git

# Clean up by removing yadm
rm -rf ~/.local/bin/yadm

echo "Dotfiles setup completed!"
