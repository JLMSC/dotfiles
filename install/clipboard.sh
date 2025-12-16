#!/usr/bin/env bash
set -e

echo ">> Setting Up Clipboard Manager"
mkdir -p "$HOME/.config/clipmenu"

cat > "$HOME/.config/clipmenu/config" << EOF
CM_LAUNCHER=dmenu
CM_LAUNCHER_ARGS='-l 8 -i -fn "CaskaydiaCove Nerd Font Mono-10"'
CM_HISTLENGTH=200
CM_IGNORE_WINDOW=1
EOF

echo ">> Clipboard Manager Configured"
