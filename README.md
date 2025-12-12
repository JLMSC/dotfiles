# dotfiles
My dotfiles

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

## Custom Actions (Thunar)
- Open Terminal Here: `alacritty --working-directory %f` (Appearance Conditions: `Directories **`)

## Observations (Known Bugs)
- There is no automatic detection for monitors, need to define it in the configurations files that uses them.
- A monitor won't recover its image if changing their source from A -> B -> A, need to turn restart it.
- Missing characters for other languages such as kr, jp ...

## TO DO
- [ ] Setup conky
- [ ] Add dock?
- [ ] Add filesystem info on polybar
- [ ] Add caps lock indicator on polybar
- [ ] Add bluetooth status on polybar
- [ ] Add CPU/GPU/RAM info on polybar/conky
- [ ] Add notifyd (xfce4)
- [ ] Add custom icons (gtk)
- [ ] Lock screen
- [ ] Add window title at left most side of polybar.
- [ ] Change i3 accent color to match GTK theme.
- [ ] Clipboard manager + indicator on polybar
- [ ] OSD for volume and caps lock
- [ ] Configure lightdm
- [ ] Add vscode settings
