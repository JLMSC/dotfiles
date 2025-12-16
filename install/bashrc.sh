#!/usr/bin/env bash
set -e

echo ">> Setting Up .bashrc"

cat > "$HOME/.bashrcteste" << EOF
# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# List directories
alias ls='ls --color=auto'
# Shutdown
alias off='sudo shutdown -P now'
# Update Void Linux XBPS
alias xu='sudo xbps-install -Su'
# Installs and Updates packages
alias xi='sudo xbps-install -S'
# Searches for and displays information about packages installed
alias xq='sudo xbps-query'
# Removes installed packages
alias xr='sudo xbps-remove -Oov'

# Defines terminal prompt
PS1='[\u@\h \W]\$ '
EOF

echo ">> .bashrc Configured"
