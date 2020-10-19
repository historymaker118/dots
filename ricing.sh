#! /bin/bash

IMAGE=$1

cp $IMAGE ~/.config/feh/wallpaper.png

feh --bg-fill ~/.config/feh/wallpaper.png

echo "Y" | ricemood -a &>/dev/null | grep "hack to hide output"

kitty @ set-colors --all -c ~/.config/kitty/kitty.conf

i3-msg restart > /dev/null
