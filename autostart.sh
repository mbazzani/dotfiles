#!/bin/bash
picom --vsync &
nitrogen --set-zoom-fill --random /usr/share/backgrounds/ & 
setxkbmap -option caps:swapescape &

xset -dpms
xset s off

#Output name changes on reboot, this way at least one will be activated
xrandr --output HDMI-1-0 --mode 2560x1440 &
xrandr --output HDMI-1-1 --mode 2560x1440 &
xrandr --output HDMI-1-2 --mode 2560x1440 &

picom &

