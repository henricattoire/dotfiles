#!/bin/bash
setxkbmap -layout fr
setxkbmap -option caps:escape
# x program configurations
xrdb $HOME"/.Xresources"
xsetroot -cursor_name left_ptr
# lock screen
xss-lock -- xtrlock &
# notification deamon
dunst &
# f.lux
redshift &
# wallpapers
feh --bg-scale --no-fehbg $HOME/.config/wallpapers/hiroshi.jpg &
exec berry
