#!/usr/bin/env bash
set -e

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

ONLY_SYMLINKS=false

usage() {
    printf "\nUsage: $0 [-r]\n"
    printf "\t-r\tUpdate Symlinks Only\n\n"
    exit 1
}

while getopts ":r" opt; do
    case "$opt" in
        r) ONLY_SYMLINKS=true ;;
        *) usage ;;
    esac
done

shift $((OPTIND - 1))

run_symlinks() {
    bash "$DOTFILES_DIR/scripts/symlinks.sh"
}

run_full_install() {
    printf "\n. Dotfiles Install Started\n"

    # (nonfree) For packages that don't have free licenses.
    # (multilib) Provides 32-bit packages as a compatibility layer inside a 64-bit system.
    # (multilib/nonfree) Provides additional 32-bit packages which have non-free licenses.
    printf "\n. Enabling multilib/nonfree Repositories\n"
    sudo xbps-install -S void-repo-nonfree
    sudo xbps-install -S void-repo-multilib void-repo-multilib-nonfree
    echo ". Done"

    printf "\n. Installing Packages from packages.txt\n"
    sudo xbps-install -S $(grep -v '^#' "$DOTFILES_DIR/packages.txt")
    echo ". Done"

    printf "\n. Making ZSH Default Shell\n"
    if ! command -v zsh >/dev/null 2>&1; then
        echo ". ZSH Not Installed, Skipping"
    elif [ "$SHELL" = "$(command -v zsh)" ]; then
        echo ". ZSH Already Default, Skipping"
    else
        chsh -s "$(command -v zsh)"
        echo ". ZSH Set As Default Shell"
        
        printf "\n. Installing Oh My ZSH\n"
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
        echo ". Oh My ZSH Installed"
    fi
    echo ". Done"

    printf "\n. Synchronizing Packages\n"
    sudo xbps-install -S
    echo ". Done"

    run_symlinks
}

if $ONLY_SYMLINKS; then
    run_symlinks
else
    run_full_install
fi
