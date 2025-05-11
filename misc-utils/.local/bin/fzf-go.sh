#!/bin/bash

seldest=$(cat $HOME/.cdg_paths | fzf | sed 's/[[:space:]]*#.*//g' | sed '/^\s*$/d')

if [ ! -z "$seldest" ]; then
    #xdotool windowunmap $(xdotool getactivewindow)
    nohup xdg-open "$seldest" &
    #nohup alacritty --title "folder-jump" -e nemo $seldest &
    notify-send -t 500 "jumping..."
fi
