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
    ln -sfn "$src" "$dest"
    echo ". Linked $dest -> $src"
}

printf "\n. Creating Symlinks\n"
link "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"
echo ". Done"
