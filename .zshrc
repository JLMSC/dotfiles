# .zshrc

# If not running interactively, don't do anything
[[ -o interactive ]] || return

# Source .zprofile if it exists
[[ -f ~/.zprofile ]] && source ~/.zprofile

# Oh My Zsh path
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="half-life"

# Plugins
plugins=(
    git
    colored-man-pages
)

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Load zsh-autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Load zsh-syntax-highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Aliases
alias ls='ls --color=auto'
alias off='sudo shutdown -P now'
alias reboot='sudo reboot'
alias xu='sudo xbps-install -Su'
alias xi='sudo xbps-install -S'
alias xq='sudo xbps-query'
alias xr='sudo xbps-remove -Oov'
alias vsc='code'
