#!/usr/bin/env bash

seldest=$(echo -n "$PATH" | xargs -d: -I{} -r -- find -L {} -maxdepth 1 -mindepth 1 -type f -executable -printf '%P\n' 2>/dev/null | sort -u | fzf --border)

if [ ! -z "$seldest" ]; then
    xdotool windowunmap $(xdotool getactivewindow)
    nohup exec "$seldest" && notify-send -t 100 "running..."
fi
