#!/bin/bash

seldest=$(cat ~/.cdg_paths | sed 's/#.*//' | fzf)

if [ ! -z "$seldest" ]; then
    xdotool windowunmap $(xdotool getactivewindow)
    # nohup xdg-open $seldest &
    # nohup alacritty --title "folder-jump" -e nemo $seldest &
    nohup xdg-open $seldest &
    notify-send -t 500 "jumping..."
fi
