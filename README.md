# dotfiles
My dotfiles

## Default keybindings
- `Super+Shift+c` - Restart i3 config in place
- `Super+Shift+r` - Reload i3 config in place
- `Super+q` - Opens **Alacritty** (Console/Terminal)
- `Super+d` - Opens **dmenu** (Application Launcher)
- `Super+f` - Opens **Thunar** (File Explorer)
- `Super+z` - Opens **Mate System Monitor**
- `Super+a` - Opens **Mousepad** (Text Editor)
- `Super+Shift+p` - Opens **Scrot** (Screenshot)
> The other keybindings can be found in i3/config

**OBS**: Both **picom** and **polybar** restarts automatically when saving their configuration files.

## Command Aliases
- `ls` - `ls --color=auto` (List Directories)
- `off` - `sudo shutdown -P now` (Shutdown)
- `xu` - `sudo xbps-install -Su` (Update Void Linux XBPS)
- `xi` - `sudo xbps-install -S` (Installs and Updates Packages)
- `xq` - `sudo xbps-query` (Searches for and Displays Information About Packages Installed)
- `xr` - `sudo xbps-remove -Oov` (Removes Installed Packages)

## Dependencies 
These are being used at least once in the `i3/config`, includes utilities too:
```
- CaskaydiaCove Nerd Font Mono
- dmenu
- alacritty
- thunar
- mate-system-monitor
- mousepad
- pulseaudio
- polybar
- picom
- pactl
- pavucontrol
- xinput
- xrandr
- setxkbmap
- feh
- xprop
- xrdb
```
## Configuration File Paths
- i3: `~/.config/i3/`
- Polybar: `~/.config/polybar/`
- Cursor: `~/.icons/` (`~/.icons/default/index.theme`)
- Themes: `~/.themes/`
- Xresources: `~/.Xresources`
- Profile: `~/.profile`
- GTK: `~/.config/gtk-3.0/`
- Picom: `~/.config/picom/`
- bashrc: `~/.bashrc`

## Custom Actions (Thunar)
- Open Terminal Here: `alacritty --working-directory %f` (Appearance Conditions: `Directories **`)

## Observations (Known Bugs)
- There is no automatic detection for monitors, need to define it in the configurations files that uses them.
- ~A monitor won't recover its image when changing its source from A -> B -> A, need to restart the monitor.~
> *(It can be solved by installing the GPU drivers)*
- ~Missing characters for other languages such as kr, jp, ch; emojis/special characters not being displayed~
> *(It can be solved by installing xorg-fonts, noto-fonts-cjk, noto-fonts-emoji, nerd-fonts, noto-fonts-ttk: These packages are for Void Linux)*


## TO DO
- [ ] Add filesystem info on polybar
- [ ] Add bluetooth status on polybar
- [ ] Add Lock screen
- [ ] Clipboard manager + indicator on polybar
- [ ] Add `symlinks.sh` (copies (symlinks) configs to correct path)
- [ ] Add `Caskaydia Cove` install step in `install.sh`
- [ ] Add `services.sh` (enable runit services)
