# Status Bar
$HOME/.config/dwm-bar/dwm-bar.sh &

# Wallpaper
nitrogen --restore &
# Random Photo Every Login
# feh --bg-fill --randomize ~/Pictures/wallpapers/* &

#feh --bg-fill ~/Pictures/wallpapers/mac/Mojave\ Night.jpg --bg-fill ~/Pictures/wallpapers/macos-cataline-night-6k.jpg/

# Monitor Config
xrandr --newmode "ULTRA_WIDE" 188.60 2560 2704 2976 3392 1080 1081 1084 1112 -HSync -Vsync
xrandr --addmode Virtual-1 "ULTRA_WIDE"
xrandr --output Virtual-1 --mode "ULTRA_WIDE"
xrandr --output Virtual-1 --primary 

# Network Manager Applet
#nm-applet --indicator &

# Don't Randomly Turn off
xset s off
xset -dpms
xset s noblank

# Speedy keys
xset r rate 210 40

# Environment variables set everywhere
export EDITOR="nvim"
export TERMINAL="st"
#export BROWSER="brave"

# For QT Themes
# export QT_QPA_PLATFORMTHEME=qt5ct

# XDG Paths
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

# Compositor
picom --experimental-backends -b

# Hide mouse when typing
# xbanish &

# Screenshots
#flameshot &

# Bluetooth systray icon
# blueman-applet &

# helps with puls audio
# pasystray &

# Easy file sharing
# pcloudcc -u chris.machine@pm.me -m ~/Cloud -d

# Screenkey applet (this will break everything)
# screenkey --start-disabled

# remap caps to escape
#setxkbmap -option caps:escape
# swap escape and caps
# setxkbmap -option caps:swapescape

# load Xresources
# xrdb ~/.Xresources

# zsh config dir
# export ZDOTDIR=$HOME/.config/zsh

# DWM
exec dwm 

