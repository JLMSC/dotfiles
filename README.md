# dotfiles
My dotfiles (i3wm + X11 + Void Linux)

## Majoir i3 keybindings
- `Super+Shift+c` - Restart i3 config in place
- `Super+Shift+r` - Reload i3 config in place
- `Super+q` - Opens **Alacritty** (Console/Terminal)
- `Super+d` - Opens **dmenu** (Application Launcher)
- `Super+f` - Opens **Thunar** (File Explorer)
- `Super+z` - Opens **Mate System Monitor**
- `Super+a` - Opens **Mousepad** (Text Editor)
- `Super+Shift+p` - Opens **Scrot** (Screenshot)
> The other keybindings can be found in i3/config

## Command Aliases
- `ls` - `ls --color=auto` (List Directories)
- `off` - `sudo shutdown -P now` (Shutdown)
- `xu` - `sudo xbps-install -Su` (Update Void Linux XBPS)
- `xi` - `sudo xbps-install -S` (Installs and Updates Packages)
- `xq` - `sudo xbps-query` (Searches for and Displays Information About Packages Installed)
- `xr` - `sudo xbps-remove -Oov` (Removes Installed Packages)

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

## TO DO
- [ ] Add filesystem info on polybar
- [ ] Add bluetooth status on polybar
- [ ] Add Lock screen
- [ ] Add `Caskaydia Cove` install step in `install.sh`
- [ ] Add `services.sh` (enable runit services)
- [ ] Rewrite README after everything is done
