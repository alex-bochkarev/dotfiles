#!/bin/bash

seldest=$(cat ~/.cdg_paths | sed 's/#.*//' | fzf)

if [ ! -z "$seldest" ]; then
    # xdotool windowunmap $(xdotool getactivewindow)
    ~/opt/emacs/bin/emacsclient -nc -F '((name . "emacs-float") (width . 70) (height . 25))' $seldest &
    notify-send -t 500 "jumping..."
fi
