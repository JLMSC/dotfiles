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

## TO DO
- [ ] Add filesystem info on polybar
- [ ] Add bluetooth status on polybar
- [ ] Add Lock screen
- [ ] Add `symlinks.sh` (copies (symlinks) configs to correct path)
- [ ] Rewrite bashrc.sh to symlinks, don't copy over .bashrc just move it
- [ ] Add `Caskaydia Cove` install step in `install.sh`
- [ ] Add `services.sh` (enable runit services)
- [ ] Rewrite README after everything is done
