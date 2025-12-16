#!/usr/bin/env bash
set -e

# (nonfree) For packages that don't have free licenses.
# (multilib) Provides 32-bit packages as a compatibility layer inside a 64-bit system.
# (multilib/nonfree) Provides additional 32-bit packages which have non-free licenses.
echo ">> Enabling multilib/nonfree Repositories"
sudo xbps-install -S void-repo-nonfree
sudo xbps-install -S void-repo-multilib void-repo-multilib-nonfree

echo ">> Installing Packages (packages.txt)"
sudo xbps-install -S $(grep -v '^#' packages.txt)

echo ">> Synchronizing Packages"
sudo xbps-install -S

echo ">> Installing Step Done"

# Configures .bashrc
source install/bashrc.sh

# Configures Clipboard Manager in Polybar
source install/clipboard.sh
