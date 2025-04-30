#!/bin/bash
set -e
####
# Make sure this script is executable (chmod +x)
####

# Update and install basic tools
dnf update -y
dnf install -y curl git make gcc openssl-devel libappindicator-gtk3-devel webkit2gtk3-devel \
    gtk3-devel glib2-devel libxcb-devel wget unzip xz tar

# Install Rust
curl https://sh.rustup.rs -sSf | sh -s -- -y
source $HOME/.cargo/env

# Install nvm + Node.js
export NVM_DIR="$HOME/.nvm"
mkdir -p $NVM_DIR
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source $NVM_DIR/nvm.sh
nvm install --lts
nvm use --lts
nvm alias default lts/*

# Add nvm and cargo to path in .bashrc
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.bashrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> ~/.bashrc
echo 'source $HOME/.cargo/env' >> ~/.bashrc

# Install Tauri CLI
cargo install tauri-cli

echo "Setup complete."
