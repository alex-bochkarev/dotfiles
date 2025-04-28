#!/bin/bash

selpass=$(find ~/.password-store -name '*.gpg' | sed "s|${HOME}/.password-store/||" | sed "s/.gpg$//" | fzf)

if [ ! -z "$selpass" ]; then
    #xdotool windowunmap $(xdotool getactivewindow)
    nohup pass -c $selpass
    notify-send -t 500 "copied"
fi
