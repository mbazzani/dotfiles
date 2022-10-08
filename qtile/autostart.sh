#!/bin/bash
picom --vsync &

#Output name changes on reboot, this way at least one will be activated
xrandr --output HDMI-1-0 --mode 2560x1440 &
xrandr --output HDMI-1-1 --mode 2560x1440 &
xrandr --output HDMI-1-2 --mode 2560x1440 &
emacs --daemon &
picom &
lxpolkit &
