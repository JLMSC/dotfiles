#!/usr/bin/env bash
set -e

DOTFILES_DIR="$(cd "$(dirname "$0")/.." && pwd)"

backup() {
    local target="$1"
    if [ -e "$target" ] && [ ! -L "$target" ]; then
        mv "$target" "${target}.bak"
        printf "\n. Created Backup: $target.bak\n"
    fi
}

link() {
    local src="$1"
    local dest="$2"

    backup "$dest"

    mkdir -p "$(dirname "$dest")"
    ln -sfn "$src" "$dest"

    echo ". Linked $dest -> $src"
}

printf "\n. Creating Symlinks\n"
link "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"
link "$DOTFILES_DIR/picom/picom.conf" "$HOME/.config/picom/picom.conf"
link "$DOTFILES_DIR/clipmenu/config" "$HOME/.config/clipmenu/config"
link "$DOTFILES_DIR/polybar/config.ini" "$HOME/.config/polybar/config.ini"
link "$DOTFILES_DIR/polybar/scripts/clipboard.sh" "$HOME/.config/polybar/scripts/clipboard.sh"
link "$DOTFILES_DIR/i3/config" "$HOME/.config/i3/config"
link "$DOTFILES_DIR/.icons/default/index.theme" "$HOME/.icons/default/index.theme"
link "$DOTFILES_DIR/.Xresources" "$HOME/.Xresources"
link "$DOTFILES_DIR/.profile" "$HOME/.profile"
link "$DOTFILES_DIR/.config/gtk-3.0/settings.ini" "$HOME/.config/gtk-3.0/settings.ini"
echo ". Done"
